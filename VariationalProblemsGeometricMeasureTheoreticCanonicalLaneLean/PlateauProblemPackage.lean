import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure PlateauProblemPackage where
  boundaryCurve : Type
  spanningSurface : Type
  areaMinimizing : Prop
  solutionExists : Prop
  regularityInterior : Prop

structure PlateauProblemEvidence (P : PlateauProblemPackage) where
  areaMinimizingClosed : P.areaMinimizing
  solutionExistsClosed : P.solutionExists
  regularityInteriorClosed : P.regularityInterior

def PlateauProblemClosed (P : PlateauProblemPackage) : Prop :=
  P.areaMinimizing ∧ P.solutionExists ∧ P.regularityInterior

theorem plateau_problem_closed_from_evidence (P : PlateauProblemPackage)
    (E : PlateauProblemEvidence P) : PlateauProblemClosed P := by
  exact And.intro E.areaMinimizingClosed
    (And.intro E.solutionExistsClosed E.regularityInteriorClosed)

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse