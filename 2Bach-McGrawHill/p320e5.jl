# P320 E5 McGrawHill 2º Bachillerato
const c = 3e8                   # m/s velocidad de la luz en el vacío
const h = 6.63e-34              # J·s
const Me = 9.11e-31             # Kg

We_eV = 3.0                     # eV
v = 1.00e6                      # m/s
eCinéticaC = 6.89e-19           # J Energía Cinética del apartado C

frecuencia = NaN                # Hz
longitudDeOnda = NaN            # m
longitudDeOndaC = NaN           # m Longitud de onda en el apartado C

# Frecuencia
function f(We, m, v)
    return (1/h)*(We+Ec(m,v))
end

# Energía cinética
function Ec(m, v)
    return 0.5m*v^2
end

# Longitud de onda asociada a los electrones de De Broglie
function l(m, v)
    return h/(m*v)
end

function main()
    global frecuencia, longitudDeOnda, longitudDeOndaC
    frecuencia = f(We_eV*1.6e-19, Me, v)    # Apartado A
    longitudDeOnda = l(Me, v)               # Apartado B

    energía2 = We_eV*1.6e-19 + eCinéticaC   # Apartado C
    longitudDeOndaC = (h*c)/energía2

    println(frecuencia, " Hz")
    println(longitudDeOnda, " m")
    println(longitudDeOndaC, " m")

end

main()
