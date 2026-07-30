import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure RectifiableVarifoldPackage where
  varifoldSpace : Type u
  varifoldTopology : TopologicalSpace varifoldSpace
  rectifiability : Prop
  stationarityCondition : Prop
  integralityCondition : Prop

structure RectifiableVarifoldEvidence (V : RectifiableVarifoldPackage) where
  rectifiabilityClosed : V.rectifiability
  stationarityConditionClosed : V.stationarityCondition
  integralityConditionClosed : V.integralityCondition

def RectifiableVarifoldClosed (V : RectifiableVarifoldPackage) : Prop :=
  V.rectifiability ∧ V.stationarityCondition ∧ V.integralityCondition

theorem rectifiable_varifold_closed_from_evidence
    (V : RectifiableVarifoldPackage) (E : RectifiableVarifoldEvidence V) :
    RectifiableVarifoldClosed V := by
  exact And.intro E.rectifiabilityClosed
    (And.intro E.stationarityConditionClosed E.integralityConditionClosed)

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse