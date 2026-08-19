package com.itextpdf.p017io.font.woff2;

/* JADX INFO: loaded from: classes6.dex */
class Woff2Common {
    public static final int kSfntEntrySize = 16;
    public static final int kSfntHeaderSize = 12;
    public static final int kTtcFontFlavor = 1953784678;
    public static final int kWoff2FlagsTransform = 256;
    public static final int kWoff2Signature = 2001684018;

    public static int collectionHeaderSize(int i, int i2) {
        int i3 = i == 131072 ? 12 : 0;
        return (i == 65536 || i == 131072) ? i3 + (i2 * 4) + 12 : i3;
    }

    Woff2Common() {
    }

    public static class Point {
        public boolean on_curve;

        /* JADX INFO: renamed from: x */
        public int f2877x;

        /* JADX INFO: renamed from: y */
        public int f2878y;

        public Point(int i, int i2, boolean z) {
            this.f2877x = i;
            this.f2878y = i2;
            this.on_curve = z;
        }
    }

    public static class Table implements Comparable<Table> {
        public int dst_length;
        public int dst_offset;
        public int flags;
        public int src_length;
        public int src_offset;
        public int tag;
        public int transform_length;

        @Override // java.lang.Comparable
        public int compareTo(Table table) {
            return JavaUnsignedUtil.compareAsUnsigned(this.tag, table.tag);
        }
    }

    public static int computeULongSum(byte[] bArr, int i, int i2) {
        int i3 = i2 & (-4);
        int iAsU8 = 0;
        int iAsU82 = 0;
        for (int i4 = 0; i4 < i3; i4 += 4) {
            int i5 = i + i4;
            iAsU82 += JavaUnsignedUtil.asU8(bArr[i5 + 3]) | (JavaUnsignedUtil.asU8(bArr[i5]) << 24) | (JavaUnsignedUtil.asU8(bArr[i5 + 1]) << 16) | (JavaUnsignedUtil.asU8(bArr[i5 + 2]) << 8);
        }
        if (i2 == i3) {
            return iAsU82;
        }
        while (i3 < i2) {
            iAsU8 |= JavaUnsignedUtil.asU8(bArr[i + i3]) << (24 - ((i3 & 3) * 8));
            i3++;
        }
        return iAsU82 + iAsU8;
    }
}
