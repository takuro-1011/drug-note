window.addEventListener('load', function(){
  const listOne = document.getElementById("list_one");
  const listTwo = document.getElementById("list_two");
  const listThree = document.getElementById("list_three");
  const listFour = document.getElementById("list_four");

  listOne.addEventListener('mouseover', function(){
    listOne.setAttribute("style", "text-decoration: underline" )
  })
  listOne.addEventListener("mouseout", function(){
    listOne.removeAttribute("style", "text-decoration: underline" )
  })

  listTwo.addEventListener('mouseover', function(){
    listTwo.setAttribute("style", "text-decoration: underline" )
  })
  listTwo.addEventListener("mouseout", function(){
    listTwo.removeAttribute("style", "text-decoration: underline" )
  })

  listThree.addEventListener('mouseover', function(){
    listThree.setAttribute("style", "text-decoration: underline" )
  })
  listThree.addEventListener("mouseout", function(){
    listThree.removeAttribute("style", "text-decoration: underline" )
  })

  listFour.addEventListener('mouseover', function(){
    listFour.setAttribute("style", "text-decoration: underline" )
  })
  listFour.addEventListener("mouseout", function(){
    listFour.removeAttribute("style", "text-decoration: underline" )
  })
})
