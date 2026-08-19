package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzub implements zzws {
    public final zzws zza;
    final /* synthetic */ zzuc zzb;
    private boolean zzc;

    public zzub(zzuc zzucVar, zzws zzwsVar) {
        this.zzb = zzucVar;
        this.zza = zzwsVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    @Override // com.google.android.gms.internal.ads.zzws
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzkp r12, com.google.android.gms.internal.ads.zzhn r13, int r14) {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzuc r0 = r11.zzb
            boolean r1 = r0.zzq()
            r2 = -3
            if (r1 == 0) goto La
            return r2
        La:
            boolean r1 = r11.zzc
            r3 = 4
            r4 = -4
            if (r1 == 0) goto L14
            r13.zzc(r3)
            return r4
        L14:
            long r5 = r0.zzb()
            com.google.android.gms.internal.ads.zzws r1 = r11.zza
            int r14 = r1.zza(r12, r13, r14)
            r1 = -5
            r7 = -9223372036854775808
            if (r14 != r1) goto L4f
            com.google.android.gms.internal.ads.zzz r13 = r12.zza
            r13.getClass()
            r14 = r13
            com.google.android.gms.internal.ads.zzz r14 = (com.google.android.gms.internal.ads.zzz) r14
            int r14 = r13.zzH
            r2 = 0
            if (r14 != 0) goto L35
            int r14 = r13.zzI
            if (r14 == 0) goto L4e
            r14 = r2
        L35:
            long r3 = r0.zzb
            int r0 = (r3 > r7 ? 1 : (r3 == r7 ? 0 : -1))
            if (r0 == 0) goto L3c
            goto L3e
        L3c:
            int r2 = r13.zzI
        L3e:
            com.google.android.gms.internal.ads.zzx r13 = r13.zzb()
            r13.zzI(r14)
            r13.zzJ(r2)
            com.google.android.gms.internal.ads.zzz r13 = r13.zzaj()
            r12.zza = r13
        L4e:
            return r1
        L4f:
            long r0 = r0.zzb
            int r12 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r12 == 0) goto L71
            if (r14 != r4) goto L5d
            long r9 = r13.zze
            int r12 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
            if (r12 >= 0) goto L67
        L5d:
            if (r14 != r2) goto L71
            int r12 = (r5 > r7 ? 1 : (r5 == r7 ? 0 : -1))
            if (r12 != 0) goto L71
            boolean r12 = r13.zzd
            if (r12 != 0) goto L71
        L67:
            r13.zzb()
            r13.zzc(r3)
            r12 = 1
            r11.zzc = r12
            return r4
        L71:
            return r14
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzub.zza(com.google.android.gms.internal.ads.zzkp, com.google.android.gms.internal.ads.zzhn, int):int");
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final int zzb(long j) {
        if (this.zzb.zzq()) {
            return -3;
        }
        return this.zza.zzb(j);
    }

    public final void zzc() {
        this.zzc = false;
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final void zzd() throws IOException {
        this.zza.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzws
    public final boolean zze() {
        return !this.zzb.zzq() && this.zza.zze();
    }
}
