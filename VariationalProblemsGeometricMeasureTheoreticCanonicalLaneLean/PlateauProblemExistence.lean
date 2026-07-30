import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure PlateauProblemPackage where
  boundaryData : Type u
  dimension : ℕ
  ambientManifold : Type v
  ambientTopology : TopologicalSpace ambientManifold
  solutionCurrent : Prop
  areaMinimizing : Prop
  existence : Prop
  regularity : Prop

structure PlateauProblemEvidence (P : PlateauProblemPackage) where
  solutionCurrentClosed : P.solutionCurrent
  areaMinimizingClosed : P.areaMinimizing
  existenceClosed : P.existence
  regularityClosed : P.regularity

def PlateauProblemClosed (P : PlateauProblemPackage) : Prop :=
  P.solutionCurrent ∧ P.areaMinimizing ∧ P.existence ∧ P.regularity

theorem plateau_problem_closed_from_evidence (P : PlateauProblemPackage)
    (E : PlateauProblemEvidence P) : PlateauProblemClosed P := by
  exact And.intro E.solutionCurrentClosed
    (And.intro E.areaMinimizingClosed
      (And.intro E.existenceClosed E.regularityClosed))

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse