import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure IntersectionGraphFamily where
  vertexSet : Type u
  families : List (Set (Set (vertexSet → Prop)))
  geometricEmbeddings : List (vertexSet → EuclideanSpace ℝ)
  intersectionProperty : Prop
  recognitionComplexity : Prop

structure IntersectionGraphFamilyEvidence (F : IntersectionGraphFamily) where
  intersectionPropertyClosed : F.intersectionProperty
  recognitionComplexityClosed : F.recognitionComplexity

def IntersectionGraphFamilyClosed (F : IntersectionGraphFamily) : Prop :=
  F.intersectionProperty ∧ F.recognitionComplexity

theorem intersection_graph_family_closed_from_evidence
    (F : IntersectionGraphFamily) (E : IntersectionGraphFamilyEvidence F) :
    IntersectionGraphFamilyClosed F := by
  exact And.intro E.intersectionPropertyClosed E.recognitionComplexityClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse