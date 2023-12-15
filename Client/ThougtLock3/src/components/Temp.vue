<template>
  <div id="app">
    <p>{{$store.state.pets.length}} pets available -- {{$store.state.owners.length}} owners available</p>
    <section>
      <button v-on:click="showPets">Show Pets</button>
      <button v-on:click="showOwners">Show Owners</button>
    </section>

    <list-pets v-show="showPet" />
    <list-owners v-show="showOwner" />
  </div>
</template>

<script>
import ListOwners from "./components/ListOwners.vue";
import ListPets from "./components/ListPets.vue";

export default {
  name: "App",
  components: {
    ListPets,
    ListOwners,
  },
  data() {
    return {
      showOwner: false,
      showPet: true,
    };
  },
  methods: {
    showPets() {
      this.showOwner = false;
      this.showPet = true;
    },

    showOwners() {
      this.showOwner = true;
      this.showPet = false;
    },
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

section.container {
  display: flex;
  flex-wrap: wrap;;
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
