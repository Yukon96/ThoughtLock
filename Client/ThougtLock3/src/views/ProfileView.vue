<template>
  <section>
    <h1>Welcome to Edit Pet</h1>
    <form v-on:submit.prevent="savePet">
      <div>
        <label for="id">Id: </label>
        {{pet.id}}
      </div>
      <div>
        <label for="name">Name: </label>
        <input type="text" name="name" id="name" v-model="pet.name" />
      </div>
      <div>
        <label for="type">Type: </label>
        <input type="text" name="type" id="type" v-model="pet.type" />
      </div>
      <div>
        <label for="age">Age: </label>
        <input type="number" name="age" id="age" v-model="pet.age" />
      </div>

      <button type="submit">Save Pet</button>
    </form>
  </section>
</template>

<script>
export default {
  name: "EditPet",

  data() {
    return {
      petId: 0,
      pet: {},
    };
  },

  methods: {
    savePet() {
      this.$store.commit("UPDATE_PET", this.pet);
      this.$router.push({ name: 'listPets' })
    },
  },

  created() {
    this.petId = this.$route.params.petId;
    console.log("in created of EditPet, petId: " +this.petId)

    this.pet = this.$store.state.pets.find((pet) => {
      return this.petId == pet.id;
    });
  },
};
</script>

<style>
</style>