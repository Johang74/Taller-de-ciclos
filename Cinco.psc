Algoritmo Cinco
	Definir opcionn Como entero;
	Definir b Como Logico;
	Definir nom Como Caracter;
	nom<-"Debe registrar un nombre ";
	b <- Verdadero;
	Mientras b=Verdadero Hacer
		escribir "1.Capturar Nombre ";
		Escribir "2.Saludar persona ";
		Escribir "3.Salir del sistema ";
		Leer opcionn;
		Segun opcionn Hacer
			1:
				Escribir "Digite el nombre ";
				leer nom;
			2:
				Escribir "Hola! ",nom;
			3:
				b<-Falso;
			De Otro Modo:
		FinSegun
	FinMientras
FinAlgoritmo