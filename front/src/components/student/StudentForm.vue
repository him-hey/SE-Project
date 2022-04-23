<template>
    <div class="">
    <v-dialog v-model="dialog" width="500px">
      <template v-slot:activator="{ on, attrs }" class="create-user-btn">
        <v-btn color="red darken-1" dark class="mb-2" v-bind="attrs" v-on="on" bottom fab fixed right>+</v-btn>
      </template>
      <v-row justify="center" class="a">
        <v-card ref="form" class="form">
          <h2 class="c-s">Create Student</h2>
          <form>
            <v-text-field ref="first name" v-model="first_name" label="First Name" required></v-text-field>
            <v-text-field ref="last name" v-model="last_name" label="Last Name" required></v-text-field>
            <v-radio-group v-model="sex" row>
              <v-radio label="Female" value="Female"></v-radio>
              <v-radio label="Male" value="Male"></v-radio>
            </v-radio-group>
            <v-text-field ref="class" prepend-icon="mdi-school" v-model="getClass" label="Class" required></v-text-field>
            <v-text-field prepend-icon="mdi-phone-in-talk" ref="phone number" v-model="phone" label="Phone Number" required></v-text-field>
            <v-file-input prepend-icon="mdi-paperclip" label="Choose image" v-model="image" v-if="showfilInput"></v-file-input>
            <v-card-actions>
              <v-btn color="error"  @click="cancelCreate"> Cancel </v-btn>
              <v-btn color="primary"  @click="createStudent"> Create </v-btn>
            </v-card-actions>
          </form>            
        </v-card>
      </v-row>
    </v-dialog>
  </div>
</template>

<script>
  import axios from "../../axios-request.js";
  export default {
    emits:['add-student'],
    data: () => ({
      phone: null,
      first_name: "",
      last_name: "",
      sex: "",
      image: null,
      id: null,
      showfilInput: true,
      dialog: false,
    }),
    methods: {
      createStudent() {
        if (this.editedIndex > -1) {
          let editStudent = {
            "first_name": this.first_name,
            "last_name": this.last_name,
            "class": this.getClass,
            "phone": this.phone,
            "gender": this.sex
          }
          axios.put("/students/" + this.id, editStudent).then((res) => {
            console.log(res.data);
          });
          this.phone = null;
          this.first_name = "";
          this.last_name = "";
          this.sex = "";
          this.getClass = "";
          this.image = null;
        } else {
          let newStudent = new FormData();
          newStudent.append("first_name", this.first_name);
          newStudent.append("last_name", this.last_name);
          newStudent.append("class", this.getClass);
          newStudent.append("phone", this.phone);
          newStudent.append("gender", this.sex);
          newStudent.append("image", this.image);
          axios.post("/students", newStudent).then((res) => {
            console.log(res.data);
            this.$emit('add-student', res.data);
          })
          this.phone = null;
          this.first_name = "";
          this.last_name = "";
          this.sex = "";
          this.getClass = "";
          this.image = null;
        }
        this.cancelCreate();
      },
      cancelCreate() {
        this.dialog = false;
        this.phone = null;
        this.first_name = "";
        this.last_name = "";
        this.sex = "";
        this.getClass = "";
        this.image = null;
      },
      getActionUser(){
        axios.get('/getUserByID/' + this.userID).then(res=> {
          console.log(res.data);
          this.userAction = res.data;
        })
      },
    },
    mounted() {
      this.userID = localStorage.getItem('UserID');
      this.getActionUser();
      this.createStudent();
    },
  }
</script>

<style scoped>
  .c-s{
    text-align: center;
    align-items: center;
    justify-content: center;
  }
  .form {
    width: 100%;
    height: 100%;
    padding: 20px;
  }
  .a {
    overflow-y: hidden;
    overflow-x: hidden;
    margin: 0;
    padding: 0;
  }
</style>