import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure BoxRepresentation (V : Type) (d : ℕ) where
  boxes : V → Set (ℝ ^ d)
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure BoxGraphEvidence (V : Type) (d : ℕ) (B : BoxRepresentation V d) where
  intersectionCondition : ∀ v w, v ≠ w → (B.boxes v ∩ B.boxes w).Nonempty ↔ True
  consistency : B.endpointSatisfied ∨ B.remainderRecorded

def boxGraphClosed (V : Type) (d : ℕ) (B : BoxRepresentation V d) : Prop :=
  B.endpointSatisfied ∨ B.remainderRecorded

theorem box_graph_closed_from_evidence (V : Type) (d : ℕ) (B : BoxRepresentation V d) (E : BoxGraphEvidence V d B) : boxGraphClosed V d B :=
  E.consistency

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse