<template>
    <SPAPanel>
        <div class="sm:flex flex-row-reverse justify-between items-end">
            <div class="flex justify-center items-center sm:block">
                <img
                    src="/assets/img/me-144px@2.png"
                    class="mb-8 w-36 rounded-full object-cover shadow-lg profile-image"
                    alt="Portrait"
                    srcset="/assets/img/me-144px.png 1x, /assets/img/me-144px@2.png 2x"
                />
            </div>
            <h1 class="hero-title inline-block" ref="heroTitle">Hi!</h1>
        </div>
        <h2 class="hero-subtitle">
            My name is <Highlight>Julian</Highlight>, I am a full stack web engineer from Germany.
        </h2>
    </SPAPanel>
    <SPAPanel>
        <p>
            My mission is to create and develop <Highlight>scalable</Highlight>, <Highlight>beautiful</Highlight> web
            applications that are actually useful.
        </p>
        <p>
            I strive for <Highlight>top-notch</Highlight> technology and always try to get the most out of it to
            <Highlight>benefit users</Highlight>.
        </p>
        <p>If I need something new to complete the mission, I will <Highlight>learn it</Highlight>.</p>
        <p>
            Of course this needs <Highlight>listening</Highlight>, <Highlight>planning</Highlight> and
            <Highlight>building</Highlight> custom solutions that fit the purpose — not more, not less.
        </p>
        <p class="pt-4">
            Got your attention? Get to know me better <ActionLink @click="goToSection(2)">here</ActionLink> or dive
            right into my stack <ActionLink @click="goToSection(1)">here</ActionLink>. An excerpt of my work can be
            found <NuxtLink to="/work">here</NuxtLink>.
        </p>
    </SPAPanel>
</template>

<script setup lang="ts">
import { gsap } from "gsap";
import { SplitText } from "gsap/SplitText";

export interface SummaryProps {
    goToSection: (section: number) => void;
}

defineProps<SummaryProps>();

const heroTitle = ref<HTMLHeadingElement>();

gsap.registerPlugin(SplitText);

onMounted(() => {
    if (heroTitle.value) {
        gsap.set(".profile-image", { opacity: 0, scale: 0 });

        const rect = heroTitle.value.getBoundingClientRect();

        gsap.set(".hero-title", {
            x: window.innerWidth / 2 - (rect.left + rect.width / 2),
            y: window.innerHeight / 2 - (rect.top + rect.height / 2),
            scale: 2,
        });

        const split = new SplitText(".hero-subtitle", {
            type: "chars",
            smartWrap: true,
        });

        gsap.timeline()
            .to(".hero-title", {
                duration: 2,
            })
            .to(".hero-title", {
                x: 0,
                y: 0,
                scale: 1,
                duration: 1,
                ease: "power1.inOut",
            })
            .to(
                ".profile-image",
                {
                    opacity: 1,
                    scale: 1,
                    duration: 1,
                },
                "-=0.5",
            )
            .from(split.chars, {
                opacity: 0,
                duration: 0.1,
                stagger: 0.04,
                ease: "steps(1)",
            });
    }
});
</script>
