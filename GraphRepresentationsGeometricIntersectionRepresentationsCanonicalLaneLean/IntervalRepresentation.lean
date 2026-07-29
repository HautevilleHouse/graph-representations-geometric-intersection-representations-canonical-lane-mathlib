import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GeometricIntersectionGraph

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure IntervalRepresentation (G : GeometricIntersectionGraph) where
  intervalFamily : G.vertices → Set ℝ
  familyNonempty : ∀ v : G.vertices, (intervalFamily v).Nonempty
  representationCondition : ∀ v w : G.vertices, (v ≠ w) → ((G.intervals v ∩ G.intervals w).Nonempty ↔ (intervalFamily v ∩ intervalFamily w).Nonempty)

structure IntervalRepresentationEvidence {G : GeometricIntersectionGraph}
    (R : IntervalRepresentation G) where
  familyNonemptyClosed : ∀ v : G.vertices, (R.intervalFamily v).Nonempty
  representationConditionClosed : ∀ v w : G.vertices, (v ≠ w) → ((G.intervals v ∩ G.intervals w).Nonempty ↔ (R.intervalFamily v ∩ R.intervalFamily w).Nonempty)

def IntervalRepresentationClosed {G : GeometricIntersectionGraph}
    (R : IntervalRepresentation G) : Prop :=
  (∀ v : G.vertices, (R.intervalFamily v).Nonempty) ∧
  (∀ v w : G.vertices, (v ≠ w) → ((G.intervals v ∩ G.intervals w).Nonempty ↔ (R.intervalFamily v ∩ R.intervalFamily w).Nonempty))

theorem interval_representation_closed_from_evidence
    {G : GeometricIntersectionGraph} (R : IntervalRepresentation G)
    (E : IntervalRepresentationEvidence R) : IntervalRepresentationClosed R := by
  exact And.intro E.familyNonemptyClosed E.representationConditionClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse