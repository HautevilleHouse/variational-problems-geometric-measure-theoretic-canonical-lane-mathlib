import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure AreaMinimizingCurrentPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  dimension : ℕ
  current : Type v
  areaMinimizing : Prop
  boundaryRegularity : Prop
  monotonicityFormula : Prop

structure AreaMinimizingCurrentEvidence (A : AreaMinimizingCurrentPackage) where
  areaMinimizingClosed : A.areaMinimizing
  boundaryRegularityClosed : A.boundaryRegularity
  monotonicityFormulaClosed : A.monotonicityFormula

def AreaMinimizingCurrentClosed (A : AreaMinimizingCurrentPackage) : Prop :=
  A.areaMinimizing ∧ A.boundaryRegularity ∧ A.monotonicityFormula

theorem area_minimizing_current_closed_from_evidence (A : AreaMinimizingCurrentPackage)
    (E : AreaMinimizingCurrentEvidence A) : AreaMinimizingCurrentClosed A := by
  exact And.intro E.areaMinimizingClosed (And.intro E.boundaryRegularityClosed E.monotonicityFormulaClosed)

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse