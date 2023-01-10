<template>
    <h1>Stack</h1>
    <div class="flex flex-col gap-2 lg:grid grid-cols-2 lg:gap-10 lg:gap-x-20">
        <div class="skills">
            <h2>General</h2>
            <Skill :score="9" name="REST API" />
            <Skill :score="8" name="GraphQL API" />
            <Skill :score="8" name="Typescript" />
            <Skill :score="7" name="Node.js" />
            <Skill :score="7" name="Jest" />
            <Skill :score="7" name="Socket.io" />
            <Skill :score="5" name="Java" />
            <Skill :score="1" name="Python" />
        </div>
        <div class="skills">
            <h2>Frontend</h2>
            <Skill :score="9" name="TailwindCSS" />
            <Skill :score="8" name="Vue.js" />
            <Skill :score="7" name="Cypress" />
            <Skill :score="6" name="Vite.js" />
            <Skill :score="4" name="Nuxt.js" />
            <Skill :score="4" name="Electron.js" />
            <Skill :score="2" name="Web design" />
        </div>
        <div class="skills">
            <h2>Backend</h2>
            <Skill :score="8" name="Nest.js" />
            <Skill :score="7" name="MongoDB" />
            <Skill :score="7" name="Redis" />
            <Skill :score="6" name="Express.js" />
            <Skill :score="5" name="SQL" />
        </div>
        <div class="skills">
            <h2>DevOps</h2>
            <Skill :score="9" name="CI/CD" />
            <Skill :score="8" name="Terraform" />
            <Skill :score="6" name="Docker" />
        </div>
        <div class="skills">
            <h2>AWS</h2>
            <Skill :score="9" name="CloudFront" />
            <Skill :score="9" name="Route 53" />
            <Skill :score="8" name="S3" />
            <Skill :score="8" name="ECS" />
            <Skill :score="8" name="Lambda" />
            <Skill :score="6" name="ElastiCache" />
            <Skill :score="4" name="Networking" />
        </div>
        <div class="skills">
            <h2>Misc</h2>
            <Skill :score="10" name="German" />
            <Skill :score="9" name="MacOS" />
            <Skill :score="8" name="Github" />
            <Skill :score="7" name="English" />
            <Skill :score="7" name="Git" />
            <Skill :score="6" name="Jira" />
            <Skill :score="5" name="Linux" />
            <Skill :score="2" name="Windows" />
        </div>
    </div>
</template>

<script setup lang="ts">
import Skill from "~/components/Skill.vue";
</script>

<style scoped>
h2 {
    @apply pt-4 pb-1;
}

.skills {
    @apply flex flex-col gap-2;
}
</style>
