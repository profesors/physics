# PAU 2016-Modelo A-Pregunta 3

# Una carga puntual, q = 3 μC, se encuentra situada en
# el origen de coordenadas, tal y como se muestra en la figura. Una
# segunda carga q1 = 1 μC se encuentra inicialmente en el punto P1(1,0)
# m y, recorriendo la espiral de la figura, llega al punto P2(0,2) m.
# Determine:
# a. La diferencia de potencial entre los puntos P1 y P2.
# b. El trabajo realizado para llevar la carga q1 del punto P1 al P2.
# Datos: Constante de la Ley de Coulomb; K = 9·109 N m2 C-2

using Distances     # https://github.com/JuliaStats/Distances.jl

const k = 9.00e9        # N m^2 C^-2

type carga
    p::Vector{Float64}  # Punto(x,y). Metros
    c::Float16          # Carga. Culombios
end

q = carga([0,0], 3e-6)
q1 = carga([1,0], 1e-6)
destino = [0, 2]

# Potencial V
function potencial(q, r)
    return (k*q)/r
end

# Distancia entre dos puntos
function dist(a, b)
    return evaluate(Euclidean(), a, b)
end

function main()
    # a. La diferencia de potencial entre los puntos P1 y P2.
    p1 = potencial(q.c, dist(q.p, q1.p))
    p2 = potencial(q.c, dist(q.p, destino))
    p = p2 - p1
    println("a) La diferencia de potencial es ",round(p,2)," voltios")

    # b. El trabajo realizado para llevar la carga q1 del punto P1 al P2.
    w = -q1.c * (p2-p1)
    println("b) El trabajo realizado es ",round(w, 4), " julios")

end

main()
