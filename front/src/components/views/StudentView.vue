<template>
    <section>
        <br>
        
        <student-form @add-student="getStudents" v-if="hidForm"></student-form>
        <edit-student v-if="update_student" :data="studentInfo" @update="UpdateStudent" @cancel="cancel"></edit-student>
        <student-detail v-if="ishowDetail" @back="closeDetail" :studentInfo="studentInfo"></student-detail>
        <div v-else>
            <v-container>
                <template>
                    <v-dialog v-model="dialogDelete" max-width="450px">
                        <v-card>
                        <br>
                        <v-card-title class="red--text">Are you sure you want to remove this user?</v-card-title><br>
                        <v-card-actions>
                            <v-spacer></v-spacer>
                            <v-btn id="action-btn" depressed color="primary" @click="dialogDelete = false">Cancel</v-btn>
                            <v-btn id="action-btn" depressed color="error" @click="deleteItemConfirm">YES</v-btn>
                            <v-spacer></v-spacer>
                        </v-card-actions>
                        </v-card>
                    </v-dialog>
                    <v-card-title >
                        <strong class="t">Students</strong>
                        <v-spacer></v-spacer>
                        <v-text-field @keyup="searchStudent" v-model="searchStudentname" class="search" append-icon="mdi-magnify" label="Search..." single-line hide-details></v-text-field> 
                    </v-card-title>
                    <div v-if="student_list == ''" class="ms">
                        <br>
                        <h2 >{{noData}}</h2>
                    </div>
                    <v-card v-else color="" green >
                        <v-simple-table>
                            <template v-slot:default>
                                <thead class="blue-grey darken-3" >
                                    <th scope="col">Profile</th>
                                    <th scope="col">First name</th>
                                    <th scope="col">Last name</th>
                                    <th scope="col">Class</th>
                                    <th scope="col">Phone</th>
                                    <th scope="col">Gender</th>
                                    <th scope="col">Action</th>
                                </thead> 
                                <tbody>
                                    <tr class="text-center" v-for="(students, index) in student_list" :key="index" style="text-align: center; align-items: center;justify-content: center; height:12vh;">
                                        <td class="img" @click="studentDetail(students)">
                                            <v-img  :src="imgUrl + students.image" height="50" width="50"  class="pa-7 secondary rounded-circle d-inline-block"></v-img>
                                        </td>
                                        <td @click="studentDetail(students)">{{ students.first_name }}</td>
                                        <td @click="studentDetail(students)">{{ students.last_name }}</td>
                                        <td @click="studentDetail(students)">{{ students.class }}</td>
                                        <td @click="studentDetail(students)">0{{ students.phone }}</td>
                                        <td @click="studentDetail(students)">{{ students.gender }}</td>
                                        <td> 
                                            <v-icon id="edit" medium class="mr-2" @click="editItem(students)">mdi-pencil</v-icon>
                                            <v-icon id="delete" medium @click="deleteItem(students)">mdi-delete</v-icon>   
                                        </td>
                                    </tr>
                                </tbody>
                            </template>
                        </v-simple-table>
                    </v-card>
                </template>
            </v-container>
        </div>
    </section>
</template>

<script>
    import axios from "../../axios-request.js";
    import StudentDetail from './StudentDetail.vue';
    import StudentForm from "../student/StudentForm.vue"
    import EditStudent from '../student/DialogEditStudent.vue'
    export default {
        components:{
            'student-form': StudentForm,
            'edit-student': EditStudent,
            'student-detail': StudentDetail,
        },
        data: () => ({
            imgUrl: "http://127.0.0.1:8000/storage/images/",
            student_list: [],
            searchStudentname:'',
            dialogDelete: false,
            studentID: null,
            update_student: false,
            studentInfo: '',
            ishowDetail: false,
            hidForm: true,
            noData: "No data available",
        }),
        methods: {
            closeDetail(back){
                this.ishowDetail = back;
                this.hidForm = true;
            },
            studentDetail(studentInfo){
                this.ishowDetail = true;
                this.studentInfo = studentInfo;
                this.hidForm = false;
                console.log(studentInfo);
            },
            editItem(students){
                this.update_student = true;
                this.studentInfo = students;
            },

            UpdateStudent(id,editStudent,isFalse){
                axios.put('/students/'+ id , editStudent ).then(res=>{
                    console.log(res.data);
                    this.update_student = isFalse;
                    this.getStudents();
                })
            },

            getStudents() {
                axios.get("/students").then((res) => {
                    this.student_list = res.data;
                });
            },
            deleteItem(student) {                
                this.dialogDelete = true;
                this.studentID = student.id;
            },
            deleteItemConfirm() {
                axios.delete("/students/" + this.studentID).then((res) => {
                    console.log(res.data);
                    this.getStudents();
                    this.dialogDelete = false;
                });
            },
            cancel(isFalse){
                this.update_student = isFalse;
            },
            searchStudent(){
                if(this.searchStudentname !== ''){
                    axios.get('/searchStudent/search/' + this.searchStudentname).then(res=>{
                        this.student_list = res.data;
                    })
                }else{
                    this.getStudents();
                }
            },
        },
        mounted() {
            this.getStudents();
        },
    }
</script>

<style scoped>

    .ms{
        text-align: center;
        justify-content: center;
        align-items: center;
        display: flex;
        color: grey;
    }

    section{
        margin-top: -1.5px;
    }

    .text-h5{
        color: white;
    }

    .btn-create{
        margin: 10px; 
    }

    v-radio{
        display: flex;
    }

    thead {
        height: 7vh;
        font-size: 18px;
    }

    thead th {
        color: #fff;
        font-size: 15px;
    }

    tbody{
        height: 15vh;
        cursor: pointer;
    }

    .title{
        margin-left: -1.5%;
    }

    .t{
        margin-top: 3%;
        margin-left: -1.5%;
    }

    .search{
        margin-right: -1.5%;
        width: 11%;
    }

    #action-btn{
        margin-bottom: 20px;
    }

    #edit{
        color: rgb(59, 114, 252);
    }

    #delete{
        color: rgb(250, 56, 59);
    }

</style>