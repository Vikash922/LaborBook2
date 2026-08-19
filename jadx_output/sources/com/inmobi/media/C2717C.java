package com.inmobi.media;

import android.graphics.RectF;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.C */
/* JADX INFO: loaded from: classes6.dex */
public final class C2717C {

    /* JADX INFO: renamed from: a */
    public final RectF f861a;

    /* JADX INFO: renamed from: b */
    public final ArrayList f862b;

    /* JADX INFO: renamed from: c */
    public final int f863c;

    /* JADX INFO: renamed from: d */
    public final int f864d;

    public C2717C(RectF visibleRect, ArrayList obstructions, int i, int i2) {
        Intrinsics.checkNotNullParameter(visibleRect, "visibleRect");
        Intrinsics.checkNotNullParameter(obstructions, "obstructions");
        this.f861a = visibleRect;
        this.f862b = obstructions;
        this.f863c = i;
        this.f864d = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2717C)) {
            return false;
        }
        C2717C c2717c = (C2717C) obj;
        return Intrinsics.areEqual(this.f861a, c2717c.f861a) && Intrinsics.areEqual(this.f862b, c2717c.f862b) && this.f863c == c2717c.f863c && this.f864d == c2717c.f864d;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f864d) + ((Integer.hashCode(this.f863c) + ((this.f862b.hashCode() + (this.f861a.hashCode() * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "ExposureInputData(visibleRect=" + this.f861a + ", obstructions=" + this.f862b + ", screenWidth=" + this.f863c + ", screenHeight=" + this.f864d + ')';
    }
}
