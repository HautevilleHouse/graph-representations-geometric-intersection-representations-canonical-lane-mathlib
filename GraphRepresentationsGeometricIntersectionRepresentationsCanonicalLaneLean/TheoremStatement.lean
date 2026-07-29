import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure GeometricIntersectionRepresentationAdmittedObject where
  graph : Type
  representation : Type
  representationCorrect : Prop
  conclusion : representationCorrect

def GeometricIntersectionRepresentationWitnessClosed (O : GeometricIntersectionRepresentationAdmittedObject) : Prop :=
  O.representationCorrect

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse