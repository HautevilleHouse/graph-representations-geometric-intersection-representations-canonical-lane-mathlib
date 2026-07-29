import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GeometricIntersectionGraph
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.IntervalRepresentation

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

def bridgeClosed {G : GeometricIntersectionGraph} (R : IntervalRepresentation G) : Prop :=
  IntervalRepresentationClosed R

theorem bridge_from_admissible_class {G : GeometricIntersectionGraph} (R : IntervalRepresentation G)
    (E : IntervalRepresentationEvidence R) : bridgeClosed R := by
  exact interval_representation_closed_from_evidence R E

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse