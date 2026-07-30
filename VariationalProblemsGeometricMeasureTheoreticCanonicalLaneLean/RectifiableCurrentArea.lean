import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure RectifiableCurrentAreaPackage where
  current : Type u
  areaFunctional : Type v
  areaMinimizingProperty : Prop
  densityBound : Prop
  monotonicityFormula : Prop

structure RectifiableCurrentAreaEvidence (R : RectifiableCurrentAreaPackage) where
  areaMinimizingPropertyClosed : R.areaMinimizingProperty
  densityBoundClosed : R.densityBound
  monotonicityFormulaClosed : R.monotonicityFormula

def RectifiableCurrentAreaClosed (R : RectifiableCurrentAreaPackage) : Prop :=
  R.areaMinimizingProperty ∧ R.densityBound ∧ R.monotonicityFormula

theorem rectifiable_current_area_closed_from_evidence (R : RectifiableCurrentAreaPackage) (E : RectifiableCurrentAreaEvidence R) :
    RectifiableCurrentAreaClosed R := by
  exact And.intro E.areaMinimizingPropertyClosed (And.intro E.densityBoundClosed E.monotonicityFormulaClosed)

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse
