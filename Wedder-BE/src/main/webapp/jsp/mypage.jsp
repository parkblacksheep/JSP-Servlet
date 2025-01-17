<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>mypage</title>
    <!-- 링크 -->
    <section class="link">
    	
      <link rel="stylesheet" href="../../css/common/reset.css" />
      <link rel="stylesheet" href="../../css/mypage/mypage.css" />
      <link
        rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@24,400,0,0"
      /> 
      <link
        rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200"
      />
      <link
            rel="stylesheet"
            href="../../css/common/sidebar/sidebar-myPage.css"
        />
    </section>
    <!-- 스크립트 -->
    <section class="script">
      <script defer src="../../js/main/main.js"></script>
      <script defer src="../../js/mypage/mypage.js"></script>
      <script defer src="../../js/myPage/myPage-main.js"></script>
    </section>
  </head>
    <header id="header-placeholder"></header>
  <body>
    <div class="myPage-container hd__inner1100">
      <!-- 0. 마이페이지 사이드 바 -->
        <aside class="myPage-sidebar">
          <div id="myPage-sidebar-placeholder"></div>
        </aside>
      
      <!-- 1.마이페이지 메인페이지 -->
      <div class="myPage-content hd__inner960">
        <section class="body-header" id="myPage-section1">
          <div class="divide">
            <div class="body-header-main">
              <p>안녕하십니까 마타리님</p>
            </div>
            <div>
              <div class="body-header-footer">
                <div class="v-line"></div>
                <div>
                  <p>현재 예약 현황</p>
                  <p>3건</p>
                </div>
                <div class="v-line"></div>
                <div>
                  <p>금일 방문 일정</p>
                  <p>2건</p>
                </div>
              </div>
            </div>
          </div>
        </section>
        <main>
          <!-- 2.프로필 정보 -->
          <section class="profile" id="Mypage-section2">
            <div class="sub-title-header">
              <div class="sub-title">나의 프로필 정보</div>
              <div class="out">
                <a href="#">회원 탈퇴</a>
              </div>
            </div>
            <div class="profile-main">
              <div class="profile-main-image">
                <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/person/woman1.png"
                  alt="프로필 사진"
                />
              </div>
              <div>
                <div class="profile-name">마타리</div>
                <div>전화 번호</div>
                <div class="profile-body">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/phone.png"
                    alt="휴대폰 로고"
                  />
                  <p>010</p>
                  <p>-</p>
                  <p></p>
                  <p>-</p>
                  <p></p>
                </div>
                <div>메일</div>
                <div class="profile-body">
                  <img src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/mail.png" alt="메일 로고" />
                  <p>matari 4593</p>
                  <p>@</p>
                  <p>naver.com</p>
                </div>
                <div>생일</div>
                <div class="profile-body">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/common/cake.png"
                    alt="생일 케이크 로고"
                  />
                  <p>1997</p>
                  <p>년</p>
                  <p>3</p>
                  <p>월</p>
                  <p>5</p>
                  <p>일</p>
                </div>
              </div>
            </div>
          </section>
          <!-- 3.금일 방문 일정 -->
          <section class="visit-plan" id="Mypage-section3">
            <div class="sub-title-header">
              <div class="sub-title">금일 방문 일정</div>

              <div class="Reservation-mange-go">
                <a href="#">방문 일정 상세보기>>></a>
              </div>
            </div>
            <br>
            <table class="table-VSplan">
              <thead>
                <tr>
                <th>스튜디오명</th>
                <th>예약자</th>
                <th>금일 예약 시간</th>
                <th>상태</th>
              </tr>
              </thead>
              <tbody>
                <tr>
                  <td>s스튜디오</td>
                  <td>박종원</td>
                  <td>2025-10-19 일요일</td>
                  <td>예약 중</td>
                </tr> 
                <tr>
                  <td>t스튜디오</td>
                  <td>박종원</td>
                  <td>2025- 1-31 월요일</td>
                  <td>결제 완료</td>
                </tr> 
                <tr>
                  <td>c스튜디오</td>
                  <td>박종원</td>
                  <td>2025- 2-04 월요일</td>
                  <td>예약 중</td>
                </tr> 
                <tr>
                  <td>p스튜디오</td>
                  <td>박종원</td>
                  <td>2025- 3-05 월요일</td>
                  <td>결제 완료</td>
                </tr> 
              </tbody>
            </table>
          </section>
          <BR></BR><BR></BR>
          <!-- 4.현재 예약 현황 -->
          <section class="recent-reservation" id="Mypage-section4">
            <div class="sub-title-header">
              <div class="sub-title">현재 예약 현황</div>
              <div class="ReservationMange-go">
                <a href="#">상세 예약 현황 바로가기>>></a>
              </div>
            </div>
            <div class="category">웨딩 홀</div>
            <div class="table-divide">
              <div class="table">
                <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                  alt="프로필 이미지"
                />
                <div>
                  <div>비슈어 스튜디오</div>
                  <div>서울특별시 서초구 신반포로 41길 7</div>
                  <div class="button-list">
                    <button id="mail" class="mail" href="#"></button>
                    <button id="heart" class="heart liked"></button>
                  </div>
                </div>
              </div>
              <div class="table">
                <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                  alt="프로필 이미지"
                />
                <div>
                  <div>비슈어 스튜디오</div>
                  <div>서울특별시 서초구 신반포로 41길 7</div>
                  <div class="button-list">
                    <button id="mail" class="mail" href="#"></button>
                    <button id="heart" class="heart liked"></button>
                  </div>
                </div>
              </div>
              <div class="table">
                <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/Reservation-CG-Studio.png"
                  alt="프로필 이미지"
                />
                <div>
                  <div>비슈어 스튜디오</div>
                  <div>서울특별시 서초구 신반포로 41길 7</div>
                  <div class="button-list">
                    <button id="mail" class="mail" href="#"></button>
                    <button id="heart" class="heart liked"></button>
                  </div>
                </div>
              </div>
              <div class="table">
                <img
                src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                  alt="프로필 이미지"
                />
                <div>
                  <div>비슈어 스튜디오</div>
                  <div>서울특별시 서초구 신반포로 41길 7</div>
                  <div class="button-list">
                    <button id="mail" class="mail" href="#"></button>
                    <button id="heart" class="heart liked"></button>
                  </div>
                </div>
              </div>
            </div>
            <div class="tabs">
              <div id="horizontal-underline"></div>
              <div class="tab" id="studio"><a class="btn">스튜디오</a></div>
              <div class="tab" id="dress"><a class="btn">드레스</a></div>
              <div class="tab" id="makeUp"><a class="btn">메이크업</a></div>
            </div>
            <div class="content">
              <div class="studio" id="brand">
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 스튜디오</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 스튜디오</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 스튜디오</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 스튜디오</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 

              </div>

              <br>
              <div class="dress" id="brand"> 

                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 드레스</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 드레스</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 드레스</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-1.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 드레스</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
              </div>
              <div class="makeUp" id="brand"> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 메이크업</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 메이크업</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 메이크업</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
                <div class="table">
                  <img
                  src="https://wdrtest1.s3.ap-northeast-2.amazonaws.com/reservation/studio-2.png"
                    alt="프로필 이미지"
                  />
                  <div>
                    <div>비슈어 메이크업</div>
                    <div>서울특별시 서초구 신반포로 41길 7</div>
                    <div class="button-list">
                      <button id="mail" class="mail" href="#"></button>
                      <button id="heart" class="heart liked"></button>
                    </div>
                  </div>
                </div> 
              </div>
            </div>  
          </section>
        </main>
      </div>
    </div>
  </body>
  <div id="footer-placeholder"></div>
</html>