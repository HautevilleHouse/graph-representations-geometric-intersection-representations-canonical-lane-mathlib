import GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

def ConstrainedGraphIntersectionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_intersection_endgame (A : AdmissibleClass) :
    ConstrainedGraphIntersectionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse