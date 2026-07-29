import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GeometricIntersection

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure CliqueGraphPackage (G : GeometricIntersectionPackage) where
  cliqueFamily : Set (Set (G.universe))
  pairwiseIntersecting : Prop
  cliqueComplexDimension : ℕ
  pairwiseIntersectingClosed : pairwiseIntersecting

def CliqueGraphClosed {G : GeometricIntersectionPackage} (C : CliqueGraphPackage G) : Prop :=
  C.pairwiseIntersecting

theorem clique_graph_closed {G : GeometricIntersectionPackage} (C : CliqueGraphPackage G) :
    CliqueGraphClosed C := by
  exact C.pairwiseIntersectingClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse