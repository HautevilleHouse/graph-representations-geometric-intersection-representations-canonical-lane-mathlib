import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure StringRepresentation (V : Type) where
  strings : V → Set (ℝ × ℝ)
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure StringGraphEvidence (V : Type) (S : StringRepresentation V) where
  intersectionCondition : ∀ v w, v ≠ w → (S.strings v ∩ S.strings w).Nonempty ↔ True
  consistency : S.endpointSatisfied ∨ S.remainderRecorded

def stringGraphClosed (V : Type) (S : StringRepresentation V) : Prop :=
  S.endpointSatisfied ∨ S.remainderRecorded

theorem string_graph_closed_from_evidence (V : Type) (S : StringRepresentation V) (E : StringGraphEvidence V S) : stringGraphClosed V S :=
  E.consistency

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse