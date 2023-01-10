<template>
    <div class="flex gap-2">
        <div class="w-32 text-base">{{ name }}</div>
        <div class="flex gap-2 items-center justify-start">
            <div
                v-for="index in 10"
                :key="index"
                class="rounded w-6 h-6"
                :class="[score >= index ? 'bg-pink-500' : 'bg-lime-200']"
            />
        </div>
    </div>
</template>

<script lang="ts" setup>
interface SkillProps {
    name: string;
    score: number;
}

const props = defineProps<SkillProps>();
</script>
