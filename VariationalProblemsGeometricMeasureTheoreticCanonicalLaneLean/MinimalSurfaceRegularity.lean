import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure MinimalSurfaceRegularityPackage where
  surface : Type u
  surfaceTopology : TopologicalSpace surface
  meanCurvatureZero : Prop
  regularityClass : String
  rectifiability : Prop

structure MinimalSurfaceRegularityEvidence (M : MinimalSurfaceRegularityPackage) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  rectifiabilityClosed : M.rectifiability

def MinimalSurfaceRegularityClosed (M : MinimalSurfaceRegularityPackage) : Prop :=
  M.meanCurvatureZero ∧ M.rectifiability

theorem minimal_surface_regularity_closed_from_evidence
    (M : MinimalSurfaceRegularityPackage) (E : MinimalSurfaceRegularityEvidence M) :
    MinimalSurfaceRegularityClosed M := by
  exact And.intro E.meanCurvatureZeroClosed E.rectifiabilityClosed

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse