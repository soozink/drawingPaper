<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>    
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title></title>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/createproject/default.css" />
    <link
      type="text/css"
      rel="stylesheet"
      href="${pageContext.request.contextPath}/assets/css/createproject/fundingPlan.css"
    />

    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/app/createproject/api-datepicker/jquery-ui.css" />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/createproject/cpHeader.css" />
  </head>

  <body>
<%--   <c:set var="funding" value="${funding}"/> --%>
    <div class="wrap">
      <!-- header-->
      <<header id="admheader">
         <jsp:include page="/app/createproject/cpHeader.jsp"/>
      </header>

      <!-- hidden nav-->
      <nav id="admnav"></nav>

      <main>
      <form action="${pageContext.request.contextPath}/project/ProjectFundingCreateOk.pj"  method="post" id="fundingPlanSave" >
        <div class="mainWrap">
          <section class="sec1">
            <!-- 메인 컨텐츠 -->
            <!--=================================================================-->
            <div class="main-content">
              <div class="content-row">
                <!-- 목표 금액 행 -->
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      목표금액
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      프로젝트를 완수하기 위해 필요한 금액을 설정해주세요.
                    </div>
                  </div>
                  <div class="sub-notice">
                    <div class="sub-notice__title">
                      <div class="icon__i-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M21.5 23.1C21.5 23.0448 21.5448 23 21.6 23H26.4C26.4552 23 26.5 23.0448 26.5 23.1V33.9C26.5 33.9552 26.4552 34 26.4 34H21.6C21.5448 34 21.5 33.9552 21.5 33.9V23.1Z"
                          ></path>
                          <path
                            d="M21 17C21 15.3431 22.3431 14 24 14C25.6569 14 27 15.3431 27 17C27 18.6569 25.6569 20 24 20C22.3431 20 21 18.6569 21 17Z"
                          ></path>
                          <path
                            fill-rule="evenodd"
                            clip-rule="evenodd"
                            d="M24 40C32.8366 40 40 32.8366 40 24C40 15.1634 32.8366 8 24 8C15.1634 8 8 15.1634 8 24C8 32.8366 15.1634 40 24 40ZM24 44C35.0457 44 44 35.0457 44 24C44 12.9543 35.0457 4 24 4C12.9543 4 4 12.9543 4 24C4 35.0457 12.9543 44 24 44Z"
                          ></path>
                        </svg>
                      </div>
                      목표 금액 설정 시 꼭 알아두세요!
                    </div>
                    <div class="sub-notice__explain">
                      <p>
                        종료일까지 목표금액을 달성하지 못하면 후원자 결제가
                        진행되지 않습니다.
                      </p>
                      <p>
                        종료 전 후원 취소를 대비해 10% 이상 초과 달성을 목표로
                        해주세요.
                      </p>
                      <p>
                        제작비, 선물 배송비, 인건비, 예비 비용 등을 함께
                        고려해주세요.
                      </p>
                    </div>
                  </div>
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="user-input__form__white">
                    <p class="user-input__title">목표금액</p>
                    <div class="user-input__input-box">
                      <span>
                        <!-- 이벤트로 placeholder 지워야함!!!! -->
                        <input
                          type="text"
                          inputmode="nummeric"
                          placeholder="50만원 이상의 금액을 입력해주세요"
                          autocomplete="off"
                          autocapitalize="off"
                          class="input-goal"
                          name="pro_goalprice"
                          value="${funding.getPro_goalprice()}"
                          numberonly
                          comma
                        />
                        원
                      </span>
                    </div>
                    <!-- ajax로 금액 미달 시 경고문 띄워야함 !! -->
                    <div class="money-range"></div>

                    <div class="user-input__result-box">
                      <!-- 각 수수료에 맞게 계산하고 뿌려줘야함 -->
                      <div class="result-box__total">
                        <span>목표 금액 달성 시 예상 수령액</span>
                        <em>0원</em>
                      </div>
                      <div class="result-box__total-fee">
                        총 수수료
                        <em>0원</em>
                      </div>
                      <div class="result-box__agency-fee">
                        결제대행 수수료 (총 결제액의 3% + VAT)
                        <em>0원</em>
                      </div>
                      <div class="result-box__platform-fee">
                        플랫폼 수수료(총 모금액의 5%+VAT)
                        <em>0원</em>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <!-- --------------------------------------------------------------------------------------------------------------------- -->
              <!-- --------------------------------------------------------------------------------------------------------------------- -->
              <!-- --------------------------------------------------------------------------------------------------------------------- -->
              <!-- --------------------------------------------------------------------------------------------------------------------- -->

              <div class="content-row">
                <!-- 티켓 금액 행 -->
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      티켓금액
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      티켓금액을 입력해주세요. 후원을 받는 금액의 기본 단위가
                      됩니다.
                    </div>
                  </div>
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="user-input__form__white">
                    <p class="user-input__title">티켓금액</p>
                    <div class="user-input__input-box--ticket">
                      <span>
                        <!-- 이벤트로 placeholder 지워야함!!!! -->
                        <input
                          type="text"
                          inputmode="nummeric"
                          placeholder="1천원 이상의 금액을 입력해주세요"
                          autocomplete="off"
                          autocapitalize="off"
                          class="input-goal--ticket"
                          name="pro_ticketprice"
                          value="${funding.getPro_ticketprice()}"
                          comma
                        />
                        원
                      </span>
                    </div>
                    <div class="money-range--ticket"></div>
                  </div>
                </div>
              </div>

              <!-- --------------------------------------------------------------------------------------------------------------------- -->
              <!-- --------------------------------------------------------------------------------------------------------------------- -->
              <!-- --------------------------------------------------------------------------------------------------------------------- -->
              <!-- --------------------------------------------------------------------------------------------------------------------- -->

              <div class="content-row">
                <!-- 펀딩 일정 행 -->
                <div class="content-col">
                  <!-- 1열(주제와 설명) -->
                  <div class="sub">
                    <div class="sub-title">
                      펀딩 일정
                      <div class="icon__star-box">
                        <svg viewBox="0 0 48 48">
                          <path
                            d="M20.332 6.1C20.332 6.04477 20.3768 6 20.432 6H27.1968C27.252 6 27.2968 6.04477 27.2968 6.1V18.2295C27.2968 18.3066 27.3803 18.3547 27.447 18.316L37.8336 12.289C37.8815 12.2612 37.9429 12.2777 37.9705 12.3257L41.3532 18.2144C41.3807 18.2622 41.3643 18.3231 41.3167 18.3507L31.0164 24.3277C30.95 24.3662 30.95 24.4622 31.0164 24.5007L40.8186 30.1886C40.8663 30.2163 40.8826 30.2772 40.8552 30.3249L37.4724 36.2137C37.4448 36.2617 37.3834 36.2782 37.3355 36.2504L27.447 30.5124C27.3803 30.4737 27.2968 30.5218 27.2968 30.5989V41.9C27.2968 41.9552 27.252 42 27.1968 42H20.432C20.3768 42 20.332 41.9552 20.332 41.9V30.7012C20.332 30.6241 20.2485 30.576 20.1818 30.6147L10.4697 36.2504C10.4218 36.2782 10.3604 36.2617 10.3328 36.2137L6.95002 30.3249C6.92259 30.2772 6.93892 30.2163 6.98654 30.1886L16.7888 24.5007C16.8552 24.4622 16.8552 24.3662 16.7888 24.3277L6.48846 18.3508C6.44084 18.3231 6.42451 18.2622 6.45194 18.2144L9.8347 12.3257C9.8623 12.2777 9.92369 12.2612 9.9716 12.289L20.1818 18.2137C20.2485 18.2524 20.332 18.2043 20.332 18.1272V6.1Z"
                          ></path>
                        </svg>
                      </div>
                    </div>
                    <div class="sub-explain">
                      설정한 일시가 되면 펀딩이 자동 시작됩니다. 펀딩 시작
                      전까지 날짜를 변경할 수 있고, 즉시 펀딩을 시작할 수도
                      있습니다.
                    </div>
                  </div>
                  <!-- <div class="alert"></div> -->
                </div>
                <div class="content-col">
                  <!-- 2열(입력 양식) -->
                  <div class="user-input__form">
                    <ol class="line">
                      <li>
                        <div class="user-input__row">
                          <!-- 시작일 시작 시간 -->
                          <div class="user-input__col">
                            <!-- 시작일 -->
                            <p>시작일</p>
                            <div>
                              <div class="cal-button__box">
                                <!-- date버튼 역할을 함 -->
                                <!-- 달력 div를 구현해야함.... -->

                                <button type="button" class="cal-button">
                                  <div class="icon__cal-box">
                                    <svg viewBox="0 0 48 48">
                                      <path
                                        fill-rule="evenodd"
                                        clip-rule="evenodd"
                                        d="M43.5 13.6H4.5V11.8C4.5 10.4 5.6 9.3 7 9.3H41.2C42.6 9.3 43.7 10.4 43.7 11.8L43.5 13.6ZM43.5 41.1C43.5 42.5 42.4 43.6 41 43.6H6.9C5.5 43.6 4.4 42.5 4.4 41.1V16.1H43.5V41.1ZM41.1 6.9H38.6V2H36.1V6.9H11.8V2H9.3V6.9H6.9C4.2 6.9 2 9.1 2 11.8V41.1C2 43.8 4.2 46 6.9 46H41.1C43.8 46 46 43.8 46 41.1V11.8C46 9.1 43.8 6.9 41.1 6.9ZM11.2002 27.7001H14.9002C15.3002 27.7001 15.5002 27.4001 15.5002 27.0991V23.4001C15.5002 23.0001 15.2002 22.8001 14.9002 22.8001H11.2002C10.8002 22.8001 10.6002 23.1001 10.6002 23.4001V27.0001C10.5002 27.4001 10.8002 27.7001 11.2002 27.7001ZM25.9002 27.7001H22.2002C21.8002 27.7001 21.5002 27.4001 21.6002 27.0001V23.4001C21.6002 23.1001 21.8002 22.8001 22.2002 22.8001H25.9002C26.2002 22.8001 26.5002 23.0001 26.5002 23.4001V27.0991C26.5002 27.4001 26.3002 27.7001 25.9002 27.7001ZM33.2002 27.7001H36.9002C37.3002 27.7001 37.5002 27.4001 37.5002 27.0991V23.4001C37.5002 23.0001 37.2002 22.8001 36.9002 22.8001H33.2002C32.8002 22.8001 32.5992 23.1001 32.5992 23.4001V27.0001C32.5002 27.4001 32.8002 27.7001 33.2002 27.7001ZM14.9002 37.4999H11.2002C10.8002 37.4999 10.5002 37.1999 10.6002 36.8999V33.1999C10.6002 32.8999 10.8002 32.5999 11.2002 32.5999H14.9002C15.2002 32.5999 15.5002 32.7999 15.5002 33.1999V36.8999C15.5002 37.1999 15.3002 37.4999 14.9002 37.4999ZM22.2002 37.4999H25.9002C26.3002 37.4999 26.5002 37.1999 26.5002 36.8999V33.1999C26.5002 32.7999 26.2002 32.5999 25.9002 32.5999H22.2002C21.8002 32.5999 21.6002 32.8999 21.6002 33.1999V36.8999C21.5002 37.1999 21.8002 37.4999 22.2002 37.4999ZM36.9002 37.4999H33.2002C32.8002 37.4999 32.5002 37.1999 32.5992 36.8999V33.1999C32.5992 32.8999 32.8002 32.5999 33.2002 32.5999H36.9002C37.2002 32.5999 37.5002 32.7999 37.5002 33.1999V36.8999C37.5002 37.1999 37.3002 37.4999 36.9002 37.4999Z"
                                      ></path>
                                    </svg>
                                  </div>
                                  <!-- 선택된 날짜가 들어감 -->
                                  <div class="date">
                                    시작 날짜를 선택해주세요
                                  </div>
                                  <input class="date-picker start" name="pro_start" value="${funding.getPro_start()}"/>
                                </button>
                              </div>
                              <!-- 달력의 위치 달력이 포함된 가장 밖의 div에 속한다 -->
                              <!-- date-picker로 대체함 -->
                              <div>
                                <!-- 달력 -->
                              </div>
                            </div>
                          </div>
                          <div class="user-input__col">
                            <!-- 시작시간 -->
                            <!-- select박스 생성해야함 -->
                            <p>시작시간</p>
                            <div class="select__box">
                              <span>
                                <input
                                  type="text"
                                  readonly
                                  placeholder="시작 시간을 선택해주세요"
                                  class="time-box"
                                />
                                <div class="icon__arrow-box ready-ani">
                                  <!-- 애니메이션 변화주는 div -->
                                  <svg viewBox="0 0 48 48">
                                    <path
                                      fill-rule="evenodd"
                                      clip-rule="evenodd"
                                      d="M2 14.4065C2 13.1363 3.09843 12.0615 4.39657 12.0615C4.99571 12.0615 5.59485 12.257 6.09414 12.7455L23.9685 29.4526L41.843 12.6478C42.8415 11.7684 44.3394 11.7684 45.338 12.7455C46.2367 13.7226 46.2367 15.1882 45.2381 16.0676L23.9685 36L2.79886 16.0676C2.29957 15.6767 2 14.9928 2 14.4065Z"
                                    ></path>
                                  </svg>
                                </div>
                              </span>
                              <div>
                                <!-- select 박스가 나오는 지점 -->
                                <div class="list-place">
                                  <div class="list-box on-off">
                                    <div>
                                      <ul>
                                        <!-- js를 이용하여 시간입력함 -->
                                      </ul>
                                    </div>
                                  </div>
                                </div>

                                <!-- list 박스 종료 -->
                              </div>
                            </div>
                            <div>
                              <!-- div 필요 없으면 지우기 -->
                            </div>
                          </div>
                        </div>
                        <div class="funding-period">
                          <!-- 펀딩 기간 -->
                          <p>펀딩 기간</p>
                          <!-- 기간 자동계산 기능 넣기!!! -->

                          <div class="period">최대 60일</div>
                          <!-- ============1231242141241231231231215649874894\\\===== -->
                        </div>
                      </li>
                      <!--  -->
                      <li>
                        <div class="user-input__row">
                          <div>
                            <!-- 종료일 처럼 ? icon이 붙은 타이틀은 버튼으로 만들어져 있는데
                          기능을 구현할지 모르므로 우선 button은 사용안함 -->
                            <p class="user-input__row__title">종료일</p>
                            <!-- 버튼을 사용하면 추가 도움말이 나타나는데 -->
                            <!-- 이 위치에 div를 만들어 두고 DOM을 사용하면 된다. -->
                            <div class="cal-button__box">
                              <!-- date버튼 역할을 함 -->
                              <!-- 달력 div를 구현해야함.... -->
                              <button type="button" class="cal-button">
                                <div class="icon__cal-box">
                                  <svg viewBox="0 0 48 48">
                                    <path
                                      fill-rule="evenodd"
                                      clip-rule="evenodd"
                                      d="M43.5 13.6H4.5V11.8C4.5 10.4 5.6 9.3 7 9.3H41.2C42.6 9.3 43.7 10.4 43.7 11.8L43.5 13.6ZM43.5 41.1C43.5 42.5 42.4 43.6 41 43.6H6.9C5.5 43.6 4.4 42.5 4.4 41.1V16.1H43.5V41.1ZM41.1 6.9H38.6V2H36.1V6.9H11.8V2H9.3V6.9H6.9C4.2 6.9 2 9.1 2 11.8V41.1C2 43.8 4.2 46 6.9 46H41.1C43.8 46 46 43.8 46 41.1V11.8C46 9.1 43.8 6.9 41.1 6.9ZM11.2002 27.7001H14.9002C15.3002 27.7001 15.5002 27.4001 15.5002 27.0991V23.4001C15.5002 23.0001 15.2002 22.8001 14.9002 22.8001H11.2002C10.8002 22.8001 10.6002 23.1001 10.6002 23.4001V27.0001C10.5002 27.4001 10.8002 27.7001 11.2002 27.7001ZM25.9002 27.7001H22.2002C21.8002 27.7001 21.5002 27.4001 21.6002 27.0001V23.4001C21.6002 23.1001 21.8002 22.8001 22.2002 22.8001H25.9002C26.2002 22.8001 26.5002 23.0001 26.5002 23.4001V27.0991C26.5002 27.4001 26.3002 27.7001 25.9002 27.7001ZM33.2002 27.7001H36.9002C37.3002 27.7001 37.5002 27.4001 37.5002 27.0991V23.4001C37.5002 23.0001 37.2002 22.8001 36.9002 22.8001H33.2002C32.8002 22.8001 32.5992 23.1001 32.5992 23.4001V27.0001C32.5002 27.4001 32.8002 27.7001 33.2002 27.7001ZM14.9002 37.4999H11.2002C10.8002 37.4999 10.5002 37.1999 10.6002 36.8999V33.1999C10.6002 32.8999 10.8002 32.5999 11.2002 32.5999H14.9002C15.2002 32.5999 15.5002 32.7999 15.5002 33.1999V36.8999C15.5002 37.1999 15.3002 37.4999 14.9002 37.4999ZM22.2002 37.4999H25.9002C26.3002 37.4999 26.5002 37.1999 26.5002 36.8999V33.1999C26.5002 32.7999 26.2002 32.5999 25.9002 32.5999H22.2002C21.8002 32.5999 21.6002 32.8999 21.6002 33.1999V36.8999C21.5002 37.1999 21.8002 37.4999 22.2002 37.4999ZM36.9002 37.4999H33.2002C32.8002 37.4999 32.5002 37.1999 32.5992 36.8999V33.1999C32.5992 32.8999 32.8002 32.5999 33.2002 32.5999H36.9002C37.2002 32.5999 37.5002 32.7999 37.5002 33.1999V36.8999C37.5002 37.1999 37.3002 37.4999 36.9002 37.4999Z"
                                    ></path>
                                  </svg>
                                </div>
                                <!-- 선택된 날짜가 들어감 -->
                                <div class="date">종료 날짜를 선택해주세요</div>
                                <input class="date-picker" name="pro_end" value="${funding.getPro_end()}" />
                              </button>
                            </div>
                          </div>
                        </div>
                      </li>
                      <!--  -->
                      <li>
                        <div class="user-input__row">
                          <div class="end-date">
                            <p class="user-input__row__title">
                              후원자 결제 종료
                            </p>
                            <!-- 종료일과 마찬가지로 ? 아이콘이 존재함 -->
                            <!-- 시작일이 정해지면 아래 결제 종료일이 업데이트 되어야함 -->
                            종료일 다음 날부터 7일
                          </div>
                        </div>
                      </li>
                      <!--  -->
                      <li class="last">
                        <div class="user-input__row">
                          <div class="last-date">
                            <p class="user-input__row__title">정산일</p>
                            <!-- 시작일이 정해지면 아래 정산일이 업데이트 되어야함 -->
                            후원자 결제 종료 다음 날부터 7영업일
                          </div>
                        </div>
                      </li>
                    </ol>
                  </div>
                </div>
              </div>
            </div>

            <!--=================================================================-->
          </section>
        </div>
        </form>
      </main>

      <!-- <footer id="footer"></footer> -->
    </div>
  </body>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"
      integrity="sha512-uto9mlQzrs59VwILcLiRYeLKPPbS/bT71da/OEBYEwcdNUk8jYIy+D176RYoop1Da+f9mvkYrmj5MCLZWEtQuA=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    ></script>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.css"
      integrity="sha512-aOG0c6nPNzGk+5zjwyJaoRUgCdOrfSDhmMID2u4+OIslr0GjpLKo7Xm0Ao3xmpM4T8AmIouRkqwj1nrdVsLKEQ=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
   <script src="${pageContext.request.contextPath}/app/createproject/api-datepicker/jquery-ui.min.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/createproject/fundingPlan.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/createproject/cpHeader.js"></script>
  <script src="${pageContext.request.contextPath}/assets/js/createproject/fundingPlanSubmit.js"></script>
  <script>
	var completePjt= "${pageContext.request.contextPath}/project/ProjectDefaultCreateOk.pj" // 변경 필요
	</script>
</html>