package org.shadow.apache.commons.lang3.mutable;

import org.shadow.apache.commons.lang3.math.NumberUtils;

/* JADX INFO: loaded from: classes4.dex */
public class MutableLong extends Number implements Comparable<MutableLong>, Mutable<Number> {
    private static final long serialVersionUID = 62986528375L;
    private long value;

    public MutableLong() {
    }

    public MutableLong(long j) {
        this.value = j;
    }

    public MutableLong(Number number) {
        this.value = number.longValue();
    }

    public MutableLong(String str) throws NumberFormatException {
        this.value = Long.parseLong(str);
    }

    @Override // org.shadow.apache.commons.lang3.mutable.Mutable
    /* JADX INFO: renamed from: getValue */
    public Number getValue2() {
        return Long.valueOf(this.value);
    }

    public void setValue(long j) {
        this.value = j;
    }

    @Override // org.shadow.apache.commons.lang3.mutable.Mutable
    public void setValue(Number number) {
        this.value = number.longValue();
    }

    public void increment() {
        this.value++;
    }

    public void decrement() {
        this.value--;
    }

    public void add(long j) {
        this.value += j;
    }

    public void add(Number number) {
        this.value += number.longValue();
    }

    public void subtract(long j) {
        this.value -= j;
    }

    public void subtract(Number number) {
        this.value -= number.longValue();
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) this.value;
    }

    @Override // java.lang.Number
    public long longValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public float floatValue() {
        return this.value;
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return this.value;
    }

    public Long toLong() {
        return Long.valueOf(longValue());
    }

    public boolean equals(Object obj) {
        return (obj instanceof MutableLong) && this.value == ((MutableLong) obj).longValue();
    }

    public int hashCode() {
        long j = this.value;
        return (int) (j ^ (j >>> 32));
    }

    @Override // java.lang.Comparable
    public int compareTo(MutableLong mutableLong) {
        return NumberUtils.compare(this.value, mutableLong.value);
    }

    public String toString() {
        return String.valueOf(this.value);
    }
}
