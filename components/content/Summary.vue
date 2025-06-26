<template>
    <SPAPanel>
        <div class="sm:flex flex-row-reverse justify-between items-end">
            <div class="flex justify-center items-center sm:block">
                <img
                    src="/assets/img/me-144px@2.png"
                    class="mb-8 w-36 rounded-full object-cover shadow-lg"
                    alt="Portrait"
                    srcset="/assets/img/me-144px.png 1x, /assets/img/me-144px@2.png 2x"
                />
            </div>
            <h1>Hi!</h1>
        </div>
        <h2>My name is <Highlight>Julian</Highlight>, I am a full stack web engineer from Germany.</h2>
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
export interface SummaryProps {
    goToSection: (section: number) => void;
}

defineProps<SummaryProps>();
</script>
