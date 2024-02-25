using Plots;
using DifferentialEquations;

# Функция, представляющие наши ДУ. Случай 1
function first(du, u, p, t)
    du[1] = - 0.25*u[1] - 0.74*u[2] + sin(t)
    du[2] = - 0.64*u[1] - 0.55*u[2] + cos(t+6)
end

# Функция, представляющие наши ДУ. Случай 2
function second(du, u, p, t)
    du[1] = - 0.32*u[1] - 0.89*u[2] + 2 * sin(10 * t)
    du[2] = (- 0.51*u[1])*u[2] + 2 * cos(10 * t)
end

# Необходимые константы: количество людей, промежутки для обоих случаев
const people = Float64[35000, 49000]
const prom1 = [0.0, 3.0]
const prom2 = [0.0, 0.0003]

# Задаем проблемы(задачи) для обоих случаев
problem1 = ODEProblem(first, people, prom1)
problem2 = ODEProblem(second, people, prom2)

# Решения для обоих случаев
result1 = solve(problem1, dtmax=0.1)
result2 = solve(problem2, dtmax=0.000001)


# Данные массивы будут хранить численность x (A11, A21), численность y(A12,A22) в момент времени t (T1, T2)
A11 = [u[1] for u in result1.u]
A12 = [u[2] for u in result1.u]
T1 = [t for t in result1.t]
A21 = [u[1] for u in result2.u]
A22 = [u[2] for u in result2.u]
T2 = [t for t in result2.t]

# Создаю холст 1
plt1 = plot(dpi = 300, legend= true, bg =:lightgrey)

# Настраиваю холст 1
plot!(plt1, xlabel="Время", ylabel="Численность", title="Модель боевых действий. Случай 1", legend=:best, lw=:2)
plot!(plt1, T1, A11, label="Численность армии X", color =:blue)
plot!(plt1, T1, A12, label="Численность армии Y", color =:green)

# Сохраняю результат в файл
savefig(plt1, "lab03_1.png")

# Создаю холст 2
plt2 = plot(dpi = 1200, legend= true, bg =:lightgrey)

# Настраиваю холст 2
plot!(plt2, xlabel="Время", ylabel="Численность", title="Модель боевых действий. Случай 2", legend=:best, lw=:2)
plot!(plt2, T2, A21, label="Численность армии X", color =:blue)
plot!(plt2, T2, A22, label="Численность армии Y", color =:green)

# Сохраняю результат в файл
savefig(plt2, "lab03_2.png")