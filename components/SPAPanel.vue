<template>
    <div class="panel">
        <div class="flex flex-col justify-between items-center">
            <div class="max-w-3xl">
                <slot />
            </div>
        </div>
    </div>
</template>

<style scoped>
.panel {
    @apply h-[100vh] overflow-y-auto overflow-x-hidden w-full p-8;
}
</style>
<script setup lang="ts"></script>
