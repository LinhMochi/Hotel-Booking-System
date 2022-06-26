<%-- 
    Document   : Home
    Created on : 23-Jun-2022, 08:58:39
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- fontawe some cnd-->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!-- owlCarouse CND -->
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.css" integrity="sha512-UTNP5BXLIptsaj5WdKFrkFov94lDx+eBvbKyoe1YAfjeRPC+gT5kyZ10kOHCfNZqEui1sxmqvodNUx3KbuYI/A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css" integrity="sha512-sMXtMNL1zRzolHYKEujM2AqCLUR9F2C4/05cdbxjjLSRvMQIciEPCQZo++nk7go3BtSuK9kfa/s+a4f4i5pLkw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
	<!-- owlCarouse CND -->
	<!-- jQueryCND -->
	<script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>
	<!-- jQueryCND -->
        <link href="css/nav-top.css" rel="stylesheet" type="text/css"/>
        <link href="css/datepicker-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/layout-style.css" rel="stylesheet" type="text/css"/>
        <link href="css/home-styles.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <header class="header nav-top">
            <jsp:include page="component/nav-top.jsp"/>
	</header>
	<header class="buffer">
	</header>
        <script src="js/nav-top.js" type="text/javascript"></script>
	<script type="text/javascript">
		let previous = 0;
		window.addEventListener('scroll', function() {
			let header = document.querySelector('.nav-top');
			header.classList.toggle('fixed',previous>window.scrollY);
		    // console.log(previous>window.scrollY);
		    previous = window.scrollY;
		});
	</script>
        <div class="search-wrapper">
		<h1>Make memory</h1>
		<div class="h3">Discover the places where you fun and enjoy a lots</div>
		<form action="">
			<div class="search-box search-box-x">
				<div class="input-box flex-center">
					<input type="text" name="search" placeholder="Bạn muốn đi đâu?" >
				</div>	
				<div class="date-select-box flex-center">
					<div class="input-date-box">
						<input type="date" class="arrival-date" name="arrival">
					</div>
					<div class="input-date-box">
						<input type="date" class="department-date" name="department">
					</div>
					<div class="pick-box">
						<span class="arrival"></span>
						<span class="department"></span>
					</div>
                                    <jsp:include page="component/date-picker.jsp"/>
                                </div>
				<div class="select-box drop-box">
						<div class="drop-title flex-around">
							<div class="label adult-show ">
								<span class="number">1</span><span class="lable">Người lớn</span>
							</div>

							<div class="label child-show">
								<span class="number">0</span><span class="lable">Trẻ em</span>
							</div>

							<div class="label room-show">
								<span class="number">1</span><span class="lable">Phòng</span>
							</div>
						</div>
						<input class="adult" name="adult" value="1">
						<input class="child" name="child" value="0">
						<input class="room" name="room" value="1">
						<div class="drop-items flex-between flex-column">
						<div class="drop-item flex-between ">
							<div class="adult-change grid-3">
								<span class="btn flex-center des">-</span>
								<span class="number">1</span>
								<span class="btn flex-center inc">+</span>
							</div>
							<div class="lable">Người lớn</div>
						</div>
						<div class="drop-item flex-between">
							<div class="child-change grid-3">
								<span class="btn flex-center  des">-</span>
								<span class="number">0</span>
								<span class="btn flex-center  inc">+</span>
							</div>
							<div class="lable">Trẻ em</div>
						</div>
						<div class="drop-item flex-between">
							<div class="room-change grid-3">
								<span class="btn flex-center  des">-</span>
								<span class="number">1</span>
								<span class="btn flex-center  inc">+</span>
							</div>
							<div class="lable">Phòng</div>
						</div>
					</div>		
				</div>
				<div class="footer flex-center">
					<div class="btn btn-large flex-center">
						Tìm
					</div>
				</div>
			</div>
		</form>
	</div>
	<script src="js/pick-date.js"></script>
        <script src="js/search-box.js" type="text/javascript"></script>
        <div class="explore-wrapper border-wrapper border1">
		<h5>Khám phá</h5>
		<h3>Đến với các thành phố nổi tiếng với nhiều điểm đến đang chờ đợi bạn</h3>
		<div class="contain flex-center">
			<div class="owl-carousel owl-theme">
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			    <div class="item">
			    	<div class="vertical-card city-card">
						<div class="item-image">
							<img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="city">
						</div>
						<div class="card-content flex-center">
							<div class="item-info flex-center flex-column">
								<div class="item-name">
									Hà Nội
								</div>
								<div class="item-decription">
									<p>50 khách sạn</p>
								</div>
							</div>
						</div>
					</div>
			    </div>
			</div>
		</div>
	</div>
	<!-- <script src="js/message.js"></script> -->
	<!-- js slider CND -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- js slider CND -->
	<script type="text/javascript">
		$('.owl-carousel').owlCarousel({
		    // loop:true,
		    margin:0,
		    nav:true,
		    dots:false,
		    navText:['<i class="fa fa-arrow-left" aria-hidden="true"></i>','<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
		    responsive:{
		        0:{
		            items:1
		        },
		        786:{
		            items:3
		        },
		        1000:{
		            items:4
		        }
		    }
		});
	</script>
        
        <div class="hotel-type-wrapper border-wrapper border2">
		<h5>Các loại khách sạn</h5>
		<h3>Chúng tôi cung cấp nhiều loại khách sạn đạt chuẩn ...</h3>
                <div class="container flex-around">
                    <div class="owl-carousel owl-theme">
                        <div class="item">
                            <div class="vertical-cicle-card">
                                <div class="item-image">
                                    <img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="">
                                </div>
                                <div class="card-content flex-center">
                                    <div class="item-info flex-center flex-column">
                                        <div class="item-name">Khách sạn nghỉ dưỡng</div>
                                        <div class="item-decription"><p>10 khách sạn</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="vertical-cicle-card">
                                <div class="item-image">
                                    <img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="">
                                </div>
                                <div class="card-content flex-center">
                                    <div class="item-info flex-center flex-column">
                                        <div class="item-name">Khách sạn Capsule</div>
                                        <div class="item-decription"><p>50 khách sạn</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="item">
                            <div class="vertical-cicle-card">
                                <div class="item-image">
                                    <img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="">
                                </div>
                                <div class="card-content flex-center">
                                    <div class="item-info flex-center flex-column">
                                        <div class="item-name">Homestay</div>
                                        <div class="item-decription"><p>40 khách sạn</p></div>
                                    </div>
                                </div>
                            </div>
                        </div> 
                        <div class="item">
                            <div class="vertical-cicle-card">
                                <div class="item-image">
                                    <img src="https://du-lich.chudu24.com/f/m/1701/06/khach-san-sapa-capsule-11.jpg" alt="">
                                </div>
                                <div class="card-content flex-center">
                                    <div class="item-info flex-center flex-column">
                                        <div class="item-name">Khách sạn cao cấp</div>
                                        <div class="item-decription"><p>50 khách sạn</p></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
		</div>
	</div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <!-- js slider CND -->
	<script type="text/javascript">
		$('.owl-carousel').owlCarousel({
		    // loop:true,
		    margin:0,
		    nav:true,
		    dots:false,
		    navText:['<i class="fa fa-arrow-left" aria-hidden="true"></i>','<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
		    responsive:{
		        0:{
		            items:1
		        },
		        786:{
		            items:2
		        },
		        1000:{
		            items:4
		        }
		    }
		});
	</script>
        <div class="suggest-hotel-wrapper">
		<h5>Góc đề cử :V</h5>
		<h3>Một số khách sạn có lượt yêu thích và điểm đánh giá của khách cao</h3>
		<div class="container">
			<div class="owl-carousel owl-theme">
                            <div class="item">
                                            <div class="card-l grid-3">
                                                    <div class="card-image"><img src="https://hotelsienaborgogrondaie.com/img/apartments/rooms/rooms-slider.jpg" alt="room"></div>
                                                    <div class="card-contain">
                                                            <div class="card-header">
                                                                    <h2 class="hotel-name">Khách sạn Biển Hồ</h2>
                                                                    <div class="add-box">
                                                                            <div class="hotel-start"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></div>
                                                                            <div class="hotel-address"><i class="fa fa-map-marker" aria-hidden="true"></i>Trần phú, Hà Đông, Hà Nội</div>
                                                                    </div>
                                                            </div>
                                                            <div class="card-infor">
                                                                <ul class="hotel-sd">
                                                                    <li>Gần trung tâm</li>
                                                                    <li>View phố</li>
                                                                    <li class="show-more">+5</li>
                                                                        <div class = "show-dd">
                                                                            <ol>
                                                                                <li>Bảo vệ 24/7</li>
                                                                                <li>Chỗ để xe miễn phí</li>
                                                                                <li>Gần sân bay</li>
                                                                            </ol>                                                                  
                                                                        </div>
                                                                </ul>
                                                            </div>
                                                            <div class="add-infor">Giảm giá mùa du lịch</div>
                                                            <div class="add-infor">Miễn phí đặt&huỷ phòng</div>					
                                                    </div>
                                                    <div class="card-footer flex-center flex-column">
                                                            <div class="flex-center flex-column like-card like">
                                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                                    <div class="no-like">500<span class="lable">lượt thích</span></div>
                                                            </div>
                                                            <div class="card-score flex-center">
                                                                    <div class="left-side">
                                                                            <div class="rate">Tuyệt vời !</div>
                                                                            <div class="no-rate">1000 đánh giá</div>
                                                                    </div>
                                                                    <div class="score right-side flex-center">8.9</div>
                                                            </div>
                                                            <div class="card-price flex-end flex-column">
                                                                    <div class="title">Giá ưu đãi</div>
                                                                    <div class="unit-price">1.555.000</div>
                                                                    <div class="current-price"><span class="price">566.000</span><span class="unit lable">đ</span></div>
                                                            </div>
                                                            <div class="btn pick-room">Chọn phòng</div>
                                                    </div>
                                            </div>
                                    </div>
                            <div class="item">
                                            <div class="card-l grid-3">
                                                    <div class="card-image"><img src="https://hotelsienaborgogrondaie.com/img/apartments/rooms/rooms-slider.jpg" alt="room"></div>
                                                    <div class="card-contain">
                                                            <div class="card-header">
                                                                    <h2 class="hotel-name">Khách sạn Biển Hồ</h2>
                                                                    <div class="add-box">
                                                                            <div class="hotel-start"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></div>
                                                                            <div class="hotel-address"><i class="fa fa-map-marker" aria-hidden="true"></i>Trần phú, Hà Đông, Hà Nội</div>
                                                                    </div>
                                                            </div>
                                                            <div class="card-infor">
                                                                <ul class="hotel-sd">
                                                                    <li>Gần trung tâm</li>
                                                                    <li>View phố</li>
                                                                    <li class="show-more">+5</li>
                                                                        <div class = "show-dd">
                                                                            <ol>
                                                                                <li>Bảo vệ 24/7</li>
                                                                                <li>Chỗ để xe miễn phí</li>
                                                                                <li>Gần sân bay</li>
                                                                            </ol>                                                                  
                                                                        </div>
                                                                </ul>
                                                            </div>
                                                            <div class="add-infor">Giảm giá mùa du lịch</div>
                                                            <div class="add-infor">Miễn phí đặt&huỷ phòng</div>					
                                                    </div>
                                                    <div class="card-footer flex-center flex-column">
                                                            <div class="flex-center flex-column like-card like">
                                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                                    <div class="no-like">500<span class="lable">lượt thích</span></div>
                                                            </div>
                                                            <div class="card-score flex-center">
                                                                    <div class="left-side">
                                                                            <div class="rate">Tuyệt vời !</div>
                                                                            <div class="no-rate">1000 đánh giá</div>
                                                                    </div>
                                                                    <div class="score right-side flex-center">8.9</div>
                                                            </div>
                                                            <div class="card-price flex-end flex-column">
                                                                    <div class="title">Giá ưu đãi</div>
                                                                    <div class="unit-price">1.555.000</div>
                                                                    <div class="current-price"><span class="price">566.000</span><span class="unit lable">đ</span></div>
                                                            </div>
                                                            <div class="btn pick-room">Chọn phòng</div>
                                                    </div>
                                            </div>
                                    </div>
                            <div class="item">
                                            <div class="card-l grid-3">
                                                    <div class="card-image"><img src="https://hotelsienaborgogrondaie.com/img/apartments/rooms/rooms-slider.jpg" alt="room"></div>
                                                    <div class="card-contain">
                                                            <div class="card-header">
                                                                    <h2 class="hotel-name">Khách sạn Biển Hồ</h2>
                                                                    <div class="add-box">
                                                                            <div class="hotel-start"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></div>
                                                                            <div class="hotel-address"><i class="fa fa-map-marker" aria-hidden="true"></i>Trần phú, Hà Đông, Hà Nội</div>
                                                                    </div>
                                                            </div>
                                                            <div class="card-infor">
                                                                <ul class="hotel-sd">
                                                                    <li>Gần trung tâm</li>
                                                                    <li>View phố</li>
                                                                    <li class="show-more">+5</li>
                                                                        <div class = "show-dd">
                                                                            <ol>
                                                                                <li>Bảo vệ 24/7</li>
                                                                                <li>Chỗ để xe miễn phí</li>
                                                                                <li>Gần sân bay</li>
                                                                            </ol>                                                                  
                                                                        </div>
                                                                </ul>
                                                            </div>
                                                            <div class="add-infor">Giảm giá mùa du lịch</div>
                                                            <div class="add-infor">Miễn phí đặt&huỷ phòng</div>					
                                                    </div>
                                                    <div class="card-footer flex-center flex-column">
                                                            <div class="flex-center flex-column like-card like">
                                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                                    <div class="no-like">500<span class="lable">lượt thích</span></div>
                                                            </div>
                                                            <div class="card-score flex-center">
                                                                    <div class="left-side">
                                                                            <div class="rate">Tuyệt vời !</div>
                                                                            <div class="no-rate">1000 đánh giá</div>
                                                                    </div>
                                                                    <div class="score right-side flex-center">8.9</div>
                                                            </div>
                                                            <div class="card-price flex-end flex-column">
                                                                    <div class="title">Giá ưu đãi</div>
                                                                    <div class="unit-price">1.555.000</div>
                                                                    <div class="current-price"><span class="price">566.000</span><span class="unit lable">đ</span></div>
                                                            </div>
                                                            <div class="btn pick-room">Chọn phòng</div>
                                                    </div>
                                            </div>
                                    </div>
                            <div class="item">
                                            <div class="card-l grid-3">
                                                    <div class="card-image"><img src="https://hotelsienaborgogrondaie.com/img/apartments/rooms/rooms-slider.jpg" alt="room"></div>
                                                    <div class="card-contain">
                                                            <div class="card-header">
                                                                    <h2 class="hotel-name">Khách sạn Biển Hồ</h2>
                                                                    <div class="add-box">
                                                                            <div class="hotel-start"><i class="fa fa-star" aria-hidden="true"></i><i class="fa fa-star" aria-hidden="true"></i></div>
                                                                            <div class="hotel-address"><i class="fa fa-map-marker" aria-hidden="true"></i>Trần phú, Hà Đông, Hà Nội</div>
                                                                    </div>
                                                            </div>
                                                            <div class="card-infor">
                                                                <ul class="hotel-sd">
                                                                    <li>Gần trung tâm</li>
                                                                    <li>View phố</li>
                                                                    <li class="show-more">+5</li>
                                                                        <div class = "show-dd">
                                                                            <ol>
                                                                                <li>Bảo vệ 24/7</li>
                                                                                <li>Chỗ để xe miễn phí</li>
                                                                                <li>Gần sân bay</li>
                                                                            </ol>                                                                  
                                                                        </div>
                                                                </ul>
                                                            </div>
                                                            <div class="add-infor">Giảm giá mùa du lịch</div>
                                                            <div class="add-infor">Miễn phí đặt&huỷ phòng</div>					
                                                    </div>
                                                    <div class="card-footer flex-center flex-column">
                                                            <div class="flex-center flex-column like-card like">
                                                                    <i class="fa fa-heart-o" aria-hidden="true"></i>
                                                                    <div class="no-like">500<span class="lable">lượt thích</span></div>
                                                            </div>
                                                            <div class="card-score flex-center">
                                                                    <div class="left-side">
                                                                            <div class="rate">Tuyệt vời !</div>
                                                                            <div class="no-rate">1000 đánh giá</div>
                                                                    </div>
                                                                    <div class="score right-side flex-center">8.9</div>
                                                            </div>
                                                            <div class="card-price flex-end flex-column">
                                                                    <div class="title">Giá ưu đãi</div>
                                                                    <div class="unit-price">1.555.000</div>
                                                                    <div class="current-price"><span class="price">566.000</span><span class="unit lable">đ</span></div>
                                                            </div>
                                                            <div class="btn pick-room">Chọn phòng</div>
                                                    </div>
                                            </div>
                                    </div>
			</div>
		</div>
	</div>
	<!-- js slider CND -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js" integrity="sha512-bPs7Ae6pVvhOSiIcyUClR7/q2OAsRiovw4vAkX+zJbw3ShAeeqezq50RIIcIURq7Oa20rW2n2q+fyXBNcU9lrw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.js" integrity="sha512-gY25nC63ddE0LcLPhxUJGFxa2GoIyA5FLym4UJqHDEMHjp8RET6Zn/SHo1sltt3WuVtqfyxECP38/daUc/WVEA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- js slider CND -->
	<script type="text/javascript">
		$('.owl-carousel').owlCarousel({
		    // loop:true,
		    margin:20,
		    nav:true,
		    dots:false,
		    navText:['<i class="fa fa-arrow-left" aria-hidden="true"></i>','<i class="fa fa-arrow-right" aria-hidden="true"></i>'],
		    responsive:{
		        0:{
		            items:1
		        },
		        786:{
		            items:2
		        },
		        1000:{
		            items:2
		        }
		    }
		});
	</script>
	<footer class="footer">
		this is footer
	</footer>
    </body>
</html>
