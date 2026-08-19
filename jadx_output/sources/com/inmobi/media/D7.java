package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public class D7 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f98a;
    public final String b;
    public final String c;
    public final E7 d;
    public Object e;
    public boolean f;
    public String g;
    public String h;
    public boolean i;
    public byte j;
    public byte k;
    public byte l;
    public byte m;
    public int n;
    public int o;
    public String p;
    public String q;
    public H7 r;
    public final ArrayList s;
    public final HashMap t;
    public Object u;
    public int v;
    public D7 w;

    public D7(String assetId, String assetName, String assetType, E7 assetStyle, List trackers) {
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f98a = assetId;
        this.b = assetName;
        this.c = assetType;
        this.d = assetStyle;
        this.g = "NO_ACTION";
        this.h = "";
        this.m = (byte) 2;
        this.n = -1;
        this.p = "";
        this.q = "";
        ArrayList arrayList = new ArrayList();
        this.s = arrayList;
        this.t = new HashMap();
        arrayList.addAll(trackers);
    }

    public static void a(C0526u8 tracker, HashMap map, C0395l7 c0395l7, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        String str = tracker.d;
        boolean z = C0457p9.f457a;
        C0520u2.f496a.a(C0457p9.a(str, map), tracker.c, true, c0395l7, V9.b, interfaceC0298f5);
    }

    public static void d(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
    }

    public final void b(byte b) {
        this.m = b;
    }

    public final void c(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
    }

    public final void b(int i) {
        this.n = i;
    }

    public final void b(String str) {
        String string;
        if (str != null) {
            int length = str.length() - 1;
            int i = 0;
            boolean z = false;
            while (i <= length) {
                boolean z2 = Intrinsics.compare((int) str.charAt(!z ? i : length), 32) <= 0;
                if (z) {
                    if (!z2) {
                        break;
                    } else {
                        length--;
                    }
                } else if (z2) {
                    i++;
                } else {
                    z = true;
                }
            }
            string = str.subSequence(i, length + 1).toString();
        } else {
            string = null;
        }
        this.p = string;
    }

    public final void a(byte b) {
        this.j = b;
    }

    public final void a(int i) {
        this.o = i;
    }

    public final void a(H7 h7) {
        this.r = h7;
    }

    public final HashMap a() {
        return this.t;
    }

    public final void a(String eventType, HashMap map, C0395l7 c0395l7, InterfaceC0298f5 interfaceC0298f5) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        for (C0526u8 c0526u8 : this.s) {
            if (Intrinsics.areEqual(eventType, c0526u8.b)) {
                a(c0526u8, map, c0395l7, interfaceC0298f5);
            }
        }
    }

    public final void a(String value) {
        Intrinsics.checkNotNullParameter(value, "value");
        int length = value.length() - 1;
        int i = 0;
        boolean z = false;
        while (i <= length) {
            boolean z2 = Intrinsics.compare((int) value.charAt(!z ? i : length), 32) <= 0;
            if (z) {
                if (!z2) {
                    break;
                } else {
                    length--;
                }
            } else if (z2) {
                i++;
            } else {
                z = true;
            }
        }
        this.q = value.subSequence(i, length + 1).toString();
    }

    public /* synthetic */ D7(String str, String str2, String str3, E7 e7, int i) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CommonCssConstants.ROOT : str2, (i & 4) != 0 ? "CONTAINER" : str3, (i & 8) != 0 ? new E7() : e7, new LinkedList());
    }
}
