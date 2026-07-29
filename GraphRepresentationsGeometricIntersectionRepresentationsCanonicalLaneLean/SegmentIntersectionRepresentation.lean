import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean

structure SegmentIntersectionRepresentation where
  graphType : Type u
  segmentSpace : Type v
  segmentMap : graphType → Set segmentSpace
  intersectionGraphIsomorphism : Prop
  representationDimension : ℕ
  stretchability : Prop

structure SegmentIntersectionEvidence (S : SegmentIntersectionRepresentation) where
  intersectionGraphIsomorphismClosed : S.intersectionGraphIsomorphism
  stretchabilityClosed : S.stretchability

def SegmentIntersectionClosed (S : SegmentIntersectionRepresentation) : Prop :=
  S.intersectionGraphIsomorphism ∧ S.stretchability

theorem segment_intersection_closed_from_evidence
    (S : SegmentIntersectionRepresentation) (E : SegmentIntersectionEvidence S) :
    SegmentIntersectionClosed S := by
  exact And.intro E.intersectionGraphIsomorphismClosed E.stretchabilityClosed

end GraphRepresentationsGeometricIntersectionRepresentationsCanonicalLaneLean
end HautevilleHouse