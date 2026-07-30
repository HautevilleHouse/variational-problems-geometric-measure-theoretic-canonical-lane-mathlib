import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure RectifiableSetPackage where
  ambientSpace : Type u
  topology : TopologicalSpace ambientSpace
  dimension : ℕ
  hausdorffMeasure : Prop
  rectifiable : Prop
  approximateTangent : Prop
  densityExists : Prop

structure RectifiableSetEvidence (R : RectifiableSetPackage) where
  hausdorffMeasureClosed : R.hausdorffMeasure
  rectifiableClosed : R.rectifiable
  approximateTangentClosed : R.approximateTangent
  densityExistsClosed : R.densityExists

def RectifiableSetClosed (R : RectifiableSetPackage) : Prop :=
  R.hausdorffMeasure ∧ R.rectifiable ∧ R.approximateTangent ∧ R.densityExists

theorem rectifiable_set_closed_from_evidence (R : RectifiableSetPackage)
    (E : RectifiableSetEvidence R) : RectifiableSetClosed R := by
  exact And.intro E.hausdorffMeasureClosed
    (And.intro E.rectifiableClosed
      (And.intro E.approximateTangentClosed E.densityExistsClosed))

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse