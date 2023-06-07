// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
function myfunc(div){
	        if ('speechSynthesis' in window) {
			                  var synthesis = window.speechSynthesis;

			                  // Get the first `en` language voice in the list
			                    var voice = synthesis.getVoices().filter(function (voice) {
			                                           return voice.lang === $("#locale").html();
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
