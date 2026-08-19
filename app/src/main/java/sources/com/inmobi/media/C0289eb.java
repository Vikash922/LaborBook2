package com.inmobi.media;

/* JADX INFO: renamed from: com.inmobi.media.eb, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0289eb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f343a;

    public C0289eb(int i) {
        this.f343a = i;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0289eb) && this.f343a == ((C0289eb) obj).f343a;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f343a);
    }

    public final String toString() {
        return "RenderViewTelemetryData(maxTemplateEvents=" + this.f343a + ')';
    }
}
