<template>
    <div class="w-screen h-screen flex flex-col justify-between items-center text-lime-200 sm:text-xl p-8 pb-0">
        <div class="grow flex justify-center items-center">
            <div>
                <NuxtPage />
            </div>
        </div>
    </div>
</template>

<style>
a {
    @apply text-pink-500 underline underline-offset-2;
}

body {
    @apply bg-slate-900;
}

h1,
h2 {
    @apply font-bold;
}

h1 {
    @apply text-4xl sm:text-6xl md:text-8xl text-pink-500 pb-4 sm:pb-8;
}

h2 {
    @apply text-2xl sm:text-4xl text-lime-400 pb-3 sm:pb-6;
}
</style>
