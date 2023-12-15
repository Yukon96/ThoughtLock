<template>
  <div class="hello">
    <pet-header />
    <h1>Owners</h1>
    <section class="container">
      <owner
        v-for="owner in currentOwners"
        v-bind:key="owner.id"
        v-bind:item="owner"
      />
    </section>

    <button v-show="!showForm" v-on:click="showForm = true">Add Owner</button>

    <form v-on:submit.prevent="createNewOwner" v-show="showForm">
      <div>
        <label for="name">Name: </label>
        <input type="text" name="name" id="name" v-model="newOwner.name" />
      </div>
      <div>
        <label for="type">Email: </label>
        <input type="text" name="email" id="email" v-model="newOwner.email" />
      </div>

      <button type="submit">Save Owner</button>
    </form>

    <pet-footer />
  </div>
</template>

<script>
import PetHeader from "../components/PetHeader.vue";
import PetFooter from "../components/PetFooter.vue";
import Owner from "../components/Owner.vue";

export default {
  components: { PetHeader, PetFooter, Owner },
  name: "ListOwners",
  data() {
    return {
      showForm: false,
      newOwner: {},
    };
  },
  computed: {
    currentOwners() {
      return this.$store.state.owners;
    },
  },
  methods: {
    createNewOwner() {
      if (this.newOwner.name) {
        this.newOwner.id = this.nextOwnerId();
        this.$store.commit("ADD_OWNER", this.newOwner);
      }
      this.newOwner = {};
      this.showForm = false;
    },

    nextOwnerId() {
      let result = 0;
      this.$store.state.owners.forEach((item) => {
        if (item.id > result) {
          result = item.id;
        }
      });
      return result + 1;
    },
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
