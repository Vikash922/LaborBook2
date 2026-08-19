package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.eb */
/* JADX INFO: loaded from: classes6.dex */
public final class C3138eb {

    /* JADX INFO: renamed from: a */
    public final int f2049a;

    public C3138eb(int i) {
        this.f2049a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C3138eb) && this.f2049a == ((C3138eb) obj).f2049a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f2049a);
    }

    public final String toString() {
        return "RenderViewTelemetryData(maxTemplateEvents=" + this.f2049a + ')';
    }
}
