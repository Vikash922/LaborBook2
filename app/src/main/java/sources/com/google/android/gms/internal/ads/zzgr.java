package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.webkit.ProxyConfig;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgr extends zzfx implements zzgz {
    private final boolean zza;
    private final int zzb;
    private final int zzc;
    private final String zzd;
    private final zzgy zze;
    private final zzgy zzf;
    private zzgj zzg;
    private HttpURLConnection zzh;
    private InputStream zzi;
    private boolean zzj;
    private int zzk;
    private long zzl;
    private long zzm;

    /* synthetic */ zzgr(String str, int i, int i2, boolean z, boolean z2, zzgy zzgyVar, zzftx zzftxVar, boolean z3, zzgq zzgqVar) {
        super(true);
        this.zzd = str;
        this.zzb = i;
        this.zzc = i2;
        this.zza = z;
        this.zze = zzgyVar;
        this.zzf = new zzgy();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.net.HttpURLConnection zzk(java.net.URL r3, int r4, byte[] r5, long r6, long r8, boolean r10, boolean r11, java.util.Map r12) throws java.io.IOException {
        /*
            r2 = this;
            java.net.URLConnection r3 = r3.openConnection()
            java.net.HttpURLConnection r3 = (java.net.HttpURLConnection) r3
            int r4 = r2.zzb
            r3.setConnectTimeout(r4)
            int r4 = r2.zzc
            r3.setReadTimeout(r4)
            java.util.HashMap r4 = new java.util.HashMap
            r4.<init>()
            com.google.android.gms.internal.ads.zzgy r5 = r2.zze
            java.util.Map r5 = r5.zza()
            r4.putAll(r5)
            com.google.android.gms.internal.ads.zzgy r5 = r2.zzf
            java.util.Map r5 = r5.zza()
            r4.putAll(r5)
            r4.putAll(r12)
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L32:
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L4e
            java.lang.Object r5 = r4.next()
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r12 = r5.getKey()
            java.lang.String r12 = (java.lang.String) r12
            java.lang.Object r5 = r5.getValue()
            java.lang.String r5 = (java.lang.String) r5
            r3.setRequestProperty(r12, r5)
            goto L32
        L4e:
            r4 = 0
            int r12 = (r6 > r4 ? 1 : (r6 == r4 ? 0 : -1))
            r0 = -1
            if (r12 != 0) goto L5d
            int r6 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r6 != 0) goto L5c
            r4 = 0
            goto L79
        L5c:
            r6 = r4
        L5d:
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            java.lang.String r5 = "bytes="
            r4.<init>(r5)
            r4.append(r6)
            java.lang.String r5 = "-"
            r4.append(r5)
            int r5 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r5 == 0) goto L75
            long r6 = r6 + r8
            long r6 = r6 + r0
            r4.append(r6)
        L75:
            java.lang.String r4 = r4.toString()
        L79:
            if (r4 == 0) goto L80
            java.lang.String r5 = "Range"
            r3.setRequestProperty(r5, r4)
        L80:
            java.lang.String r4 = r2.zzd
            if (r4 == 0) goto L89
            java.lang.String r5 = "User-Agent"
            r3.setRequestProperty(r5, r4)
        L89:
            r4 = 1
            if (r4 == r10) goto L8f
            java.lang.String r4 = "identity"
            goto L91
        L8f:
            java.lang.String r4 = "gzip"
        L91:
            java.lang.String r5 = "Accept-Encoding"
            r3.setRequestProperty(r5, r4)
            r3.setInstanceFollowRedirects(r11)
            r4 = 0
            r3.setDoOutput(r4)
            int r4 = com.google.android.gms.internal.ads.zzgj.zzh
            java.lang.String r4 = "GET"
            r3.setRequestMethod(r4)
            r3.connect()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgr.zzk(java.net.URL, int, byte[], long, long, boolean, boolean, java.util.Map):java.net.HttpURLConnection");
    }

    private final URL zzl(URL url, String str, zzgj zzgjVar) throws zzgv {
        if (str == null) {
            throw new zzgv("Null location redirect", zzgjVar, 2001, 1);
        }
        try {
            URL url2 = new URL(url, str);
            String protocol = url2.getProtocol();
            if (!"https".equals(protocol) && !ProxyConfig.MATCH_HTTP.equals(protocol)) {
                throw new zzgv("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), zzgjVar, 2001, 1);
            }
            if (this.zza || protocol.equals(url.getProtocol())) {
                return url2;
            }
            throw new zzgv("Disallowed cross-protocol redirect (" + url.getProtocol() + " to " + protocol + ")", zzgjVar, 2001, 1);
        } catch (MalformedURLException e) {
            throw new zzgv(e, zzgjVar, 2001, 1);
        }
    }

    private final void zzm() {
        HttpURLConnection httpURLConnection = this.zzh;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzdx.zzd("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002b  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x002c A[Catch: IOException -> 0x0036, TRY_LEAVE, TryCatch #0 {IOException -> 0x0036, blocks: (B:4:0x0004, B:6:0x000d, B:9:0x0018, B:10:0x001e, B:13:0x002c), top: B:18:0x0004 }] */
    @Override // com.google.android.gms.internal.ads.zzl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(byte[] r7, int r8, int r9) throws com.google.android.gms.internal.ads.zzgv {
        /*
            r6 = this;
            if (r9 != 0) goto L4
            r7 = 0
            goto L35
        L4:
            long r0 = r6.zzl     // Catch: java.io.IOException -> L36
            r2 = -1
            int r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            r3 = -1
            if (r2 == 0) goto L1e
            long r4 = r6.zzm     // Catch: java.io.IOException -> L36
            long r0 = r0 - r4
            r4 = 0
            int r2 = (r0 > r4 ? 1 : (r0 == r4 ? 0 : -1))
            if (r2 != 0) goto L18
        L16:
            r7 = r3
            goto L35
        L18:
            long r4 = (long) r9     // Catch: java.io.IOException -> L36
            long r0 = java.lang.Math.min(r4, r0)     // Catch: java.io.IOException -> L36
            int r9 = (int) r0     // Catch: java.io.IOException -> L36
        L1e:
            java.io.InputStream r0 = r6.zzi     // Catch: java.io.IOException -> L36
            int r1 = com.google.android.gms.internal.ads.zzeu.zza     // Catch: java.io.IOException -> L36
            r1 = r0
            java.io.InputStream r1 = (java.io.InputStream) r1     // Catch: java.io.IOException -> L36
            int r7 = r0.read(r7, r8, r9)     // Catch: java.io.IOException -> L36
            if (r7 != r3) goto L2c
            goto L16
        L2c:
            long r8 = r6.zzm     // Catch: java.io.IOException -> L36
            long r0 = (long) r7     // Catch: java.io.IOException -> L36
            long r8 = r8 + r0
            r6.zzm = r8     // Catch: java.io.IOException -> L36
            r6.zzg(r7)     // Catch: java.io.IOException -> L36
        L35:
            return r7
        L36:
            r7 = move-exception
            com.google.android.gms.internal.ads.zzgj r8 = r6.zzg
            int r9 = com.google.android.gms.internal.ads.zzeu.zza
            r9 = r8
            com.google.android.gms.internal.ads.zzgj r9 = (com.google.android.gms.internal.ads.zzgj) r9
            r9 = 2
            com.google.android.gms.internal.ads.zzgv r7 = com.google.android.gms.internal.ads.zzgv.zza(r7, r8, r9)
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgr.zza(byte[], int, int):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba  */
    @Override // com.google.android.gms.internal.ads.zzge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzgj r25) throws com.google.android.gms.internal.ads.zzgv {
        /*
            Method dump skipped, instruction units count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgr.zzb(com.google.android.gms.internal.ads.zzgj):long");
    }

    @Override // com.google.android.gms.internal.ads.zzge
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.zzh;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        zzgj zzgjVar = this.zzg;
        if (zzgjVar != null) {
            return zzgjVar.zza;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzge
    public final void zzd() throws zzgv {
        try {
            InputStream inputStream = this.zzi;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    zzgj zzgjVar = this.zzg;
                    int i = zzeu.zza;
                    throw new zzgv(e, zzgjVar, 2000, 3);
                }
            }
        } finally {
            this.zzi = null;
            zzm();
            if (this.zzj) {
                this.zzj = false;
                zzh();
            }
            this.zzh = null;
            this.zzg = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfx, com.google.android.gms.internal.ads.zzge
    public final Map zze() {
        HttpURLConnection httpURLConnection = this.zzh;
        return httpURLConnection == null ? zzfwz.zzd() : new zzgp(httpURLConnection.getHeaderFields());
    }
}
