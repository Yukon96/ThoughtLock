import { createRouter as createRouter, createWebHistory } from 'vue-router'
import { useStore } from 'vuex'

// Import components
import LoginView from 'src/views/Login/LoginView';
import LogoutView from 'src/views/Login/LogoutView.vue';
import RegisterView from 'src/views/Login/RegisterView';
import EditGeneralHomeView from 'src/views/Admin/EditGeneralHomeView';
import GeneralHomeView from 'src/views/Admin/GeneralHomeView';
import RecoverPasswordView from 'scr/views/Admin/RecoverPasswordView';
import NewEntryView from 'src/views/Entries/NewEntryView';
import UpdateEntryView from 'src/views/Entries/UpdateEntryView';
import EditUserHomeView from 'src/views/User/EditUserHomeView';
import ProfileView from 'src/views/User/ProfileView';
import NotFoundView from 'src/views/NotFoundView';
/**
 * The Vue Router is used "direct" the browser to render a specific view component
 * inside of App.vue depending on the URL.
 *
 * It also is used to detect whether or not a route requires the user to have first authenticated.
 * If the user has not yet authenticated (and needs to) they are redirected to /login
 * If they have (or don't need to) they're allowed to go about their way.
 */
const routes = [
  {
    path: '/',
    name: 'home',
    component: GeneralHomeView,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/login",
    name: "login",
    component: LoginView,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/logout",
    name: "logout",
    component: LogoutView,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/register",
    name: "register",
    component: RegisterView,
    meta: {
      requiresAuth: false
    }
  },
  {
    path: "/admin/password",
    name: "recoverPassword",
    component: RecoverPasswordView,
    meta: {
      requiresAuth: true
    }
  },  {
    path: "/admin/home",
    name: "editGhome",
    component: EditGeneralHomeView,
    meta: {
      requiresAuth: true
    }
  },  {
    path: "/entry/:id",
    name: "entry",
    component: NewEntryView,
    meta: {
      requiresAuth: true
    }
  },  {
    path: "/entry/update",
    name: "updateEntry",
    component: UpdateEntryView,
    meta: {
      requiresAuth: true
    }
  },  {
    path: "/not_found",
    name: "NotFoundView",
    component: NotFoundView,
    meta: {
      requiresAuth: true
    }
  },  {
    path: "/user/profile",
    name: "profile",
    component: ProfileView,
    meta: {
      requiresAuth: true
    }
  },  {
    path: "/user/home",
    name: "editHome",
    component: EditUserHomeView,
    meta: {
      requiresAuth: true
    }
  },
];

// Create the router
const router = createRouter({
  history: createWebHistory(),
  routes: routes
});

router.beforeEach((to) => {

  // Get the Vuex store
  const store = useStore();

  // Determine if the route requires Authentication
  const requiresAuth = to.matched.some(x => x.meta.requiresAuth);

  // If it does and they are not logged in, send the user to "/login"
  if (requiresAuth && store.state.token === '') {
    return {name: "login"};
  }
  // Otherwise, do nothing and they'll go to their next destination
});

export default router;
