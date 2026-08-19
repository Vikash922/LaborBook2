package com.inmobi.media;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class E2 extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ArrayList f103a;
    public final LinkedHashMap b;
    public Map c;
    public ThreadPoolExecutor d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E2(Looper looper) {
        super(looper);
        Intrinsics.checkNotNullParameter(looper, "looper");
        this.f103a = new ArrayList();
        this.b = new LinkedHashMap();
        this.c = new LinkedHashMap();
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
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.media.E2.handleMessage(android.os.Message):void");
    }
}
