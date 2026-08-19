package kotlin.internal;

import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.UByte$$ExternalSyntheticBackport0;
import kotlin.UInt;
import kotlin.ULong;

/* JADX INFO: compiled from: UProgressionUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\u001a'\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0005\u0010\u0006\u001a'\u0010\u0000\u001a\u00020\u00072\u0006\u0010\u0002\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\t\u001a'\u0010\n\u001a\u00020\u00012\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0001¢\u0006\u0004\b\u000f\u0010\u0006\u001a'\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u0010H\u0001¢\u0006\u0004\b\u0011\u0010\t¨\u0006\u0012"}, m2722d2 = {"differenceModulo", "Lkotlin/UInt;", "a", SvgConstants.Attributes.PATH_DATA_REL_BEARING, SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO, "differenceModulo-WZ9TVnA", "(III)I", "Lkotlin/ULong;", "differenceModulo-sambcqE", "(JJJ)J", "getProgressionLastElement", "start", "end", "step", "", "getProgressionLastElement-Nkh28Cs", "", "getProgressionLastElement-7ftBX0g", "kotlin-stdlib"}, m2723k = 2, m2724mv = {2, 1, 0}, m2726xi = 48)
public final class UProgressionUtilKt {
    /* JADX INFO: renamed from: differenceModulo-WZ9TVnA, reason: not valid java name */
    private static final int m4537differenceModuloWZ9TVnA(int i, int i2, int i3) {
        int iM$1 = UByte$$ExternalSyntheticBackport0.m$1(i, i3);
        int iM$12 = UByte$$ExternalSyntheticBackport0.m$1(i2, i3);
        int iCompare = Integer.compare(iM$1 ^ Integer.MIN_VALUE, iM$12 ^ Integer.MIN_VALUE);
        int iM3420constructorimpl = UInt.m3420constructorimpl(iM$1 - iM$12);
        return iCompare >= 0 ? iM3420constructorimpl : UInt.m3420constructorimpl(iM3420constructorimpl + i3);
    }

    /* JADX INFO: renamed from: differenceModulo-sambcqE, reason: not valid java name */
    private static final long m4538differenceModulosambcqE(long j, long j2, long j3) {
        long jM2732m = UByte$$ExternalSyntheticBackport0.m2732m(j, j3);
        long jM2732m2 = UByte$$ExternalSyntheticBackport0.m2732m(j2, j3);
        int iCompare = Long.compare(jM2732m ^ Long.MIN_VALUE, jM2732m2 ^ Long.MIN_VALUE);
        long jM3499constructorimpl = ULong.m3499constructorimpl(jM2732m - jM2732m2);
        return iCompare >= 0 ? jM3499constructorimpl : ULong.m3499constructorimpl(jM3499constructorimpl + j3);
    }

    /* JADX INFO: renamed from: getProgressionLastElement-Nkh28Cs, reason: not valid java name */
    public static final int m4540getProgressionLastElementNkh28Cs(int i, int i2, int i3) {
        if (i3 > 0) {
            return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) >= 0 ? i2 : UInt.m3420constructorimpl(i2 - m4537differenceModuloWZ9TVnA(i2, i, UInt.m3420constructorimpl(i3)));
        }
        if (i3 < 0) {
            return Integer.compare(i ^ Integer.MIN_VALUE, i2 ^ Integer.MIN_VALUE) <= 0 ? i2 : UInt.m3420constructorimpl(i2 + m4537differenceModuloWZ9TVnA(i, i2, UInt.m3420constructorimpl(-i3)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }

    /* JADX INFO: renamed from: getProgressionLastElement-7ftBX0g, reason: not valid java name */
    public static final long m4539getProgressionLastElement7ftBX0g(long j, long j2, long j3) {
        if (j3 > 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) >= 0 ? j2 : ULong.m3499constructorimpl(j2 - m4538differenceModulosambcqE(j2, j, ULong.m3499constructorimpl(j3)));
        }
        if (j3 < 0) {
            return Long.compare(j ^ Long.MIN_VALUE, j2 ^ Long.MIN_VALUE) <= 0 ? j2 : ULong.m3499constructorimpl(j2 + m4538differenceModulosambcqE(j, j2, ULong.m3499constructorimpl(-j3)));
        }
        throw new IllegalArgumentException("Step is zero.");
    }
}
