<template>
  <div class="notebook">
    <h1>Your Notepad Title</h1>

    <div class="lined-paper">
      <!-- Your content goes here -->
      <textarea v-model="noteContent" placeholder="Start writing your note..."></textarea>
    </div>

    <button @click="submitNote">Submit Note</button>
  </div>
</template>

<script>
export default {
  data() {
    return {
      noteContent: "", // Use this data property to store the content of the note
    };
  },
  methods: {
    submitNote() {
      // Handle the submission of the note, you can send it to a server or perform other actions
      console.log("Note submitted:", this.noteContent);
    },
  },
};
</script>

<style scoped>
.notebook {
  background-color: #e8fa82;
  font-family: 'Arial', sans-serif; /* Choose a font for the text */
  line-height: 1.6; /* Adjust line height for better readability */
  margin: 0;
  padding: 20px;
  position: relative;
}

.notebook h1 {
  font-size: 24px;
  margin-bottom: 20px;
  color: #333; /* Text color for the title */
}

.lined-paper {
  position: relative;
  overflow: hidden;
}

.lined-paper::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(214, 250, 56, 0.445);
  background-image: linear-gradient(to bottom, /*#e8fa82*/ transparent 23px /*page*/, #a4d2fd 23px/*lines top*/, #a4d2fd  25px/*lines bottom*/, transparent 25px);
  background-size: 100% 25px;
  pointer-events: none;
}

textarea {
  width: 100%;
  height: 200px;
  font-size: 25px;
  margin-bottom: 20px;
  padding: 10px;
  box-sizing: border-box;
  border: 1px solid #ddd; /* Add a border to the textarea */
  color: #333; /* Text color for the textarea */
}

button {
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
  border: none;
}

button:hover {
  background-color: #0056b3;
}
</style>