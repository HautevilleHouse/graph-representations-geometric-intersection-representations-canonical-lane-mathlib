import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure PermutationGraphDecomposition where
  permutationSet : Type u
  comparability : Prop
  permutationModel : Prop
  decompositionAlgorithms : Prop
  dimensionBounds : Prop

structure PermutationGraphEvidence (P : PermutationGraphDecomposition) where
  comparabilityClosed : P.comparability
  permutationModelClosed : P.permutationModel
  decompositionAlgorithmsClosed : P.decompositionAlgorithms
  dimensionBoundsClosed : P.dimensionBounds

def PermutationGraphClosed (P : PermutationGraphDecomposition) : Prop :=
  P.comparability ∧ P.permutationModel ∧ P.decompositionAlgorithms ∧ P.dimensionBounds

theorem permutation_graph_closed_from_evidence
    (P : PermutationGraphDecomposition) (E : PermutationGraphEvidence P) :
    PermutationGraphClosed P := by
  exact And.intro E.comparabilityClosed
    (And.intro E.permutationModelClosed
      (And.intro E.decompositionAlgorithmsClosed E.dimensionBoundsClosed))

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse