-- 테이블 생성
create table if not exists favorite_subject
(
    subject_no int auto_increment primary key,
    subject_name varchar(255) not null unique
);

-- 데이터 삽입
insert into favorite_subject
values(null, 'JAVA'),
      (null, 'MYSQL'),
      (null, 'JDBC'),
      (null, 'MYBATIS'),
      (null, 'SPRING'),
      (null, 'REACT');


select * from favorite_subject;
describe favorite_subject; -- 테이블 구성 확인

-- 테이블 생성
create table if not exists class
(
    student_no int auto_increment primary key,
    student_name varchar(255) not null,
    gender varchar(5) not null check (gender in ('남', '여')),
    github_id varchar(255) not null unique,
    email varchar(255) not null unique,
    mbti varchar(10),
    subject_no int,
    foreign key (subject_no)
        references favorite_subject (subject_no)
);

-- 데이터 삽입
insert into class
(student_no, student_name, gender, github_id, email, mbti, subject_no)
values(null, '박태근', '남', 'Ohgiraffers-bear', 'bear.ohgiraffers@gmail.com', null, 5),
      (null, '지동현', '남', 'Bring2it2on', 'yjkl0516@gmail.com', null, 3),
      (null, '김강현', '남', 'kimkinghyeon', 'modan8199@gmail.com', null, 1),
      (null, '이득규', '남', 'MANTISKYU', 'asdaron44@gmail.com', null, 2),
      (null, '홍주연', '여', 'juyeon99', 'juyeon0806@gmail.com', null, 1),
      (null, '양혜연', '여', 'yanghyeyeon', 'yhy4058@gmail.com', null, 5),
      (null, '이규섭', '남', 'LKS9616', 'lks609591@gmail.com', null, 2),
      (null, '전유안', '남', 'euuuuuuan', 'euan.may24@gmail.com', null, 4),
      (null, '박성은', '남', 'seongeun223', 'jklun080921@gmail.com', null, 2),
      (null, '박하얀', '여', 'parkhayarn', 's0224y92@gmail.com', null, null),
      (null, '위성민', '남', 'wdh970616', 'wdh970616@naver.com', null, null),
      (null, '박효찬', '남', 'qwes5674', 'qwes5674@gmail.com', null, 2),
      (null, '이의정', '남', 'himisterlee', 'lejlej100418@gmail.com', null, 2),
      (null, '권은혜', '여', 'dmsgpk237', 'a01027947353@gmail.com', null, 2),
      (null, '권보현', '여', 'Kwonbohyun', 'kwon18923@gmail.com', null, 2),
      (null, '배하은', '여', 'HEun0420', 'usialeta@gmail.com', null, 2),
      (null, '강연진', '여', 'kangyeonjin', 'yeonjin917n.n@gmail.com', null, 5),
      (null, '강진영', '남', 'weed97', 'weed9935@gmail.com', null, 2);

select * from class;
describe class;