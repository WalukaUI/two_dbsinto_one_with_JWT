# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding data..."

Patient.destroy_all
Location.destroy_all
Doctor.destroy_all
DoctorLocation.destroy_all
Appointment.destroy_all
Comment.destroy_all

# doctor table data

spe=["Anesthesiology", "Family medicine", "Dermatology", "Pediatrics", "Preventive medicine" ]
edu=["MBBS,MD", "BSc,MD,Phd", "MDC,MBBS"]
vdo_vst=[true,false]
puts "Seeding doctors..."

doctor1=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzRaxM5y3PoVZoZw1_62dqVdwsZXypn2ySuw&usqp=CAU",doctor: true)
doctor2=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQtJz2qzlsOmmPPA0cN7isuZrJGDa4Nv7dVsQ&usqp=CAU",doctor: true)
doctor3=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPy4cxGZWyWrPaSzd6yA11a2KyhbYs_1eYUg&usqp=CAU",doctor: true)
doctor4=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl0k2rCQT_0YdmbqUxbjGNtwxf7NsDLJr3HA&usqp=CAU",doctor: true)
doctor5=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSEbcJq9UB2_uj14bDekDJKIOBZs7fPZDIyCg&usqp=CAU",doctor: true)
doctor6=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSBeTXT6n8Xwt4cBdxmFeis7HUni4fWgyQOrg&usqp=CAU",doctor: true)
doctor7=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: "cwaluka@gmail.com",education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrpQtyRMx6OhmBjjrmYd3_hmRtx6Koi3wchg&usqp=CAU",doctor: true)
doctor8=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJiBiZSvVxfxQlM4C0Sabn8SZ8DcBzKQP2jA&usqp=CAU",doctor: true)
doctor9=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGGB7iQ3XJ7fqFwzk0qxCi5bOAjFr26H79kQ&usqp=CAU",doctor: true)
doctor10=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmGIQ6O_zlBG6U943wOeO0MJmhz9Nlqb_lCQ&usqp=CAU",doctor: true)
doctor11=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQi_2yrCOq9Q0joZK8TRFCmHcxDtoUPdXsu5AepayL4molUb7PhYnZG_8QOnBMBgJpeepU&usqp=CAU",doctor: true)
doctor12=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvG63T_pvtSC6_Sr_x9W4QUOPtp0qw5leNRc2HMcIveNigbyb86Qr7MlFn_IX501fS8vk&usqp=CAU",doctor: true)
doctor13=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSKglgYH9p9SbbHOKqVeV7pGd8UwPRoeO6TeoKRnrQxZTncF2T-oDG9pBGWfo-UE1JLjKc&usqp=CAU",doctor: true)
doctor14=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3Xd7HCR-rhjkcz0QrZNUldM_mMA1s4jV2aWXl2P4nUKKPgerbrFwWxsWvu9vV__L-bCU&usqp=CAU",doctor: true)
doctor15=Doctor.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,education: edu.sample,speciality: spe.sample,role: "doctor", password: "123456",isaccept_newpatients:vdo_vst.sample,video_vistits:vdo_vst.sample,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4-uDIbzBqGHwaWmQjnyiuOR1C_ZHBVzZxAYKlM_G6bXBxnuHpt1WkkzVOzMIPKnoHVHI&usqp=CAU",doctor: true)


puts "doctor seeded"

# Location  table data


