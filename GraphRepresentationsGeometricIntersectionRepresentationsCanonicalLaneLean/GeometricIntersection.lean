import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure GeometricIntersectionPackage where
  universe : Type u
  family : universe → Set (universe → Prop)
  intersectionProperty : Prop
  intersectionPropertyClosed : intersectionProperty

def GeometricIntersectionClosed (G : GeometricIntersectionPackage) : Prop :=
  G.intersectionProperty

theorem geometric_intersection_closed (G : GeometricIntersectionPackage) :
    GeometricIntersectionClosed G := by
  exact G.intersectionPropertyClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse