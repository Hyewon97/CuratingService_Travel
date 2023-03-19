//alert("....");

// 내 취향 여행보기 누르면 위에서 고른 info_theme에 맞는 정보들이 나온다.
$('.btn_black').click(function(){  
   $('#frm').attr('action', 'home.do').submit();
});

// 다른 취향 보기 누르면 드롭다운의 선택들이 랜덤으로 선택되어 정보들이 나온다.
//$('.btn_reload').click(function(){  
  // $('#frm').attr('action', 'home.do').submit();
//});

let currentIdx = 0;
let next_btn = document.querySelector('#slide_btn > #next');
let prev_btn = document.querySelector('#slide_btn > #prev');
let gallery_teel = document.querySelector('#gallery_teel');
let gallery_items = document.querySelectorAll('.gallery_item');
let slideCount = gallery_items.length;

function moveSlide(num){
  gallery_teel.style.marginLeft = -num * 330 + 'px';
  currentIdx = num;
}

// next(<) 버튼을 누르면 한 사진씩 이동된다.
next_btn.addEventListener('click', function(){
  if(currentIdx < slideCount -3){
   moveSlide(currentIdx + 1);
   //console.log(currentIdx);
   }else{
   moveSlide(0);  // 마지막 사진이면 다시 첫번째사진으로 돌아간다.
   }
});

// prev(>) 버튼을 누르면 한 사진씩 반대로 이동된다.
prev_btn.addEventListener('click', function(){
  if(currentIdx > 0){
    moveSlide(currentIdx - 1);
  }else{
    moveSlide(slideCount - 3); 
   }
});


