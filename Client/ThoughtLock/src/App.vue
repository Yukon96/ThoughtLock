<template>
  <router-view />
  <header>
    <img alt="Vue logo" class="logo" src="@/assets/logo.svg" width="125" height="125" />
    <nav>
        <router-link v-bind:to="{name:'home'}">Home</router-link><br>
        <router-link v-bind:to="{name:'about'}">About</router-link><br>
        <router-link v-bind:to="{name:'entry'}">Entry</router-link>
    </nav>
    
  </header>
</template>
<script>
export default {
  
}
</script>
 
