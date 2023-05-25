<script setup lang="ts">
// This starter template is using Vue 3 <script setup> SFCs
// Check out https://vuejs.org/api/sfc-script-setup.html#script-setup
import HelloWorld from './components/HelloWorld.vue'
async function testApi() {
  let displays = await Neutralino.computer.getDisplays();
  for(let display of displays) {
    console.log(display);
  }
}

testApi()

</script>

<template>
  <img alt="Vue logo" src="./assets/logo.png">
  <HelloWorld msg="Neutralino.js + Vite + Vue 3 + TypeScript"></HelloWorld>
</template>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
