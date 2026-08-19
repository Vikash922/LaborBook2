package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzatt {
    private final ListenableFuture zza;
    private final zzavb zzb;
    private final zzarv zzc;

    public zzatt(final Context context, Executor executor, zzarv zzarvVar, zzavb zzavbVar) {
        this.zzb = zzavbVar;
        this.zzc = zzarvVar;
        this.zza = zzgbs.zzj(new Callable() { // from class: com.google.android.gms.internal.ads.zzatr
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.zza.zzd(context);
            }
        }, executor);
    }

    private static String zzc(Context context) {
        File file = new File(context.getPackageResourcePath());
        if (!file.exists() || !file.canRead()) {
            return "";
        }
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                byte[] bArr = new byte[16384];
                MessageDigest messageDigest = MessageDigest.getInstance("SHA256");
                for (int i = fileInputStream.read(bArr); i != -1; i = fileInputStream.read(bArr)) {
                    messageDigest.update(bArr, 0, i);
                }
                zzfzj zzfzjVarZzf = zzfzj.zzi().zzf();
                byte[] bArrDigest = messageDigest.digest();
                String strZzj = zzfzjVarZzf.zzj(bArrDigest, 0, bArrDigest.length);
                fileInputStream.close();
                return strZzj;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException | UnsupportedOperationException | NoSuchAlgorithmException unused) {
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0042  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String zzd(android.content.Context r12) {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatt.zzd(android.content.Context):java.lang.String");
    }

    public final ListenableFuture zza() {
        return this.zza;
    }
}
