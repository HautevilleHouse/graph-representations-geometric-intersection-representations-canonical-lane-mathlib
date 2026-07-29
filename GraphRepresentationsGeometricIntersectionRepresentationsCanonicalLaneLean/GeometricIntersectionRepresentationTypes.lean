import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure GeometricIntersectionRepresentation (V : Type u) where
  graph : Type v
  vertices : V → Set (ℝ ^ n)
  edges : V × V → Prop
  intersectionCondition : ∀ u v : V, edges (u,v) ↔ vertices u ∩ vertices v ≠ ∅

structure GraphRepresentationPackage where
  graphKind : String
  representationType : String
  dimension : ℕ
  verticesCount : ℕ
  edgesCount : ℕ

structure RepresentationEvidence (P : GraphRepresentationPackage) where
  graphKindClosed : P.graphKind = "interval" ∨ P.graphKind = "permutation" ∨ P.graphKind = "circular-arc"
  representationTypeClosed : P.representationType = "geometric"
  dimensionClosed : P.dimension ≥ 1
  verticesCountClosed : P.verticesCount > 0
  edgesCountClosed : P.edgesCount ≥ 0

def RepresentationClosed (P : GraphRepresentationPackage) : Prop :=
  (P.graphKind = "interval" ∨ P.graphKind = "permutation" ∨ P.graphKind = "circular-arc") ∧
  P.representationType = "geometric" ∧
  P.dimension ≥ 1 ∧
  P.verticesCount > 0 ∧
  P.edgesCount ≥ 0

theorem representation_closed_from_evidence (P : GraphRepresentationPackage) (E : RepresentationEvidence P) : RepresentationClosed P :=
  And.intro E.graphKindClosed
    (And.intro E.representationTypeClosed
      (And.intro E.dimensionClosed
        (And.intro E.verticesCountClosed E.edgesCountClosed)))

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse
