$(document).ready(function(){
	$("#hide").click(function(){
		$("p").hide();
	});
});
	
function resize() {
	var w = window.outerWidth;
	var h = window.outerHeight;
	var txt = "Window size: width=" + w + ", height=" + h;
	document.getElementById("size").innerHTML = txt;
	}

function Lastmodify() {
	var x =  document.lastModified;
	var txt = "The document was last modified "+ x +".";
	document.getElementById("Lmodify").innerHTML = txt;
	}

	