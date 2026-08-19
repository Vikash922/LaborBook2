package com.inmobi.media;

import android.graphics.RectF;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class C {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final RectF f87a;
    public final ArrayList b;
    public final int c;
    public final int d;

    public C(RectF visibleRect, ArrayList obstructions, int i, int i2) {
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        Intrinsics.checkNotNullParameter(obstructions, "obstructions");
        this.f87a = visibleRect;
        this.b = obstructions;
        this.c = i;
        this.d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C)) {
            return false;
        }
        C c = (C) obj;
        return Intrinsics.areEqual(this.f87a, c.f87a) && Intrinsics.areEqual(this.b, c.b) && this.c == c.c && this.d == c.d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.d) + ((Integer.hashCode(this.c) + ((this.b.hashCode() + (this.f87a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ExposureInputData(visibleRect=" + this.f87a + ", obstructions=" + this.b + ", screenWidth=" + this.c + ", screenHeight=" + this.d + ')';
    }
}
