package com.iab.omid.library.inmobi.utils;

import android.text.TextUtils;
import com.iab.omid.library.inmobi.Omid;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.adsession.CreativeType;
import com.iab.omid.library.inmobi.adsession.ImpressionType;
import com.iab.omid.library.inmobi.adsession.Owner;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.utils.g */
/* JADX INFO: loaded from: classes6.dex */
public class C2654g {
    /* JADX INFO: renamed from: a */
    public static void m720a() {
        if (!Omid.isActive()) {
            throw new IllegalStateException("Method called before OM SDK activation");
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m721a(Owner owner, CreativeType creativeType, ImpressionType impressionType) {
        if (owner == Owner.NONE) {
            throw new IllegalArgumentException("Impression owner is none");
        }
        if (creativeType == CreativeType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
        if (impressionType == ImpressionType.DEFINED_BY_JAVASCRIPT && owner == Owner.NATIVE) {
            throw new IllegalArgumentException("ImpressionType/CreativeType can only be defined as DEFINED_BY_JAVASCRIPT if Impression Owner is JavaScript");
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m722a(C2623a c2623a) {
        m728d(c2623a);
        m726b(c2623a);
    }

    /* JADX INFO: renamed from: a */
    public static void m723a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m724a(String str, int i, String str2) {
        if (str.length() > i) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m725a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(str2);
        }
    }

    /* JADX INFO: renamed from: b */
    public static void m726b(C2623a c2623a) {
        if (c2623a.m553g()) {
            throw new IllegalStateException("AdSession is finished");
        }
    }

    /* JADX INFO: renamed from: c */
    public static void m727c(C2623a c2623a) {
        if (c2623a.m556j()) {
            throw new IllegalStateException("AdSession is started");
        }
    }

    /* JADX INFO: renamed from: d */
    private static void m728d(C2623a c2623a) {
        if (!c2623a.m556j()) {
            throw new IllegalStateException("AdSession is not started");
        }
    }

    /* JADX INFO: renamed from: e */
    public static void m729e(C2623a c2623a) {
        if (!c2623a.m554h()) {
            throw new IllegalStateException("Impression event is not expected from the Native AdSession");
        }
    }

    /* JADX INFO: renamed from: f */
    public static void m730f(C2623a c2623a) {
        if (!c2623a.m555i()) {
            throw new IllegalStateException("Cannot create MediaEvents for JavaScript AdSession");
        }
    }

    /* JADX INFO: renamed from: g */
    public static void m731g(C2623a c2623a) {
        if (c2623a.getAdSessionStatePublisher().m675c() != null) {
            throw new IllegalStateException("AdEvents already exists for AdSession");
        }
    }

    /* JADX INFO: renamed from: h */
    public static void m732h(C2623a c2623a) {
        if (c2623a.getAdSessionStatePublisher().m676d() != null) {
            throw new IllegalStateException("MediaEvents already exists for AdSession");
        }
    }
}
