function open_panel()
{
slideIt();
var a=document.getElementById("stickcontactside");
a.setAttribute("id","stickcontactside1");
a.setAttribute("onclick","close_panel()");
}

function slideIt()
{
	var slidingDiv = document.getElementById("contactstickslider");
	var stopPosition = 0;
	
	if (parseInt(slidingDiv.style.right) < stopPosition )
	{
		slidingDiv.style.right = parseInt(slidingDiv.style.right) + 2 + "px";
		setTimeout(slideIt, 1);	
	}
}
	
function close_panel(){
slideIn();
a=document.getElementById("stickcontactside1");
a.setAttribute("id","stickcontactside");
a.setAttribute("onclick","open_panel()");
}

function slideIn()
{
	var slidingDiv = document.getElementById("contactstickslider");
	var stopPosition = -342;
	
	if (parseInt(slidingDiv.style.right) > stopPosition )
	{
		slidingDiv.style.right = parseInt(slidingDiv.style.right) - 2 + "px";
		setTimeout(slideIn, 1);	
	}
}


