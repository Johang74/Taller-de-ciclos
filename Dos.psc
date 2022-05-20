Algoritmo Dos
	Definir j,k,i,n Como Entero;
	j<-1;
	k<-0;
	i<-1;
	n<-7;
	Mientras j<=8 Hacer
		Mientras k<=n Hacer
			escribir " " Sin Saltar;
			k<-k+1;
		FinMientras
		n<-n-1;
		k<-0;
		Mientras i<=j Hacer
			escribir "*" Sin Saltar;
			i<-i+1;
		FinMientras
		i<-1;
		escribir "";
		j<-j+1;
	FinMientras
	
FinAlgoritmo