import canonicalLaneMathlib.AdmissibleClass

/-!
# PermutationGraphPackage for Graph Representations Geometric Intersection Representations
-/

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure PermutationGraphPackage where
  dimension : Nat
  permutations : {σ : List (ℕ → ℕ) | ∀ σi, σi = σi⁻¹}
  adjacency : (v w : ℕ) → Prop
  permutationRealization : Prop

structure PermutationGraphEvidence (P : PermutationGraphPackage) where
  permutationRealizationClosed : P.permutationRealization

def PermutationGraphClosed (P : PermutationGraphPackage) : Prop :=
  P.permutationRealization

theorem permutation_graph_closed_from_evidence (P : PermutationGraphPackage) (E : PermutationGraphEvidence P) : PermutationGraphClosed P :=
  E.permutationRealizationClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse