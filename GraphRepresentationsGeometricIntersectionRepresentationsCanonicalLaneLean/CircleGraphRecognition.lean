import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure CircleGraphRecognition where
  graphType : Type u
  chordModel : Set (EuclideanSpace ℝ)
  circleGraphCondition : Prop
  recognitionAlgorithms : Prop
  forbiddenSubgraphs : Prop

structure CircleGraphEvidence (C : CircleGraphRecognition) where
  circleGraphConditionClosed : C.circleGraphCondition
  recognitionAlgorithmsClosed : C.recognitionAlgorithms
  forbiddenSubgraphsClosed : C.forbiddenSubgraphs

def CircleGraphClosed (C : CircleGraphRecognition) : Prop :=
  C.circleGraphCondition ∧ C.recognitionAlgorithms ∧ C.forbiddenSubgraphs

theorem circle_graph_closed_from_evidence
    (C : CircleGraphRecognition) (E : CircleGraphEvidence C) :
    CircleGraphClosed C := by
  exact And.intro E.circleGraphConditionClosed
    (And.intro E.recognitionAlgorithmsClosed E.forbiddenSubgraphsClosed)

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse