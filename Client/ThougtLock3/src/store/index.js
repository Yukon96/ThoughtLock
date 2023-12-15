import { createStore as _createStore } from 'vuex';

export function createStore() {
  return _createStore({
    state: {
      pets: [],
      owners: [],
    },

  mutations: {
    LOAD_PETS(state) {
      fetch("http://localhost:3000/pets")
        .then((response) => response.json())
        .then((json) => {
          state.pets = json;
        })
        .catch((error) => {
          console.log(
            "An error happened in created while fetching the pets json file",
            error
          );
        });
    },

    LOAD_OWNERS(state) {
      fetch("http://localhost:3000/owners")
        .then((response) => response.json())
        .then((json) => {
          state.owners = json;
        })
        .catch((error) => {
          console.log(
            "An error happened in created while fetching the owners json file",
            error
          );
        });
    },

    ADD_PET(state, payload) {
      state.pets.push(payload);
    },

    UPDATE_PET(state, updatedPet) {
      let pet = state.pets.find(item => {
        return updatedPet.id == item.id
      })

      if (pet) {
        pet = updatedPet;
      }
    },

    ADD_OWNER(state, payload) {
      state.owners.push(payload);
    },
  },
    // Strict should not be used in production code. It is used here as a
    // learning aid to warn you if state is modified without using a mutation.
    strict: true
  });
}
