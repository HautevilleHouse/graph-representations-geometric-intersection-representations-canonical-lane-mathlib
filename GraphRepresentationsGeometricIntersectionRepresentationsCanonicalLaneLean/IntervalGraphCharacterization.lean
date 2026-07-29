import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure IntervalGraphCharacterization where
  graphType : Type u
  intervals : Type v
  intervalAssignment : graphType → Set interval
  intervalOrder : graphType → intervalOrder
  characterizationClauses : Prop
  forbiddenSubgraphs : Prop

structure IntervalGraphEvidence (I : IntervalGraphCharacterization) where
  characterizationClausesClosed : I.characterizationClauses
  forbiddenSubgraphsClosed : I.forbiddenSubgraphs

def IntervalGraphClosed (I : IntervalGraphCharacterization) : Prop :=
  I.characterizationClauses ∧ I.forbiddenSubgraphs

theorem interval_graph_closed_from_evidence
    (I : IntervalGraphCharacterization) (E : IntervalGraphEvidence I) :
    IntervalGraphClosed I := by
  exact And.intro E.characterizationClausesClosed E.forbiddenSubgraphsClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse