/* Project specific Javascript goes here. */

 
var swiper = new Swiper(".slide-content", {
    slidesPerView: 1,
    spaceBetween: 25,
    loop: true,
    centerSlide: 'true',
    
    navigation: {
      nextEl: ".swiper-button-next",
      prevEl: ".swiper-button-prev",
    },
  
    breakpoints:{
       
        640: {
            slidesPerView: 2,
          },
          
        992: {
            slidesPerView: 3,
          },
        1200: {
            slidesPerView: 4,
          }
        
    },
  });
  
  