<template>
    <div class="sm:flex flex-row-reverse justify-between items-end">
        <div class="flex justify-center items-center sm:block">
            <img
                class="mb-8 w-36 rounded-full object-cover shadow-lg grayscale"
                src="https://avatars.dicebear.com/api/avataaars/.svg?b=%23606060&amp;w=400&amp;h=400&amp;top[]=bun&amp;topChance=100&amp;hairColor[]=brownDark&amp;accessoriesChance=0&amp;facialHair[]=beardLight&amp;facialHairChance=100&amp;facialHairColor[]=brownDark&amp;clothes[]=shirtVNeck&amp;clothesColor[]=black&amp;eyes[]=squint&amp;eyebrow[]=defaultNatural&amp;mouth[]=default&amp;skin[]=light"
                alt=""
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
        Got your attention? Get to know me better <NuxtLink to="/about">here</NuxtLink> or dive right into my stack
        <NuxtLink to="/stack">here</NuxtLink>.
    </p>
</template>

<script setup lang="ts">
import Highlight from "~/components/Highlight.vue";
</script>
