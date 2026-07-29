import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure ComparabilityGraph where
  vertices : Type u
  edges : vertices → vertices → Prop
  transitiveOrientation : vertices → vertices → Prop
  orientationAcyclic : ¬ (∃ (v : vertices), transitiveOrientation v v)
  orientationTransitive : ∀ (u v w : vertices), transitiveOrientation u v → transitiveOrientation v w → transitiveOrientation u w
  orientationTotal : ∀ (u v : vertices), u ≠ v → (transitiveOrientation u v ∨ transitiveOrientation v u)
  edgeOrientationPreserved : ∀ (u v : vertices), edges u v → (transitiveOrientation u v ∨ transitiveOrientation v u)

structure ComparabilityGraphEvidence (C : ComparabilityGraph) where
  orientationAcyclicClosed : ¬ (∃ (v : C.vertices), C.transitiveOrientation v v)
  orientationTransitiveClosed : ∀ (u v w : C.vertices), C.transitiveOrientation u v → C.transitiveOrientation v w → C.transitiveOrientation u w
  orientationTotalClosed : ∀ (u v : C.vertices), u ≠ v → (C.transitiveOrientation u v ∨ C.transitiveOrientation v u)
  edgeOrientationPreservedClosed : ∀ (u v : C.vertices), C.edges u v → (C.transitiveOrientation u v ∨ C.transitiveOrientation v u)

def ComparabilityGraphClosed (C : ComparabilityGraph) : Prop :=
  (¬ (∃ (v : C.vertices), C.transitiveOrientation v v)) ∧
  (∀ (u v w : C.vertices), C.transitiveOrientation u v → C.transitiveOrientation v w → C.transitiveOrientation u w) ∧
  (∀ (u v : C.vertices), u ≠ v → (C.transitiveOrientation u v ∨ C.transitiveOrientation v u)) ∧
  (∀ (u v : C.vertices), C.edges u v → (C.transitiveOrientation u v ∨ C.transitiveOrientation v u))

theorem comparability_graph_closed_from_evidence (C : ComparabilityGraph)
    (E : ComparabilityGraphEvidence C) : ComparabilityGraphClosed C := by
  exact And.intro E.orientationAcyclicClosed
    (And.intro E.orientationTransitiveClosed
      (And.intro E.orientationTotalClosed E.edgeOrientationPreservedClosed))

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse