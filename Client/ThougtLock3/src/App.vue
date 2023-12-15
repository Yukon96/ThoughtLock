<template>
  <div id="app">
 <section>
      <router-link v-bind:to="{ name: 'homeView' }">Home</router-link> |
      <router-link v-bind:to="{ name: 'entry' }">Entry</router-link>
      <router-link v-bind:to="{ name: 'updateEntry' }">Update Entry</router-link>
    </section>

    <router-view />
  </div>
</template>

<script>
export default {
  name: "App",

  computed: {
    petCount(){
      return this.$store.state.pets.length;
    },

    ownersCount(){
      return this.$store.state.owners.length;
    },
  },
  created() {
    this.$store.commit("LOAD_PETS");
    this.$store.commit("LOAD_OWNERS")
  }
};
</script>

<style>
#app {
  font-family: "Avenir", Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  max-width: 800px;
 
  margin: 60px auto 0 auto;
}

section.container {
  display: flex;
  flex-wrap: wrap;
  justify-content: center;
}

form {
  margin: 20px;
}

button {
  height: 2rem;
  margin: 0.5rem;
}

table {
  border-collapse: collapse;
  width: 25%;
}

th,
td {
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #f2f2f2;
}

td {
  border: 1px solid black;
}

th {
  background-color: #04aa6d;
  color: white;
}
</style>
