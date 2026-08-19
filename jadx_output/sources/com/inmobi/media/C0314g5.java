package com.inmobi.media;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.concurrent.CopyOnWriteArrayList;
import kotlin.ExceptionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.g5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class C0314g5 implements InterfaceC0298f5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Ca f357a;
    public final C0274dc b;

    public C0314g5(Context context, double d, B6 logLevel, boolean z, boolean z2, int i, long j, boolean z3) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        if (!z2) {
            this.b = new C0274dc();
        }
        if (z) {
            return;
        }
        Ca logger = new Ca(context, d, logLevel, j, i, z3);
        this.f357a = logger;
        CopyOnWriteArrayList copyOnWriteArrayList = K6.f158a;
        Intrinsics.checkNotNull(logger);
        Intrinsics.checkNotNullParameter(logger, "logger");
        Objects.toString(logger);
        K6.f158a.add(new WeakReference(logger));
    }

    public final void a(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ca ca = this.f357a;
        if (ca != null) {
            ca.a(B6.b, tag, message);
        }
        if (this.b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    public final void b(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ca ca = this.f357a;
        if (ca != null) {
            ca.a(B6.c, tag, message);
        }
        if (this.b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    public final void c(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ca ca = this.f357a;
        if (ca != null) {
            ca.a(B6.f82a, tag, message);
        }
        if (this.b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
        }
    }

    public final void d(String tag, String message) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Ca ca = this.f357a;
        if (ca != null) {
            ca.a(B6.d, tag, message);
        }
        if (this.b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter("STATE_CHANGE: " + message, "message");
        }
    }

    public final void e(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        Ca ca = this.f357a;
        if (ca != null) {
            Intrinsics.checkNotNullParameter(key, "key");
            Intrinsics.checkNotNullParameter(value, "value");
            Objects.toString(ca.i);
            if (ca.i.get()) {
                return;
            }
            ca.h.put(key, value);
        }
    }

    public final void a(String tag, String message, Exception error) {
        Intrinsics.checkNotNullParameter(tag, "tag");
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(error, "error");
        Ca ca = this.f357a;
        if (ca != null) {
            ca.a(B6.c, tag, message + "\nError: " + ExceptionsKt.stackTraceToString(error));
        }
        if (this.b != null) {
            Intrinsics.checkNotNullParameter(tag, "tag");
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(error, "error");
        }
    }

    public final void b() {
        Ca ca = this.f357a;
        if (ca != null) {
            ca.a();
        }
    }

    public final void a(boolean z) {
        Ca ca = this.f357a;
        if (ca != null) {
            Objects.toString(ca.i);
            if (!ca.i.get()) {
                ca.d = z;
            }
        }
        if (z) {
            return;
        }
        Ca ca2 = this.f357a;
        if (ca2 == null || !ca2.f.a()) {
            CopyOnWriteArrayList copyOnWriteArrayList = K6.f158a;
            J6.a(this.f357a);
            this.f357a = null;
        }
    }

    public final void a() {
        Ca ca = this.f357a;
        if (ca != null) {
            ca.b();
        }
        CopyOnWriteArrayList copyOnWriteArrayList = K6.f158a;
        J6.a(this.f357a);
    }
}
