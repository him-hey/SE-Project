<template>
  <div class="">
    <v-dialog v-model="dialog" width="400">
      <template v-slot:activator="{ on, attrs }" class="create-user-btn">
        <v-btn color="red darken-1" dark class="mb-2" v-bind="attrs" v-on="on" bottom fab fixed right> + </v-btn>
      </template>
      <v-card>
        <br>
        <h2 class="u-p">Update Permission</h2>
        <form>
          <label for="cars">Choose a student</label>
            <select class="selected" id="cars" v-model="studentSelected">
              <option v-for="student of studentsList" :key="student.id" :value=student.id>{{student.first_name}} {{student.last_name}}</option>
            </select>
          <label for="cars">Start Date: </label><br>
            <input type="date" name="" id="" v-model="startAt"><br>
          <label for="cars">End Date: </label><br>
            <input type="date" name="" id="" v-model="endAt"><br>
          <label for="cars">Choose leave type</label>
            <select class="selected" id="cars" v-model="type">f
              <option v-for="leave of leavetype" :key="leave" :value=leave>{{leave}}</option>
            </select>
          <v-textarea label="Description" auto-grow outlined row-height="15" v-model="description"></v-textarea>
          <v-card-actions>
            <v-btn color="error" @click="cancel"> Cancel</v-btn>
            <v-btn color="primary" @click="edit">Update</v-btn>
          </v-card-actions> 
        </form>
      </v-card>
    </v-dialog>
  </div>
</template>

<script>
  import axios from '../../axios-request.js'
  export default {
    props: ['data'],
    emits:['update', 'cancel'],
    data: () => ({
      studentSelected: null,
      startAt: null,
      endAt: null,
      type: null,
      description: null,
      leavetype: ["Authorize", "Unauthorize"],
      studentsList: [],
      dialog : true,
      perID: null,
    }),
    methods: {
      cancel(){
        this.$emit('cancel', false);
      },
      edit(){
        let editPermission = {
          'student_id': this.studentSelected,
          'startAt': this.startAt,
          'endAt': this.endAt,
          'type': this.type,
          'description': this.description,
        }
        if(this.studentSelected != null){
            this.$emit('update',this.perID, editPermission, false);
        }
      },
      getAllStudent(){
        axios.get('/students').then(res =>{
          this.studentsList = res.data;
        })
      },
    },
    mounted() {
      this.getAllStudent();
      this.studentSelected = this.data.student_id;
      this.startAt = this.data.startAt;
      this.endAt = this.data.endAt;
      this.type = this.data.type;
      this.description = this.data.description;
      this.perID = this.data.id;
    },
  }
</script>

<style scoped>
  .u-p{
    text-align: center;
    align-items: center;
    justify-content: center;
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