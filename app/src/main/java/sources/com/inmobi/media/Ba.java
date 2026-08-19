package com.inmobi.media;

import android.content.Context;
import java.io.File;
import java.util.Calendar;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.Typography;
import org.json.JSONException;

/* JADX INFO: loaded from: classes6.dex */
public final class Ba extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Ca f84a;
    public final /* synthetic */ boolean b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Ba(Ca ca, boolean z) {
        super(0);
        this.f84a = ca;
        this.b = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() throws JSONException {
        Ca ca = this.f84a;
        if (!ca.g.isEmpty() && !ca.h.isEmpty()) {
            String strC = ca.c();
            Intrinsics.checkNotNullParameter(strC, "<this>");
            if (!Intrinsics.areEqual(strC, "{}")) {
                long timeInMillis = Calendar.getInstance().getTimeInMillis();
                if (this.f84a.j.length() == 0) {
                    Ca ca2 = this.f84a;
                    ScheduledExecutorService scheduledExecutorService = M6.f179a;
                    Context context = ca2.f90a;
                    Intrinsics.checkNotNullParameter(context, "context");
                    File file = new File(context.getFilesDir() + "/logging");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    ca2.j = context.getFilesDir() + "/logging/" + timeInMillis + ".txt";
                }
                Ca ca3 = this.f84a;
                if (N6.a("RemoteLogger", ca3.c(), ca3.j)) {
                    Ca ca4 = this.f84a;
                    boolean z = this.b;
                    String str = ca4.j;
                    C0596z6 data = new C0596z6(str, timeInMillis, 0, 0L, z, ca4.k.get(), 12);
                    A6 a6D = Db.d();
                    a6D.getClass();
                    Intrinsics.checkNotNullParameter(data, "data");
                    if (R1.a(a6D, "filename=\"" + str + Typography.quote, null, null, null, null, null, 62).isEmpty()) {
                        int i = this.f84a.c;
                        a6D.a((Object) data);
                        if (a6D.b != null) {
                            C0346i5.a();
                        }
                        ScheduledExecutorService scheduledExecutorService2 = M6.f179a;
                        Ca ca5 = this.f84a;
                        L6.a(a6D, timeInMillis - ca5.b, ca5.c);
                    } else {
                        a6D.b(data);
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }
}
