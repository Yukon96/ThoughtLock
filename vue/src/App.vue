<template>
  <div id="ThoughtLock">
    <router-view>
    <div id="nav">
      &nbsp;
      <router-link class="log" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">SIGN OUT</router-link>

      <div class="middle">

        <div class="dropdown">
          <button class="dropbtn">USER</button>
          <div class="dropdown-content">
            <router-link class="navItem" v-bind:to="{ name: 'profile' }">Profile</router-link>
            <router-link class="navItem" v-bind:to="{ name: 'editHome' }">Change Your Pad</router-link>
          </div>
        </div>

        <div class="dropdown">
          <button class="homeButton" ></button>
          <router-link class="navItem" v-bind:to="{ name: 'home' }"></router-link>
        </div>

        <div class="dropdown">
          <button class="dropbtn">Entry</button>
          <div class="dropdown-content">
            <router-link class="navItem" v-bind:to="{ name: 'protein_list' }">List</router-link>
            <router-link class="navItem" v-bind:to="{ name: 'protein_import' }">Import</router-link>
          </div>
        </div>
      </div>

      <div id="adminNav" class="dropdown" v-if="$store.state.user.role == 'admin'">
        <button id="adminNavBtn" class="dropbtn">ADMIN</button>
        <div id="adminNavContent" class="dropdown-content">
          <router-link class="navItem" v-bind:to="{ name: 'otp' }">OTP</router-link>
          <router-link class="navItem" v-bind:to="{ name: 'editHome' }">Edit General Home</router-link>
        </div>
      </div>

    </div>
  </router-view>    
  </div>
</template>
<script>
export default {
    data() {
        return {
            selected: "User",
        };
    },
}
</script>
<style>
</style>