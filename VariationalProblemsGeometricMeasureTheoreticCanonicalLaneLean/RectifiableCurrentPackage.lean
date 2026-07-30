import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure RectifiableCurrentPackage where
  ambient : Type
  current : Type
  boundaryRegular : Prop
  massFinite : Prop
  integralRepresentation : Prop
  compactnessProperty : Prop

structure RectifiableCurrentEvidence (R : RectifiableCurrentPackage) where
  boundaryRegularClosed : R.boundaryRegular
  massFiniteClosed : R.massFinite
  integralRepresentationClosed : R.integralRepresentation
  compactnessPropertyClosed : R.compactnessProperty

def RectifiableCurrentClosed (R : RectifiableCurrentPackage) : Prop :=
  R.boundaryRegular ∧ R.massFinite ∧ R.integralRepresentation ∧ R.compactnessProperty

theorem rectifiable_current_closed_from_evidence (R : RectifiableCurrentPackage)
    (E : RectifiableCurrentEvidence R) : RectifiableCurrentClosed R := by
  exact And.intro E.boundaryRegularClosed
    (And.intro E.massFiniteClosed
      (And.intro E.integralRepresentationClosed E.compactnessPropertyClosed))

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse