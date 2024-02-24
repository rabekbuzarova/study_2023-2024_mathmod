using Plots 
using DifferentialEquations

# Объявляем значения
const k = 18
const n = 4.9

# Начальные расстояния для двух разных случаев погони
r0 = k/(n+1)
r0_2 = k/(n-1)

# Задаем интервалы 
const T = (0, 2*pi)
const T2 = (-pi, pi)

# Задаем функцию, представляющую наше ДУ
function F(u, p, t)
	return u / sqrt(n*n - 1)
end

# Задаем проблему(задачу) для случая 1
problem = ODEProblem(F, r0, T)

# Решение для случая 1
result = solve(problem, abstol=1e-8, reltol=1e-8)

#@show result.u
#@show result.t

dxR = rand(1:size(result.t)[1])
rAngles = [result.t[dxR] for i in 1:size(result.t)[1]]

# График траекторий для случая 1
plt1 = plot(proj=:polar, aspect_ratio=:equal, dpi = 1000, legend=true, bg=:lightgrey)

# Настрою холст
plot!(plt1, xlabel="theta", ylabel="r(t)", title="Задача о погоне. Случай 1.", legend=:best)

plot!(plt1, [rAngles[1], rAngles[2]], [0.0, result.u[size(result.u)[1]]], label="Траектория лодки", color=:red, lw=2)
scatter!(plt1, rAngles, result.u, label="", mc=:red, ms=0.0005)
plot!(plt1, result.t, result.u, xlabel="theta", ylabel="r(t)", label="Траектория катера", color=:green, lw=2)
scatter!(plt1, result.t, result.u, label="", mc=:green, ms=0.0005)

savefig(plt1, "lab02_img1.png")

# Задаем проблему(задачу) для случая 2
problem = ODEProblem(F, r0_2 , T2)

# Решение для случая 2
result = solve(problem, abstol=1e-8, reltol=1e-8)
dxR = rand(1:size(result.t)[1])
rAngles = [result.t[dxR] for i in 1:size(result.t)[1]]

# График траекторий для случая 2
plt2 = plot(proj=:polar, aspect_ratio=:equal, dpi = 1000, legend=true, bg=:lightgrey)

# Настрою холст
plot!(plt2, xlabel="theta", ylabel="r(t)", title="Задача о погоне. Случай 2", legend=:best)
plot!(plt2, [rAngles[1], rAngles[2]], [0.0, result.u[size(result.u)[1]]], label="Траектория лодки", color=:red, lw=2)
scatter!(plt2, rAngles, result.u, label="", mc=:red, ms=0.0005)
plot!(plt2, result.t, result.u, xlabel="theta", ylabel="r(t)", label="Траектория катера", color=:green, lw=2)
scatter!(plt2, result.t, result.u, label="", mc=:green, ms=0.0005)

savefig(plt2, "lab02_img2.png")