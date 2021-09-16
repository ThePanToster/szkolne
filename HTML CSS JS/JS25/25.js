wynik = document.getElementById("wynik");
document.getElementById("przycisk").addEventListener("click", losuj);

function losuj(){
	input = document.getElementById("ilosc");
	n = Number(input.value);
	tablica = [];
	tekst = "";
	for(i=0;i<n;i++){
		tablica[i] = Math.floor(Math.random() * 11 - 5);
		tekst += tablica[i] + " ";
	}
	wynik.innerHTML = tekst;
}