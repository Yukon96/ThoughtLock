<template>
  <div>
    <h2>Welcome {{ name }}</h2>
    <ul>

    </ul>
  </div>
</template>


<script>
export default {
  data() {
    return {
      name:'',
    };
  },
  methods: {

  },
  created() {
    this.name = this.$store.state.user.username;
  }

};
</script>

<style scoped>
</style>
