package com.itextpdf.io.util;

import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GenericArray<T> {
    private List<T> array;

    public GenericArray(int i) {
        this.array = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            this.array.add(null);
        }
    }

    public T get(int i) {
        return this.array.get(i);
    }

    public T set(int i, T t) {
        return this.array.set(i, t);
    }
}
