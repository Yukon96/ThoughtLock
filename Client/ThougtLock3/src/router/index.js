import { createRouter as _createRouter, createWebHistory } from 'vue-router';
import HomeView from "../views/HomeView.vue";
import UpdateEntryView from '../views/UpdateEntryView.vue'
import EntryView from '../views/EntryView.vue';
import NotFoundView from "../views/NotFoundView.vue";
import ProfileView from "../views/ProfileView.vue";

const routes = [
  {
    path: "/",
    name: "homeView",
    component: HomeView,
  },
  {
    path: "/entry",
    name: "entry",
    component: EntryView,
  },
  {
    path: "/update/",
    name: "updateEntry",
    component: UpdateEntryView,
  },

  {
    path: "/profile/:userId",
    name: "profile",
    component: ProfileView,
  },
  {
    path: '/:pathMatch(.*)*',
    name: "notFound",
    component: NotFoundView,
  },
];

export function createRouter () {
  return _createRouter({
    history: createWebHistory(),
    routes: routes
  })
}
