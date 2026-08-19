package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmr<T> implements zznd<T> {
    private final zzml zza;
    private final zznx<?, ?> zzb;
    private final boolean zzc;
    private final zzkr<?> zzd;

    @Override // com.google.android.gms.internal.measurement.zznd
    public final int zza(T t) {
        zznx<?, ?> zznxVar = this.zzb;
        int iZzb = zznxVar.zzb(zznxVar.zzd(t));
        return this.zzc ? iZzb + this.zzd.zza(t).zza() : iZzb;
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final int zzb(T t) {
        int iHashCode = this.zzb.zzd(t).hashCode();
        return this.zzc ? (iHashCode * 53) + this.zzd.zza(t).hashCode() : iHashCode;
    }

    static <T> zzmr<T> zza(zznx<?, ?> zznxVar, zzkr<?> zzkrVar, zzml zzmlVar) {
        return new zzmr<>(zznxVar, zzkrVar, zzmlVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final T zza() {
        zzml zzmlVar = this.zza;
        if (zzmlVar instanceof zzlc) {
            return (T) ((zzlc) zzmlVar).zzce();
        }
        return (T) zzmlVar.zzci().zzaj();
    }

    private zzmr(zznx<?, ?> zznxVar, zzkr<?> zzkrVar, zzml zzmlVar) {
        this.zzb = zznxVar;
        this.zzc = zzkrVar.zza(zzmlVar);
        this.zzd = zzkrVar;
        this.zza = zzmlVar;
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void zzd(T t) {
        this.zzb.zzf(t);
        this.zzd.zzc(t);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void zza(T t, T t2) {
        zznf.zza(this.zzb, t, t2);
        if (this.zzc) {
            zznf.zza(this.zzd, t, t2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x0085 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:? A[LOOP:0: B:45:0x000c->B:53:?, LOOP_END, SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r11, com.google.android.gms.internal.measurement.zzna r12, com.google.android.gms.internal.measurement.zzkp r13) throws java.io.IOException {
        /*
            r10 = this;
            com.google.android.gms.internal.measurement.zznx<?, ?> r0 = r10.zzb
            com.google.android.gms.internal.measurement.zzkr<?> r1 = r10.zzd
            java.lang.Object r2 = r0.zzc(r11)
            com.google.android.gms.internal.measurement.zzkv r3 = r1.zzb(r11)
        Lc:
            int r4 = r12.zzc()     // Catch: java.lang.Throwable -> L8e
            r5 = 2147483647(0x7fffffff, float:NaN)
            if (r4 != r5) goto L19
            r0.zzb(r11, r2)
            return
        L19:
            int r4 = r12.zzd()     // Catch: java.lang.Throwable -> L8e
            r6 = 11
            r7 = 0
            if (r4 == r6) goto L3f
            r5 = r4 & 7
            r6 = 2
            if (r5 != r6) goto L3a
            com.google.android.gms.internal.measurement.zzml r5 = r10.zza     // Catch: java.lang.Throwable -> L8e
            int r4 = r4 >>> 3
            java.lang.Object r4 = r1.zza(r13, r5, r4)     // Catch: java.lang.Throwable -> L8e
            if (r4 == 0) goto L35
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L35:
            boolean r4 = r0.zza(r2, r12, r7)     // Catch: java.lang.Throwable -> L8e
            goto L83
        L3a:
            boolean r4 = r12.zzt()     // Catch: java.lang.Throwable -> L8e
            goto L83
        L3f:
            r4 = 0
            r6 = r4
        L41:
            int r8 = r12.zzc()     // Catch: java.lang.Throwable -> L8e
            if (r8 == r5) goto L6f
            int r8 = r12.zzd()     // Catch: java.lang.Throwable -> L8e
            r9 = 16
            if (r8 != r9) goto L5a
            int r7 = r12.zzj()     // Catch: java.lang.Throwable -> L8e
            com.google.android.gms.internal.measurement.zzml r4 = r10.zza     // Catch: java.lang.Throwable -> L8e
            java.lang.Object r4 = r1.zza(r13, r4, r7)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L5a:
            r9 = 26
            if (r8 != r9) goto L69
            if (r4 == 0) goto L64
            r1.zza(r12, r4, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L41
        L64:
            com.google.android.gms.internal.measurement.zzjs r6 = r12.zzp()     // Catch: java.lang.Throwable -> L8e
            goto L41
        L69:
            boolean r8 = r12.zzt()     // Catch: java.lang.Throwable -> L8e
            if (r8 != 0) goto L41
        L6f:
            int r5 = r12.zzd()     // Catch: java.lang.Throwable -> L8e
            r8 = 12
            if (r5 != r8) goto L89
            if (r6 == 0) goto L82
            if (r4 == 0) goto L7f
            r1.zza(r6, r4, r13, r3)     // Catch: java.lang.Throwable -> L8e
            goto L82
        L7f:
            r0.zza(r2, r7, r6)     // Catch: java.lang.Throwable -> L8e
        L82:
            r4 = 1
        L83:
            if (r4 != 0) goto Lc
            r0.zzb(r11, r2)
            return
        L89:
            com.google.android.gms.internal.measurement.zzlk r12 = com.google.android.gms.internal.measurement.zzlk.zzb()     // Catch: java.lang.Throwable -> L8e
            throw r12     // Catch: java.lang.Throwable -> L8e
        L8e:
            r12 = move-exception
            r0.zzb(r11, r2)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmr.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzna, com.google.android.gms.internal.measurement.zzkp):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0099 A[EDGE_INSN: B:56:0x0099->B:34:0x0099 BREAK  A[LOOP:1: B:18:0x0053->B:61:0x0053], SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r10, byte[] r11, int r12, int r13, com.google.android.gms.internal.measurement.zzjn r14) throws java.io.IOException {
        /*
            r9 = this;
            r0 = r10
            com.google.android.gms.internal.measurement.zzlc r0 = (com.google.android.gms.internal.measurement.zzlc) r0
            com.google.android.gms.internal.measurement.zznw r1 = r0.zzb
            com.google.android.gms.internal.measurement.zznw r2 = com.google.android.gms.internal.measurement.zznw.zzc()
            if (r1 != r2) goto L11
            com.google.android.gms.internal.measurement.zznw r1 = com.google.android.gms.internal.measurement.zznw.zzd()
            r0.zzb = r1
        L11:
            com.google.android.gms.internal.measurement.zzlc$zzd r10 = (com.google.android.gms.internal.measurement.zzlc.zzd) r10
            r10.zza()
            r10 = 0
            r0 = r10
        L18:
            if (r12 >= r13) goto La4
            int r4 = com.google.android.gms.internal.measurement.zzjo.zzc(r11, r12, r14)
            int r2 = r14.zza
            r12 = 11
            r3 = 2
            if (r2 == r12) goto L51
            r12 = r2 & 7
            if (r12 != r3) goto L4c
            com.google.android.gms.internal.measurement.zzkr<?> r12 = r9.zzd
            com.google.android.gms.internal.measurement.zzkp r0 = r14.zzd
            com.google.android.gms.internal.measurement.zzml r3 = r9.zza
            int r5 = r2 >>> 3
            java.lang.Object r12 = r12.zza(r0, r3, r5)
            r0 = r12
            com.google.android.gms.internal.measurement.zzlc$zzf r0 = (com.google.android.gms.internal.measurement.zzlc.zzf) r0
            if (r0 != 0) goto L43
            r3 = r11
            r5 = r13
            r6 = r1
            r7 = r14
            int r12 = com.google.android.gms.internal.measurement.zzjo.zza(r2, r3, r4, r5, r6, r7)
            goto L18
        L43:
            com.google.android.gms.internal.measurement.zzmz.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L4c:
            int r12 = com.google.android.gms.internal.measurement.zzjo.zza(r2, r11, r4, r13, r14)
            goto L18
        L51:
            r12 = 0
            r2 = r10
        L53:
            if (r4 >= r13) goto L99
            int r4 = com.google.android.gms.internal.measurement.zzjo.zzc(r11, r4, r14)
            int r5 = r14.zza
            int r6 = r5 >>> 3
            r7 = r5 & 7
            if (r6 == r3) goto L7b
            r8 = 3
            if (r6 == r8) goto L65
            goto L90
        L65:
            if (r0 != 0) goto L72
            if (r7 != r3) goto L90
            int r4 = com.google.android.gms.internal.measurement.zzjo.zza(r11, r4, r14)
            java.lang.Object r2 = r14.zzc
            com.google.android.gms.internal.measurement.zzjs r2 = (com.google.android.gms.internal.measurement.zzjs) r2
            goto L53
        L72:
            com.google.android.gms.internal.measurement.zzmz.zza()
            java.lang.NoSuchMethodError r10 = new java.lang.NoSuchMethodError
            r10.<init>()
            throw r10
        L7b:
            if (r7 != 0) goto L90
            int r4 = com.google.android.gms.internal.measurement.zzjo.zzc(r11, r4, r14)
            int r12 = r14.zza
            com.google.android.gms.internal.measurement.zzkr<?> r0 = r9.zzd
            com.google.android.gms.internal.measurement.zzkp r5 = r14.zzd
            com.google.android.gms.internal.measurement.zzml r6 = r9.zza
            java.lang.Object r0 = r0.zza(r5, r6, r12)
            com.google.android.gms.internal.measurement.zzlc$zzf r0 = (com.google.android.gms.internal.measurement.zzlc.zzf) r0
            goto L53
        L90:
            r6 = 12
            if (r5 == r6) goto L99
            int r4 = com.google.android.gms.internal.measurement.zzjo.zza(r5, r11, r4, r13, r14)
            goto L53
        L99:
            if (r2 == 0) goto La1
            int r12 = r12 << 3
            r12 = r12 | r3
            r1.zza(r12, r2)
        La1:
            r12 = r4
            goto L18
        La4:
            if (r12 != r13) goto La7
            return
        La7:
            com.google.android.gms.internal.measurement.zzlk r10 = com.google.android.gms.internal.measurement.zzlk.zzg()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmr.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzjn):void");
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void zza(T t, zzos zzosVar) throws IOException {
        Iterator itZzd = this.zzd.zza(t).zzd();
        while (itZzd.hasNext()) {
            Map.Entry entry = (Map.Entry) itZzd.next();
            zzkx zzkxVar = (zzkx) entry.getKey();
            if (zzkxVar.zzc() != zzop.MESSAGE || zzkxVar.zze() || zzkxVar.zzd()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof zzlo) {
                zzosVar.zza(zzkxVar.zza(), (Object) ((zzlo) entry).zza().zzb());
            } else {
                zzosVar.zza(zzkxVar.zza(), entry.getValue());
            }
        }
        zznx<?, ?> zznxVar = this.zzb;
        zznxVar.zza(zznxVar.zzd(t), zzosVar);
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final boolean zzb(T t, T t2) {
        if (!this.zzb.zzd(t).equals(this.zzb.zzd(t2))) {
            return false;
        }
        if (this.zzc) {
            return this.zzd.zza(t).equals(this.zzd.zza(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final boolean zze(T t) {
        return this.zzd.zza(t).zzg();
    }
}
