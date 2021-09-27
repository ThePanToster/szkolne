h = int(input("Czas startu (godziny): "))
m = int(input("Czas startu (minuty): "))
d = int(input("Czas trwania wydarzenia (minuty)): "))

m += d
h += m//60
m = m%60
h = h%24

print("Czas zakończenia: ",end="")
if(h<10):
	print("0",end="")
print(h,":",sep="",end="")
if(m<10):
	print("0",end="")
print(m)