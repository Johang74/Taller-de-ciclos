Proceso Seis
	Definir opcionn Como entero;
	Definir opcionElim Como entero;
	Definir salir Como Logico;
	
	Definir nom Como Caracter;
	definir num Como Entero;
	definir organ Como Caracter;
	definir ConUno Como Logico;
	
	Definir nom2 Como Caracter;
	definir num2 Como Entero;
	definir organ2 Como Caracter;
	definir ConDos Como Logico;
	
	Definir nom3 Como Caracter;
	definir num3 Como Entero;
	definir organ3 Como Caracter;
	
	
	nom<-"Debe registrar un nombre ";
	num<-0;
	organ<-"Debe registrar la organizacion ";
	
	nom2<-"Debe registrar un nombre ";
	num2<-0;
	organ2<-"Debe registrar la organizacion ";
	
	nom3<-"Debe registrar un nombre ";
	num3<-0;
	organ3<-"Debe registrar la organizacion ";
	
	salir <- Falso;
	ConUno<-Falso;
	ConDos<-Falso;
	
	Mientras salir==Falso Hacer
		escribir "1. Crear Contacto ";
		Escribir "2. Buscar Contactos Almacenados ";
		Escribir "3. Eliminar contacto ";
		Escribir "4. Salir del Sistema ";
		Leer opcionn;
		Segun opcionn Hacer
			1:
				Si ConUno=Falso Entonces
					Escribir "Digite el nombre ";
					leer nom;
					Escribir "Digite el numero ";
					leer num;
					Si num==num2 o num==num3 Entonces
						Escribir "el numero ya existe";
						num<-000;
						opcionn<-2;
					SiNo
						Escribir "Digite la organizacion ";
						leer organ;
						ConUno<-verdadero;
					FinSi
					
				SiNo
					Si ConDos=Falso Entonces
						Escribir "Digite el nombre ";
						leer nom2;
						Escribir "Digite el numero ";
						leer num2;
						Si num2==num o num2==num3 Entonces
							Escribir "el numero ya existe";
							num2<-000000;
							opcionn<-2;
						SiNo
							Escribir "Digite la organizacion ";
							leer organ2;
							ConDos<-verdadero;
						FinSi
					Sino
						Escribir "Digite el nombre ";
						leer nom3;
						Escribir "Digite el numero ";
						leer num3;
						Si num3==num o num3==num2 Entonces
							Escribir "el numero ya existe";
							opcionn<-2;
							num3<-0000000;
						SiNo
							Escribir "Digite la organizacion ";
							leer organ3;
						FinSi
					FinSi
				FinSi
				
			2:
				Escribir "Primer Contacto: ";
				Escribir " ",nom;
				Escribir " ",num;
				Escribir " ",organ;
				Escribir "";
				Escribir "Segundo Contacto: ";
				Escribir " ",nom2;
				Escribir " ",num2;
				Escribir " ",organ2;
				Escribir "";
				Escribir "Tercer Contacto: ";
				Escribir " ",nom3;
				Escribir " ",num3;
				Escribir " ",organ3;
			3:
				Escribir "Digite el contacto que desea eliminar (1 2 3) ";
				leer opcionElim;
				Segun opcionElim Hacer
					1:
						nom<-"Debe registrar un nombre ";
						num<-0000;
						organ<-"Debe registrar la organizacion ";
						ConUno<-Falso;
					2:
						nom2<-"Debe registrar un nombre ";
						num2<-00000;
						organ2<-"Debe registrar la organizacion ";
						ConDos<-Falso;
					3:
						nom3<-"Debe registrar un nombre ";
						num3<-000000;
						organ3<-"Debe registrar la organizacion ";
					De Otro Modo:
						Escribir "Debe elegir entre el 1 2 ó 3";
						opcionn<-3;
				FinSegun
			4:
				salir <- Verdadero;
			De Otro Modo:
		FinSegun
	FinMientras
FinProceso