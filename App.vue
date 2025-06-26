<template>
    <div class="w-screen h-screen flex flex-col justify-between items-center text-lime-200 sm:text-xl p-8 pb-0">
        <div class="grow flex justify-center lg:items-center">
            <div>
                <NuxtPage />
            </div>
        </div>
        <div class="flex text-xs py-4 gap-1">
            <NuxtLink to="/imprint">Imprint</NuxtLink>
            <NuxtLink to="/privacy">Privacy</NuxtLink>
        </div>
    </div>
</template>
