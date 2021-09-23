export AMPGO07 
 
function AMPGO07(; n::Int = default_nvar, type::Val{T} = Val(Float64), kwargs...) where {T}
  function f(x)
    n = length(x)
    return x[1] <= 0 ? Inf : sin(x[1]) + sin(T(10 / 3) * x[1]) + log(abs(x[1])) - T(0.84) * x[1] + 3
  end
  x0 = T(2.7) * ones(T, 1)
  return ADNLPModels.ADNLPModel(f, x0, name = "AMPGO07"; kwargs...)
end