location1=Location.create!(name: "Normandy",address_line_one: "7738 Springdale Dr",address_line_two: "Normandy",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 354544742,latitude: 38.713894216893614, longitude: -90.30208583616161,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1UqUxZkk8j-8aAEsjczXXro8iIAQLrwj1B0aL151b9PYVcCXrCJO7rwAjz6KDM8ni08k&usqp=CAU")
location2=Location.create!(name: "OFallon",address_line_one: "2254 State Hwy K",address_line_two: "O'Fallon",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 5378568456,latitude: 38.67118615958442,longitude: -90.21846271745149,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdrWdb_UspxH4oxP0vV-CMsNqE7-NVkdQtaz_hKnd3puRpoq5dgCYFTMo7Y_F8b5RJYMA&usqp=CAU")
location3=Location.create!(name: "Cool Vally",address_line_one: "1790 S Florissant Rd",address_line_two: "Cool Vally",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 52687565,latitude: 38.72439590747494 ,longitude: -90.30697151854389,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCCiOvXSXJwe_nvEakbCxSNGE5WdK2kkLcsn-ioD05vKb3h2j4ZzRvXdvLswr6eT8cV08&usqp=CAU")
location4=Location.create!(name: "Club Hills",address_line_one: "17306 Kedzie Ave ",address_line_two: "Hazel Crest",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 7882251,latitude: 41.57448061735295,longitude: -87.69542802188134,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS2wjXv6wGiCJTi_294jLlQLJMqTDagUcz7fiGGe7s4wmqJTFddOsoBj1lCs3iiRzMl38w&usqp=CAU")
location5=Location.create!(name: "Edwardville",address_line_one: "2525 S State Rte 157 ",address_line_two: "Edwardsville",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 3648855,latitude: 38.78110712349212,longitude: -89.99641567999147,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSazOhccALOVuA_4rNgTLGPgbDxizcQUqsul3fTwSij-mMsC_QozjJR0i0qCnmNkqSks9g&usqp=CAU")
location6=Location.create!(name: "Edmundson",address_line_one: "10482 Natural Bridge Rd",address_line_two: "Edmunson",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 87155696,latitude: 38.73712379963696,longitude: -90.36228141271617,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4bLms4yvtKNmhAyjd4qwNEpIZymvb4tfEO-WJhPPFi7t9GznLf2Q1xZ1qO1XNQwuhf08&usqp=CAU")
location7=Location.create!(name: "Kinloach",address_line_one: "7102 N Hanley Rd",address_line_two: ", Hazelwood",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 8745325,latitude: 38.769072424972215,longitude: -90.33469273996937,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAUlTg2cWvI6O4UEIBICPeL_YLAswmqWreIrI8svzPYOvyb7a5dxAjbY25nypfPs2ohK4&usqp=CAU")
location8=Location.create!(name: "Brentwood",address_line_one: "8600 Strassner Dr",address_line_two: "Brentwood",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 557857528,latitude: 38.621725600291,longitude: -90.36688427904915,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQvf-JZEamV7M40lnZwzwt1bcG4dJLjnFnaZ_DdoLGz9BVnKF5G5orxsnFTH8h77vLwBAI&usqp=CAU")
location9=Location.create!(name: "Hazelwood",address_line_one: "1186 Teson Rd",address_line_two: "Hazelwood",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 8796255,latitude: 38.792604024269586,longitude: -90.38527052976517,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSUARn17ROcny2WcKuppzCwujqFJ_SrY00BsF5-fxuCOW6_5q42dMb7FFXRnG7nt1Hzsw&usqp=CAU")
location10=Location.create!(name: "St.Peters",address_line_one: "1725 Thoele Rd",address_line_two: "St.Peters",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 898741525,latitude: 38.76611838286981,longitude: -90.51087057784007,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROMDZOJNv-nXx6VXdS0Ourz9oZe3IjYIfvWVJrjO2PIZcE_pDPD6rVo4v_yBws4FZMV3U&usqp=CAU")
location11=Location.create!(name: "Creve Cour",address_line_one: "1030 Woodcrest Terrace Dr",address_line_two: "Creve Cour",city: "St. Louis",zipcode: Faker::Address.zip_code,contact_number: 878945585,latitude: 38.675473733114316,longitude: -90.45294602510049,image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT8HuAxLhlOwgoWda8V-xfQm_ZbKAKlQSuJM-sdR9ojvsXH-7HZ_vzzJzKsjsylW5XAu2o&usqp=CAU")

puts "location seeded"

locate =[location1.id,location2.id,location3.id,location4.id,location5.id,location6.id,location7.id,location8.id,location9.id,location10.id,location11.id]

# Patient table data

patient1=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient2=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient3=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient4=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient5=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient5=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient6=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient7=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient8=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient9=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient10=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient11=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient12=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient13=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient14=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)
patient15=Patient.create!(first_name: Faker::Name.first_name,last_name: Faker::Name.last_name,email: Faker::Internet.email,contact_number: Faker::PhoneNumber.cell_phone,clinic_location: locate.sample,role: "patient",username: Faker::Internet.username,password_digest: Faker::Address.country, patient: true)




puts "ptients seeded"

 # DoctorLocation Table data
 
 patient=[patient1,patient4,patient2,patient3,patient5,patient6,patient7,patient8,patient9,patient10,patient11,patient12,patient13,patient14,patient15]
 doctor=[doctor1,doctor2,doctor3,doctor4,doctor5,doctor6,doctor7,doctor8,doctor9,doctor10,doctor11,doctor12,doctor13,doctor14,doctor15]
 location=[location1,location2,location3,location4,location5,location6,location7,location8,location9,location10,location11]


  15.times do DoctorLocation.create!(
   doctor: doctor.sample,
   location: location.sample
  ) 
  end
  puts "DoctorLocation seeded"

# Comments Table data

40.times do 
  Comment.create!(
    doctor: doctor.sample,
    patient: patient.sample,
    comment:Faker::Quote.jack_handey,
    points: rand(1..5)
    )
  end

  puts "comment seeded"

# Appointments Table data

apptimes=[1000,1030,1100,1130,1200,1300,1330]

20.times do 
   
  Appointment.create!(
   doctor: doctor.sample,
   patient: patient.sample,
   date: Faker::Date.backward(days: 14),
   time: apptimes.sample,
   status: "open"
  )
 end

puts "✅ Done seeding!"