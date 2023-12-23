import { createStore as _createStore } from 'vuex';
import axios from 'axios';

export function createStore(currentToken, currentUser, currentDeviceId) {
  let store = _createStore({
    state: {
      token: currentToken || '',
      user: currentUser || {}, 
      device_id: currentDeviceId || 0,
    },
    mutations: {
      SET_AUTH_TOKEN(state, token) {
        state.token = token;
        localStorage.setItem('token', token);
        axios.defaults.headers.common['Authorization'] = `Bearer ${token}`;
      },
      SET_USER(state, user) {
        state.user = user;
        localStorage.setItem('user', JSON.stringify(user));
      },
      SET_DEVICE_ID(state, device_id){
        state.device_id = device_id;
        localStorage.setItem('device_id', device_id)
        
      },
      LOGOUT(state) {
        localStorage.removeItem('token');
        localStorage.removeItem('user');
        state.token = '';
        state.user = {};
        axios.defaults.headers.common = {};
      },
    },
  });
  return store;
}
