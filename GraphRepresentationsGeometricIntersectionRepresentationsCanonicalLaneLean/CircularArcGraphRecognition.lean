import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure CircularArcRepresentation (V : Type) where
  arcs : V → Set ℝ
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure CircularArcGraphEvidence (V : Type) (C : CircularArcRepresentation V) where
  intersectionCondition : ∀ v w, v ≠ w → (C.arcs v ∩ C.arcs w).Nonempty ↔ True
  consistency : C.endpointSatisfied ∨ C.remainderRecorded

def circularArcGraphClosed (V : Type) (C : CircularArcRepresentation V) : Prop :=
  C.endpointSatisfied ∨ C.remainderRecorded

theorem circular_arc_graph_closed_from_evidence (V : Type) (C : CircularArcRepresentation V) (E : CircularArcGraphEvidence V C) : circularArcGraphClosed V C :=
  E.consistency

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse