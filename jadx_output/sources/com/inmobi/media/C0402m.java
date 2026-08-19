package com.inmobi.media;

import com.itextpdf.svg.SvgConstants;
import java.io.BufferedOutputStream;
import java.io.File;
import java.net.HttpURLConnection;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0402m {
    public static final /* synthetic */ int b = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC0388l1 f416a;

    public C0402m(InterfaceC0388l1 mResultListener) {
        Intrinsics.checkNotNullParameter(mResultListener, "mResultListener");
        this.f416a = mResultListener;
    }

    public static void a(File file, HttpURLConnection httpURLConnection, BufferedOutputStream bufferedOutputStream) {
        try {
            if (file.exists()) {
                file.delete();
                Intrinsics.checkNotNullExpressionValue(SvgConstants.Attributes.PATH_DATA_REL_MOVE_TO, "TAG");
            }
            httpURLConnection.disconnect();
            C0457p9.a(bufferedOutputStream);
        } catch (Exception e) {
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.d.a(AbstractC0251c5.a(e, "event"));
        }
    }
}
