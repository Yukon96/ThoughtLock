import { createRouter as _createRouter, createWebHistory } from 'vue-router';
import HomeView from '../views/HomeView.vue'
import EntryView from '../views/EntryView.vue'
import AboutView from '../views/AboutView.vue';
const routes= [
  {
    path: '/',
    name: 'home',
    component: HomeView
  },

  {
    path: '/about',
    name: 'about',
    // route level code-splitting
    // this generates a separate chunk (About.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: AboutView
  },

  {
    path: '/entry',
    name: 'entry',
    component: EntryView 
  }
];
  export function createRouter () {
    return _createRouter({
      history: createWebHistory(),
      routes: routes
    })
  }