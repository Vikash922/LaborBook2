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

/* JADX INFO: renamed from: com.inmobi.media.Ba */
/* JADX INFO: loaded from: classes6.dex */
public final class C2713Ba extends Lambda implements Function0 {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2728Ca f857a;

    /* JADX INFO: renamed from: b */
    public final /* synthetic */ boolean f858b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2713Ba(C2728Ca c2728Ca, boolean z) {
        super(0);
        this.f857a = c2728Ca;
        this.f858b = z;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() throws JSONException {
        C2728Ca c2728Ca = this.f857a;
        if (!c2728Ca.f900g.isEmpty() && !c2728Ca.f901h.isEmpty()) {
            String strM930c = c2728Ca.m930c();
            Intrinsics.checkNotNullParameter(strM930c, "<this>");
            if (!Intrinsics.areEqual(strM930c, "{}")) {
                long timeInMillis = Calendar.getInstance().getTimeInMillis();
                if (this.f857a.f903j.length() == 0) {
                    C2728Ca c2728Ca2 = this.f857a;
                    ScheduledExecutorService scheduledExecutorService = AbstractC2874M6.f1257a;
                    Context context = c2728Ca2.f894a;
                    Intrinsics.checkNotNullParameter(context, "context");
                    File file = new File(context.getFilesDir() + "/logging");
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    c2728Ca2.f903j = context.getFilesDir() + "/logging/" + timeInMillis + ".txt";
                }
                C2728Ca c2728Ca3 = this.f857a;
                if (AbstractC2889N6.m1395a("RemoteLogger", c2728Ca3.m930c(), c2728Ca3.f903j)) {
                    C2728Ca c2728Ca4 = this.f857a;
                    boolean z = this.f858b;
                    String str = c2728Ca4.f903j;
                    C3448z6 data = new C3448z6(str, timeInMillis, 0, 0L, z, c2728Ca4.f904k.get(), 12);
                    C2694A6 c2694a6M969d = AbstractC2744Db.m969d();
                    c2694a6M969d.getClass();
                    Intrinsics.checkNotNullParameter(data, "data");
                    if (AbstractC2942R1.m1751a(c2694a6M969d, "filename=\"" + str + Typography.quote, null, null, null, null, null, 62).isEmpty()) {
                        int i = this.f857a.f896c;
                        c2694a6M969d.m1753a((Object) data);
                        if (c2694a6M969d.f822b != null) {
                            C3192i5.m2244a();
                        }
                        ScheduledExecutorService scheduledExecutorService2 = AbstractC2874M6.f1257a;
                        C2728Ca c2728Ca5 = this.f857a;
                        AbstractC2859L6.m1290a(c2694a6M969d, timeInMillis - c2728Ca5.f895b, c2728Ca5.f896c);
                    } else {
                        c2694a6M969d.m839b(data);
                    }
                }
            }
        }
        return Unit.INSTANCE;
    }
}
