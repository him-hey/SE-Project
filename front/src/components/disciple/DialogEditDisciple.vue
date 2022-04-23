<template>
    <section>
        <v-dialog v-model="dialogUpdate" width="400">
        <v-card>
          <form>
            <h1>Disciple notice</h1><br>
            <label for="cars">Choose student</label>
            <select class="selected" id="cars" v-model="studentSelected">
              <option v-for="student of studentsList" :key="student.id" :value=student.id>{{student.first_name}} {{student.last_name}}</option>
            </select>
            <label for="cars">Choose discipline notice type</label>
            <select class="selected" id="cars" v-model="type">
              <option v-for="leave of leavetype" :key="leave" :value=leave>{{leave}}</option>
            </select>
            <label for="cars">Start Date: </label><br>
            <input type="date" name="" id="" v-model="dateWn"><br>
            <v-textarea label="Description" auto-grow outlined v-model="description"></v-textarea>
            <v-card-actions>
              <v-btn color="error" @click="cancel"> Cancel</v-btn>
              <v-btn color="primary" @click="UpdateDisciple()"> Update</v-btn>
            </v-card-actions> 
          </form>
        </v-card>
      </v-dialog>
    </section>
</template>

<script>
    import axios from '../../axios-request.js';
    export default {
        props: ['data'],
        emits:['update', 'cancel'],
        data() {
            return {
              studentSelected:null,
              dateWn:null,
              type: null,
              description: null,
              leavetype: ["Notation", "Oral warning", "Warning letter", "Termination"],
              studentsList: [],
              dialogUpdate : true,
              id: null,
            }
        },
        methods: {
            UpdateDisciple(){
                let updateDiscipleItem = {
                    'student_id': this.studentSelected,
                    'type': this.type,
                    'dateWn': this.dateWn,
                    'description': this.description,
                }
                this.$emit('update',this.id, updateDiscipleItem, false);
            },
            cancel(){
              this.$emit('cancel', false);
            },
            getAllStudent(){
              axios.get('/students').then(res =>{
                this.studentsList = res.data;
              })
            },
        },
        mounted() {
          this.getAllStudent();
            this.id = this.data.id;
            this.studentSelected = this.data.student_id;
            this.type = this.data.type;
            this.description = this.data.description;
            this.dateWn = this.data.dateWn;
        },
    }
</script>

<style scoped>
    h1{
      margin-left: 18%;
  }
  
  .create-user-btn {
    top: 85vh;
    float: right;
    position: fixed;
  }

  form{
    padding: 15px;
  }

  .selected, input[type=date]{
    width: 100%;
    background: rgba(191, 190, 190, 0.809);
    border-radius: 2px;
    height: 35px;
    padding: 0 5px;
    color: rgb(49, 47, 47);
    margin-bottom: 10px;
    border: none;
  } 
</style>