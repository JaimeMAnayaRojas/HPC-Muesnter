# Model SIR dynamics with AI

using DifferentialEquations
using Plots

# Define the SIR model
function SIR(δu, u, p, t)
    S, I, R = u
    β, γ = p # β is the infection rate, γ is the recovery rate
    N = S + I + R
    δu[1] = -β * S * I / N
    δu[2] = β * S * I / N - γ * I
    δu[3] = γ * I
end

# Set the initial conditions

u0 = [1000, 1.0, 0.0] # 1000 individuals of the population are susceptible, 1 is infected, 0% is recovered
tspan = (0.0, 500.0) # Simulate for 200 days
p = [0.1, 0.05] # β = 0.1, γ = 0.05

# Solve the SIR model
prob = ODEProblem(SIR, u0, tspan, p)
sol = solve(prob, Tsit5())


# Plot the results
plot(sol, label=["S" "I" "R"], xlabel="Time", ylabel="Proportion of population", title="SIR Model")