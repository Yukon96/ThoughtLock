<template>
  <section
    class="pet"
    v-bind:class="{
      yellow: item.type == 'cat',
      orange: item.type == 'dog',
      tan: item.type != 'cat' && item.type != 'dog',
    }"
  >
    <p>Id: {{ item.id }}</p>
    <p>Name: {{ item.name }}</p>
    <p>Type: {{ item.type }}</p>
    <p>Age: {{ item.age }}</p>
    <router-link v-bind:to="{name: 'editPet', params: {petId: item.id}}" >Edit</router-link>
  </section>
</template>

<script>
export default {
  name: "pet",
  props: ["item"],
};
</script>

<style scoped>
section.pet {
  flex-wrap: wrap;
  display: inline-block;
  height: 12rem;
  min-width: 300px;
  border: 2px solid black;
  border-radius: 10px;
  margin: 20px;
}

.orange {
  background-color: orange;
}

.yellow {
  background-color: yellow;
}

.tan {
  background-color: tan;
}
</style>