for(i=1;i<=4;i++){
    document.getElementById("d"+i).addEventListener("click", klik);
    document.getElementById("d"+i).addEventListener("mouseover", hower);
    document.getElementById("d"+i).addEventListener("mouseout", oucik);
}

function klik(){    window.alert("Kliknąłeś przycisk "+this.id);    }
function hower(){   this.style.borderColor = "grey gainsboro gainsboro grey";   }
function oucik(){   this.style.borderColor = "gainsboro grey grey gainsboro";   }