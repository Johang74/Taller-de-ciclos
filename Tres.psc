Proceso Tres
	Definir j,k,i,n,lar,espacios,asteri Como Entero;
	espacios <- 14;
	asteri <- 1;
	j <- 0;
	k <- 0;
	i <- 1;
	n <- 1;
	lar <- 0;
	
	Repetir
		Repetir
			Escribir " " Sin Saltar;
			i <- i+1;
		Hasta Que i >= espacios 
		
		Repetir
			Escribir "*"Sin Saltar;
			j <- j+1;
		Hasta Que j >= asteri 
		Escribir "";
		
		espacios <- espacios-1;
		asteri <-asteri +2;
		j<- 0;
		i<- 1;
		lar <- lar+1;
	Hasta Que lar = 11
	
	Repetir
		Repetir
			Escribir " "Sin Saltar;
			
			n <- n+1;
		Hasta Que n >= 13
		Escribir "***";
		k<-k+1;
		n <-1;
	Hasta Que k >= 2
	j <- 0;
	i<-0;
	n <- 0;
	espacios <- 11;
	asteri <- 5;
	k <-0;
	Repetir
		Repetir
			Escribir " "Sin Saltar;
			
			n <- n+1;
		Hasta Que n >= espacios
		Repetir
			Escribir "*" Sin Saltar;
			i <- i+1;
		Hasta Que i = asteri
		Escribir "";
		k<-k+1;
		n <-0;
		i <- 0;
		asteri <- asteri+2;
		espacios <- espacios-1;
		
	Hasta Que k >= 2
	
FinProceso
