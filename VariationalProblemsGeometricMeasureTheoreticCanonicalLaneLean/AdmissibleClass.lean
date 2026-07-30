import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VariationalProblemsGeometricMeasureTheoretic

structure VariationalAdmittedObject where
  carrier : Type
  measureSpace : Type
  variationalFunctional : Type
  boundaryConditions : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : VariationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

end VariationalProblemsGeometricMeasureTheoretic
end HautevilleHouse