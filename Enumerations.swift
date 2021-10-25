// Enumeraciones (enum)

enum Enumeracion {
    //los casos van aqui
}

enum EjeCardinal {
    case norte
    case sur
    case este
    case oeste
    func opuesta() -> EjeCardinal {
        switch direccionCardinal {
        case .norte: return .sur
        case .sur: return .norte
        case .este: return .oeste
        case .oeste: return .este
        }
    } // Funciones que modifican el enum
} // multiples lineas

enum EjeCardinalUnaLinea {
    case norte, sur, este, oeste
} // Una sola linea

let direccionCardinal = EjeCardinal.sur

switch direccionCardinal { // el switch debe ser exhaustivo, debe considerar todos los casos.
case .norte:
    print("Mirando al Norte")
case .sur:
    print("Mirando al Sur")
case .este:
    print("Mirando al Este")
case .oeste:
    print("Mirando al Oeste")
}

let direccionActual = EjeCardinal.norte
print("Nueva Direccion: \(direccionActual.opuesta())")

enum Bebida: CaseIterable { // CaseIterable provee una coleccion de todos los casos de la enumeracion
    case cafe, te, jugo, mate
}

let bebidas = Bebida.allCases

let cantidadDeBebidas = bebidas.count

print("Bebidas disponibles: \(cantidadDeBebidas)")

for bebida in bebidas { // Tambien se pueden recorrer con un for cuando son del tipo CaseIterable
    print(bebida)
}

enum CodigoDeBarra { // Valores asociados, para asociar distintos tipos de dato en una enum
    case upc(Int, Int, Int, Int)
    case qr(String)
}

let productoUPC = CodigoDeBarra.upc(1, 2, 3, 4)
let productoQR = CodigoDeBarra.qr("asdf24125mfas")

print(productoQR, productoUPC)

enum Dedos: String { // Raw values, valores brutos
    case pulgar = "Dedo gordo"
    case indice = "Dedo apuntador"
    case mayor = "Dedo maleducado"
    case anular = "Dedo de anillo"
    case meñique = "Dedo pequeño"
}

enum Planetas: Int { // Valores Brutos implicitos
    case mercurio = 1, venus, tierra, marte, jupiter, saturno, urano, neptuno
    // Swift interpreta los siguientes valores manteniendo el orden: Venus = 2, Tierra = 3, etc
}

let ordenTierra = Planetas.tierra.rawValue // Se accede al raw value con dicha propiedad
print("La tierra es el \(ordenTierra) planeta del Sistema Solar")

let posiblePlaneta = Planetas(rawValue: 7) // Se puede inicializar a partir del Raw value. En este caso, Urano
let nuevoPlaneta = Planetas(rawValue: 15) // Nil

//Ejercitacion 1
enum DiasDeLaSemana: Int {
    case lunes = 1, martes, miercoles, jueves, viernes
}

let diaViernes = DiasDeLaSemana.martes.rawValue + 3 // Se puede tomar un raw y sumar

enum conexionServicio {
    case sinConexion
    case conectando(String, String)
    case conectado(token: String)
}
