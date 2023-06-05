 $(document).ready(function() {
	                   $("img.addstuff").on("click", function(event) {
				                                     var x = event.pageX - this.offsetLeft;
				                                     var y = event.pageY - this.offsetTop;
				                                     console.log("X Coordinate: " + x + " Y Coordinate: " + y);
				   let person = prompt("cliquer le nom de l'élément à ajouter", "");
				                             $.ajax({url:$("#mycreateurl").html(),type:"post",data:{x:x,y:y,title:person},success:function(data){
//update ic
								     $(".mystuff1")[0].innerHTML = data;
           modal.style.display = "none";

							     }


								                                              });
				                                            });
	             });

 var modalSentence = document.getElementById("myModalSentence");

 // Get the button that opens the modal
 var btnSentence = document.getElementById("myBtnSentence");

 // Get the <span> element that closes the modal
 var spanSentence = document.getElementsByClassName("closeSentence")[0];

 // When the user clicks on the button, open the modal
 if (btnSentence){
 btnSentence.onclick = function() {
   modalSentence.style.display = "block";
   }
 }

   // When the user clicks on <span> (x), close the modal
if (spanSentence){
   spanSentence.onclick = function() {
     modalSentence.style.display = "none";
     }
     }
 var modal = document.getElementById("myModal");

 // Get the button that opens the modal
 var btn = document.getElementById("myBtn");

 // Get the <span> element that closes the modal
 var span = document.getElementsByClassName("close")[0];

 // When the user clicks on the button, open the modal
 if (btn){
 btn.onclick = function() {
   modal.style.display = "block";
   }
 }

   // When the user clicks on <span> (x), close the modal
if (span){
   span.onclick = function() {
     modal.style.display = "none";
     }
     }

     // When the user clicks anywhere outside of the modal, close it
     window.onclick = function(event) {
       if (event.target == modal) {
           modal.style.display = "none";
             }
             } 
function submitsentence(){
	var form=$("#sentence-form");
	$.ajax({url:form.attr("action"),type:"POST",data:form.serialize(),
		success:function(data){
			$(".sentences").html(data);
     modalSentence.style.display = "none";
		}

	});
}
function supprimer(){
				                             $.ajax({url:"/mymapstuffs/"+$(".mymenu")[0].dataset.id+"/supprimer",type:"post",data:{},success:function(data){
//update ic
								     $(".mystuff1")[0].innerHTML = data;
								     $(".mymenu").hide();

							     }



								                                              });
							     }
function autrenom(){
				   let person = prompt("cliquer le nom de l'élément à ajouter", "");
				                             $.ajax({url:"/mymapstuffs/"+$(".mymenu")[0].dataset.id+"/autrenom",type:"post",data:{title:person},success:function(data){
//update ic
								     $(".mystuff1")[0].innerHTML = data;
								     $(".mymenu").hide();

							     }



								                                              });
							     }
function myotherfunc(div){
	console.log(div);
	$(".mymenu")[0].dataset.id=(div.dataset.id);
	$(".mymenu")[0].style.left=div.coords.split(",")[0]+"px";
	$(".mymenu")[0].style.top=div.coords.split(",")[1]+"px";
	$(".mymenu")[0].style.display="block";
}
function myfunc(div){
	if ('speechSynthesis' in window) {
		  var synthesis = window.speechSynthesis;

		  // Get the first `en` language voice in the list
		   var voice = synthesis.getVoices().filter(function (voice) {
		       return voice.lang === 'fr';
		         })[0];
		
		           // Create an utterance object
		             var utterance = new SpeechSynthesisUtterance(div.dataset.title);
		
		               // Set utterance properties
		                 utterance.voice = voice;
		                   utterance.pitch = 1.5;
		                     utterance.rate = 1.25;
		                       utterance.volume = 0.8;
		
		                         // Speak the utterance
		                           synthesis.speak(utterance);
		                           } else {
		                             console.log('Text-to-speech not supported.');
		                             }
}
