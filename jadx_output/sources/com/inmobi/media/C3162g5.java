package com.inmobi.media;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.g5 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3162g5 implements InterfaceC3147f5 {

    /* JADX INFO: renamed from: a */
    public C2728Ca f2097a;

    /* JADX INFO: renamed from: b */
    public final C3124dc f2098b;

    public C3162g5(Context context, double d, EnumC2709B6 logLevel, boolean z, boolean z2, int i, long j, boolean z3) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        if (!z2) {
            this.f2098b = new C3124dc();
        }
        if (z) {
            return;
        }
        C2728Ca logger = new C2728Ca(context, d, logLevel, j, i, z3);
        this.f2097a = logger;
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC2844K6.f1163a;
        Intrinsics.checkNotNull(logger);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Objects.toString(logger);
        AbstractC2844K6.f1163a.add(new WeakReference(logger));
    }

    /* JADX INFO: renamed from: a */
    public final void m2147a(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m928a(EnumC2709B6.f852b, tag, message);
        }
        if (this.f2098b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2151b(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m928a(EnumC2709B6.f853c, tag, message);
        }
        if (this.f2098b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m2152c(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m928a(EnumC2709B6.f851a, tag, message);
        }
        if (this.f2098b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    /* JADX INFO: renamed from: d */
    public final void m2153d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m928a(EnumC2709B6.f854d, tag, message);
        }
        if (this.f2098b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter("STATE_CHANGE: " + message, "message");
        }
    }

    /* JADX INFO: renamed from: e */
    public final void m2154e(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Objects.toString(c2728Ca.f902i);
            if (c2728Ca.f902i.get()) {
                return;
            }
            c2728Ca.f901h.put(key, value);
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2148a(String tag, String message, Exception error) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(error, "error");
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m928a(EnumC2709B6.f853c, tag, message + "\nError: " + ExceptionsKt.stackTraceToString(error));
        }
        if (this.f2098b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(error, "error");
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m2150b() {
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m927a();
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2149a(boolean z) {
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            Objects.toString(c2728Ca.f902i);
            if (!c2728Ca.f902i.get()) {
                c2728Ca.f897d = z;
            }
        }
        if (z) {
            return;
        }
        C2728Ca c2728Ca2 = this.f2097a;
        if (c2728Ca2 == null || !c2728Ca2.f899f.m1122a()) {
            CopyOnWriteArrayList copyOnWriteArrayList = AbstractC2844K6.f1163a;
            AbstractC2829J6.m1193a(this.f2097a);
            this.f2097a = null;
        }
    }

    /* JADX INFO: renamed from: a */
    public final void m2146a() {
        C2728Ca c2728Ca = this.f2097a;
        if (c2728Ca != null) {
            c2728Ca.m929b();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = AbstractC2844K6.f1163a;
        AbstractC2829J6.m1193a(this.f2097a);
    }
}
