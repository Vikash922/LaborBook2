package com.google.android.gms.internal.ads;

import java.io.File;
import java.text.DecimalFormat;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzccv extends zzccs {
    public static final /* synthetic */ int zzd = 0;
    private static final Set zze = Collections.synchronizedSet(new HashSet());
    private static final DecimalFormat zzf = new DecimalFormat("#,###");
    private File zzg;
    private boolean zzh;

    public zzccv(zzcbg zzcbgVar) {
        super(zzcbgVar);
        File cacheDir = this.zza.getCacheDir();
        if (cacheDir == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Context.getCacheDir() returned null");
            return;
        }
        File file = new File(zzfpc.zza(zzfpb.zza(), cacheDir, "admobVideoStreams"));
        this.zzg = file;
        if (!file.isDirectory() && !this.zzg.mkdirs()) {
            String strValueOf = String.valueOf(this.zzg.getAbsolutePath());
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create preload cache directory at ".concat(strValueOf));
            this.zzg = null;
            return;
        }
        if (this.zzg.setReadable(true, false) && this.zzg.setExecutable(true, false)) {
            return;
        }
        String strValueOf2 = String.valueOf(this.zzg.getAbsolutePath());
        int i3 = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not set cache file permissions at ".concat(strValueOf2));
        this.zzg = null;
    }

    private final File zza(File file) {
        return new File(zzfpc.zza(zzfpb.zza(), this.zzg, String.valueOf(file.getName()).concat(".done")));
    }

    @Override // com.google.android.gms.internal.ads.zzccs
    public final void zzf() {
        this.zzh = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:124:0x035a, code lost:
    
        r28 = r14;
        r24 = r15;
        r14 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x035f, code lost:
    
        r19.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0367, code lost:
    
        if (com.google.android.gms.ads.internal.util.zze.zzm(3) == false) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0369, code lost:
    
        com.google.android.gms.ads.internal.util.client.zzo.zze("Preloaded " + r14.format(r3) + " bytes from " + r31);
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x038a, code lost:
    
        r12.setReadable(true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0393, code lost:
    
        if (r0.isFile() == false) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0395, code lost:
    
        r0.setLastModified(java.lang.System.currentTimeMillis());
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x039d, code lost:
    
        r0.createNewFile();
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:163:0x03da  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0421  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017d A[Catch: RuntimeException -> 0x03cc, IOException | RuntimeException -> 0x03ce, TryCatch #19 {IOException | RuntimeException -> 0x03ce, blocks: (B:51:0x0115, B:53:0x0129, B:69:0x0177, B:71:0x017d, B:73:0x01a0, B:75:0x01b9, B:77:0x01f5), top: B:197:0x0115 }] */
    /* JADX WARN: Removed duplicated region for block: B:73:0x01a0 A[Catch: RuntimeException -> 0x03cc, IOException | RuntimeException -> 0x03ce, TryCatch #19 {IOException | RuntimeException -> 0x03ce, blocks: (B:51:0x0115, B:53:0x0129, B:69:0x0177, B:71:0x017d, B:73:0x01a0, B:75:0x01b9, B:77:0x01f5), top: B:197:0x0115 }] */
    @Override // com.google.android.gms.internal.ads.zzccs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzt(final java.lang.String r31) {
        /*
            Method dump skipped, instruction units count: 1104
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzccv.zzt(java.lang.String):boolean");
    }
}
