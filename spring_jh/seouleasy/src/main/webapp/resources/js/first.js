//alert("test");

// next ( > )버튼을 클릭할 때마다 <div>이 100만큼 이동하게 한다.

let m_num = 0; //클릭수, 다음은 +, 이전은 -
let next_btn = document.querySelector('#slide_btn > #next');
let gallery_item = document.querySelector('#gallery_item');
next_btn.onclick = (e) => {
  if (m_num >= gallery_item.length - 3) return false;
  m_num++;
  setTimeout(function () {
    //gallery_item- div에 있는 첫번째
    let first = gallery_item.querySelectorAll('#gallery_item')[0];
    // 첫번째 걸 가지고 와서 맨 뒤에 붙여줌
    gallery_item.insertBefore(first, gallery_item.firstChild);
    gallery_item.style.left = '0'; //위치를 0으로줌
    gallery_item.style.transition = 'none';
  });
  //gallery_item.style.marginLeft = -350 * m_num + 'px';
  return false; //e.preventDefault()

};

// prev ( < )버튼을 클릭할 때마다 <div>이 100만큼 이동하게 한다.

let before_btn = document.querySelector('#slide_btn > #prev');
before_btn.onclick = (e) => {
  if (m_num <= 0) return false;
  m_num--;
  gallery_item.style.marginLeft = -350 * m_num + 'px';
  return false; //e.preventDefault()
  
};



