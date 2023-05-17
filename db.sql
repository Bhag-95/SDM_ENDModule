create table roles(
rid int primary key,
rname varchar(20) not null unique);

create table users(
uid int primary key,
uname varchar(20) not null,
rid int,
constraint Fk_roles foreign key(rid) references roles(rid));

create table tasks(
tid int primary key,
tname varchar(20) not null,
uid int,
constraint Fk_users foreign key(uid) references users(uid));

create table project(
pid int primary key,
pname varchar(20) not null,
pstart date,
pend date,
priority varchar(20),
constraint Fk_tasks foreign key(tid) references tasks(tid));
