package com.inmobi.media;

import com.itextpdf.svg.SvgConstants;
import java.io.BufferedOutputStream;
import java.io.File;
import java.net.HttpURLConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m */
/* JADX INFO: loaded from: classes6.dex */
public final class C3246m {

    /* JADX INFO: renamed from: b */
    public static final /* synthetic */ int f2307b = 0;

    /* JADX INFO: renamed from: a */
    public final InterfaceC3233l1 f2308a;

    public C3246m(InterfaceC3233l1 mResultListener) {
        Intrinsics.checkNotNullParameter(mResultListener, "mResultListener");
        this.f2308a = mResultListener;
    }

    /* JADX INFO: renamed from: a */
    public static void m2291a(File file, HttpURLConnection httpURLConnection, BufferedOutputStream bufferedOutputStream) {
        try {
            if (file.exists()) {
                file.delete();
                Intrinsics.checkNotNullExpressionValue(SvgConstants.Attributes.PATH_DATA_REL_MOVE_TO, "TAG");
            }
            httpURLConnection.disconnect();
            C3301p9.m2346a(bufferedOutputStream);
        } catch (Exception e) {
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.f2712d.m2158a(AbstractC3102c5.m2045a(e, "event"));
        }
    }
}
