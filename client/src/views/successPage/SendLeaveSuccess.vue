<template>
        <q-layout view="hHh lpR fFf">
     <Navbar></Navbar>
     <body>
     <q-page-container>
    <div class="clock-container">
        <div class="clock">
            <div class="successPic">
            <img src="../../assets/image/check.png" style="margin: 15px; height: 150px; width: 150px;"  />
        </div>
            <h4 class="textDone" >ส่งข้อมูลใบลาสำเร็จ</h4>		 
            <h4 class="textDone2" >กรุณาติดตามสถานะใบลา</h4>	
            <span style="margin-top: 15px;"></span>
            <router-link :to="{ name: 'sendleave' }">
            <q-btn unelevated rounded color="grey" label="ย้อนกลับ"  style="padding-left: 200px; padding-right: 200px"/>
        </router-link>
        </div>

    </div>
</q-page-container>
</body>
</q-layout>
</template>
<script>
import Navbar from "../../components/EmployeeHeader.vue"; 
export default {
    components: {
    Navbar, 
    }
}
</script>


<style scoped>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: sans-serif;
}
body {
  background-image: url("../../assets/image/background.jpg");
  background-size: cover;
  margin: 0;
  min-block-size: 100vh;
}
.clock-container {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 90vh;
}

.clock {
    display: grid;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    padding: 1.2rem;
    background: #ffffff22;
    border: 1px solid #000000;
    border-radius: 1.4rem;
    box-shadow: 0 0 1.2rem rgba(0, 0, 0, 0.35);
    color: white;
    width: 500px;
    
}

.time {
    font-size: 5rem;
    font-weight: bold;
    width: max-content;
}

.date {
    display: grid;
    flex-direction: column;
    justify-content: center;
    font-size: 1.5rem;
}
.textDone {
	color: #FFFFFF;
	font-size: 25px;
	font-weight: 700;
	line-height: 130%;
    justify-content: center;
    display: grid;
    flex-direction: column;
    margin-left: 15px;
    margin-right: 15px;
    margin-top: 15px;
}
.textDone2 {
	color: #FFFFFF;
	font-size: 25px;
	font-weight: 700;
	line-height: 130%;
    justify-content: center;
    display: grid;
    flex-direction: column;
    margin-bottom: 5px;

}
.successPic{
    justify-content: center;
    display: grid;
}
</style>
