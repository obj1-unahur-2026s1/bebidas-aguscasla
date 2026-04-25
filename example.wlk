object whisky {
    method rendimientoEnDeportista(dosis) = 0.9 * dosis
}
object terere {
    method rendimientoEnDeportista(dosis) = (0.1 * dosis).max(1) 
}
object cinuro {
    method rendimientoEnDeportista(dosis) = 0 * dosis
}
object tito {
    var rendimiento =  0

    method consumir(cantidad, bebida) {
        rendimiento = bebida.rendimientoEnDeportista(cantidad)
    }

    method peso() = 70 
    method inerciaBase() = 490 
    method velocidad() = (rendimiento * self.inerciaBase()) / self.peso()
}