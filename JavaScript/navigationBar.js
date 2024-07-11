/Navigation Bar/ 
	const body = document.querySelector("body");
	const navbar = document.querySelector(".navbar");
	const menu = document.querySelector(".menu-list");

	menu.onclick = ()=>{
		menu.classList.add("active");
		menuBtn.classList.add("hide");
		body.classList.add("disabledScroll");
	}
	
	window.onscroll = ()=>{
		this.scrollY > 20 ? navbar.classList.add("sticky"): navbar.classList.remove("sticky");
	}
/end of Navigation Bar/