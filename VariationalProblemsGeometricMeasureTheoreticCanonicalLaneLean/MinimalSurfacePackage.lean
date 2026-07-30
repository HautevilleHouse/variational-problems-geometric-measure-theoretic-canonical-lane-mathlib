import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure MinimalSurfacePackage where
  surface : Type
  ambientMetric : Type
  areaFunctional : Type
  meanCurvatureZero : Prop
  stabilityInequality : Prop
  regularityResult : Prop

structure MinimalSurfaceEvidence (M : MinimalSurfacePackage) where
  meanCurvatureZeroClosed : M.meanCurvatureZero
  stabilityInequalityClosed : M.stabilityInequality
  regularityResultClosed : M.regularityResult

def MinimalSurfaceClosed (M : MinimalSurfacePackage) : Prop :=
  M.meanCurvatureZero ∧ M.stabilityInequality ∧ M.regularityResult

theorem minimal_surface_closed_from_evidence (M : MinimalSurfacePackage)
    (E : MinimalSurfaceEvidence M) : MinimalSurfaceClosed M := by
  exact And.intro E.meanCurvatureZeroClosed
    (And.intro E.stabilityInequalityClosed E.regularityResultClosed)

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse