package com.inmobi.media;

import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.D7 */
/* JADX INFO: loaded from: classes6.dex */
public class C2740D7 {

    /* JADX INFO: renamed from: a */
    public final String f919a;

    /* JADX INFO: renamed from: b */
    public final String f920b;

    /* JADX INFO: renamed from: c */
    public final String f921c;

    /* JADX INFO: renamed from: d */
    public final C2755E7 f922d;

    /* JADX INFO: renamed from: e */
    public Object f923e;

    /* JADX INFO: renamed from: f */
    public boolean f924f;

    /* JADX INFO: renamed from: g */
    public String f925g;

    /* JADX INFO: renamed from: h */
    public String f926h;

    /* JADX INFO: renamed from: i */
    public boolean f927i;

    /* JADX INFO: renamed from: j */
    public byte f928j;

    /* JADX INFO: renamed from: k */
    public byte f929k;

    /* JADX INFO: renamed from: l */
    public byte f930l;

    /* JADX INFO: renamed from: m */
    public byte f931m;

    /* JADX INFO: renamed from: n */
    public int f932n;

    /* JADX INFO: renamed from: o */
    public int f933o;

    /* JADX INFO: renamed from: p */
    public String f934p;

    /* JADX INFO: renamed from: q */
    public String f935q;

    /* JADX INFO: renamed from: r */
    public C2800H7 f936r;

    /* JADX INFO: renamed from: s */
    public final ArrayList f937s;

    /* JADX INFO: renamed from: t */
    public final HashMap f938t;

    /* JADX INFO: renamed from: u */
    public Object f939u;

    /* JADX INFO: renamed from: v */
    public int f940v;

    /* JADX INFO: renamed from: w */
    public C2740D7 f941w;

    public C2740D7(String assetId, String assetName, String assetType, C2755E7 assetStyle, List trackers) {
        Intrinsics.checkNotNullParameter(assetId, "assetId");
        Intrinsics.checkNotNullParameter(assetName, "assetName");
        Intrinsics.checkNotNullParameter(assetType, "assetType");
        Intrinsics.checkNotNullParameter(assetStyle, "assetStyle");
        Intrinsics.checkNotNullParameter(trackers, "trackers");
        this.f919a = assetId;
        this.f920b = assetName;
        this.f921c = assetType;
        this.f922d = assetStyle;
        this.f925g = "NO_ACTION";
        this.f926h = "";
        this.f931m = (byte) 2;
        this.f932n = -1;
        this.f934p = "";
        this.f935q = "";
        ArrayList arrayList = new ArrayList();
        this.f937s = arrayList;
        this.f938t = new HashMap();
        arrayList.addAll(trackers);
    }

    /* JADX INFO: renamed from: a */
    public static void m944a(C3375u8 tracker, HashMap map, C3239l7 c3239l7, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(tracker, "tracker");
        String str = tracker.f2664d;
        boolean z = C3301p9.f2439a;
        C3369u2.f2627a.m2482a(C3301p9.m2343a(str, map), tracker.f2663c, true, c3239l7, EnumC3006V9.f1596b, interfaceC3147f5);
    }

    /* JADX INFO: renamed from: d */
    public static void m945d(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
    }

    /* JADX INFO: renamed from: b */
    public final void m952b(byte b) {
        this.f931m = b;
    }

    /* JADX INFO: renamed from: c */
    public final void m955c(String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
    }

    /* JADX INFO: renamed from: b */
    public final void m953b(int i) {
        this.f932n = i;
    }

    /* JADX INFO: renamed from: b */
    public final void m954b(String str) {
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
        this.f934p = string;
    }

    /* JADX INFO: renamed from: a */
    public final void m947a(byte b) {
        this.f928j = b;
    }

    /* JADX INFO: renamed from: a */
    public final void m948a(int i) {
        this.f933o = i;
    }

    /* JADX INFO: renamed from: a */
    public final void m949a(C2800H7 c2800h7) {
        this.f936r = c2800h7;
    }

    /* JADX INFO: renamed from: a */
    public final HashMap m946a() {
        return this.f938t;
    }

    /* JADX INFO: renamed from: a */
    public final void m951a(String eventType, HashMap map, C3239l7 c3239l7, InterfaceC3147f5 interfaceC3147f5) {
        Intrinsics.checkNotNullParameter(eventType, "eventType");
        for (C3375u8 c3375u8 : this.f937s) {
            if (Intrinsics.areEqual(eventType, c3375u8.f2662b)) {
                m944a(c3375u8, map, c3239l7, interfaceC3147f5);
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m950a(String value) {
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
        this.f935q = value.subSequence(i, length + 1).toString();
    }

    public /* synthetic */ C2740D7(String str, String str2, String str3, C2755E7 c2755e7, int i) {
        this((i & 1) != 0 ? "" : str, (i & 2) != 0 ? CommonCssConstants.ROOT : str2, (i & 4) != 0 ? "CONTAINER" : str3, (i & 8) != 0 ? new C2755E7() : c2755e7, new LinkedList());
    }
}
