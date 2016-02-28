# Datos para el problema P3.9
j = im          # j = i = im
R1 = 5000       # Ohmios
R2 = 10000      # Ohmios
C = 0.1e-6      # Faradios
L = 10          # Henrios
w = 1000        # Hz    (en libro dato diferente)
V= 10           # Voltios

# Impedancia en rama 2
Zc = j/(w * C)
Z2 = ((1 + j ) / 10000)^-1

# Impedancia en rama 1
Zl = j * w * L
Z1 = R1 + Zl

# Impedancia total entre ambas ramas (en serie)
Z = Z1 + Z2

# Cálculo de la corriente
I = V / Z
mI = abs(I)                   # Módulo
aI = (angle(I) / 2pi)*360       # Ángulo

# Mostramos solución final en pantalla
println("Módulo de I: ",mI)
println("Ángulo que forma I: ",round(aI,2),"º")
