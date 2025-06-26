<template>
    <ContentSummary :go-to-section="goToSection" />
    <ContentStack />
    <ContentAboutMe />
</template>

<script setup lang="ts">
import { gsap } from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import { ScrollToPlugin } from "gsap/ScrollToPlugin";

gsap.registerPlugin(ScrollTrigger, ScrollToPlugin);

let observer: Observer | undefined;
let scrollTween: gsap.core.Tween | undefined;

function goToSection(i: number) {
    scrollTween = gsap.to(window, {
        scrollTo: { y: i * innerHeight, autoKill: false },
        onStart: () => {
            if (!observer) return;

            // for touch devices, as soon as we start forcing scroll it should stop any current
            // touch-scrolling, so we just disable() and enable() the normalizeScroll observer
            observer.disable();
            observer.enable();
        },
        duration: 1,
        onComplete: () => (scrollTween = undefined),
        overwrite: true,
    });
}

onMounted(() => {
    let panels = gsap.utils.toArray<gsap.DOMTarget>(".panel");

    if (ScrollTrigger.isTouch === 1) {
        observer = ScrollTrigger.normalizeScroll(true);
    }

    // on touch devices, ignore touchstart events if there's an in-progress tween so that
    // touch-scrolling doesn't interrupt and make it wonky
    document.addEventListener(
        "touchstart",
        (e) => {
            if (scrollTween) {
                e.preventDefault();
                e.stopImmediatePropagation();
            }
        },
        { capture: true, passive: false },
    );

    panels.forEach((panel, i) => {
        ScrollTrigger.create({
            trigger: panel,
            start: "top bottom",
            end: "+=199%",
            onToggle: (self) => self.isActive && !scrollTween && goToSection(i),
        });
    });

    // just in case the user forces the scroll to an inbetween spot (like a momentum scroll on a Mac
    // that ends AFTER the scrollTo tween finishes):
    ScrollTrigger.create({
        start: 0,
        // end: "max",
        end: () => ScrollTrigger.maxScroll(window) - (gsap.utils.toArray<HTMLElement>("footer")[0]?.clientHeight || 0),
        snap: 1 / (panels.length - 1),
    });
});
</script>
