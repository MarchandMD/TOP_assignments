//get the modal

let myModal = document.querySelector('#myModal');

//get the image 
let img = document.querySelector('#colorMeLucky');

//and insert it inside the modal 
let modalImg = document.querySelector("#img01");

//and use it's "alt" text as a caption
let captionText = document.querySelector("#caption");


/*
img.onclick = function() {
  myModal.style.display = "block";
  modalImg.src = this.src;
  captionText.innerHTML = this.alt;
}
*/

// Get the <span> element that closes the modal
let theCloseButton = document.querySelector(".close");

//when the user clicks on the close button, the modal closes:
myModal.onclick = function() {
  myModal.style.display = "none";
}

function getThisImage(theImage) {
  var imageSource = theImage.src;
  var theAlt = theImage.alt;
  console.log(imageSource + " , " + theAlt);
  myModal.style.display = "block";
  modalImg.src = imageSource;
  captionText.innerHTML = theAlt;
}