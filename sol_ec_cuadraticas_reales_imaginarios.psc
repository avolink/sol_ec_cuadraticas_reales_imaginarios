// Programa: Solución Ecuación Cuadrática con Números Imaginarios
// Autor: Juan David Gutierrez Naranjo
// Clase: Fund. de Programación con Herramientas Gráficas - Vieres 4 p.m.

Algoritmo sol_ecuacion_cuadratica
	
	
	Definir a, b, c, d Como Real; // Actualización  coeficientes Entero a Reales
	Definir x1, x2, x1_real, x1_imag, x2_real, x2_imag, disc Como Real;
	Definir reiniciar Como Texto;
	
	Definir x Como Texto;
	x = '';
	
	
	Escribir "Solución ecuación cuadrática: x = -b ±  raiz de b^2 -4*a*(c-d) / 2*a";
	Esperar 1 Segundos;
	Escribir "Por: Juan D. Gutierrez N."; 
	Esperar 1 Segundos;
	
	
	Repetir
		Escribir 'Por favor ingrese el coeficiente del factor cuadrático: a.x^2';
		Leer a;
		
		Escribir 'Por favor ingrese el coeficiente del factor lineal: b.x';
		Leer b;
		
		Escribir 'Por favor ingrese el valor del número independiente: c';
		Leer c;
		
		Escribir 'Por favor ingrese el valor del número al otro lado de la igualdad = d';
		Leer d;
		
		
		Si a == 0 Entonces
			Escribir 'El polinomio ingresado es: (' + ConvertirATexto(a) + ')x^2 + (' + ConvertirATexto(b) + ')x + (' + ConvertirATexto(c) + ')' +' = ' + ConvertirATexto(d);
			Escribir 'Si el coeficiente (a) es cero, NO es una ecuación cuadrática';
		SiNo
			// Asignar discriminante a la variable disc
			disc = ( (b*b) - (4*a*(c-d)) );
			
			Si disc >= 0 Entonces
				
				x1 = ( (-b) + raiz( disc ) )/(2*a);
				x2 = ( (-b) - raiz( disc ) )/(2*a);
				
				x = 'Primera Solución: ' + ConvertirATexto(x1) + ' Segunda Solución: ' + ConvertirATexto(x2);
				
				Escribir 'El polinomio ingresado es: (' + ConvertirATexto(a) + ')x^2 + (' + ConvertirATexto(b) + ')x + (' + ConvertirATexto(c) + ')' +' = ' + ConvertirATexto(d);
				Escribir 'La solución a la ecuación es => ' + x;
				Si x1 == x2 Entonces
					Escribir 'La ecuación tiene multiplicidad (' + ConvertirATexto(x1) + ')';
				FinSi
			SiNo
				// Implementación de raices negativas mediante números imaginarios
				disc = ( (b*b) - (4*a*(c-d)) );
				Si disc < 0 Entonces
					
					x1_real = (-b) / (2*a); // Parte Real
					x1_imag = ( raiz( -disc ) )/(2*a); // Parte imaginaria
					
					x2_real = (-b) / (2*a); // Parte Real
					x2_imag = raiz( -disc )/(2*a); // Parte imaginaria
					
					x = '  Primera Solución: ' + ConvertirATexto(x1_real) + ' + ' +  ConvertirATexto(x1_imag) + '.i   Segunda Solución: ' + ConvertirATexto(x2_real) + ' - ' +ConvertirATexto(x2_imag) + '.i' + '   (( i = raiz de -1 ))';
					
					Escribir 'El polinomio ingresado es: (' + ConvertirATexto(a) + ')x^2 + (' + ConvertirATexto(b) + ')x + (' + ConvertirATexto(c) + ')' +' = ' + ConvertirATexto(d);
					Escribir 'La solución a la ecuación es => ' + x;
					Si x1 == x2 Entonces
						Escribir 'La ecuación tiene multiplicidad (' + ConvertirATexto(x1) + ')';
					FinSi
					
				Fin Si
				
			FinSi
			
		FinSi
		
		Escribir 'Desea calcular otra ecuación?... Escriba  1  para reiniciar, ó  2  para salir';
		Leer reiniciar_algoritmo;
		
	Hasta Que reiniciar_algoritmo == '2';
	
FinAlgoritmo
