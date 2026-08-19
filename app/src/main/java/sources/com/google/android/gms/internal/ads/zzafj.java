package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.ItemTouchHelper;
import java.io.IOException;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzafj implements zzadc {
    private zzadf zzf;
    private boolean zzh;
    private long zzi;
    private int zzj;
    private int zzk;
    private int zzl;
    private long zzm;
    private boolean zzn;
    private zzafi zzo;
    private zzafn zzp;
    private final zzek zza = new zzek(4);
    private final zzek zzb = new zzek(9);
    private final zzek zzc = new zzek(11);
    private final zzek zzd = new zzek();
    private final zzafk zze = new zzafk();
    private int zzg = 1;

    private final zzek zza(zzadd zzaddVar) throws IOException {
        zzek zzekVar = this.zzd;
        if (this.zzl > zzekVar.zzb()) {
            int iZzb = zzekVar.zzb();
            zzekVar.zzJ(new byte[Math.max(iZzb + iZzb, this.zzl)], 0);
        } else {
            zzekVar.zzL(0);
        }
        zzekVar.zzK(this.zzl);
        zzaddVar.zzi(zzekVar.zzN(), 0, this.zzl);
        return zzekVar;
    }

    @RequiresNonNull({"extractorOutput"})
    private final void zzg() {
        if (this.zzn) {
            return;
        }
        this.zzf.zzP(new zzaea(-9223372036854775807L, 0L));
        this.zzn = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0009 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzadc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzadd r17, com.google.android.gms.internal.ads.zzady r18) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzafj.zzb(com.google.android.gms.internal.ads.zzadd, com.google.android.gms.internal.ads.zzady):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ zzadc zzc() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final /* synthetic */ List zzd() {
        return zzfww.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zze(zzadf zzadfVar) {
        this.zzf = zzadfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.zzg = 1;
            this.zzh = false;
        } else {
            this.zzg = 3;
        }
        this.zzj = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzadc
    public final boolean zzi(zzadd zzaddVar) throws IOException {
        zzek zzekVar = this.zza;
        zzacr zzacrVar = (zzacr) zzaddVar;
        zzacrVar.zzm(zzekVar.zzN(), 0, 3, false);
        zzekVar.zzL(0);
        if (zzekVar.zzo() != 4607062) {
            return false;
        }
        zzacrVar.zzm(zzekVar.zzN(), 0, 2, false);
        zzekVar.zzL(0);
        if ((zzekVar.zzq() & ItemTouchHelper.Callback.DEFAULT_SWIPE_ANIMATION_DURATION) != 0) {
            return false;
        }
        zzacrVar.zzm(zzekVar.zzN(), 0, 4, false);
        zzekVar.zzL(0);
        int iZzg = zzekVar.zzg();
        zzaddVar.zzj();
        zzacrVar.zzl(iZzg, false);
        zzacrVar.zzm(zzekVar.zzN(), 0, 4, false);
        zzekVar.zzL(0);
        return zzekVar.zzg() == 0;
    }
}
