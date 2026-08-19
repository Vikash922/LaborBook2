package com.inmobi.media;

import android.content.Context;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Typography;

/* JADX INFO: loaded from: classes6.dex */
public final class G6 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f123a;
    public final long b;
    public final long c;
    public final int d;
    public final int e;
    public final WeakReference f;
    public final AtomicBoolean g;

    public G6(Context context, String url, long j, long j2, int i, int i2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f123a = url;
        this.b = j;
        this.c = j2;
        this.d = i;
        this.e = i2;
        this.f = new WeakReference(context);
        this.g = new AtomicBoolean(false);
        a();
    }

    public final void a() {
        final Context context = (Context) this.f.get();
        if (context != null) {
            ScheduledExecutorService scheduledExecutorService = M6.f179a;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.G6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    G6.a(this.f$0, context);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            M6.f179a.submit(runnable);
        }
    }

    public static final void a(G6 this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        if (this$0.g.get()) {
            return;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        if (!this$0.g.get()) {
            int iA = R1.a((R1) Db.d());
            A6 a6D = Db.d();
            a6D.getClass();
            ArrayList arrayListA = R1.a(a6D, "hasLoggerFinished=1", null, null, null, null, Integer.valueOf(iA), 30);
            F6 action = new F6(this$0, context);
            Intrinsics.checkNotNullParameter(arrayListA, "<this>");
            Intrinsics.checkNotNullParameter(action, "action");
            Iterator it = CollectionsKt.filterNotNull(arrayListA).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
        }
        ScheduledExecutorService scheduledExecutorService = M6.f179a;
        L6.a(Db.d(), Calendar.getInstance().getTimeInMillis() - this$0.c, this$0.e);
    }

    public final void a(final Context context, final String str, C0596z6 c0596z6) {
        List<String> listEmptyList;
        String[] list;
        int i;
        if (this.g.get()) {
            return;
        }
        if (c0596z6.d == 0 || System.currentTimeMillis() - c0596z6.d >= this.b) {
            C0412m9 c0412m9B = new H6(str, c0596z6).b();
            if (c0412m9B.b() && (i = c0596z6.c + 1) < this.d) {
                C0350i9 c0350i9 = c0412m9B.c;
                if ((c0350i9 != null ? c0350i9.f385a : null) != EnumC0250c4.s) {
                    final C0596z6 c0596z62 = new C0596z6(c0596z6.f546a, c0596z6.b, i, System.currentTimeMillis(), false, 0, 48);
                    Db.d().b(c0596z62);
                    ScheduledExecutorService scheduledExecutorService = M6.f179a;
                    long j = this.b;
                    Runnable runnable = new Runnable() { // from class: com.inmobi.media.G6$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            G6.a(this.f$0, context, str, c0596z62);
                        }
                    };
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    M6.f179a.schedule(runnable, j, TimeUnit.MILLISECONDS);
                    return;
                }
            }
            N6.a(c0596z6.f546a);
            Db.d().a(c0596z6);
            Context context2 = (Context) this.f.get();
            if (context2 != null) {
                ScheduledExecutorService scheduledExecutorService2 = M6.f179a;
                Intrinsics.checkNotNullParameter(context2, "context");
                String directoryPath = context2.getFilesDir() + "/logging";
                Intrinsics.checkNotNullParameter(directoryPath, "directoryPath");
                File file = new File(directoryPath);
                if (!file.exists() || !file.isDirectory() || (list = file.list()) == null || (listEmptyList = ArraysKt.toList(list)) == null) {
                    listEmptyList = CollectionsKt.emptyList();
                }
                for (String fileName : listEmptyList) {
                    A6 a6D = Db.d();
                    a6D.getClass();
                    Intrinsics.checkNotNullParameter(fileName, "fileName");
                    if (R1.a(a6D, "filename=\"" + fileName + Typography.quote, null, null, null, null, null, 62).isEmpty()) {
                        N6.a(fileName);
                    }
                }
            }
        }
    }

    public static final void a(G6 this$0, Context context, String url, C0596z6 updatedData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(updatedData, "$updatedData");
        this$0.a(context, url, updatedData);
    }
}
