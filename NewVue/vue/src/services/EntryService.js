import axios from 'axios';

export default {

  newEntry(user) {
    return axios.get('/entry/new', user)
  },
}