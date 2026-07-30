import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure FirstVariationFormulaPackage where
  varifold : Type u
  varifoldTopology : TopologicalSpace varifold
  vectorFieldSpace : Type v
  variationFormula : Prop
  stationarityEquivalence : Prop

structure FirstVariationFormulaEvidence (F : FirstVariationFormulaPackage) where
  variationFormulaClosed : F.variationFormula
  stationarityEquivalenceClosed : F.stationarityEquivalence

def FirstVariationFormulaClosed (F : FirstVariationFormulaPackage) : Prop :=
  F.variationFormula ∧ F.stationarityEquivalence

theorem first_variation_formula_closed_from_evidence
    (F : FirstVariationFormulaPackage) (E : FirstVariationFormulaEvidence F) :
    FirstVariationFormulaClosed F := by
  exact And.intro E.variationFormulaClosed E.stationarityEquivalenceClosed

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse