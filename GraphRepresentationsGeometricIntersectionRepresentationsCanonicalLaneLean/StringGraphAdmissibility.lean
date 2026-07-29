import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure StringGraphAdmissibility where
  strings : Type u
  curveFamily : Set (EuclideanSpace ℝ → EuclideanSpace ℝ)
  intersectionPatterns : Prop
  admissibilityCriteria : Prop
  recognitionComplexity : Prop

structure StringGraphEvidence (S : StringGraphAdmissibility) where
  intersectionPatternsClosed : S.intersectionPatterns
  admissibilityCriteriaClosed : S.admissibilityCriteria
  recognitionComplexityClosed : S.recognitionComplexity

def StringGraphClosed (S : StringGraphAdmissibility) : Prop :=
  S.intersectionPatterns ∧ S.admissibilityCriteria ∧ S.recognitionComplexity

theorem string_graph_closed_from_evidence
    (S : StringGraphAdmissibility) (E : StringGraphEvidence S) :
    StringGraphClosed S := by
  exact And.intro E.intersectionPatternsClosed
    (And.intro E.admissibilityCriteriaClosed E.recognitionComplexityClosed)

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse