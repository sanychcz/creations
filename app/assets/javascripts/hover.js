$(function(){
     $("#main-image").hover(
          function(){this.src = this.src.replace("off","on");},
          function(){this.src = this.src.replace("on","off");
     });
});