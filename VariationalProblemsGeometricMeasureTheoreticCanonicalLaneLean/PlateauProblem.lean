import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure PlateauProblemSolution where
  ambientManifold : Type u
  boundaryCycle : Type v
  spanningSurface : Type w
  areaFinite : Prop
  areaMinimizing : Prop
  regularity : Prop

structure PlateauEvidence (P : PlateauProblemSolution) where
  areaFiniteTerm : P.areaFinite
  areaMinimizingTerm : P.areaMinimizing
  regularityTerm : P.regularity

def PlateauClosed (P : PlateauProblemSolution) : Prop :=
  P.areaFinite ∧ P.areaMinimizing ∧ P.regularity

theorem plateau_closed_from_evidence (P : PlateauProblemSolution)
    (E : PlateauEvidence P) : PlateauClosed P := by
  exact And.intro E.areaFiniteTerm (And.intro E.areaMinimizingTerm E.regularityTerm)

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse