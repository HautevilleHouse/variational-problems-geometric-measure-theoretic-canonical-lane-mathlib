import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

structure MinimalSurfaceCalibration where
  dimension : Nat
  calibratingForm : Type u
  calibrationClosed : Prop
  areaMinimizing : Prop
  boundaryRegularity : Prop

structure MinimalSurfaceEvidence (M : MinimalSurfaceCalibration) where
  calibrationClosedTerm : M.calibrationClosed
  areaMinimizingTerm : M.areaMinimizing
  boundaryRegularityTerm : M.boundaryRegularity

def MinimalSurfaceClosed (M : MinimalSurfaceCalibration) : Prop :=
  M.calibrationClosed ∧ M.areaMinimizing ∧ M.boundaryRegularity

theorem minimal_surface_closed_from_evidence (M : MinimalSurfaceCalibration)
    (E : MinimalSurfaceEvidence M) : MinimalSurfaceClosed M := by
  exact And.intro E.calibrationClosedTerm (And.intro E.areaMinimizingTerm E.boundaryRegularityTerm)

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse