var img = getElementById('image-on-main');
document.getElementById('image-on-main').onmouseover = function(){
    //manipulate the image source here.
    img.src = img.src.replace(/\.png/, '_hover.png');
}