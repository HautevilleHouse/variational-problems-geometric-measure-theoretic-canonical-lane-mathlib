import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure SeifertSurfacePackage where
  link : Type u
  spanningSurface : Type v
  genusMinimizing : Prop
  calibratingForm : Prop
  boundaryRegularity : Prop

structure SeifertSurfaceEvidence (S : SeifertSurfacePackage) where
  genusMinimizingClosed : S.genusMinimizing
  calibratingFormClosed : S.calibratingForm
  boundaryRegularityClosed : S.boundaryRegularity

def SeifertSurfaceClosed (S : SeifertSurfacePackage) : Prop :=
  S.genusMinimizing ∧ S.calibratingForm ∧ S.boundaryRegularity

theorem seifert_surface_closed_from_evidence (S : SeifertSurfacePackage) (E : SeifertSurfaceEvidence S) :
    SeifertSurfaceClosed S := by
  exact And.intro E.genusMinimizingClosed (And.intro E.calibratingFormClosed E.boundaryRegularityClosed)

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse
