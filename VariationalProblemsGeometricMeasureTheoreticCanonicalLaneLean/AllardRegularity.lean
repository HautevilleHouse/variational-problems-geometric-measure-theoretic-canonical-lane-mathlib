import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure AllardRegularityPackage where
  varifold : VarifoldPackage
  dimension : ℕ
  integrabilityCondition : Prop
  stationarity : Prop
  graphicalRegularity : Prop
  lipschitzGraph : Prop

structure AllardRegularityEvidence (A : AllardRegularityPackage) where
  integrabilityConditionClosed : A.integrabilityCondition
  stationarityClosed : A.stationarity
  graphicalRegularityClosed : A.graphicalRegularity
  lipschitzGraphClosed : A.lipschitzGraph

def AllardRegularityClosed (A : AllardRegularityPackage) : Prop :=
  A.integrabilityCondition ∧ A.stationarity ∧ A.graphicalRegularity ∧ A.lipschitzGraph

theorem allard_regularity_closed_from_evidence (A : AllardRegularityPackage)
    (E : AllardRegularityEvidence A) : AllardRegularityClosed A := by
  exact And.intro E.integrabilityConditionClosed
    (And.intro E.stationarityClosed
      (And.intro E.graphicalRegularityClosed E.lipschitzGraphClosed))

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse