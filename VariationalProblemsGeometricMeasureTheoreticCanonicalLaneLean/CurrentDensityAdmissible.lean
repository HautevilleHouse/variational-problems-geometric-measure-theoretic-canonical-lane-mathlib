import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure CurrentDensityAdmissibleObject where
  rectifiableCurrent : Type u
  integerMultiplicity : Bool
  boundaryRectifiable : Bool
  massFinite : Bool
  conclusion : massFinite

def CurrentDensityWitnessClosed (O : CurrentDensityAdmissibleObject) : Prop :=
  O.massFinite

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse
