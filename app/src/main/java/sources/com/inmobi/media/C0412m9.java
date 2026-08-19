package com.inmobi.media;

import java.util.Map;

/* JADX INFO: renamed from: com.inmobi.media.m9, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0412m9 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f424a;
    public byte[] b;
    public C0350i9 c;
    public int d;
    public Map e;

    public final String a() {
        String str = this.f424a;
        if (str != null) {
            return str;
        }
        String strA = AbstractC0366j9.a(this.b);
        this.f424a = strA;
        return strA;
    }

    public final boolean b() {
        return this.c != null;
    }
}
