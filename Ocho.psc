Proceso Ocho
	Definir arregloId,arregloNombres,arregloNotas,nombre, idUsuario, nota Como Caracter;
	Definir opc,i Como Entero;
	Definir salir,estaLleno, existeUsuario Como Logico;
	
	Dimension arregloId[8];
	Dimension arregloNombres[8];
	Dimension arregloNotas[8];
	salir <- falso;
	estaLleno <- falso;
	
	Para i<-0 Hasta 7 Con Paso 1 Hacer
		arregloId[i] <- "0";
		arregloNombres[i] <- "0";
		arregloNotas[i] <- "0";
	FinPara
	
	Escribir "Bienvenido a tu escuela automovilistica";
	
	Mientras salir == falso Hacer
		Escribir "Escoje una opcion: ";
		Escribir "1) Ingresar usuario ";
		Escribir "2) Eliminar usuario ";
		Escribir "3) Consultar usuarios ";
		Escribir "4) Salir ";
		Leer opc;
		
		Segun opc Hacer
			1:
				estaLleno <- Verdadero;
				Para i<-0 Hasta 7 Con Paso 1 Hacer
					Si arregloId[i] = "0" Entonces
						estaLleno <- falso;
						i <- 8;
					FinSi
				FinPara
				
				Si estaLleno == Falso Entonces
					Escribir "Escriba el id del usuario a ingresar: ";
					leer idUsuario;
					
					Para i<-0 Hasta 7 Con Paso 1 Hacer
						Si arregloId[i] == idUsuario Entonces
							Escribir "El id de este usuario ya se encuentra registrado";
							
						SiNo
							Si arregloId[i] == "0" Entonces
								Escribir "Ingrese el nombre del usuario: ";
								Leer nombre;
								Escribir "Escriba una de las siguientes opciones: ";
								Escribir "1) Aprobado";
								Escribir "2) No aprobado";
								Escribir "Tenga en cuenta que cualquie otro numero se tomara como NO APROBADO";
								Leer nota;
								Si nota == "1" Entonces
									nota <- "Aprobado";
								SiNo
									nota <- "NO aprobado";
								FinSi
								//Guardar los datos de ingreso
								arregloId[i] <- idUsuario;
								arregloNombres[i] <- nombre;
								arregloNotas[i] <- nota;
								i <- 8;
							FinSi
							
							
						FinSi
					FinPara
				SiNo
					Escribir "=================================";
					Escribir "La escuela esta llena";
					Escribir "=================================";
				FinSi
				
			2:
				existeUsuario <- Falso;
				Escribir "Ingrese el id del usuario a eliminar ";
				leer idUsuario;
				
				Para i<-0 Hasta 7 Con Paso 1 Hacer
					Si arregloId[i] == idUsuario Entonces
						arregloId[i] <- "0";
						arregloNombres[i] <- "0";
						arregloNotas[i] <- "0";
						existeUsuario <- Verdadero;
						i <- 8;
						Escribir "Usuario eliminado correctamente";
					FinSi
				FinPara
				Si existeUsuario == Falso Entonces
					Escribir "El usuario no esta registrado";
					
				FinSi
				
				
			3:
				Para i<-0 Hasta 7 Con Paso 1 Hacer
					Escribir "ID: ",arregloId[i]," Nombre: ",arregloNombres[i]," Estado: ",arregloNotas[i];
				FinPara
			4:
				salir <- Verdadero;
			De Otro Modo:
				Escribir "Opcion incorrecta";
		FinSegun
	FinMientras
	
FinProceso