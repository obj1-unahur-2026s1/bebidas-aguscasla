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
    const peso = 70
    const inerciaBase = 2
    var rendimiento =  0


    method consumir(cantidad, bebida) {
        rendimiento += bebida.rendimientoEnDeportista(cantidad)
    }

    method velocidad() = (rendimiento * inerciaBase) / peso
}