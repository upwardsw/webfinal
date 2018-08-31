show tables;

create table user (
  id varchar(50) not null,
  email varchar(50),
  password varchar(50),
  primary key (id)
);

create table information (
  user_id varchar(50),
  name varchar(100),  -- 昵称
  gender int, -- 0女 1男 否则其他
  motto varchar(200),  -- 个性签名
  school varchar(50), -- 学校
  phone varchar(20), -- 电话
  primary key (user_id)
);

create table relation (
  to_id varchar(50) not null,
  from_id varchar(50) not null,  -- from_id有to_id的好友
  state int, -- 0未验证 --1已验证
  primary key (to_id, from_id)
);

create table message (
  to_id varchar(50) not null,
  from_id varchar(50) not null,
  content varchar(300),
  time timestamp not null,
  primary key (to_id, from_id, time)
);

/**  印象 */
create table impression (
  to_id varchar(50) not null,
  from_id varchar(50) not null,
  description varchar(100),
  primary key (to_id, from_id)
);


drop table user;
drop table information;
drop table relation;
drop table message;
drop table impression;