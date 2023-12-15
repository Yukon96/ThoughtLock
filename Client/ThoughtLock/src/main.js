import { createStore } from './store'
import { createRouter } from './router'
import { createApp } from 'vue'
import App from './App.vue'

const app = createApp(App)
const router = createRouter();
const store = createStore();

app.use(store);
app.use(router)
app.mount('#app')
