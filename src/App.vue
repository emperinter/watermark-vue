<template>
  <div id="app">
    <ImageWatermark />
  </div>
  
</template>

<script>
import ImageWatermark from './components/ImageWatermark.vue';

export default {
  name: 'App',
  components: {
    ImageWatermark,
  },
};
</script>

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
