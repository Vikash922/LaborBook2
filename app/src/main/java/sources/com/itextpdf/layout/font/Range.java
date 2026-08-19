package com.itextpdf.layout.font;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class Range {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private SubRange[] ranges;

    private Range() {
    }

    Range(List<SubRange> list) {
        if (list.size() == 0) {
            throw new IllegalArgumentException("Ranges shall not be empty");
        }
        this.ranges = normalizeSubRanges(list);
    }

    public boolean contains(int i) {
        int length = this.ranges.length - 1;
        int i2 = 0;
        while (i2 <= length) {
            int i3 = (i2 + length) >>> 1;
            if (this.ranges[i3].compareTo(i) < 0) {
                i2 = i3 + 1;
            } else {
                if (this.ranges[i3].compareTo(i) <= 0) {
                    return true;
                }
                length = i3 - 1;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.ranges, ((Range) obj).ranges);
    }

    public int hashCode() {
        return Arrays.hashCode(this.ranges);
    }

    public String toString() {
        return Arrays.toString(this.ranges);
    }

    private static SubRange[] normalizeSubRanges(List<SubRange> list) {
        Collections.sort(list);
        ArrayList arrayList = new ArrayList(list.size());
        SubRange subRange = list.get(0);
        arrayList.add(subRange);
        for (int i = 1; i < list.size(); i++) {
            SubRange subRange2 = list.get(i);
            if (subRange2.low <= subRange.high) {
                if (subRange2.high > subRange.high) {
                    subRange.high = subRange2.high;
                }
            } else {
                arrayList.add(subRange2);
                subRange = subRange2;
            }
        }
        return (SubRange[]) arrayList.toArray(new SubRange[0]);
    }

    static class SubRange implements Comparable<SubRange> {
        int high;
        int low;

        SubRange(int i, int i2) {
            this.low = i;
            this.high = i2;
        }

        @Override // java.lang.Comparable
        public int compareTo(SubRange subRange) {
            return this.low - subRange.low;
        }

        public int compareTo(int i) {
            if (i < this.low) {
                return 1;
            }
            return i > this.high ? -1 : 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            SubRange subRange = (SubRange) obj;
            return this.low == subRange.low && this.high == subRange.high;
        }

        public int hashCode() {
            return (this.low * 31) + this.high;
        }

        public String toString() {
            return "(" + this.low + "; " + this.high + ')';
        }
    }

    static class FullRange extends Range {
        @Override // com.itextpdf.layout.font.Range
        public boolean contains(int i) {
            return true;
        }

        @Override // com.itextpdf.layout.font.Range
        public boolean equals(Object obj) {
            return this == obj;
        }

        @Override // com.itextpdf.layout.font.Range
        public int hashCode() {
            return 1;
        }

        FullRange() {
            super();
        }

        @Override // com.itextpdf.layout.font.Range
        public String toString() {
            return "[FullRange]";
        }
    }
}
