# 주석
-- 주석
/* 여러줄 주석
  */
### 1. 명령어로 계정만들기

- @ 앞에는 계정명, id가 될것이고, @ 뒤에는 계정에 접근 할 수 있는 대상이 온다.
- ip 또는 % 또는 localhost가 올 수 있다.
    - localhost는 자신의 컴퓨터를 뜻하고,
    - ip 는 우리 컴퓨터가 연결된 인터넷 아이피를 뜻하고,
    - % 는 어느 ip든 전부 접근을 허용 한다.

  -- 1) 새로운 계정 만들기
create user 'ohgiraffers'@'%' identified by 'ohgiraffers';

-- 2) 계정이 추가된 것을 확인하기
use mysql
select * from user;

2. 명령어로 데이터베이스 만들기

--1) 데이터베이스 생성
create database menudb;
-- create schema menudb; -- 이것도 같은 역할을 한다.

-- MYSQL은 개념적으로 database와 스키마를 구분하지 않는다.
SHOW databases;

--2) 권한 부여하기
-- menudb 데이터베이스에 대한. * (와일드카드로 모든 권한을 의미)
-- 모든 권한을 준다. to (~에게) 어느 ip로 접속한 ohgiraffers 계정에게
grant all privileges on menudb.* to 'ohgiraffers'@'%';

-- 권한 확인하기
show grants for 'ohgiraffers'@'%';

-- menu db에서 뭔가 쿼리를 써서 데이터를 넣거나 조회하고 싶다면 이제
use menudb -- 를 사용하면 된다.