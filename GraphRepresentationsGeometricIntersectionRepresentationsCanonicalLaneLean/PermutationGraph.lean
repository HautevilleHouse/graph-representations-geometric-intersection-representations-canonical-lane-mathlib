import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure PermutationGraph where
  vertices : Type u
  permutation : List (vertices × vertices)
  edges : vertices → vertices → Prop
  permutationCondition : ∀ (v w : vertices), edges v w ↔
    (∃ (p : vertices × vertices), p ∈ permutation ∧ (p.1 = v ∧ p.2 = w ∨ p.1 = w ∧ p.2 = v))

structure PermutationGraphEvidence (P : PermutationGraph) where
  permutationConditionClosed : ∀ (v w : P.vertices), P.edges v w ↔
    (∃ (p : P.vertices × P.vertices), p ∈ P.permutation ∧ (p.1 = v ∧ p.2 = w ∨ p.1 = w ∧ p.2 = v))

def PermutationGraphClosed (P : PermutationGraph) : Prop :=
  ∀ (v w : P.vertices), P.edges v w ↔
    (∃ (p : P.vertices × P.vertices), p ∈ P.permutation ∧ (p.1 = v ∧ p.2 = w ∨ p.1 = w ∧ p.2 = v))

theorem permutation_graph_closed_from_evidence (P : PermutationGraph)
    (E : PermutationGraphEvidence P) : PermutationGraphClosed P := by
  exact E.permutationConditionClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse