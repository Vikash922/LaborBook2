package com.inmobi.media;

import com.google.common.net.HttpHeaders;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Random;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: com.inmobi.media.i */
/* JADX INFO: loaded from: classes6.dex */
public final class C3186i {

    /* JADX INFO: renamed from: b */
    public int f2157b;

    /* JADX INFO: renamed from: c */
    public String f2158c;

    /* JADX INFO: renamed from: d */
    public String f2159d;

    /* JADX INFO: renamed from: g */
    public long f2162g;

    /* JADX INFO: renamed from: h */
    public long f2163h;

    /* JADX INFO: renamed from: a */
    public final int f2156a = new Random().nextInt() & Integer.MAX_VALUE;

    /* JADX INFO: renamed from: e */
    public final long f2160e = System.currentTimeMillis();

    /* JADX INFO: renamed from: f */
    public final long f2161f = System.currentTimeMillis();

    /* JADX INFO: renamed from: a */
    public final C3186i m2234a(String url, String locationOnDisk, C3256m9 response, int i, long j) {
        List list;
        boolean z;
        long j2;
        boolean z2;
        long j3;
        long j4;
        long j5;
        String[] strArr;
        int i2;
        Intrinsics.checkNotNullParameter(url, "url");
        Intrinsics.checkNotNullParameter(locationOnDisk, "locationOnDisk");
        Intrinsics.checkNotNullParameter(response, "response");
        Map map = response.f2335e;
        long jCurrentTimeMillis = System.currentTimeMillis();
        List list2 = map != null ? (List) map.get(HttpHeaders.DATE) : null;
        int i3 = 0;
        long jM2233a = (list2 == null || list2.isEmpty()) ? 0L : m2233a((String) list2.get(0));
        List list3 = map != null ? (List) map.get(HttpHeaders.CACHE_CONTROL) : null;
        if (list3 == null || list3.isEmpty()) {
            list = null;
            z = false;
            j2 = 0;
            z2 = false;
            j3 = 0;
        } else {
            String str = (String) list3.get(0);
            int i4 = 1;
            String[] strArr2 = (String[]) StringsKt.split$default((CharSequence) str, new String[]{","}, false, 0, 6, (Object) null).toArray(new String[0]);
            int length = strArr2.length;
            int i5 = 0;
            z2 = false;
            j2 = 0;
            j3 = 0;
            while (i5 < length) {
                String str2 = strArr2[i5];
                int length2 = str2.length() - i4;
                int i6 = i3;
                int i7 = i6;
                while (true) {
                    if (i6 > length2) {
                        break;
                    }
                    boolean z3 = Intrinsics.compare((int) str2.charAt(i7 == 0 ? i6 : length2), 32) <= 0;
                    if (i7 == 0) {
                        if (z3) {
                            i6++;
                        } else {
                            i4 = 1;
                            i7 = 1;
                        }
                    } else {
                        if (!z3) {
                            i4 = 1;
                            break;
                        }
                        length2--;
                    }
                    i4 = 1;
                }
                String strM2246a = AbstractC3194i7.m2246a(length2, i4, str2, i6);
                if (Intrinsics.areEqual("no-cache", strM2246a) || Intrinsics.areEqual("no-store", strM2246a)) {
                    strArr = strArr2;
                    i2 = length;
                } else if (StringsKt.startsWith$default(strM2246a, "max-age=", false, 2, (Object) null)) {
                    try {
                        String strSubstring = strM2246a.substring(8);
                        Intrinsics.checkNotNullExpressionValue(strSubstring, "this as java.lang.String).substring(startIndex)");
                        j2 = Long.parseLong(strSubstring);
                    } catch (Exception unused) {
                        Intrinsics.checkNotNullExpressionValue("j", "access$getTAG$cp(...)");
                    }
                    strArr = strArr2;
                    i2 = length;
                } else {
                    strArr = strArr2;
                    i2 = length;
                    if (StringsKt.startsWith$default(strM2246a, "stale-while-revalidate=", false, 2, (Object) null)) {
                        try {
                            String strSubstring2 = strM2246a.substring(23);
                            Intrinsics.checkNotNullExpressionValue(strSubstring2, "this as java.lang.String).substring(startIndex)");
                            j3 = Long.parseLong(strSubstring2);
                        } catch (Exception unused2) {
                            Intrinsics.checkNotNullExpressionValue("j", "access$getTAG$cp(...)");
                        }
                    } else if (Intrinsics.areEqual("must-revalidate", strM2246a) || Intrinsics.areEqual("proxy-revalidate", strM2246a)) {
                        z2 = true;
                    }
                }
                i5++;
                length = i2;
                strArr2 = strArr;
                i4 = 1;
                i3 = 0;
            }
            list = null;
            z = true;
        }
        List list4 = map != null ? (List) map.get(HttpHeaders.EXPIRES) : list;
        long jM2233a2 = (list4 == null || list4.isEmpty()) ? 0L : m2233a((String) list4.get(0));
        if (z) {
            long j6 = 1000;
            j5 = (j2 * j6) + jCurrentTimeMillis;
            if (z2) {
                j4 = j5;
            } else {
                long j7 = (j3 * j6) + j5;
                j4 = j5;
                j5 = j7;
            }
        } else if (1 > jM2233a || jM2233a > jM2233a2) {
            j4 = 0;
            j5 = 0;
        } else {
            j5 = (jM2233a2 - jM2233a) + jCurrentTimeMillis;
            j4 = j5;
        }
        this.f2158c = url;
        this.f2159d = locationOnDisk;
        this.f2157b = i;
        long j8 = (((long) 1000) * j) + jCurrentTimeMillis;
        this.f2162g = j8;
        this.f2163h = j4;
        this.f2162g = Math.min(j8, j5);
        return this;
    }

    /* JADX INFO: renamed from: a */
    public static long m2233a(String str) {
        try {
            Date date = new SimpleDateFormat("EEE,dd MMM yyyy HH:mm:ss z", Locale.ENGLISH).parse(str);
            if (date != null) {
                return date.getTime();
            }
            return 0L;
        } catch (ParseException e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3114d2 event = new C3114d2(e);
            Intrinsics.checkNotNullParameter(event, "event");
            C3402w5.f2712d.m2158a(event);
            return 0L;
        }
    }
}
