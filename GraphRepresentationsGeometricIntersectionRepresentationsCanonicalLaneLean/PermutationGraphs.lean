import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GeometricIntersection

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure PermutationGraphPackage (G : GeometricIntersectionPackage) where
  permutation : ℕ → ℕ
  lineSegments : Set (Set (ℝ × ℝ))
  segmentIntersectionProperty : Prop
  segmentIntersectionPropertyClosed : segmentIntersectionProperty

def PermutationGraphClosed {G : GeometricIntersectionPackage} (P : PermutationGraphPackage G) : Prop :=
  P.segmentIntersectionProperty

theorem permutation_graph_closed {G : GeometricIntersectionPackage} (P : PermutationGraphPackage G) :
    PermutationGraphClosed P := by
  exact P.segmentIntersectionPropertyClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse