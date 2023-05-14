<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="../basic.css">
        <link rel="stylesheet" href="../Main/header.css">
        <link rel="stylesheet" href="../Introduce/Introduce.css">
        <style>
            .kind_wrap {
                border: 2px solid black;
                width: 100%;
                max-width: 800px;
                margin: 0 auto;
                position: relative;
            }

            .kind_wrap>.kind_slider {
                overflow: hidden;
            }

            .kind_wrap>.kind_slider .slider {
                position: relative;
                transition: 0.5s;
            }


            .kind_wrap>.kind_slider img {
                vertical-align: top;
            }

            .kind_wrap .arrow>a.prev {
                position: absolute;
                left: -50px;
                top: 100px;
            }

            .kind_wrap .arrow>a.next {
                position: absolute;
                right: -50px;
                top: 100px;
            }
        </style>
        <title> 소개 </title>
    </head>

    <body link="gray" vlink="gray" alink="gray">
        <header>
            <div class="header-align">
                <div id="header-top" style="float:right">
                    <span>
                        <a href="../Login/login.jsp ">
                            마이페이지 |
                        </a>
                        <span>
                            <span>
                                <a href="../Login/login.jsp">
                                    로그인 |
                                </a>
                                <span>
                                    <a href="../Membership/membership.jsp">
                                        회원가입
                                    </a>
                                </span>
                </div>
                <span id="header-mainname" style="text-align: center;">
                    <h1>
                        <div style="color:#77c466;"> 제주 <span style="color:black;"> 소개
                    </h1>
                </span>
            </div>
        </header>

        <div class="kind_wrap">

            <div class="kind_slider">
                <ul class="slider">
                    <script>
                        window.onload = function () {
                            const kindWrap = document.querySelector('.kind_wrap');
                            const slider = kindWrap.querySelector('.slider');
                            const slideLis = slider.querySelectorAll('li');
                            const moveButton = kindWrap.querySelector('.arrow');

                            /* ul 넓이 계산해 주기 */
                            const liWidth = slideLis[0].clientWidth;
                            const sliderWidth = liWidth * slideLis.length;
                            slider.style.width = `${sliderWidth}px`;

                            /* 리스너 설치하기 */
                            let currentIdx = 0; // 슬라이드 현재 번호
                            let translate = 0; // 슬라이드 위치 값
                            moveButton.addEventListener('click', moveSlide);

                            function moveSlide(event) {
                                event.preventDefault();
                                if (event.target.className === 'next') {
                                    if (currentIdx === slideLis.length - 1) return;
                                    currentIdx++;
                                    translate += -liWidth;
                                    slider.style.left = `${translate}px`;
                                } else {
                                    if (currentIdx === 0) return;
                                    currentIdx--;
                                    translate += liWidth;
                                    slider.style.left = `${translate}px`
                                }
                            }

                        }


                    </script>
                    <li><img src="jejuimage1.png" style="width:900px; height:410px;"></li>
                    <li><img src="jejuimage2.png" style="width:900px; height:410px;"></li>
                    <li><img src="jejuimage3.png" style="width:900px; height:410px;"></li>
                    <li><img src="jejuimage4.png" style="width:900px; height:410px;"></li>
                    <li><img src="jejuimage6.png" style="width:900px; height:410px;"></li>
                    <li><img src="jejuimage7.png" style="width:900px; height:410px;"></li>
                </ul>
            </div>
            <div class="arrow">
                <a href="" class="prev">〈 </a>
                <a href="" class="next"> 〉 </a>
            </div>
        </div>

        </span>
        <div>
            <div style="float:left">
                <img src="jejuimage5.png" hspace=15 vspace=10 style="width:170px; height:160px; height:auto;">
            </div>

            <div style="font-size: 17px;">
                제주도는 한국에서 가장 인기 있는 관광지 중 하나입니다. 아름다운 자연과 문화 유산, 특색 있는 음식 등 다양한 매력을 지닌 제주도를 소개해드리겠습니다.<br>
                제주도는 한라산과 오름, 해안 경관, 자연 공원 등 아름다운 자연 경관으로 유명합니다. 한라산은 한국에서 가장 높은 산으로, 등산객뿐 아니라 자연 사랑쟁이들에게도 매우 인기가
                있습니다.<br>
                또한, 제주도에는 368개의 작은 산, 오름이 있어 등산과 하이킹을 즐길 수 있습니다.<br>
                해안선은 절벽, 바위, 해변 등 다양한 지형으로 이루어져 있어 해안 경관을 산책하며 즐길 수 있습니다. 제주도의 자연공원 중 제주도 서쪽 바다에 있는 제주마린파크는 제주도에서 가장 유명한
                자연 경관으로, 유채꽃과 국화 등이 피는 시즌엔 예쁜 경관을 즐길 수 있습니다.<br>
                제주도에는 맛있는 음식도 많습니다. 특히, 제주도에서는 흑돼지와 제주도산 오리, 토종닭 등 지역 특산물을 이용한 음식이 유명합니다. 흑돼지 구이, 오리백숙, 닭갈비 등의 요리를 즐길 수
                있습니다. 또한, 제주도는 한국에서 유일하게 해녀문화가 남아있는 곳으로, 해산물을 이용한 다양한 요리를 맛볼 수 있습니다.
                제주도는 또한 문화 유산도 풍부합니다. 성산일출봉, 우도 등은 대표적인 관광지로, 이곳에서는 제주도 전통 문화를 체험할 수 있는 다양한 체험프로그램이 준비되어 있습니다. 또한, 제주도는
                독특한 토속문화와 전통음악을 보존하고 있습니다.
                마지막으로, 제주도에서는 다양한 숙소와 쇼핑몰 등 다양한 관광시설이 준비되어 있어 편안한 여행을 즐길 수 있습니다. 제주도는 매년 많은 관광객이 찾는 대한민국의 대표적인 관광지 중
                하나입니다.

            </div>


        </div>










        <!--<p style="margin-left:50px; font-size:15px; font-weight:200;">
            제주도는 한국의 남쪽 끝에 위치한 아름다운 섬으로,
            청정 자연과 풍부한 문화유산, 맛있는 음식 등이 유명합니다.<br>
            제주도는 화산섬으로 유명하며, 한라산을 비롯하여 많은 화산이 산재해 있어서 그 자연경관이 화려합니다.<br>
            또한, 다양한 해변과 액티비티, 맛집 등으로 유명하며, 특히 제주도에서 만나는 제주 말, 제주 방언, 제주 풍경 등은 독특한 매력을 가지고 있습니다.<br>
            즉, 제주도는 다양한 즐길거리와 경험을 제공하는 멋진 여행지입니다.

        </p>
    -->

        <hr>

    </body>

    </html>