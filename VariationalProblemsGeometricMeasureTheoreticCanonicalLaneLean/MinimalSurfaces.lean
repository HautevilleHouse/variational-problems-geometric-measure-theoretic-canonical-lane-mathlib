import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure MinimalSurfacePackage where
  surfaceType : Type u
  areaFunctional : Type v
  eulerLagrangeEquation : Prop
  regularityTheory : Prop

def MinimalSurfaceClosed (M : MinimalSurfacePackage) : Prop :=
  M.eulerLagrangeEquation ∧ M.regularityTheory

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse