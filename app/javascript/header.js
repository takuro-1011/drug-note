window.addEventListener('load', function(){
  const pullDownButton = document.getElementById("lists")
  const pullDownParents = document.getElementById("pull-down")
  const pullDownParent = document.getElementById("pull-down-show")
  pullDownButton.addEventListener('mouseover', function(){
    this.setAttribute("style", "text-decoration: underline" )
    pullDownParents.setAttribute("style", "display:block;")
  })

  pullDownButton.addEventListener('mouseout', function(){
    this.removeAttribute("style", "background-color:#008000;")
  })

  pullDownParents.addEventListener('mouseout', function(){
    if (pullDownParents.getAttribute("style") == "display:block;") {
      pullDownParents.removeAttribute("style", "display:block;")
    } else {
      pullDownParents.setAttribute("style", "display:block;")
    }
  })

  pullDownParent.addEventListener('mouseover', function(){
    pullDownParent.setAttribute("style", "color:#008000;")
  })

  pullDownParent.addEventListener('mouseout', function(){
    pullDownParent.removeAttribute("style", "color:#008000;")
  })
})

