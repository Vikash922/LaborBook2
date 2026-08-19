package com.itextpdf.layout.font;

import com.itextpdf.layout.font.Range;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class RangeBuilder {
    private static final Range fullRangeSingleton = new Range.FullRange();
    private List<Range.SubRange> ranges;

    static Range getFullRange() {
        return fullRangeSingleton;
    }

    public RangeBuilder() {
        this.ranges = new ArrayList();
    }

    public RangeBuilder(int i, int i2) {
        this.ranges = new ArrayList();
        addRange(i, i2);
    }

    public RangeBuilder(int i) {
        this(i, i);
    }

    public RangeBuilder(char c, char c2) {
        this((int) c, (int) c2);
    }

    public RangeBuilder(char c) {
        this((int) c);
    }

    public RangeBuilder addRange(int i, int i2) {
        if (i2 < i) {
            throw new IllegalArgumentException("'from' shall be less than 'to'");
        }
        this.ranges.add(new Range.SubRange(i, i2));
        return this;
    }

    public RangeBuilder addRange(char c, char c2) {
        return addRange((int) c, (int) c2);
    }

    public RangeBuilder addRange(int i) {
        return addRange(i, i);
    }

    public RangeBuilder addRange(char c) {
        return addRange((int) c);
    }

    public Range create() {
        return new Range(this.ranges);
    }
}
