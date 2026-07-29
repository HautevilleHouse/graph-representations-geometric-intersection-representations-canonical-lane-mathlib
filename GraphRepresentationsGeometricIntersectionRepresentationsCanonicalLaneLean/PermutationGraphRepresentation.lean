import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure Permutation (S : Type u) where
  permutation : List S
  isPermutation : Prop

structure PermutationGraphPackage (S : Type u) where
  leftPermutation : Permutation S
  rightPermutation : Permutation S
  graphDefined : Prop
  endpoints : S → S → Prop
  crossingCondition : ∀ a b : S, graphDefined ∧ endpoints a b ↔ (leftPermutation.permutation.indexOf a - leftPermutation.permutation.indexOf b) * (rightPermutation.permutation.indexOf a - rightPermutation.permutation.indexOf b) < 0

structure PermutationGraphEvidence {S : Type u} (P : PermutationGraphPackage S) where
  leftPermutationIsPermutation : P.leftPermutation.isPermutation
  rightPermutationIsPermutation : P.rightPermutation.isPermutation
  graphDefinedClosed : P.graphDefined

def PermutationGraphClosed {S : Type u} (P : PermutationGraphPackage S) : Prop :=
  P.leftPermutation.isPermutation ∧
  P.rightPermutation.isPermutation ∧
  P.graphDefined

theorem permutation_graph_closed_from_evidence {S : Type u} (P : PermutationGraphPackage S) (E : PermutationGraphEvidence P) : PermutationGraphClosed P :=
  And.intro E.leftPermutationIsPermutation
    (And.intro E.rightPermutationIsPermutation E.graphDefinedClosed)

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse
