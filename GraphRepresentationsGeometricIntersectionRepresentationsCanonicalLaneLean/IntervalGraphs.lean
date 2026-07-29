import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GeometricIntersection

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure IntervalGraphPackage (G : GeometricIntersectionPackage) where
  intervalAssignment : G.universe → Set ℝ
  convexClosedNonempty : Prop
  pairwiseIntersectingFromInterval : Prop
  convexClosedNonemptyClosed : convexClosedNonempty
  pairwiseIntersectingFromIntervalClosed : pairwiseIntersectingFromInterval

def IntervalGraphClosed {G : GeometricIntersectionPackage} (I : IntervalGraphPackage G) : Prop :=
  I.convexClosedNonempty ∧ I.pairwiseIntersectingFromInterval

theorem interval_graph_closed {G : GeometricIntersectionPackage} (I : IntervalGraphPackage G) :
    IntervalGraphClosed I := by
  exact And.intro I.convexClosedNonemptyClosed I.pairwiseIntersectingFromIntervalClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse