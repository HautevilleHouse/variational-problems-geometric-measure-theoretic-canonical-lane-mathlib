import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure BVSpacePackage where
  functionSpace : Type
  totalVariationSemiNorm : Type
  lowerSemicontinuity : Prop
  compactEmbedding : Prop
  coareaFormula : Prop

structure BVSpaceEvidence (B : BVSpacePackage) where
  lowerSemicontinuityClosed : B.lowerSemicontinuity
  compactEmbeddingClosed : B.compactEmbedding
  coareaFormulaClosed : B.coareaFormula

def BVSpaceClosed (B : BVSpacePackage) : Prop :=
  B.lowerSemicontinuity ∧ B.compactEmbedding ∧ B.coareaFormula

theorem bv_space_closed_from_evidence (B : BVSpacePackage)
    (E : BVSpaceEvidence B) : BVSpaceClosed B := by
  exact And.intro E.lowerSemicontinuityClosed
    (And.intro E.compactEmbeddingClosed E.coareaFormulaClosed)

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse