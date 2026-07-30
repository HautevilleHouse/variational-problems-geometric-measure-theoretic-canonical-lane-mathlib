import canonicalLaneMathlib.AdmissibleClass
import VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean.BridgeLemmas
import VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean

def ConstrainedVariationalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_variational_endgame (A : AdmissibleClass) :
    ConstrainedVariationalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VariationalProblemsGeometricMeasureTheoreticCanonicalLaneLean
end HautevilleHouse