package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.E2 */
/* JADX INFO: loaded from: classes6.dex */
public final class HandlerC2750E2 extends Handler {

    /* JADX INFO: renamed from: a */
    public final ArrayList f958a;

    /* JADX INFO: renamed from: b */
    public final LinkedHashMap f959b;

    /* JADX INFO: renamed from: c */
    public Map f960c;

    /* JADX INFO: renamed from: d */
    public ThreadPoolExecutor f961d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HandlerC2750E2(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.f958a = new ArrayList();
        this.f959b = new LinkedHashMap();
        this.f960c = new LinkedHashMap();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:76:0x02b8  */
    @Override // android.os.Handler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void handleMessage(android.os.Message r26) {
        /*
            Method dump skipped, instruction units count: 1528
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.HandlerC2750E2.handleMessage(android.os.Message):void");
    }
}
