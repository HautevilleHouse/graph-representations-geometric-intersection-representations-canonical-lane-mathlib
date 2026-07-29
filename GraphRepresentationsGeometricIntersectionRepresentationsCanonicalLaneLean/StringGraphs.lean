import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GeometricIntersection

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure StringGraphPackage (G : GeometricIntersectionPackage) where
  curves : G.universe → Set (ℝ × ℝ)
  continuousSimple : Prop
  intersectionPairwise : Prop
  continuousSimpleClosed : continuousSimple
  intersectionPairwiseClosed : intersectionPairwise

def StringGraphClosed {G : GeometricIntersectionPackage} (S : StringGraphPackage G) : Prop :=
  S.continuousSimple ∧ S.intersectionPairwise

theorem string_graph_closed {G : GeometricIntersectionPackage} (S : StringGraphPackage G) :
    StringGraphClosed S := by
  exact And.intro S.continuousSimpleClosed S.intersectionPairwiseClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse