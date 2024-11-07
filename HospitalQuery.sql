create database Hospital;
drop table if exists Doctor
drop table if exists Patient
create table Doctor(
doctorID int PRIMARY KEY identity(1,1),
doctorName varchar(30) not null,
doctorSpeclization varchar(50) not null,
);
create table Patient(
patientID int PRIMARY KEY identity,
patientName varchar(30),
patientStatus varchar(30),
doctorID int,
foreign key (doctorID) references Doctor(doctorID),
)
insert into Doctor(doctorName,doctorSpeclization)
values
('Mazen','Heart'),
('Seif' , 'Anesthesiology'),
('Abdallah' , 'Cardiology'),
('Gamal' , 'Dermatology'),
('Salma' , 'Nuclear medicine');
insert into Patient(patientName,patientStatus)
values
('Mohammed' , 'Crazy'),
('Ahmed' , 'Cold'),
('Kareem' , 'Sick'),
('Mohanned' , 'Crazy'),
('Farah' , 'Cold');
