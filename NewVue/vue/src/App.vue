<template>
  <div id="ThoughtLock">
    <div id="nav">
      &nbsp;
      <router-link class="log" v-bind:to="{ name: 'logout' }" v-if="$store.state.token != ''">Logout</router-link>

      <router-link class="log" v-bind:to="{ name: 'login' }" v-if="$store.state.token == ''">Login</router-link>

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
          <router-link class="navItem" v-bind:to="{ name: 'home' }">Home</router-link>
        </div>

        <div class="dropdown">
          <button class="dropbtn">Entry</button>
          <div class="dropdown-content">
            <router-link class="navItem" v-on:click="newId()" v-bind:to="{ name: 'entry', params: { id: ID } }">New Entry</router-link>
            <router-link class="navItem" v-bind:to="{ name: 'updateEntry' }">Update Entry</router-link>
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
  <router-view />
</div>
</template>
<script>
import EntryService from '../src/services/EntryService.js'
export default {
  data() {
    return {
      selected: "User",
      ID: 0,
    }
  },
  methods:{
    newId(){
      EntryService.newEntry().then((response)=> {
        this.ID = response.data.id;
      })
    }
  }
}
</script>

<style>
#nav {
  width: 100%;
  max-width: 100%;
}

.homeButton {
  background-color: transparent;
  border: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-family: "Playfair Display";
  font-weight: 400;
  font-size: inherit;
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
  letter-spacing: .05rem;
}

.dropdown-content {
  background-color: inherit;
  font-family: inherit;
  display: none;
  position: absolute;
  background-color: #333;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
  z-index: 1;
}

.dropdown-content a {
  font-family: "Playfair Display";
  font-weight: 400;
  float: none;
  color: white;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropbtn:hover {
  text-decoration: underline;
  text-underline-offset: .3rem;
  text-decoration-thickness: 1.5px;
}

.router-link-exact-active {
  text-decoration: underline;
  text-underline-offset: .3rem;
  text-decoration-thickness: 1.5px;
}

.dropdown:hover .dropdown-content {
  display: block;
}

#nav {
  font-family: "Playfair Display";
  display: flex;
  font-weight: 400;
  position: sticky;
  top: 0px;
  margin-top: 0px;
  flex-direction: row;
  justify-content: space-evenly;
  align-items: center;
  width: 100vw;
  background-color: #080404;
  border-radius: 0%;
  height: 13.5vh;
  color: white;
  padding-top: 10px;
  margin-bottom: 10px;
  text-align: center;
  font-size: 14px;
}

.middle {
  margin:auto;
  width: 80vw;
  display: inline-flex;
  align-items: center;
  justify-content: center;
}

.log {
  text-decoration: none;
  width: 10vw;
}

.log:hover {
  text-decoration: underline;
  text-underline-offset: .3rem;
  text-decoration-thickness: 1.5px;
}

#adminNav,
#adminNavBtn,
#adminNav .dropdown-content a {
  color: orange;
  width: 10vw;
}
button {
  border-radius: 2.5vh;
  background-color: aliceblue;
  border-color: rgb(71,95,123);
}
</style>