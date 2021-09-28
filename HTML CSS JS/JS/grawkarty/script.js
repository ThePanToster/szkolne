talia = 
["2karo", "2kier", "2pik", "2trefl",
"3karo", "3kier", "3pik", "3trefl",
"4karo", "4kier", "4pik", "4trefl",
"5karo", "5kier", "5pik", "5trefl",
"6karo", "6kier", "6pik", "6trefl",
"7karo", "7kier", "7pik", "7trefl",
"8karo", "8kier", "8pik", "8trefl",
"9karo", "9kier", "9pik", "9trefl",
"10karo", "10kier", "10pik", "10trefl",
"Jkaro", "Jkier", "Jpik", "Jtrefl",
"Dkaro", "Dkier", "Dpik", "Dtrefl",
"Kkaro", "Kkier", "Kpik", "Ktrefl",
"Akaro", "Akier", "Apik", "Atrefl"];
mojeKarty = [];
twojeKarty = [];
document.getElementById("rozdaj").addEventListener("click", function rozdaj(){
    los = Math.floor(Math.random() * 52);
    console.log(los+": "+talia[los]);
    mojeKarty.push(talia[los]);
    talia.splice(los, 1);
    document.getElementById("mojekarty").innerHTML = talia;
});