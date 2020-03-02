-- 댓글 테이블 생성
CREATE TABLE [dbo].[AnswersComments]
(
	[Id]	INT Identity(1,1)		 
			NOT NULL PRIMARY KEY,	--일련번호
	ArticleId Int Not Null, --해당 아티클 게시물 번호(BoardId, ProductId)
	
	-- [0] 5W1H 
	Name		NVarChar(25) Not Null,				      -- 이름
	PostDate	DateTime Default GetDate() Not Null,	  -- 작성일
	PostIp		NVarChar(15) Null,						  --작성IP
	Title		NVarChar(150) Not Null,					  --제목
	Content		NVarChar(Max) Not Null,					  --내용
	Category	NVarChar(20) Default('Free') Null,		  -- 카테고리(확장...) =>'공지', '자유', '자료',' 사진', ...
	
	--[1] 댓글 관련 주요 컬럼: 레거시
	Opinion NVarChar(4000) Null, --댓글 내용
	BoardName NVarChar(50) Null, --게시판이름(확장) : Notice, Free, Photo, Data
	Password NVarChar(255) Not Null, --댓글 삭제용 암호

	--[2] 기타 확장 기능 및 참조 관련 주요 칼럼
	Num				Int Null,			--번호(확장...)
	UserId			Int Null,			--(확장...) 사용자 테이블 Id
	CategoryId		Int Null Default 0, --(확장...) 카테고리 테이블 Id
	BoardId			Int Null Default 0, --(확장...) 게시판(Board) 테이블 Id
	AplicationId	Int Null Default 0	--(확장용) 응용프로그램 Id
)

Go
