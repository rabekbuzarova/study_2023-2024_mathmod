using Plots
using DifferentialEquations

x0 = 7
y0 = 14

a = 0.29
b = 0.031
c = 0.33
d = 0.024

function ode_fn(du, u, p, t)
    x, y = u
    du[1] = -a*u[1] + b * u[1] * u[2]
    du[2] = c * u[2] - d * u[1] * u[2]
end

v0 = [x0, y0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax=0.05)
X = [u[1] for u in sol.u]
Y = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt1 = plot(dpi=300, legend=false)

plot!(plt1, title="График зависимости x от y")
plot!(plt1, X, Y, color=:green)

savefig(plt1, "lab5_1_1.png")

plt2 = plot(dpi=300, legend=true)

plot!(plt2, title="Нестационарный случай")
plot!(plt2, T, X, label="Численность жертв", color=:blue)

plot!( plt2, T, Y, label="Численность хищников", color=:red)

savefig(plt2, "lab5_1_2.png")