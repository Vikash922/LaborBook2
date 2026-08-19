package com.inmobi.media;

import com.facebook.appevents.AppEventsConstants;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: renamed from: com.inmobi.media.L3 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2856L3 implements Closeable {

    /* JADX INFO: renamed from: p */
    public static final Pattern f1187p = Pattern.compile("[a-z0-9_-]{1,64}");

    /* JADX INFO: renamed from: q */
    public static final C2781G3 f1188q = new C2781G3();

    /* JADX INFO: renamed from: a */
    public final File f1189a;

    /* JADX INFO: renamed from: b */
    public final File f1190b;

    /* JADX INFO: renamed from: c */
    public final File f1191c;

    /* JADX INFO: renamed from: d */
    public final File f1192d;

    /* JADX INFO: renamed from: f */
    public final long f1194f;

    /* JADX INFO: renamed from: g */
    public final C2716Bd f1195g;

    /* JADX INFO: renamed from: j */
    public BufferedWriter f1198j;

    /* JADX INFO: renamed from: l */
    public int f1200l;

    /* JADX INFO: renamed from: i */
    public long f1197i = 0;

    /* JADX INFO: renamed from: k */
    public final LinkedHashMap f1199k = new LinkedHashMap(0, 0.75f, true);

    /* JADX INFO: renamed from: m */
    public long f1201m = 0;

    /* JADX INFO: renamed from: n */
    public final ThreadPoolExecutor f1202n = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* JADX INFO: renamed from: o */
    public final CallableC2766F3 f1203o = new CallableC2766F3(this);

    /* JADX INFO: renamed from: e */
    public final int f1193e = 1;

    /* JADX INFO: renamed from: h */
    public final int f1196h = 2;

    public C2856L3(File file, long j, C2716Bd c2716Bd) {
        this.f1189a = file;
        this.f1190b = new File(file, "journal");
        this.f1191c = new File(file, "journal.tmp");
        this.f1192d = new File(file, "journal.bkp");
        this.f1194f = j;
        this.f1195g = c2716Bd;
    }

    /* JADX INFO: renamed from: a */
    public static void m1280a(C2856L3 c2856l3, C2811I3 c2811i3, boolean z) {
        synchronized (c2856l3) {
            C2826J3 c2826j3 = c2811i3.f1103a;
            if (c2826j3.f1132d != c2811i3) {
                throw new IllegalStateException("CurrentEditor of Entry didn't match with CurrentEditor instance.");
            }
            if (z && !c2826j3.f1131c) {
                for (int i = 0; i < c2856l3.f1196h; i++) {
                    if (!c2811i3.f1104b[i]) {
                        m1280a(c2811i3.f1106d, c2811i3, false);
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!c2826j3.m1192b(i).exists()) {
                        m1280a(c2811i3.f1106d, c2811i3, false);
                        return;
                    }
                }
            }
            for (int i2 = 0; i2 < c2856l3.f1196h; i2++) {
                File fileM1192b = c2826j3.m1192b(i2);
                if (z) {
                    if (fileM1192b.exists()) {
                        File fileM1191a = c2826j3.m1191a(i2);
                        fileM1192b.renameTo(fileM1191a);
                        long j = c2826j3.f1130b[i2];
                        long length = fileM1191a.length();
                        c2826j3.f1130b[i2] = length;
                        c2856l3.f1197i = (c2856l3.f1197i - j) + length;
                    }
                } else if (fileM1192b.exists() && !fileM1192b.delete()) {
                    throw new IOException();
                }
            }
            c2856l3.f1200l++;
            c2826j3.f1132d = null;
            if (c2826j3.f1131c || z) {
                c2826j3.f1131c = true;
                BufferedWriter bufferedWriter = c2856l3.f1198j;
                StringBuilder sbAppend = new StringBuilder("CLEAN ").append(c2826j3.f1129a);
                StringBuilder sb = new StringBuilder();
                for (long j2 : c2826j3.f1130b) {
                    sb.append(' ').append(j2);
                }
                bufferedWriter.write(sbAppend.append(sb.toString()).append('\n').toString());
                if (z) {
                    c2856l3.f1201m++;
                }
            } else {
                c2856l3.f1199k.remove(c2826j3.f1129a);
                c2856l3.f1198j.write("REMOVE " + c2826j3.f1129a + '\n');
            }
            c2856l3.f1198j.flush();
            if (c2856l3.f1197i > c2856l3.f1194f || c2856l3.m1282a()) {
                c2856l3.f1202n.submit(c2856l3.f1203o);
            }
        }
    }

    /* JADX INFO: renamed from: b */
    public final void m1284b() throws IOException {
        File file = this.f1191c;
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
        Iterator it = this.f1199k.values().iterator();
        while (it.hasNext()) {
            C2826J3 c2826j3 = (C2826J3) it.next();
            int i = 0;
            if (c2826j3.f1132d == null) {
                while (i < this.f1196h) {
                    this.f1197i += c2826j3.f1130b[i];
                    i++;
                }
            } else {
                c2826j3.f1132d = null;
                while (i < this.f1196h) {
                    File fileM1191a = c2826j3.m1191a(i);
                    if (fileM1191a.exists() && !fileM1191a.delete()) {
                        throw new IOException();
                    }
                    File fileM1192b = c2826j3.m1192b(i);
                    if (fileM1192b.exists() && !fileM1192b.delete()) {
                        throw new IOException();
                    }
                    i++;
                }
                it.remove();
            }
        }
    }

    /* JADX INFO: renamed from: c */
    public final void m1285c() {
        C3050Yb c3050Yb = new C3050Yb(new FileInputStream(this.f1190b), AbstractC3023Wc.f1632a);
        try {
            String strM1991a = c3050Yb.m1991a();
            String strM1991a2 = c3050Yb.m1991a();
            String strM1991a3 = c3050Yb.m1991a();
            String strM1991a4 = c3050Yb.m1991a();
            String strM1991a5 = c3050Yb.m1991a();
            if (!"libcore.io.DiskLruCache".equals(strM1991a) || !AppEventsConstants.EVENT_PARAM_VALUE_YES.equals(strM1991a2) || !Integer.toString(this.f1193e).equals(strM1991a3) || !Integer.toString(this.f1196h).equals(strM1991a4) || !"".equals(strM1991a5)) {
                throw new IOException("unexpected journal header: [" + strM1991a + ", " + strM1991a2 + ", " + strM1991a4 + ", " + strM1991a5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    m1286c(c3050Yb.m1991a());
                    i++;
                } catch (EOFException unused) {
                    this.f1200l = i - this.f1199k.size();
                    AbstractC3023Wc.m1895a(c3050Yb);
                    return;
                }
            }
        } catch (Throwable th) {
            AbstractC3023Wc.m1895a(c3050Yb);
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        if (this.f1198j == null) {
            return;
        }
        Iterator it = new ArrayList(this.f1199k.values()).iterator();
        while (it.hasNext()) {
            C2811I3 c2811i3 = ((C2826J3) it.next()).f1132d;
            if (c2811i3 != null) {
                m1280a(c2811i3.f1106d, c2811i3, false);
            }
        }
        while (this.f1197i > this.f1194f) {
            m1288d((String) ((Map.Entry) this.f1199k.entrySet().iterator().next()).getKey());
        }
        this.f1198j.close();
        this.f1198j = null;
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m1287d() {
        BufferedWriter bufferedWriter = this.f1198j;
        if (bufferedWriter != null) {
            bufferedWriter.close();
        }
        BufferedWriter bufferedWriter2 = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1191c), AbstractC3023Wc.f1632a));
        try {
            bufferedWriter2.write("libcore.io.DiskLruCache");
            bufferedWriter2.write(StringUtils.f4768LF);
            bufferedWriter2.write(AppEventsConstants.EVENT_PARAM_VALUE_YES);
            bufferedWriter2.write(StringUtils.f4768LF);
            bufferedWriter2.write(Integer.toString(this.f1193e));
            bufferedWriter2.write(StringUtils.f4768LF);
            bufferedWriter2.write(Integer.toString(this.f1196h));
            bufferedWriter2.write(StringUtils.f4768LF);
            bufferedWriter2.write(StringUtils.f4768LF);
            for (C2826J3 c2826j3 : this.f1199k.values()) {
                if (c2826j3.f1132d != null) {
                    bufferedWriter2.write("DIRTY " + c2826j3.f1129a + '\n');
                } else {
                    StringBuilder sbAppend = new StringBuilder().append("CLEAN ").append(c2826j3.f1129a);
                    StringBuilder sb = new StringBuilder();
                    for (long j : c2826j3.f1130b) {
                        sb.append(' ').append(j);
                    }
                    bufferedWriter2.write(sbAppend.append(sb.toString()).append('\n').toString());
                }
            }
            bufferedWriter2.close();
            if (this.f1190b.exists()) {
                File file = this.f1190b;
                File file2 = this.f1192d;
                if (file2.exists() && !file2.delete()) {
                    throw new IOException();
                }
                if (!file.renameTo(file2)) {
                    throw new IOException();
                }
            }
            if (!this.f1191c.renameTo(this.f1190b)) {
                throw new IOException();
            }
            this.f1192d.delete();
            this.f1198j = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f1190b, true), AbstractC3023Wc.f1632a));
        } catch (Throwable th) {
            bufferedWriter2.close();
            throw th;
        }
    }

    /* JADX INFO: renamed from: b */
    public final synchronized C2841K3 m1283b(String key) {
        InputStream inputStream;
        if (this.f1198j != null) {
            if (f1187p.matcher(key).matches()) {
                C2826J3 c2826j3 = (C2826J3) this.f1199k.get(key);
                if (c2826j3 == null) {
                    return null;
                }
                if (!c2826j3.f1131c) {
                    return null;
                }
                InputStream[] inputStreamArr = new InputStream[this.f1196h];
                for (int i = 0; i < this.f1196h; i++) {
                    try {
                        inputStreamArr[i] = new FileInputStream(c2826j3.m1191a(i));
                    } catch (FileNotFoundException unused) {
                        if (this.f1195g != null) {
                            Intrinsics.checkNotNullParameter(key, "key");
                            Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("urlKey", key));
                            C3199ic c3199ic = C3199ic.f2193a;
                            C3199ic.m2248b("ResourceDiskCacheFileMissing", mapMutableMapOf, EnumC3259mc.f2349a);
                        }
                        for (int i2 = 0; i2 < this.f1196h && (inputStream = inputStreamArr[i2]) != null; i2++) {
                            AbstractC3023Wc.m1895a(inputStream);
                        }
                        return null;
                    }
                }
                this.f1200l++;
                this.f1198j.append((CharSequence) ("READ " + key + '\n'));
                if (m1282a()) {
                    this.f1202n.submit(this.f1203o);
                }
                return new C2841K3(inputStreamArr);
            }
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + key + "\"");
        }
        throw new IllegalStateException("cache is closed");
    }

    /* JADX INFO: renamed from: c */
    public final void m1286c(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf != -1) {
            int i = iIndexOf + 1;
            int iIndexOf2 = str.indexOf(32, i);
            if (iIndexOf2 == -1) {
                strSubstring = str.substring(i);
                if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                    this.f1199k.remove(strSubstring);
                    return;
                }
            } else {
                strSubstring = str.substring(i, iIndexOf2);
            }
            C2826J3 c2826j3 = (C2826J3) this.f1199k.get(strSubstring);
            if (c2826j3 == null) {
                c2826j3 = new C2826J3(this, strSubstring);
                this.f1199k.put(strSubstring, c2826j3);
            }
            if (iIndexOf2 != -1 && iIndexOf == 5 && str.startsWith("CLEAN")) {
                String[] strArrSplit = str.substring(iIndexOf2 + 1).split(StringUtils.SPACE);
                c2826j3.f1131c = true;
                c2826j3.f1132d = null;
                if (strArrSplit.length == c2826j3.f1133e.f1196h) {
                    for (int i2 = 0; i2 < strArrSplit.length; i2++) {
                        try {
                            c2826j3.f1130b[i2] = Long.parseLong(strArrSplit[i2]);
                        } catch (NumberFormatException unused) {
                            throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
                        }
                    }
                    return;
                }
                throw new IOException("unexpected journal line: " + Arrays.toString(strArrSplit));
            }
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                c2826j3.f1132d = new C2811I3(this, c2826j3);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException("unexpected journal line: ".concat(str));
                }
                return;
            }
        }
        throw new IOException("unexpected journal line: ".concat(str));
    }

    /* JADX INFO: renamed from: d */
    public final synchronized void m1288d(String str) {
        if (this.f1198j != null) {
            if (f1187p.matcher(str).matches()) {
                C2826J3 c2826j3 = (C2826J3) this.f1199k.get(str);
                if (c2826j3 != null && c2826j3.f1132d == null) {
                    for (int i = 0; i < this.f1196h; i++) {
                        File file = c2826j3.m1191a(i);
                        if (this.f1195g != null) {
                            Intrinsics.checkNotNullParameter(file, "file");
                            if (str != null && i == 0) {
                                String str2 = "";
                                try {
                                    String strM1894a = AbstractC3023Wc.m1894a(new InputStreamReader(new FileInputStream(file), AbstractC3023Wc.f1633b));
                                    Intrinsics.checkNotNullExpressionValue(strM1894a, "readFully(...)");
                                    str2 = strM1894a;
                                } catch (Exception unused) {
                                }
                                Map mapMutableMapOf = MapsKt.mutableMapOf(TuplesKt.m2729to("urlKey", str), TuplesKt.m2729to("url", str2));
                                C3199ic c3199ic = C3199ic.f2193a;
                                C3199ic.m2248b("ResourceDiskCacheFileEvicted", mapMutableMapOf, EnumC3259mc.f2349a);
                            }
                        }
                        if (file.exists() && !file.delete()) {
                            throw new IOException("failed to delete " + file);
                        }
                        long j = this.f1197i;
                        long[] jArr = c2826j3.f1130b;
                        this.f1197i = j - jArr[i];
                        jArr[i] = 0;
                    }
                    this.f1200l++;
                    this.f1198j.append((CharSequence) ("REMOVE " + str + '\n'));
                    this.f1199k.remove(str);
                    if (m1282a()) {
                        this.f1202n.submit(this.f1203o);
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
        }
        throw new IllegalStateException("cache is closed");
    }

    /* JADX INFO: renamed from: a */
    public final C2811I3 m1281a(String str) {
        synchronized (this) {
            if (this.f1198j != null) {
                if (f1187p.matcher(str).matches()) {
                    C2826J3 c2826j3 = (C2826J3) this.f1199k.get(str);
                    if (c2826j3 == null) {
                        c2826j3 = new C2826J3(this, str);
                        this.f1199k.put(str, c2826j3);
                    } else if (c2826j3.f1132d != null) {
                        return null;
                    }
                    C2811I3 c2811i3 = new C2811I3(this, c2826j3);
                    c2826j3.f1132d = c2811i3;
                    this.f1198j.write("DIRTY " + str + '\n');
                    this.f1198j.flush();
                    return c2811i3;
                }
                throw new IllegalArgumentException("keys must match regex [a-z0-9_-]{1,64}: \"" + str + "\"");
            }
            throw new IllegalStateException("cache is closed");
        }
    }

    /* JADX INFO: renamed from: a */
    public final boolean m1282a() {
        int i = this.f1200l;
        return i >= 2000 && i >= this.f1199k.size();
    }
}
