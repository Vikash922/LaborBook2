package com.inmobi.media;

import java.io.File;

/* JADX INFO: loaded from: classes6.dex */
public final class J3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f147a;
    public final long[] b;
    public boolean c;
    public I3 d;
    public final /* synthetic */ L3 e;

    public J3(L3 l3, String str) {
        this.e = l3;
        this.f147a = str;
        this.b = new long[l3.h];
    }

    public final File a(int i) {
        return new File(this.e.f167a, this.f147a + "." + i);
    }

    public final File b(int i) {
        return new File(this.e.f167a, this.f147a + "." + i + ".tmp");
    }
}
