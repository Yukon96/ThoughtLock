<template>
  <section class="owner">
     <p>Id: {{ item.id }}</p>
    <p>Name: {{ item.name }}</p>
    <p>Email: {{ item.email }}</p>
  </section>
</template>

<script>
export default {
  name: "owner",
  props: ["item"],
};
</script>

<style scoped>
section.owner {
  flex-wrap: wrap;
  display: inline-block;
  height: 120px;
  min-width: 300px;
  border: 2px solid black;
  border-radius: 10px;
  margin: 20px;
}
</style>