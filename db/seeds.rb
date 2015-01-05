# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ prename: 'Chicago' }, { prename: 'Copenhagen' }])
#   Mayor.create(prename: 'Emanuel', city: cities.first)

User.delete_all
User.create!(prename:"Nina", lastname: "Regli", email:"nina@ga.com", password:"password", role: "client", dob: '1982-02-17' )
User.create!(prename:"Sebastian", lastname: "Riddle", email:"sebastian@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Sadiq", lastname: "Okocha",  email:"sadiq@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Joel", lastname: "Pickup",  email:"joel@ga.com", password:"password", role: "client", canbeteacher: true, dob: '1990-01-01')
User.create!(prename:"Ellie", lastname: "McGregor",  email:"ellie@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Sophie", lastname: "Allaoua",  email:"sophie@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Tony", lastname: "Goncalves",  email:"tony@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Luke", lastname: "Grayland",  email:"luke@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Bruno", lastname: "Vinel", email:"bruno@ga.com", password:"password",role: "client", dob: '1990-01-01')
User.create!(prename:"Hannah", email:"hannah@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Lisa", email:"lisa@ga.com", password:"password", role: "client", dob: '1990-01-01', canbeteacher: true)
User.create!(prename:"Neil", email:"neil@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Rabea", email:"rabea@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Andres", email:"andres@ga.com", password:"password", role: "client", canbeteacher: true, dob: '1981-11-01')
User.create!(prename:"Daniel", email:"daniel@ga.com", password:"password", role: "client", dob: '1984-11-01')
User.create!(prename:"Julia", email:"julia@ga.com", password:"password", role: "client", dob: '1990-01-01')
User.create!(prename:"Michael", lastname: "Pavling", email:"michael@ga.com", password:"password", role: "staff", canbeteacher: true, dob: '1970-01-01')
User.create!(prename:"Gery", lastname: "Mathe", email:"gery@ga.com", password:"password", role: "staff", canbeteacher: true, dob: '1980-01-01')
User.create!(prename:"Jarkyn", lastname: "S-somthing", email:"jarkyn@ga.com", password:"password", role: "staff", canbeteacher: true, dob: '1990-01-01')
User.create!(prename:"Alex", lastname: "Chin", email:"alex@ga.com", password:"password", role: "staff", canbeteacher: true, dob: '1990-01-01')
User.create!(prename:"Johanna", lastname: "Carlberg", email:"johanna@ga.com", password:"password", role: "staff", canbeteacher: true, dob: '1990-01-01')
User.create!(prename:"Lexie", lastname: "Papaspyrou", email:"lexie@ga.com", password:"password", role: "admin", dob: '1990-01-01')

Course.delete_all
Course.create!(name: "WDI 10", start_date: '2014-09-02', end_date: '2015-12-02')
Course.create!(name: "UX 11", start_date: '2013-09-02', end_date: '2013-12-02')
Course.create!(name: "UX 12", start_date: '2012-09-02', end_date: '2012-12-02')
Course.create!(name: "Coding for Beginners 3", start_date: '2015-09-02', end_date: '2015-12-02')
Course.create!(name: "Blogging Basics 2", start_date: '2015-09-02', end_date: '2015-12-02')

Enrollment.delete_all
Enrollment.create!(user_id: 1, course_id: 1, courserole: "teacher")

Coursetype.delete_all
Coursetype.create!(name: "Web Development Immersive", description: "We teach the skills you need to kickstart your career as a developer and a lifelong learner. From programming fundamentals to launching full-stack web apps, you'll learn to solve problems with code while applying industry best practices in a collaborative environment.", intensity: "Immersive", remote_icon_url: "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/3010/thumb_Understanding-the-Nodejs-Platform.jpg")
Coursetype.create!(name: "User Exeperience Design Immersive", description: "We teach core skills that make up the entire user experience design process. From research and ideation to prototyping and testing, you’ll learn how to solve design problems utilizing a tried and true set of skills and methods.", intensity: "Immersive", remote_icon_url: "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/922/thumb_Building-your-team.jpg")
Coursetype.create!(name: "Coding for Beginners", description: "This session, designed for the beginner programmer, will assume no previous coding knowledge. We'll go over key coding terminology and principles, introduce languages like HTML and CSS—what their functions are, how they work together—and use that new knowledge to write our own code and develop our own simple site.", intensity: "Workshop", remote_icon_url: "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/1188/thumb_How-To-Hire-A-Developer-NYC.jpg")
Coursetype.create!(name: "Blogging Basics", description: "The class is for those without a current blog or with a basic one that could use a boost. Some knowledge of blogging and the tools used for it will be helpful, but not necessary.", intensity: "Workshop", remote_icon_url: "https://ga-core.s3.amazonaws.com/production/uploads/program/default_image/425/thumb_Essentials-of-blogging-and-content-strategy.jpg")



Classroom.delete_all
Classroom.create!(name: "Classroom 1", capacity: 20)
Classroom.create!(name: "Classroom 2", capacity: 15)
Classroom.create!(name: "Classroom 3", capacity: 20)
Classroom.create!(name: "Classroom 1", capacity: 20)
Classroom.create!(name: "Classroom 2", capacity: 15)
Classroom.create!(name: "Classroom 3", capacity: 20)


Campus.delete_all
Campus.create!(name: "Second Home 68-80 Hanbury Street, London UK")
Campus.create!(name: "Back Hill 9 Back Hill, London UK")
