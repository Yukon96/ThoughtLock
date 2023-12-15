<template>
 <div class="notebook">
    <h1>Your Notepad Title</h1>

    <textarea v-model="noteContent" placeholder="Start writing your note..."></textarea>

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

<style>
.notebook {
  background-color: #fff;
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

.notebook textarea {
  width: 100%;
  height: 200px;
  font-size: 16px;
  margin-bottom: 20px;
  padding: 10px;
  box-sizing: border-box;
  border: 1px solid #ddd; /* Add a border to the textarea */
  color: #333; /* Text color for the textarea */
}

.notebook textarea::before {
  content: "";
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-image: linear-gradient(to bottom, transparent 23px, #fff 23px, #fff 25px, transparent 25px),
                    linear-gradient(to right, #ddd 1px, #fff 1px); /* Add lines to simulate paper */
  background-size: 100% 26px;
  pointer-events: none;
}

.notebook button {
  background-color: #007bff;
  color: #fff;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
  border: none;
}

.notebook button:hover {
  background-color: #0056b3;
}
</style>