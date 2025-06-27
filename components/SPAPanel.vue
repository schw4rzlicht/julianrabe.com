<template>
    <div class="panel">
        <div class="max-w-3xl mx-auto">
            <slot />
        </div>
    </div>
</template>

<style scoped>
.panel {
    @apply h-[100vh] overflow-y-auto overflow-x-hidden w-full flex justify-center items-center p-8;
}
</style>
