graj  = document.getElementById("graj");
imie1 = document.getElementById("imie1");
imie2 = document.getElementById("imie2");
runda = document.getElementById("runda");
karty = document.getElementById("karty");
runda.disabled = true;

talia = ["2kier", "2karo", "2trefl", "2pik",
         "3kier", "3karo", "3trefl", "3pik",
		 "4kier", "4karo", "4trefl", "4pik",
		 "5kier", "5karo", "5trefl", "5pik",
		 "6kier", "6karo", "6trefl", "6pik",
		 "7kier", "7karo", "7trefl", "7pik",
		 "8kier", "8karo", "8trefl", "8pik",
		 "9kier", "9karo", "9trefl", "9pik",
		 "10kier", "10karo", "10trefl", "10pik",
		 "Jkier", "Jkaro", "Jtrefl", "Jpik",
		 "Dkier", "Dkaro", "Dtrefl", "Dpik",
		 "Kkier", "Kkaro", "Ktrefl", "Kpik",
		 "Akier", "Akaro", "Atrefl", "Apik"
];

kartyGracz1 = [];
kartyGracz2 = [];
wojna = [];

graj.addEventListener("click", 
    function rozdaj(){
	    if (imie1.value != "" && imie2.value != "") {
			imie1.style.backgroundColor = "white"; 
            imie2.style.backgroundColor = "white";
			while (talia.length){
			    losujKarte = Math.floor(Math.random() * talia.length);
				if (talia.length % 2 == 1)
				    kartyGracz2.push(talia[losujKarte]);
				else
					kartyGracz1.push(talia[losujKarte]);
				
				talia.splice(losujKarte, 1); //usuniecie z talii wylosowanej 1 karty
				console.log(losujKarte, kartyGracz1, kartyGracz2, talia);
			}
			runda.disabled = false;
		}
		else {
			if (imie1.value == "")
				imie1.style.backgroundColor = "pink";
		    else
				imie1.style.backgroundColor = "white";
			if (imie2.value == "")
				imie2.style.backgroundColor = "pink";
		    else
				imie2.style.backgroundColor = "white";
		}
    } 
)

runda.addEventListener("click", 
    function graj() {
       console.log(kartyGracz1[kartyGracz1.length - 1], kartyGracz2[kartyGracz1.length - 1]);
	   karty.innerHTML = "<img width=\"70\" src=\"karty/"
	   + kartyGracz1[kartyGracz1.length - 1] + ".png\">";
	   karty.innerHTML += "<img width=\"70\" src=\"karty/"
	   + kartyGracz2[kartyGracz2.length - 1] + ".png\">";
	   //.charAt(0)  - pierwszy znak z łańcucha
	   pierwszyZnak = kartyGracz1[kartyGracz1.length - 1].charAt(0);
	   pkt1 = punkty(pierwszyZnak);
	   pierwszyZnak = kartyGracz2[kartyGracz2.length - 1].charAt(0);
	   pkt2 = punkty(pierwszyZnak);
	   console.log(pkt1, pkt2);
	   if (pkt1 > pkt2)
		   alert("Wygrał gracz 1");
	   else    
		   if (pkt1 < pkt2)
			   alert("Wygrał gracz 2");
		   else    
			   alert("Remis");
	}
)

function punkty(znak) {
	let pkt = 0;
	switch(znak) {
	   case '2': pkt = 2; break;
	   case '3': pkt = 3; break;
	   case '4': pkt = 4; break;
	   case '5': pkt = 5; break;
	   case '6': pkt = 6; break;
	   case '7': pkt = 7; break;
	   case '8': pkt = 8; break;
	   case '9': pkt = 9; break;
	   case '1': pkt = 10; break;  // karta 10
	   case 'J': pkt = 11; break;
	   case 'D': pkt = 12; break;
	   case 'K': pkt = 13; break;
	   case 'A': pkt = 14; break;
	}
	return pkt;
}
