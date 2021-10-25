import Cocoa

var greeting = "Hello, playground"

print(greeting)

//Esto es un comentario

/*
 Comentario
 multilinea
 */

let parteEntera: Int = 3
let parteFraccionaria: Double = 0.14159
let numeroPi: Double = Double(parteEntera) + parteFraccionaria
// Casteo la parteEntera para poder sumar con la parteFraccionaria
let numeroPiEntero: Int = Int(numeroPi)
// Vale 3, porque devuelve un valor opcional. Si falla, devuelve nil.

// Otro Ejemplo:
let mensajeNumerico: String = "1234"
let mensajeTexto: String = "Hola Mundo"
let numeroEntero1: Int? = Int(mensajeTexto) // Devuelve nil, no se puede castear.
let numeroEntero2: Int? = Int(mensajeNumerico) // 1234


//Ejercicio 1
let parcial1: String = "8"
let parcial2: String = "8.55"
let entero1: Int? = Int(parcial1)
let entero2: Int? = Int(parcial2) // devuelve nil
let double1: Double? = Double(parcial1)
let double2: Double? = Double(parcial2) // Si se utiliza una coma en vez de un punto, devuelve nil

print("Los resultados del parcial fueron: \(parcial1) en el primero y \(parcial2) en el segundo.")

//Ejercicio 2

let nota1: Double = 3
let nota2: Double = 4
let nota3: Double = 2
let promedio: Double = (nota1 + nota2 + nota3) / 3
let materiaAprobada: Bool = promedio >= 7
let requiereFinal: Bool = promedio >= 4 && promedio < 7
let materiaReprobada: Bool = !materiaAprobada && !requiereFinal

//Ejercicio 3

let miEdadEnTexto: String = "veintiocho"
let miEdad: Int? = Int(miEdadEnTexto) ?? 28 // Puedo utilizar nil coalescing para asignar un valor por defecto.

print("Mi edad es \(miEdad ?? 28) años.") // Si el valor es nil, 28 por defecto.

