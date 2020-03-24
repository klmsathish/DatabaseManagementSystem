create database group_challenge;
use group_challenge;
 create table books
 (
  ISBN int primary key,
  b_name varchar(25),
  pages int,
  editor_id int,
  owner_id int
  );
  describe books;
  create table item
  (
   i_name varchar(25),
   i_id int primary key,
   i_no int,
   ISBN int,
   sup_id int
   );
  describe item; 
   create table supplier
   (
     sup_id int primary key,
     sup_name varchar(25),
     sup_gst int
     );
  describe supplier;   
     create table shop_owner
     (
     owner_id int primary key,
     owner_name varchar(25),
     no_books int
     );
  describe shop_owner;   
     create table author
     (
     author_name varchar(25),
     author_age int,
     subject_name varchar(25),
     foreign key(subject_name) 
     references subject1(subject_name)
     );
  describe author ;  
     create table subject1
     (
     subject_name varchar(25) primary key,
     subject_id int,
     
     ISBN int
     );
describe subject1;     
     create table editors
     (
     editor_id int primary key,
     editior_name varchar(25)
     );
	 create table written_by(author_name varchar(50),ISBN int, subject_name varchar(25));
 describe written_by    
     