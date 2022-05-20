Proceso Siete
	Definir arregloPlacas, arregloMarcas, arregloNombres,placa,marca,nombre Como Caracter;
	Definir arregloNum,opc,i,num Como Entero;
	Definir salir,estaLleno, existeVehiculo Como Logico;
	
	Dimension arregloPlacas[5];
	Dimension arregloMarcas[5];
	Dimension arregloNombres[5];
	Dimension arregloNum[5];
	salir <- falso;
	
	Para i<-0 Hasta 4 Con Paso 1 Hacer
		arregloPlacas[i] <- "0";
		arregloMarcas[i] <- "0";
		arregloNombres[i] <- "0";
		arregloNum[i] <- 0;
	FinPara
	
	Escribir "Bienvenido a tu parqueadero de confianza";
	
	Mientras salir == falso Hacer
		Escribir "Escoje una opcion: ";
		Escribir "1) Ingresar vehiculo ";
		Escribir "2) Retirar vehiculo ";
		Escribir "3) Consultar vehiculo ";
		Escribir "4) Salir ";
		Leer opc;
		
		Segun opc Hacer
			1:
				
				//Comprobar si el parqueadero esta lleno
				estaLleno <- Verdadero;
				Para i<-0 Hasta 4 Con Paso 1 Hacer
					Si arregloPlacas[i] == "0" Entonces
						estaLleno <- Falso;
					FinSi
				FinPara
				
				Si estaLleno == Falso Entonces
					Escribir "Escriba la placa: ";
					leer placa;
					
					Para i<-0 Hasta 4 Con Paso 1 Hacer
						Si arregloPlacas[i] == placa Entonces
							Escribir "El numero de placa ya se encuentra registrado";
							i <-5;
						SiNo
							Si arregloPlacas[i] == "0" Entonces
								Escribir "Ingrese la marca del vehiculo: ";
								Leer marca;
								Escribir "Ingrese el nombre del cliente: ";
								Leer nombre;
								Escribir "Ingrese el numero del cliente: ";
								Leer num;
								//Guardar los datos de ingreso
								arregloPlacas[i] <- placa;
								arregloMarcas[i] <- marca;
								arregloNombres[i] <- nombre;
								arregloNum[i] <- num;
								i <- 5;
							FinSi
							
							
						FinSi
					FinPara
				SiNo
					Escribir "=================================";
					Escribir "El parqueadero esta lleno";
					Escribir "=================================";
				FinSi
				
			2:
				existeVehiculo <- Falso;
				Escribir "Ingrese la placa del vehiculo a retirar ";
				leer placa;
				
				Para i<-0 Hasta 4 Con Paso 1 Hacer
					Si arregloPlacas[i] == placa Entonces
						arregloPlacas[i] <- "0";
						arregloMarcas[i] <- "0";
						arregloNombres[i] <- "0";
						arregloNum[i] <- 0;
						existeVehiculo <- Verdadero;
						i <- 5;
						Escribir "Vehiculo retirado correctamente";
					FinSi
				FinPara
				Si existeVehiculo == Falso Entonces
					Escribir "El vehiculo no esta en nuestro parqueadero";
					
				FinSi
				
				
			3:
				Escribir "Ingrese la placa del vehiculo a consultar ";
				leer placa;
				existeVehiculo<- Falso;
				Para i<-0 Hasta 4 Con Paso 1 Hacer
					Si arregloPlacas[i] == placa Entonces
						Escribir arregloPlacas[i];
						Escribir arregloMarcas[i];
						Escribir arregloNombres[i];
						Escribir arregloNum[i];
						existeVehiculo <- Verdadero;
						i <- 5;
					FinSi
				FinPara
				Si existeVehiculo == Falso Entonces
					Escribir "El vehiculo no esta en nuestro parqueadero";
				FinSi
			4:
				salir <- Verdadero;
			De Otro Modo:
				Escribir "Opcion incorrecta";
		FinSegun
	FinMientras
	
FinProceso

