import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure GeometricMeasurePackage where
  hausdorffMeasure : Type u
  rectifiableSets : Prop
  courantFedererStructure : Type v
  compactnessProperties : Prop
  rectifiabilityCriteria : Prop

def GeometricMeasureClosed (G : GeometricMeasurePackage) : Prop :=
  G.courantFedererStructure ∧ G.compactnessProperties ∧ G.rectifiabilityCriteria

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse