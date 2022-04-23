<template>
    <v-container>
        <br>
        <br> 
        <v-btn @click="back" class="btn" style="background: rgb(255, 39, 39);">
            <v-list-item >
                <v-icon class="white--text">mdi-arrow-left-bold-circle</v-icon>
                <v-list-item-title class="white--text">Back</v-list-item-title>
            </v-list-item>
        </v-btn><br>
        <div class="detail-card">
            <div class="profile">
                <img :src="imgUrl+studentInfo.image" />
            </div>
            <div class="name">
                <v-col>
                    <div class="first_name">
                        <span>Name: <strong>{{studentInfo.first_name}} {{studentInfo.last_name}}</strong></span>
                    </div>
                    <div class="gender">
                        <span>Sex: {{studentInfo.gender}}</span>
                    </div>
                </v-col>
            </div>
            <div class="class">
                 <v-list-item>
                    <v-icon>mdi-theater</v-icon>
                    <v-list-item-title>{{studentInfo.class}}</v-list-item-title>
                </v-list-item>
            </div>
            <div class="school">
                <div v-if="numOfDisciples > 0">
                    <v-list-item v-for="(item,i) in discEachStudentList" :key="i">
                    <div v-if="item.type != 'Termination'" id="dd" >
                        <v-icon  class="green--text">mdi-school</v-icon>
                        <strong class="green--text">At School</strong>             
                    </div>
                    <div v-else>
                        <v-icon class="red--text">mdi-cancel</v-icon>
                        <strong class="red--text">Out School</strong> 
                    </div>
                </v-list-item>
                </div>
                <div v-else>
                    <v-icon  class="green--text">mdi-school</v-icon>
                    <strong class="green--text">At School</strong>     
                </div>
            </div>
        </div><br>
        <template>
            <v-toolbar>
                <v-tabs dark class="tb" grow>
                    <v-tab @click="showPer">
                        <v-badge color="green" :content="numOfPermissions"> Permission </v-badge>
                    </v-tab>
                    <v-tab @click="showDisc">
                        <v-badge color="pink" :content="numOfDisciples"> Discipline </v-badge>
                    </v-tab>  
                </v-tabs>
            </v-toolbar>
            <template>
                <v-expansion-panels v-if="isPermission" id="cardItem">
                    <div v-if="numOfPermissions == 0">
                        <br>
                        <h2 class="grey--text">{{nodata}}</h2>
                    </div>
                    <v-expansion-panel class="blue-grey lighten-5" v-for="(item,i) in perEachStudentList" :key="i">
                        <v-expansion-panel-header>
                            <v-icon style="font-size: 40px">mdi-link-variant</v-icon>
                            <span>{{item.startAt}} to {{item.endAt}}</span><br><br>
                            <div>
                                <strong>Amount: </strong><span v-html="Math.round(((new Date(item.endAt)).getTime() - (new Date(item.startAt)).getTime()) / (1000 * 3600 * 24))" ></span> <span>days</span>
                            </div>
                            <div>
                                <v-col v-if="item.type === 'Unauthorize' "> 
                                <strong class="red--text">{{item.type}}</strong>
                                </v-col>
                                <v-col v-else> 
                                <strong class="green--text">{{item.type}}</strong>
                                </v-col>
                            </div>
                        </v-expansion-panel-header>
                        <v-expansion-panel-content class="detail">
                            <strong>Reasons:</strong> <br>{{item.description}}
                        </v-expansion-panel-content>
                    </v-expansion-panel>
                </v-expansion-panels>
                <v-expansion-panels v-if="isDisciple" id="cardItem">
                    <div v-if="numOfDisciples == 0">
                        <br>
                        <h2 class="grey--text">{{noDiscipledata}}</h2>
                    </div>
                    <v-expansion-panel class="blue-grey lighten-5" v-for="(item,i) in discEachStudentList" :key="i">
                        <v-expansion-panel-header>
                            <v-icon v-if="item.type === 'Warning letter'" style="font-size: 40px; color: #FFC107;">mdi-alert</v-icon>
                            <strong v-if="item.type === 'Warning letter'" style="color: #FFC107;">{{item.type}}</strong>
                            <v-icon v-if="item.type === 'Termination'" class="red--text" style="font-size: 40px">mdi-close-circle</v-icon>
                            <strong v-if="item.type === 'Termination'" class="red--text">{{item.type}}</strong>
                            <v-icon v-if="item.type === 'Oral warning'" class="blue--text" style="font-size: 40px">mdi-alert-octagram</v-icon>
                            <strong v-if="item.type === 'Oral warning'" class="blue--text">{{item.type}}</strong>
                            <v-icon v-if="item.type === 'Notation'" class="black--text" style="font-size: 40px">mdi-alert-box</v-icon>
                            <strong v-if="item.type === 'Notation'" class="black--text">{{item.type}}</strong>
                            <span>{{getGoodDatetimeFormat(item.dateWn)}}</span> 
                            <br><br>
                        </v-expansion-panel-header>
                        <v-expansion-panel-content class="detail">
                            <strong>Reasons:</strong> <br>{{item.description}}
                        </v-expansion-panel-content>
                    </v-expansion-panel>
                </v-expansion-panels>             
            </template>
        </template>
    </v-container>
</template>

<script>
    import moment from "moment";
    export default {
        emits:['back'],
        props:['studentInfo'],
        data: () => ({
            imgUrl: "http://127.0.0.1:8000/storage/images/",
            student_list: [],
            searchStudentname:'',
            studentID: null,
            studentInfo: '',
            perEachStudentList: [],
            perList: [],
            discEachStudentList: [],
            numOfPermissions: '0',
            numOfDisciples: '0',
            isPermission: true,
            isDisciple: false,
            nodata: "No data on Permission",
            noDiscipledata:"No data on discipline"
        }),
        methods: {
            showPer(){
                this.isPermission = true
                this.isDisciple = false;
            },
            showDisc(){
                this.isPermission = false
                this.isDisciple = true;
            },
            getGoodDatetimeFormat(datetime) {
                return moment(String(datetime)).format("DD-MMM-Y");
            },
            back(){
                this.$emit('back', false);
            },
            getNumD(){
                for(let i in this.perEachStudentList){
                    this.numOfPermissions++;
                    console.log(i);
                }
                for(let u in this.discEachStudentList){
                    this.numOfDisciples++;
                    console.log(u);
                }
            },
        },
        mounted() {
            this.perEachStudentList = this.studentInfo.permission;
            this.discEachStudentList = this.studentInfo.disciple;
            this.getNumD();
        },
    }
</script>

<style scoped>
    #cardItem{
        width: 75.5%;
        margin-left: 10%;
        margin-top: 7px;
    }

    #dd{
        margin-left: -2%;
    }

    .v-toolbar{
        width: 75.5%;
        margin-left: 10%;
    }

    .tb{
        background: #37474F;
        box-shadow: 0px 3px 8px 1px rgba(148, 146, 146, 0.768);
    }

    .btn{
        width: 80px;
        height: 5vh;
        border-radius: 5px;
    }

    .detail-card{
        width: 100%;
        height: 18vh;
        border-radius: 5px;
        display: flex;
    }

    .detail{
        background: rgb(255, 255, 255);
    }

    .profile{
        width: 20%;
    }

    .name{
        margin-top: 2.5%;
        margin-left: 8%;
    }
    
    .name,
    .class,
    .school{
        width: 25%;
    }

    .class,
    .school{
        margin-top: 4.5%;
    }

    img{
        width: 120px;
        height: 120px;
        margin-left: 50%;
        margin-top: 4%;
        border-radius: 50%;
    }
    
</style>