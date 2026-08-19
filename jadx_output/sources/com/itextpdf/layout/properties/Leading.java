package com.itextpdf.layout.properties;

import java.util.Objects;

/* JADX INFO: loaded from: classes6.dex */
public class Leading {
    public static final int FIXED = 1;
    public static final int MULTIPLIED = 2;
    protected int type;
    protected float value;

    public Leading(int i, float f) {
        this.type = i;
        this.value = f;
    }

    public int getType() {
        return this.type;
    }

    public float getValue() {
        return this.value;
    }

    public boolean equals(Object obj) {
        if (getClass() == obj.getClass()) {
            Leading leading = (Leading) obj;
            if (this.type == leading.type && this.value == leading.value) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return Objects.hash(Integer.valueOf(this.type), Float.valueOf(this.value));
    }
}
