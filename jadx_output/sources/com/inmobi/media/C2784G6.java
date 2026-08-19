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

/* JADX INFO: renamed from: com.inmobi.media.G6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2784G6 {

    /* JADX INFO: renamed from: a */
    public final String f1047a;

    /* JADX INFO: renamed from: b */
    public final long f1048b;

    /* JADX INFO: renamed from: c */
    public final long f1049c;

    /* JADX INFO: renamed from: d */
    public final int f1050d;

    /* JADX INFO: renamed from: e */
    public final int f1051e;

    /* JADX INFO: renamed from: f */
    public final WeakReference f1052f;

    /* JADX INFO: renamed from: g */
    public final AtomicBoolean f1053g;

    public C2784G6(Context context, String url, long j, long j2, int i, int i2) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(url, "url");
        this.f1047a = url;
        this.f1048b = j;
        this.f1049c = j2;
        this.f1050d = i;
        this.f1051e = i2;
        this.f1052f = new WeakReference(context);
        this.f1053g = new AtomicBoolean(false);
        m1142a();
    }

    /* JADX INFO: renamed from: a */
    public final void m1142a() {
        final Context context = (Context) this.f1052f.get();
        if (context != null) {
            ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
            Runnable runnable = new Runnable() { // from class: com.inmobi.media.G6$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    C2784G6.m1140a(this.f$0, context);
                }
            };
            Intrinsics.checkNotNullParameter(runnable, "runnable");
            AbstractC2874M6.f1257a.submit(runnable);
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1140a(C2784G6 this$0, Context context) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        if (this$0.f1053g.get()) {
            return;
        }
        Intrinsics.checkNotNullParameter(context, "context");
        if (!this$0.f1053g.get()) {
            int iM1750a = AbstractC2942R1.m1750a((AbstractC2942R1) AbstractC2744Db.m969d());
            C2694A6 c2694a6M969d = AbstractC2744Db.m969d();
            c2694a6M969d.getClass();
            ArrayList arrayListM1751a = AbstractC2942R1.m1751a(c2694a6M969d, "hasLoggerFinished=1", null, null, null, null, Integer.valueOf(iM1750a), 30);
            C2769F6 action = new C2769F6(this$0, context);
            Intrinsics.checkNotNullParameter(arrayListM1751a, "<this>");
            Intrinsics.checkNotNullParameter(action, "action");
            Iterator it = CollectionsKt.filterNotNull(arrayListM1751a).iterator();
            while (it.hasNext()) {
                action.invoke(it.next());
            }
        }
        ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
        AbstractC2859L6.m1290a(AbstractC2744Db.m969d(), Calendar.getInstance().getTimeInMillis() - this$0.f1049c, this$0.f1051e);
    }

    /* JADX INFO: renamed from: a */
    public final void m1143a(final Context context, final String str, C3448z6 c3448z6) {
        List<String> listEmptyList;
        String[] list;
        int i;
        if (this.f1053g.get()) {
            return;
        }
        if (c3448z6.f2794d == 0 || System.currentTimeMillis() - c3448z6.f2794d >= this.f1048b) {
            C3256m9 c3256m9M2287b = new C2799H6(str, c3448z6).m2287b();
            if (c3256m9M2287b.m2297b() && (i = c3448z6.f2793c + 1) < this.f1050d) {
                C3196i9 c3196i9 = c3256m9M2287b.f2333c;
                if ((c3196i9 != null ? c3196i9.f2180a : null) != EnumC3101c4.f1936s) {
                    final C3448z6 c3448z62 = new C3448z6(c3448z6.f2791a, c3448z6.f2792b, i, System.currentTimeMillis(), false, 0, 48);
                    AbstractC2744Db.m969d().m839b(c3448z62);
                    ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
                    long j = this.f1048b;
                    Runnable runnable = new Runnable() { // from class: com.inmobi.media.G6$$ExternalSyntheticLambda0
                        @Override // java.lang.Runnable
                        public final void run() {
                            C2784G6.m1141a(this.f$0, context, str, c3448z62);
                        }
                    };
                    Intrinsics.checkNotNullParameter(runnable, "runnable");
                    AbstractC2874M6.f1257a.schedule(runnable, j, TimeUnit.MILLISECONDS);
                    return;
                }
            }
            AbstractC2889N6.m1394a(c3448z6.f2791a);
            AbstractC2744Db.m969d().m837a(c3448z6);
            Context context2 = (Context) this.f1052f.get();
            if (context2 != null) {
                ScheduledExecutorService scheduledExecutorService2 = AbstractC2874M6.f1257a;
                Intrinsics.checkNotNullParameter(context2, "context");
                String directoryPath = context2.getFilesDir() + "/logging";
                Intrinsics.checkNotNullParameter(directoryPath, "directoryPath");
                File file = new File(directoryPath);
                if (!file.exists() || !file.isDirectory() || (list = file.list()) == null || (listEmptyList = ArraysKt.toList(list)) == null) {
                    listEmptyList = CollectionsKt.emptyList();
                }
                for (String fileName : listEmptyList) {
                    C2694A6 c2694a6M969d = AbstractC2744Db.m969d();
                    c2694a6M969d.getClass();
                    Intrinsics.checkNotNullParameter(fileName, "fileName");
                    if (AbstractC2942R1.m1751a(c2694a6M969d, "filename=\"" + fileName + Typography.quote, null, null, null, null, null, 62).isEmpty()) {
                        AbstractC2889N6.m1394a(fileName);
                    }
                }
            }
        }
    }

    /* JADX INFO: renamed from: a */
    public static final void m1141a(C2784G6 this$0, Context context, String url, C3448z6 updatedData) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(context, "$context");
        Intrinsics.checkNotNullParameter(url, "$url");
        Intrinsics.checkNotNullParameter(updatedData, "$updatedData");
        this$0.m1143a(context, url, updatedData);
    }
}
