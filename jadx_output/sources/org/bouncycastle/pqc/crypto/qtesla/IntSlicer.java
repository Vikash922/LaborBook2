package org.bouncycastle.pqc.crypto.qtesla;

/* JADX INFO: loaded from: classes6.dex */
final class IntSlicer {
    private int base;
    private final int[] values;

    IntSlicer(int[] iArr, int i) {
        this.values = iArr;
        this.base = i;
    }

    /* JADX INFO: renamed from: at */
    final int m2881at(int i) {
        return this.values[this.base + i];
    }

    /* JADX INFO: renamed from: at */
    final int m2882at(int i, int i2) {
        this.values[this.base + i] = i2;
        return i2;
    }

    /* JADX INFO: renamed from: at */
    final int m2883at(int i, long j) {
        int[] iArr = this.values;
        int i2 = this.base + i;
        int i3 = (int) j;
        iArr[i2] = i3;
        return i3;
    }

    final IntSlicer copy() {
        return new IntSlicer(this.values, this.base);
    }

    final IntSlicer from(int i) {
        return new IntSlicer(this.values, this.base + i);
    }

    final void incBase(int i) {
        this.base += i;
    }
}
