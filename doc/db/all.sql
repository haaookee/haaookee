drop table if exists `chapter`;
create table `chapter`(
    `id`  char(8) not null comment 'ID',
    `course_id` char(8) comment  '课程ID',
    `name` varchar(50) comment '名称',
    primary key (`id`)
) engine=innodb default  charset=utf8 comment='大章';


insert into `chapter`(id,course_id,name)values('00000001','00000000','测试大章1');
insert into `chapter`(id,course_id,name)values('00000002','00000000','测试大章2');
insert into `chapter`(id,course_id,name)values('00000003','00000000','测试大章3');
insert into `chapter`(id,course_id,name)values('00000004','00000000','测试大章4');
insert into `chapter`(id,course_id,name)values('00000005','00000000','测试大章5');
insert into `chapter`(id,course_id,name)values('00000006','00000000','测试大章6');
insert into `chapter`(id,course_id,name)values('00000007','00000000','测试大章7');
insert into `chapter`(id,course_id,name)values('00000008','00000000','测试大章8');
insert into `chapter`(id,course_id,name)values('00000009','00000000','测试大章9');
insert into `chapter`(id,course_id,name)values('00000010','00000000','测试大章10');
insert into `chapter`(id,course_id,name)values('00000011','00000000','测试大章11');
insert into `chapter`(id,course_id,name)values('00000012','00000000','测试大章12');
insert into `chapter`(id,course_id,name)values('00000013','00000000','测试大章13');
insert into `chapter`(id,course_id,name)values('00000014','00000000','测试大章14');

drop table  if exists `test`;
create table  `test` (
`id` char(8) not null default '' comment 'id',
`name` varchar(50) comment '名称',
primary  key (`id`)

)engine=innodb default charset=utf8 comment='测试';
insert into `test`(id,name)values(1,'测试');
insert into `test`(id,name)values(2,'测试2');