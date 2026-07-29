import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure PermutationRepresentation (V : Type) where
  permutation : V → ℕ → ℕ
  endpointSatisfied : Prop
  remainderRecorded : Prop

structure PermutationGraphEvidence (V : Type) (P : PermutationRepresentation V) where
  crossingCondition : ∀ v w, v ≠ w → (∃ i j, P.permutation v i ≤ P.permutation w j ∧ P.permutation w i ≤ P.permutation v j) ↔ True
  consistency : P.endpointSatisfied ∨ P.remainderRecorded

def permutationGraphClosed (V : Type) (P : PermutationRepresentation V) : Prop :=
  P.endpointSatisfied ∨ P.remainderRecorded

theorem permutation_graph_closed_from_evidence (V : Type) (P : PermutationRepresentation V) (E : PermutationGraphEvidence V P) : permutationGraphClosed V P :=
  E.consistency

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse