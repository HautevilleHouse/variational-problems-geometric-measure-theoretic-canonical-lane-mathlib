import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure VarifoldCompactness where
  varifoldSequence : Type u
  compactSubsequence : Prop
  limitVarifoldStationary : Prop
  generalizedMeanCurvature : Prop

structure VarifoldCompactnessEvidence (V : VarifoldCompactness) where
  compactSubsequenceTerm : V.compactSubsequence
  limitVarifoldStationaryTerm : V.limitVarifoldStationary
  generalizedMeanCurvatureTerm : V.generalizedMeanCurvature

def VarifoldCompactnessClosed (V : VarifoldCompactness) : Prop :=
  V.compactSubsequence ∧ V.limitVarifoldStationary ∧ V.generalizedMeanCurvature

theorem varifold_compactness_closed_from_evidence (V : VarifoldCompactness)
    (E : VarifoldCompactnessEvidence V) : VarifoldCompactnessClosed V := by
  exact And.intro E.compactSubsequenceTerm (And.intro E.limitVarifoldStationaryTerm E.generalizedMeanCurvatureTerm)

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse