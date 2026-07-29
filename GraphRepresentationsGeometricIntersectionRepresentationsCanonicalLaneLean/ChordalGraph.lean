import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure ChordalGraph where
  vertices : Type u
  edges : vertices → vertices → Prop
  chordalCondition : ∀ (v1 v2 v3 : vertices), edges v1 v2 → edges v2 v3 → edges v1 v3 →
    ∃ (v4 : vertices), v4 ≠ v1 ∧ v4 ≠ v2 ∧ v4 ≠ v3 ∧ edges v1 v4 ∧ edges v2 v4 ∧ edges v3 v4

structure ChordalGraphEvidence (C : ChordalGraph) where
  chordalConditionClosed : ∀ (v1 v2 v3 : C.vertices), C.edges v1 v2 → C.edges v2 v3 → C.edges v1 v3 →
    ∃ (v4 : C.vertices), v4 ≠ v1 ∧ v4 ≠ v2 ∧ v4 ≠ v3 ∧ C.edges v1 v4 ∧ C.edges v2 v4 ∧ C.edges v3 v4

def ChordalGraphClosed (C : ChordalGraph) : Prop :=
  ∀ (v1 v2 v3 : C.vertices), C.edges v1 v2 → C.edges v2 v3 → C.edges v1 v3 →
    ∃ (v4 : C.vertices), v4 ≠ v1 ∧ v4 ≠ v2 ∧ v4 ≠ v3 ∧ C.edges v1 v4 ∧ C.edges v2 v4 ∧ C.edges v3 v4

theorem chordal_graph_closed_from_evidence (C : ChordalGraph)
    (E : ChordalGraphEvidence C) : ChordalGraphClosed C := by
  exact E.chordalConditionClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse