func saludarMundo() { // Funcion sin parametros ni retorno
    print("Hola, Mundo!")
}

func saludarPersona(_ nombrePersona: String) -> String { // Funcion con parametros y  retorno
    return "Hola, \(nombrePersona)!"
}

func holaMundo() -> String { //funcion sin parametros que retorna un String
    return "Hola World"
}

// Funcion con multiples parametros. Y valor por defecto en el booleano
func saludar(persona: String, isGreeted: Bool = false) -> String {
    if isGreeted {
        return "Hola de nuevo, \(persona)..."
    } else {
        return "Hola \(persona)!"
    }
}

// Funcion con multiples valores de retorno (se usa una Tupla)
func obtenerHorarioDeCierre(esFinDeSemana: Bool) -> (hora: Int, minutos: Int) {
    if esFinDeSemana {
        return (13, 00)
    } else {
        return (18, 30)
    }
}


// Pruebas
print(holaMundo())
saludarMundo()
print(saludarPersona("Mauro"))

let saludarNuevamente = saludar(persona: "Josefina", isGreeted: true)
let saludarNuevamente2 = saludar(persona: "Julio")
print(saludarNuevamente, saludarNuevamente2)

let horario = obtenerHorarioDeCierre(esFinDeSemana: false)
print("El horario de cierre es \(horario.hora):\(horario.minutos), ya que hoy es un dia de semana.")


// Parametros variados (Se interpreta como un array del tipo de dato)
func sumaMuchosNumeros(_ numeros: Int...) -> Int {
    var total = 0
    for numero in numeros {
        total += numero
    }
    return total
}

print(sumaMuchosNumeros(10))
print(sumaMuchosNumeros(1,2,3,4,5,6,7,8,9))

// Funcion como variable
func multiplicar(_ num1: Int, _ num2: Int) -> Int {
    num1 * num2
}

var funcionMatematica: (Int, Int) -> Int = multiplicar
print(funcionMatematica(2,3))

func imprimirFuncMat(_ funcionMatematica: (Int, Int) -> Int,_ a: Int, _ b: Int) {
    print("Resultado: \(funcionMatematica(a,b))")
} // Funcion como parametro

imprimirFuncMat(suma, 10, 10)

// Funcion como valor de retorno

func incrementar(_ posicionActual: Int) -> Int {
    posicionActual + 1
}
func decrementar(_ posicionActual: Int) -> Int {
    posicionActual - 1
}

func moverseAdelante(_ avanzar: Bool) -> (Int) -> Int {
    if avanzar {
        return incrementar
    } else {
        return decrementar
    }
}

moverseAdelante(true)

// Ejercicio 1
func suma(valor1: Int, valor2: Int) -> Int {
    valor1 + valor2
}

print(suma(valor1: 2, valor2: 2))

func calcularPorcentaje(cantidadHombres: Int, cantidadMujeres: Int) -> (porcentajeHombres: Double, porcentajeMujeres: Double) {
    let total: Double = Double(cantidadHombres + cantidadMujeres)
    let porcentajeHombres: Double = Double(cantidadHombres) * 100.00 / total
    let porcentajeMujeres: Double = Double(cantidadMujeres) * 100.00 / total
    return (porcentajeHombres.rounded(), porcentajeMujeres.rounded())
}

let porcentajes = calcularPorcentaje(cantidadHombres: 16, cantidadMujeres: 11)
print("Si tenemos 11 mujeres y 16 varones, tenemos un \(porcentajes.porcentajeHombres)% de hombres, y un \(porcentajes.porcentajeMujeres)% de mujeres.")

// Ejercicio 2
func esDivisible(_ numero:Int, esDivisiblePor numero2: Int) -> Bool {
    return numero % numero2 == 0
}

print(esDivisible(4, esDivisiblePor: 2))
print(esDivisible(5, esDivisiblePor: 2))

func calcularPromedio(_ numeros: Int...) -> Double {
    var total = 0
    for numero in numeros{
        total += numero
    }
    let promedio: Double = Double(total) / Double(numeros.count)
    return promedio
}

print(calcularPromedio(5,5,5,5))
print(calcularPromedio(7,6,6,6))

func tiempoDelRecorrido(_ distancia: Int, _ velocidad: Int = 5) -> Int {
    distancia / velocidad
}

let recorridoCaminando = tiempoDelRecorrido(40)
let recorridoCorriendo = tiempoDelRecorrido(40, 10)

print("Al recorrer 40 km, una persona caminando a 5km/h demora \(recorridoCaminando) horas. Una persona corriendo a 10km/h demora \(recorridoCorriendo) horas.")

// Ejercicio 3
func imprimirNoticia(_ noticia: String) {
    print(noticia)
}

func darNoticia(_ nota: Int, imprimir: (String) -> Void) {
    if nota >= 7 {
        imprimir("Aprobado!")
    } else {
        imprimir("Desaprobado :(")
    }
}

darNoticia(8, imprimir: imprimirNoticia)

