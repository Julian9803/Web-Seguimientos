var x=$(document);
x.ready(init);

function init(){
	var x;
	x=$("#acordeon h3");
	x.click(clic);
}

function clic(){
	var x;
	x=$("#acordeon ul ul").slideUp();
	if(!$(this).next().is(":visible")){
		$(this).next().slideDown();
	}

}