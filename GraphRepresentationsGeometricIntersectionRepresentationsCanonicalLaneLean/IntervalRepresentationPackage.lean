import canonicalLaneMathlib.AdmissibleClass

/-!
# IntervalRepresentationPackage for Graph Representations Geometric Intersection Representations
-/

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure IntervalGraphPackage where
  vertexCount : Nat
  intervals : List (ℝ × ℝ)
  adjacency : (v w : vertexCount) → Prop
  intervalRealization : (v : vertexCount) → intervals[v] = (a v, b v) ∧ a v < b v

def UnitIntervalIntersection (I J : ℝ × ℝ) : Prop :=
  I.1 ≤ J.2 ∧ J.1 ≤ I.2

theorem interval_graph_characterization (P : IntervalGraphPackage) :
  (∀ v w, P.adjacency v w ↔ UnitIntervalIntersection P.intervals[v] P.intervals[w]) := by
  sorry

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse