function hover() {
  const sideLists = document.querySelectorAll(".lists");
  
  sideLists.forEach((sideList) => {
    sideList.addEventListener('mouseover', () => {
      console.log("マウスオーバー");
    });
  });
}
window.addEventListener('load', hover);