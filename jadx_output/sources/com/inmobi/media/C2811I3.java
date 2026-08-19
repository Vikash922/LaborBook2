package com.inmobi.media;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

/* JADX INFO: renamed from: com.inmobi.media.I3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2811I3 {

    /* JADX INFO: renamed from: a */
    public final C2826J3 f1103a;

    /* JADX INFO: renamed from: b */
    public final boolean[] f1104b;

    /* JADX INFO: renamed from: c */
    public boolean f1105c;

    /* JADX INFO: renamed from: d */
    public final /* synthetic */ C2856L3 f1106d;

    public C2811I3(C2856L3 c2856l3, C2826J3 c2826j3) {
        this.f1106d = c2856l3;
        this.f1103a = c2826j3;
        this.f1104b = c2826j3.f1131c ? null : new boolean[c2856l3.f1196h];
    }

    /* JADX INFO: renamed from: a */
    public final OutputStream m1167a(int i) {
        FileOutputStream fileOutputStream;
        C2796H3 c2796h3;
        synchronized (this.f1106d) {
            C2826J3 c2826j3 = this.f1103a;
            if (c2826j3.f1132d != this) {
                throw new IllegalStateException();
            }
            if (!c2826j3.f1131c) {
                this.f1104b[i] = true;
            }
            File fileM1192b = c2826j3.m1192b(i);
            try {
                fileOutputStream = new FileOutputStream(fileM1192b);
            } catch (FileNotFoundException unused) {
                this.f1106d.f1189a.mkdirs();
                try {
                    fileOutputStream = new FileOutputStream(fileM1192b);
                } catch (FileNotFoundException unused2) {
                    return C2856L3.f1188q;
                }
            }
            c2796h3 = new C2796H3(this, fileOutputStream);
        }
        return c2796h3;
    }

    /* JADX INFO: renamed from: a */
    public final void m1168a(String str, int i) throws Throwable {
        OutputStreamWriter outputStreamWriter = null;
        try {
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(m1167a(i), AbstractC3023Wc.f1633b);
            try {
                outputStreamWriter2.write(str);
                AbstractC3023Wc.m1895a(outputStreamWriter2);
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = outputStreamWriter2;
                AbstractC3023Wc.m1895a(outputStreamWriter);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
