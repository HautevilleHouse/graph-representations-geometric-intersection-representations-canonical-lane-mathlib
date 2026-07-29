import GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  IntersectionGraphFamilyClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.object.intersectionProperty

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse