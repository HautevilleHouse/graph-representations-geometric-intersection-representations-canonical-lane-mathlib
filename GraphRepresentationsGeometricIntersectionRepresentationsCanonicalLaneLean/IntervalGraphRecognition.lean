import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure IntervalFamily (I : Type u) where
  intervals : List (ℝ × ℝ)
  intervalProperty : ∀ (a,b) : ℝ × ℝ, (a,b) ∈ intervals → a < b

structure IntervalGraphPackage (I : Type u) where
  graphFamily : IntervalFamily I
  graphIsInterval : Prop
  recognitionAlgo : String
  recognitionComplexity : ℕ

structure IntervalGraphEvidence {I : Type u} (P : IntervalGraphPackage I) where
  graphIsIntervalClosed : P.graphIsInterval
  recognitionAlgoClosed : P.recognitionAlgo = "PQ-tree" ∨ P.recognitionAlgo = "modular-decomposition"
  recognitionComplexityClosed : P.recognitionComplexity < 1000

def IntervalGraphClosed {I : Type u} (P : IntervalGraphPackage I) : Prop :=
  P.graphIsInterval ∧
  (P.recognitionAlgo = "PQ-tree" ∨ P.recognitionAlgo = "modular-decomposition") ∧
  P.recognitionComplexity < 1000

theorem interval_graph_closed_from_evidence {I : Type u} (P : IntervalGraphPackage I) (E : IntervalGraphEvidence P) : IntervalGraphClosed P :=
  And.intro E.graphIsIntervalClosed
    (And.intro E.recognitionAlgoClosed
      E.recognitionComplexityClosed)

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse
