package com.inmobi.media;

import android.database.sqlite.SQLiteException;
import android.util.Log;
import com.inmobi.adquality.models.AdQualityResult;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.xa */
/* JADX INFO: loaded from: classes6.dex */
public final class C3422xa implements InterfaceC3277o0 {

    /* JADX INFO: renamed from: a */
    public final AdQualityResult f2745a;

    public C3422xa(AdQualityResult result) {
        Intrinsics.checkNotNullParameter(result, "result");
        this.f2745a = result;
    }

    @Override // com.inmobi.media.InterfaceC3277o0
    /* JADX INFO: renamed from: a */
    public final Object mo1145a() {
        boolean z;
        try {
            ScheduledExecutorService scheduledExecutorService = C3127e0.f2033a;
            ((C3142f0) AbstractC2744Db.f948a.getValue()).m2122a(this.f2745a);
            z = true;
        } catch (SQLiteException e) {
            Intrinsics.checkNotNullParameter("QueueProcess", "tag");
            Intrinsics.checkNotNullParameter("failed to queue the result", "message");
            Log.e("QueueProcess", "failed to queue the result", e);
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
