import GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse