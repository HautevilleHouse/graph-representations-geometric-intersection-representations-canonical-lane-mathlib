import canonicalLaneMathlib.AdmissibleClass

/-!
# IntersectionGraphPackage for Graph Representations Geometric Intersection Representations
-/

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure GeometricFamily where
  space : Type u
  objects : List (space → Prop)
  intersectionClosed : (x y : space) → (objects[0] x ∧ objects[1] y) → Prop
  dimension : Nat

structure IntersectionGraphPackage where
  family : GeometricFamily
  graphVertices : List (family.space → Prop)
  adjacencyDef : (u v : graphVertices) → Prop
  representationExists : Prop

def IntersectionGraphClosed (P : IntersectionGraphPackage) : Prop :=
  P.representationExists

theorem intersection_graph_closed_from_family (P : IntersectionGraphPackage) (h : P.representationExists) : IntersectionGraphClosed P := h

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse