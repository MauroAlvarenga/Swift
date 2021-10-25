import Cocoa

//Closures

let mayorAMenor = { (s1: String, s2: String) -> Bool in return s1 > s2 } // Ejemplo closure
let menorAMayor = { (s1: String, s2: String) -> Bool in return s1 < s2 } // asda
let pruebaNumeros = { (n1:Int, n2: Int) -> Bool in return n1 > n2 }
mayorAMenor("abc", "xyz")
menorAMayor("abc", "xyz")
pruebaNumeros(5, 3)


// Closure como argumento
let palabras = ["abc", "xyz"]
let palabrasOrdenadasAlReves = palabras.sorted(by: mayorAMenor) // mayorAMenor vendria a ser la closure como argumento
print(palabrasOrdenadasAlReves)


// Utilizando una funcion
func ordenarAlReves(arreglo: [String]) -> [String] {
    func mayorAMenor(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    return arreglo.sorted(by: mayorAMenor(s1:s2:))
}

// Funcion + closure
func ordenarAlReves2(arreglo: [String]) -> [String] {
    // return arreglo.sorted(by: { (s1: String, s2: String) -> Bool in return s1 > s2 } )
    // return arreglo.sorted(by: { s1, s2 in return s1 > s2 }) // Forma simplificada
    // return arreglo.sorted(by: { s1, s2 in s2 < s1 }) // Retorno implicito
    return arreglo.sorted(by: { $0 > $1 }) // Argumentos abreviados
}

var libros = ["A sangre fria", "Tarzan", "Cien años de soledad"]
ordenarAlReves2(arreglo: libros)


// Captura de variables del contexto
func crearIncrementador(incrementarEn cant: Int) -> () -> Int {
    var total = 0
    func incrementar () -> Int {
        total += cant
        return total
    }
    return incrementar
}

let miIncrementadorDiez = crearIncrementador(incrementarEn: 10)
miIncrementadorDiez()
miIncrementadorDiez() // Sigue teniendo acceso a total y cant, por la captura de variables de Swift.


// Ejercitacion 1
func obtenerMaximo(arreglo: [String]) -> String? {
    // return arreglo.max(by: { (s1: String, s2: String) -> Bool in return s1.count < s2.count }) // Con closure
    // return arreglo.max(by: { s1, s2 -> Bool in return s1.count < s2.count }) // Simplificada
    // return arreglo.max(by: { s1, s2 in s1.count < s2.count }) // Retorno implicito
    // return arreglo.max(by: { $0.count < $1.count }) // argumentos abreviados
    return arreglo.max { $0.count < $1.count } // Trailing clousure
}

obtenerMaximo(arreglo: libros)

// Map, reduce, filter
var libros2 = libros.map { $0 + "X" } // Trailing closure
var libros3 = libros.map { $0.uppercased() }

var librosReduce = libros.reduce("x", {$0 + $1})
var librosReduce2 = libros.reduce("") {$0 + $1} // reduce con trailing closure

var librosFilter = libros.filter { $0.count < 7 }

print(librosFilter)

// Ejercitacion 2

var respuestasHTTP = [
    200: "Ok",
    403: "Acceso Denegado",
    404: "No Encontrado",
    500: "Error interno en el Servidor"]

// Obtener un array que contenga los mensajes - con Map -

let mensajesHTTP = [String](respuestasHTTP.values) // Forma sencilla sin map

var mensajesHTTP2 = respuestasHTTP.map { clave, valor -> [String] in
    var soloMensajes: [String] = []
    soloMensajes.append(valor)
    return soloMensajes
}

// Obtener nombres con mas de 7 letras.

let nombres = ["Enrique", "Matias", "Franco", "Valentina", "Federico", "Alan", "Francisco", "Carolina", "Maria", "Lucas", "Pedro", "Juan", "Guido"]

// var nombresLargos7 = nombres.filter { $0.count > 7 } // Una sintaxis
var nombresLargos7 = nombres.filter { nombre in nombre.count > 7 } // Mas legible?
print(nombresLargos7)

//Escribir funcion que invoque a descargaXML, y lo imprima mediante una escaping closure.

func descargaXML(url: URL, alTerminar completionHandler: @escaping (String) -> Void) {
    //Descarga el XML
    let XML = URLSession.shared.dataTask(with: url)
    //Al terminar invoca al completion handler enviandole el XML
    completionHandler(XML.description)
}

descargaXML(url: URL(string: "https://prueba.com")!) { XMLRecibido in print(XMLRecibido) }

