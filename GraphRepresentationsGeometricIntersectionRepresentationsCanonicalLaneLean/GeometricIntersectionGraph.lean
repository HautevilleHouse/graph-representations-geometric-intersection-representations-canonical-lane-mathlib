import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure GeometricIntersectionGraph where
  vertices : Type u
  intervals : vertices → Set ℝ
  intersectionCondition : ∀ v w : vertices, (v ≠ w) → (intervals v ∩ intervals w).Nonempty ↔ True
  coveringCondition : Prop

structure GeometricIntersectionEvidence (G : GeometricIntersectionGraph) where
  intersectionClosed : ∀ v w : vertices, (v ≠ w) → (intervals v ∩ intervals w).Nonempty
  coveringClosed : G.coveringCondition

def GeometricIntersectionClosed (G : GeometricIntersectionGraph) : Prop :=
  (∀ v w : vertices, (v ≠ w) → (intervals v ∩ intervals w).Nonempty) ∧ G.coveringCondition

theorem geometric_intersection_closed_from_evidence (G : GeometricIntersectionGraph)
    (E : GeometricIntersectionEvidence G) : GeometricIntersectionClosed G := by
  exact And.intro E.intersectionClosed E.coveringClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse