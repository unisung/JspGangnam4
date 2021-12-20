create table bbs(
 num number primary key,      -- 글 번호
 writer varchar2(30) not null,-- 작성자
 subject varchar2(100) not null, -- 제목
 content varchar2(2048) not null, -- 내용
 readcount number default 0,      -- 조회수
 password varchar2(20) not null,  -- 비밀번호
 reg_date date default sysdate,   -- 등록일자
 ip varchar2(30) not null,        -- ip주소
 ref number not null,             -- 답변글 그룹
 re_step  number not null,        -- ref내의 순서
 re_level number not null         -- 들여쓰기 
);
