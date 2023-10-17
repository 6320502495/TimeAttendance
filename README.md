<h3 align="center">มหาวิทยามหาวิทยาลัยเกษตรศาสตร์ วิทยาเขตกําแพงแสน</h3>
<h5 align="center">คณะวิศวกรรมศาตร์ กำแพงแสน ภาควิชาวิศวกรรมคอมพิวเตอร์</h5>

# ETAMS Project: Employee Time Attendance Management System
**:bulb: Project นี้เป็นส่วนหนึ่งของรายวิชา Cooperative Education Preparation 02204390-60 :bulb:**

> ## :gear: การ setup Environment สำหรับโปรเจค :gear:
1. ทำการ Clone ตัว Repository

2. ทำการนำฐานข้อมูลลงในตัว XAMPP
    - ทำการสร้างฐานข้อมูลใน http://localhost/phpmyadmin/ ตั้งชื่อ database ว่า time_flow
    - import : file "time_flow.sql" ใน folder: database

3. ทำการ run file และ ติดตั้ง Library ที่ต้องใช้
    - เปิด VSCode จากนั้น พิมพ์ cd ตามด้วยชื่อ folder ที่เราต้องการจะรัน (client, server)
    - พิมพ์ npm i เพื่อติดตั้ง Library ทั้งหมดที่ต้องใช้ใน Project
    - พิมพ์ npm run dev ในการรัน client หรือ server
    - หากต้องการจะรันทั้ง client และ server ในเวลาเดียวกัน ให้กด new terminal จากนั้นทำกระบวนการซ้ำอีก 1 รอบ

> ## :man: สมาชิกภายในทีม :man:

| ชื่อ | หน้าที่ |
| ------------- | ------------- |
| นายธีรภัทร อักษรนันท์  | Project Manager, Frontend Developer |
| นายอัษฎาวุธ คล้ายเมือง  | Full-Stack Developer |
| นายอาบิ๊ด มหากลั่น  | Frontend Developer |
| นายโรจนากร แย้มบางยาง  | Backend Developer |

> ## :checkered_flag: ลำดับการทำงาน :checkered_flag:

- [x] I. วางแผนการทำงานโครงการ
- [x] II. การออกแบบเว็บไซต์
- [x] III. การออกแบบฐานข้อมูล 
- [x] IV. สร้างฐานข้อมูล
- [x] V. พัฒนาโครงสร้างเว็บไซต์
- [x] VI. ทดสอบการทำงานโดยรวม **_(อยู่ในกระบวนการ)_** 

> ## :clipboard: รายละเอียดแต่ละงาน :clipboard:

##### _1 วางแผนการทำงานโครงการ_

| **_เทคโนโลยี หรือ ซอฟแวร์_** | **_ฟังก์ชัน_** | **_รายละเอียด_** |
| :-------------: | :-------------: | ------------- |
| ![VSCode](https://img.shields.io/badge/VSCode-0078D4?style=for-the-badge&logo=visual%20studio%20code&logoColor=white) | IDE | โปรแกรมประยุกต์ซอฟต์แวร์ที่ช่วยให้โปรแกรมเมอร์พัฒนาซอฟต์แวร์ได้อย่างมีประสิทธิภาพ ในที่นี่ใช้ในการทำทุกๆอย่าง |
| ![Xampp](https://img.shields.io/badge/Xampp-F37623?style=for-the-badge&logo=xampp&logoColor=white) | Frameworks & Library | XAMPP Version: 7.4.29 |
| ![NodeJS](https://img.shields.io/badge/Node%20js-339933?style=for-the-badge&logo=nodedotjs&logoColor=white) | Frameworks & Library | ใช้สำหรับการ Coding Backend |
---
##### _2 การออกแบบเว็บไซต์_

Reference ทำการออกแบบด้วย Figma : [<img src="https://img.shields.io/badge/Figma-F24E1E?style=for-the-badge&logo=figma&logoColor=white"/>](https://www.figma.com/file/CjfFXcdzQ1JSqQ00J9Bb84/Employee-Time-Attendance-Management-System?type=design&node-id=0-1&mode=design&t=hWi00yhh0TN0wfSI-0)

---
##### _3 การออกแบบฐานข้อมูล_
การออกแบบเป็นดังภาพที่เห็นต่อไปนี้ (ไฟล์ : TimeAttendance / :file_folder: database/database-diagram.PNG)

![ER_Diagram_1](https://github.com/6320502495/TimeAttendance/blob/main/database/database-diagram.jpg?raw=true)

---
##### _4 สร้างฐานข้อมูล_

Database (ไฟล์ : TimeAttendance / :file_folder: database/time_flow.sql) 

![SQL_Image_1](https://github.com/6320502495/TimeAttendance/blob/main/database/database.PNG?raw=true)




---
##### _5 พัฒนาโครงสร้างเว็บไซต์_
Code ของเว็บไซค์ฝั่ง Client อยู่ใน :file_folder: client
<br>
Code ของเว็บไซค์ฝั่ง Server อยู่ใน :file_folder: server
<br>

---
##### _6 ทดสอบการทำงานโดยรวม_
- บทบาท HR
- [x] บันทึกเวลาเข้างานของตนเองและดูประวัติการเข้างาน
- [x] เขียนใบลาและดูประวัติการลา
- [x] จัดการข้อมูลพนักงาน
- [x] เรียกดูข้อมูลพนักงาน
- [x] ลบพนักงาน
- [x] แก้ไขข้อมูลพนักงาน
- [x] เพิ่มพนักงาน
- [x] อนุมัติหรือปฏิเสธใบลาของพนักงาน
- [x] จัดการข้อมูลการเข้างานของพนักงาน
- [x] ดูข้อมูลการเข้างานของพนักงานทั้งหมด
- [x] จัดการข้อมูลใบลาของพนักงาน
- [x] ดูข้อมูลการลาของพนักงาน
- [x] อนุมัติหรือปฏิเสธใบลาของพนักงาน
- บทบาทพนักงาน
- [x] บันทึกเวลาเข้างานของตนเองและดูประวัติการเข้างาน
- [x] เขียนใบลาและดูประวัติการลา
- บทบาท Admin
- [x] จัดการข้อมูลพนักงาน
- [x] เรียกดูข้อมูลพนักงาน
- [x] ลบพนักงาน
- [x] แก้ไขข้อมูลพนักงาน
- [x] เพิ่มพนักงาน
- [x] เปลี่ยนบทบาทของผู้ใช้ให้เป็น HR
- [x] จัดการข้อมูลการเข้างานของพนักงาน
- [x] ดูข้อมูลการเข้างานของพนักงานทั้งหมด
- [x] จัดการข้อมูลใบลาของพนักงาน
- [x] ดูข้อมูลการลาของพนักงาน
- [x] อนุมัติหรือปฏิเสธใบลาของพนักงาน
- [x] สามารถเปลี่ยนบทบาทของผู้ใช้ให้เป็น HR ได้
- รายละเอียดเพิ่มเติม
- [x] ระบบนี้ไม่มีระบบสมัครสมาชิกในหน้า login แต่จะให้ HR หรือ Admin เป็นผู้สมัครให้พนักงาน
