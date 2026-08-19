package com.inmobi.media;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;

/* JADX INFO: loaded from: classes6.dex */
public final class I3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final J3 f136a;
    public final boolean[] b;
    public boolean c;
    public final /* synthetic */ L3 d;

    public I3(L3 l3, J3 j3) {
        this.d = l3;
        this.f136a = j3;
        this.b = j3.c ? null : new boolean[l3.h];
    }

    public final OutputStream a(int i) {
        FileOutputStream fileOutputStream;
        H3 h3;
        synchronized (this.d) {
            J3 j3 = this.f136a;
            if (j3.d != this) {
                throw new IllegalStateException();
            }
            if (!j3.c) {
                this.b[i] = true;
            }
            File fileB = j3.b(i);
            try {
                fileOutputStream = new FileOutputStream(fileB);
            } catch (FileNotFoundException unused) {
                this.d.f167a.mkdirs();
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException unused2) {
                    return L3.q;
                }
            }
            h3 = new H3(this, fileOutputStream);
        }
        return h3;
    }

    public final void a(String str, int i) throws Throwable {
        OutputStreamWriter outputStreamWriter = null;
        try {
            OutputStreamWriter outputStreamWriter2 = new OutputStreamWriter(a(i), Wc.b);
            try {
                outputStreamWriter2.write(str);
                Wc.a(outputStreamWriter2);
            } catch (Throwable th) {
                th = th;
                outputStreamWriter = outputStreamWriter2;
                Wc.a(outputStreamWriter);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
