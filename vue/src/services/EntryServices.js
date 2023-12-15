import axios from 'axios';

const http = axios.create({
  baseURL: "http://localhost:3000"
});

export default {

  getEntries() {
    return http.get('/entries');
  },

  getEntry(entryId) {
    return http.get(`/entry/${entryId}`)
  },

  getCard(profileId) {
    return http.get(`/profile/${profileId}`)
  },

  addCard(card) {
    return http.post('/cards', card);
  },

  updateCard(card) {
    return http.put(`/cards/${card.id}`, card);
  },

  deleteCard(cardId) {
    return http.delete(`/cards/${cardId}`);
  }

}
