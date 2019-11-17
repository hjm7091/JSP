## JSP 연습

#### 18장 : JDBC를 통한 DB연동, Statement 객체 살펴보기

#### 19장 : 회원가입 및 로그인 프로그래밍

#### 20장 : DAO(Data Access Object), DTO(Data Transfer Object), PreparedStatement, 커넥션풀(DBCP)

#### 21장 : 회원 인증 프로그래밍

#### 22장 : 파일 업로드(cos.jar 사용)

#### 23장 : EL(Expression Language)이란 표현식 또는 액션 태그를 대신해서 값을 표현하는 언어

#### 24장 : JSTL(JSP standard Tag Library) => Core, XML Processing, I18N formatting, SQL, Functions

* Core 라이브러리는 기본적인 라이브러리로 출력, 제어문, 반복문 같은 기능이 포함되어 있음
        
#### 25장 : FrontController 패턴과 Command 패턴
        
* FrontController 패턴은 클라이언트의 다양한 요청을 한곳으로 집중시켜, 개발 및 유지보수에 효율성을 극대화 
* Command 패턴은 클라이언트로부터 받은 요청들에 대해서, 서블릿이 작업을 직접 처리 하지 않고, 해당 클래스가 처리하도록함
        
* * *

### MVC패턴을 이용한 게시판 만들기

1. MVC패턴의 이해
* MVC란 Model, View, Controller를 뜻하는 용어로 개발 형태의 일종
* Model : 데이터베이스와의 관계를 담당함. 클라이언트의 요청에서 필요한 자료를 데이터베이스로부터 추출하거나, 수정하여 Controller로 전달함
* View : 사용자한테 보여지는 UI화면. 주로 .jsp파일로 작성 하며, Controller에서 어떤 View 컴폰넌트를 보여줄지 결정함
* Controller : 클라이언트의 요청을 받고, 적절한 Model에 지시를 내리며, Model에서 전달된 데이터를 적절한  View에 전달
* 이렇게 작업을 분할하면, 추후 유지보수에 좋음

2. 모델 종류

* Model1 : MVC에서 View와 Controller가 같이 있는 형태

![캡처1](https://user-images.githubusercontent.com/28583661/69005382-d1d50680-0964-11ea-94fa-74d9a1b8a43a.PNG)

* Model2 : MVC에서 Model, View 그리고 Controller가 모두 모듈화 되어 있는 형태

![캡처2](https://user-images.githubusercontent.com/28583661/69005417-6475a580-0965-11ea-8cb0-aabd353d6397.PNG)

3. 컴포넌트 설계

![캡처3](https://user-images.githubusercontent.com/28583661/69005492-a3f0c180-0966-11ea-9f17-898a07532a83.PNG)

4. 데이터베이스 테이블 설계

![캡처4](https://user-images.githubusercontent.com/28583661/69005540-d69aba00-0966-11ea-97f1-2bdfd3876e73.PNG)

5. 화면

* list.jsp

![list](https://user-images.githubusercontent.com/28583661/69005600-b15a7b80-0967-11ea-90af-eeb151488921.PNG)

* write_view.jsp

![write_view](https://user-images.githubusercontent.com/28583661/69005629-537a6380-0968-11ea-967f-4a3ebb0733d5.PNG)

* content_view.jsp

![content_view](https://user-images.githubusercontent.com/28583661/69005633-5c6b3500-0968-11ea-81f2-e7bd986a7791.PNG)

* reply_view.jsp

![reply_view](https://user-images.githubusercontent.com/28583661/69005635-655c0680-0968-11ea-9e2d-6f70c3278f75.PNG)


