package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.collection.ArrayMap;
import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.core.events.Identify;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.CollectionUtils;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzfx;
import com.google.android.gms.internal.measurement.zzgn;
import com.google.android.gms.internal.measurement.zzox;
import com.google.android.gms.internal.measurement.zzpd;
import com.google.android.gms.internal.measurement.zzpo;
import com.google.android.gms.internal.measurement.zzqt;
import com.google.android.gms.internal.measurement.zzrl;
import com.google.android.gms.internal.measurement.zzrw;
import com.google.android.gms.measurement.internal.zzjc;
import com.google.common.net.HttpHeaders;
import com.google.firebase.messaging.Constants;
import com.itextpdf.kernel.xmp.XMPError;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.math.BigInteger;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.nio.channels.OverlappingFileLockException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.shadow.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public class zznv implements zzja {
    private static volatile zznv zza;
    private List<Long> zzaa;
    private long zzab;
    private final Map<String, zzjc> zzac;
    private final Map<String, zzaz> zzad;
    private final Map<String, zzb> zzae;
    private zzlh zzaf;
    private String zzag;
    private final zzoo zzah;
    private zzhg zzb;
    private zzgp zzc;
    private zzam zzd;
    private zzgs zze;
    private zznm zzf;
    private zzv zzg;
    private final zzol zzh;
    private zzlf zzi;
    private zzms zzj;
    private final zznq zzk;
    private zzhd zzl;
    private final zzhw zzm;
    private boolean zzn;
    private boolean zzo;
    private long zzp;
    private List<Runnable> zzq;
    private final Set<String> zzr;
    private int zzs;
    private int zzt;
    private boolean zzu;
    private boolean zzv;
    private boolean zzw;
    private FileLock zzx;
    private FileChannel zzy;
    private List<Long> zzz;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    private class zza implements zzat {
        zzgn.zzk zza;
        List<Long> zzb;
        List<zzgn.zzf> zzc;
        private long zzd;

        private static long zza(zzgn.zzf zzfVar) {
            return ((zzfVar.zzd() / 1000) / 60) / 60;
        }

        private zza() {
        }

        @Override // com.google.android.gms.measurement.internal.zzat
        public final void zza(zzgn.zzk zzkVar) {
            Preconditions.checkNotNull(zzkVar);
            this.zza = zzkVar;
        }

        @Override // com.google.android.gms.measurement.internal.zzat
        public final boolean zza(long j, zzgn.zzf zzfVar) {
            Preconditions.checkNotNull(zzfVar);
            if (this.zzc == null) {
                this.zzc = new ArrayList();
            }
            if (this.zzb == null) {
                this.zzb = new ArrayList();
            }
            if (!this.zzc.isEmpty() && zza(this.zzc.get(0)) != zza(zzfVar)) {
                return false;
            }
            long jZzcb = this.zzd + ((long) zzfVar.zzcb());
            zznv.this.zze();
            if (jZzcb >= Math.max(0, zzbj.zzi.zza(null).intValue())) {
                return false;
            }
            this.zzd = jZzcb;
            this.zzc.add(zzfVar);
            this.zzb.add(Long.valueOf(j));
            int size = this.zzc.size();
            zznv.this.zze();
            return size < Math.max(1, zzbj.zzj.zza(null).intValue());
        }
    }

    private final int zza(String str, zzai zzaiVar) {
        zzh zzhVarZze;
        zzjb zzjbVarZza;
        if (this.zzb.zzb(str) == null) {
            zzaiVar.zza(zzjc.zza.AD_PERSONALIZATION, zzal.FAILSAFE);
            return 1;
        }
        if (zzox.zza() && zze().zza(zzbj.zzcw) && (zzhVarZze = zzf().zze(str)) != null && zzd.zza(zzhVarZze.zzak()).zza() == zzjb.POLICY && (zzjbVarZza = this.zzb.zza(str, zzjc.zza.AD_PERSONALIZATION)) != zzjb.UNINITIALIZED) {
            zzaiVar.zza(zzjc.zza.AD_PERSONALIZATION, zzal.REMOTE_ENFORCED_DEFAULT);
            return zzjbVarZza == zzjb.GRANTED ? 0 : 1;
        }
        zzaiVar.zza(zzjc.zza.AD_PERSONALIZATION, zzal.REMOTE_DEFAULT);
        return this.zzb.zzc(str, zzjc.zza.AD_PERSONALIZATION) ? 0 : 1;
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    private class zzb {
        final String zza;
        long zzb;

        private zzb(zznv zznvVar) {
            this(zznvVar, zznvVar.zzq().zzp());
        }

        private zzb(zznv zznvVar, String str) {
            this.zza = str;
            this.zzb = zznvVar.zzb().elapsedRealtime();
        }
    }

    private final int zza(FileChannel fileChannel) {
        zzl().zzt();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzj().zzg().zza("Bad channel to read from");
            return 0;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        try {
            fileChannel.position(0L);
            int i = fileChannel.read(byteBufferAllocate);
            if (i == 4) {
                byteBufferAllocate.flip();
                return byteBufferAllocate.getInt();
            }
            if (i != -1) {
                zzj().zzu().zza("Unexpected data length. Bytes read", Integer.valueOf(i));
            }
            return 0;
        } catch (IOException e) {
            zzj().zzg().zza("Failed to read from channel", e);
            return 0;
        }
    }

    private final long zzx() {
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        zzms zzmsVar = this.zzj;
        zzmsVar.zzal();
        zzmsVar.zzt();
        long jZza = zzmsVar.zzf.zza();
        if (jZza == 0) {
            jZza = ((long) zzmsVar.zzq().zzv().nextInt(86400000)) + 1;
            zzmsVar.zzf.zza(jZza);
        }
        return ((((jCurrentTimeMillis + jZza) / 1000) / 60) / 60) / 24;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final Context zza() {
        return this.zzm.zza();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v4 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    final Bundle zza(String str) {
        ?? Zza;
        zzl().zzt();
        zzs();
        if (zzi().zzb(str) == null) {
            return null;
        }
        Bundle bundle = new Bundle();
        zzjc zzjcVarZzb = zzb(str);
        bundle.putAll(zzjcVarZzb.zzb());
        bundle.putAll(zza(str, zzd(str), zzjcVarZzb, new zzai()).zzb());
        if (zzp().zzc(str)) {
            Zza = 1;
        } else {
            zzom zzomVarZze = zzf().zze(str, "_npa");
            if (zzomVarZze != null) {
                Zza = zzomVarZze.zze.equals(1L);
            } else {
                Zza = zza(str, new zzai());
            }
        }
        bundle.putString("ad_personalization", Zza == 1 ? "denied" : "granted");
        return bundle;
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final Clock zzb() {
        return ((zzhw) Preconditions.checkNotNull(this.zzm)).zzb();
    }

    /* JADX WARN: Removed duplicated region for block: B:103:0x0260  */
    /* JADX WARN: Removed duplicated region for block: B:105:0x0266  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0179  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0190  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01c1  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final com.google.android.gms.measurement.internal.zzh zza(com.google.android.gms.measurement.internal.zzp r13) {
        /*
            Method dump skipped, instruction units count: 622
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(com.google.android.gms.measurement.internal.zzp):com.google.android.gms.measurement.internal.zzh");
    }

    private final zzp zzc(String str) {
        zzh zzhVarZze = zzf().zze(str);
        if (zzhVarZze == null || TextUtils.isEmpty(zzhVarZze.zzaf())) {
            zzj().zzc().zza("No app data available; dropping", str);
            return null;
        }
        Boolean boolZza = zza(zzhVarZze);
        if (boolZza != null && !boolZza.booleanValue()) {
            zzj().zzg().zza("App version does not match; dropping. appId", zzgi.zza(str));
            return null;
        }
        return new zzp(str, zzhVarZze.zzah(), zzhVarZze.zzaf(), zzhVarZze.zze(), zzhVarZze.zzae(), zzhVarZze.zzq(), zzhVarZze.zzn(), (String) null, zzhVarZze.zzar(), false, zzhVarZze.zzag(), zzhVarZze.zzd(), 0L, 0, zzhVarZze.zzaq(), false, zzhVarZze.zzaa(), zzhVarZze.zzx(), zzhVarZze.zzo(), zzhVarZze.zzan(), (String) null, zzb(str).zzh(), "", (String) null, zzhVarZze.zzat(), zzhVarZze.zzw(), zzb(str).zza(), zzd(str).zzf(), zzhVarZze.zza(), zzhVarZze.zzf(), zzhVarZze.zzam(), zzhVarZze.zzak());
    }

    public final zzv zzc() {
        return (zzv) zza(this.zzg);
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final zzac zzd() {
        return this.zzm.zzd();
    }

    public final zzah zze() {
        return ((zzhw) Preconditions.checkNotNull(this.zzm)).zzf();
    }

    public final zzam zzf() {
        return (zzam) zza(this.zzd);
    }

    private final zzaz zza(String str, zzaz zzazVar, zzjc zzjcVar, zzai zzaiVar) {
        zzjb zzjbVarZza;
        zzjb zzjbVar;
        int iZza = 90;
        boolean z = true;
        if (zzi().zzb(str) == null) {
            if (zzazVar.zzc() == zzjb.DENIED) {
                iZza = zzazVar.zza();
                zzaiVar.zza(zzjc.zza.AD_USER_DATA, iZza);
            } else {
                zzaiVar.zza(zzjc.zza.AD_USER_DATA, zzal.FAILSAFE);
            }
            return new zzaz((Boolean) false, iZza, (Boolean) true, Identify.UNSET_VALUE);
        }
        zzjb zzjbVarZzc = zzazVar.zzc();
        if (zzjbVarZzc == zzjb.GRANTED || zzjbVarZzc == zzjb.DENIED) {
            iZza = zzazVar.zza();
            zzaiVar.zza(zzjc.zza.AD_USER_DATA, iZza);
        } else if (zzox.zza() && zze().zza(zzbj.zzcw)) {
            if (zzjbVarZzc == zzjb.POLICY && (zzjbVarZza = this.zzb.zza(str, zzjc.zza.AD_USER_DATA)) != zzjb.UNINITIALIZED) {
                zzaiVar.zza(zzjc.zza.AD_USER_DATA, zzal.REMOTE_ENFORCED_DEFAULT);
            } else {
                zzjc.zza zzaVarZzb = this.zzb.zzb(str, zzjc.zza.AD_USER_DATA);
                zzjb zzjbVarZzc2 = zzjcVar.zzc();
                if (zzjbVarZzc2 != zzjb.GRANTED && zzjbVarZzc2 != zzjb.DENIED) {
                    z = false;
                }
                if (zzaVarZzb == zzjc.zza.AD_STORAGE && z) {
                    zzaiVar.zza(zzjc.zza.AD_USER_DATA, zzal.REMOTE_DELEGATION);
                    zzjbVarZzc = zzjbVarZzc2;
                } else {
                    zzaiVar.zza(zzjc.zza.AD_USER_DATA, zzal.REMOTE_DEFAULT);
                    if (this.zzb.zzc(str, zzjc.zza.AD_USER_DATA)) {
                        zzjbVarZza = zzjb.GRANTED;
                    } else {
                        zzjbVarZza = zzjb.DENIED;
                    }
                }
            }
            zzjbVarZzc = zzjbVarZza;
        } else {
            if (zzjbVarZzc != zzjb.UNINITIALIZED && zzjbVarZzc != zzjb.POLICY) {
                z = false;
            }
            Preconditions.checkArgument(z);
            zzjc.zza zzaVarZzb2 = this.zzb.zzb(str, zzjc.zza.AD_USER_DATA);
            Boolean boolZze = zzjcVar.zze();
            if (zzaVarZzb2 == zzjc.zza.AD_STORAGE && boolZze != null) {
                if (boolZze.booleanValue()) {
                    zzjbVar = zzjb.GRANTED;
                } else {
                    zzjbVar = zzjb.DENIED;
                }
                zzjbVarZzc = zzjbVar;
                zzaiVar.zza(zzjc.zza.AD_USER_DATA, zzal.REMOTE_DELEGATION);
            }
            if (zzjbVarZzc == zzjb.UNINITIALIZED) {
                if (this.zzb.zzc(str, zzjc.zza.AD_USER_DATA)) {
                    zzjbVarZza = zzjb.GRANTED;
                } else {
                    zzjbVarZza = zzjb.DENIED;
                }
                zzaiVar.zza(zzjc.zza.AD_USER_DATA, zzal.REMOTE_DEFAULT);
                zzjbVarZzc = zzjbVarZza;
            }
        }
        boolean zZzn = this.zzb.zzn(str);
        SortedSet<String> sortedSetZzh = zzi().zzh(str);
        if (zzjbVarZzc == zzjb.DENIED || sortedSetZzh.isEmpty()) {
            return new zzaz((Boolean) false, iZza, Boolean.valueOf(zZzn), Identify.UNSET_VALUE);
        }
        return new zzaz((Boolean) true, iZza, Boolean.valueOf(zZzn), zZzn ? TextUtils.join("", sortedSetZzh) : "");
    }

    private final zzaz zzd(String str) {
        zzl().zzt();
        zzs();
        zzaz zzazVar = this.zzad.get(str);
        if (zzazVar != null) {
            return zzazVar;
        }
        zzaz zzazVarZzg = zzf().zzg(str);
        this.zzad.put(str, zzazVarZzg);
        return zzazVarZzg;
    }

    public final zzgh zzg() {
        return this.zzm.zzk();
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final zzgi zzj() {
        return ((zzhw) Preconditions.checkNotNull(this.zzm)).zzj();
    }

    public final zzgp zzh() {
        return (zzgp) zza(this.zzc);
    }

    private final zzgs zzy() {
        zzgs zzgsVar = this.zze;
        if (zzgsVar != null) {
            return zzgsVar;
        }
        throw new IllegalStateException("Network broadcast receiver not created");
    }

    public final zzhg zzi() {
        return (zzhg) zza(this.zzb);
    }

    @Override // com.google.android.gms.measurement.internal.zzja
    public final zzhp zzl() {
        return ((zzhw) Preconditions.checkNotNull(this.zzm)).zzl();
    }

    final zzhw zzk() {
        return this.zzm;
    }

    final zzjc zzb(String str) {
        zzl().zzt();
        zzs();
        zzjc zzjcVarZzi = this.zzac.get(str);
        if (zzjcVarZzi == null) {
            zzjcVarZzi = zzf().zzi(str);
            if (zzjcVarZzi == null) {
                zzjcVarZzi = zzjc.zza;
            }
            zza(str, zzjcVarZzi);
        }
        return zzjcVarZzi;
    }

    public final zzlf zzm() {
        return (zzlf) zza(this.zzi);
    }

    public final zzms zzn() {
        return this.zzj;
    }

    private final zznm zzz() {
        return (zznm) zza(this.zzf);
    }

    private static zznr zza(zznr zznrVar) {
        if (zznrVar == null) {
            throw new IllegalStateException("Upload Component not created");
        }
        if (zznrVar.zzan()) {
            return zznrVar;
        }
        throw new IllegalStateException("Component not initialized: " + String.valueOf(zznrVar.getClass()));
    }

    public final zznq zzo() {
        return this.zzk;
    }

    public static zznv zza(Context context) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(context.getApplicationContext());
        if (zza == null) {
            synchronized (zznv.class) {
                if (zza == null) {
                    zza = new zznv((zzoh) Preconditions.checkNotNull(new zzoh(context)));
                }
            }
        }
        return zza;
    }

    public final zzol zzp() {
        return (zzol) zza(this.zzh);
    }

    public final zzop zzq() {
        return ((zzhw) Preconditions.checkNotNull(this.zzm)).zzt();
    }

    private final Boolean zza(zzh zzhVar) {
        try {
            if (zzhVar.zze() != -2147483648L) {
                if (zzhVar.zze() == Wrappers.packageManager(this.zzm.zza()).getPackageInfo(zzhVar.zzac(), 0).versionCode) {
                    return true;
                }
            } else {
                String str = Wrappers.packageManager(this.zzm.zza()).getPackageInfo(zzhVar.zzac(), 0).versionName;
                String strZzaf = zzhVar.zzaf();
                if (strZzaf != null && strZzaf.equals(str)) {
                    return true;
                }
            }
            return false;
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    private final Boolean zzh(zzp zzpVar) {
        Boolean bool = zzpVar.zzq;
        if (!zzox.zza() || !zze().zza(zzbj.zzcw) || TextUtils.isEmpty(zzpVar.zzad)) {
            return bool;
        }
        int i = zzoc.zza[zzd.zza(zzpVar.zzad).zza().ordinal()];
        if (i != 1) {
            if (i == 2) {
                return false;
            }
            if (i == 3) {
                return true;
            }
            if (i != 4) {
                return bool;
            }
        }
        return null;
    }

    private final String zza(zzjc zzjcVar) {
        if (!zzjcVar.zzj()) {
            return null;
        }
        byte[] bArr = new byte[16];
        zzq().zzv().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    final String zzb(zzp zzpVar) {
        try {
            return (String) zzl().zza(new zzob(this, zzpVar)).get(30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e) {
            zzj().zzg().zza("Failed to get app instance id. appId", zzgi.zza(zzpVar.zza), e);
            return null;
        }
    }

    static /* synthetic */ void zza(zznv zznvVar, zzoh zzohVar) {
        zznvVar.zzl().zzt();
        zznvVar.zzl = new zzhd(zznvVar);
        zzam zzamVar = new zzam(zznvVar);
        zzamVar.zzam();
        zznvVar.zzd = zzamVar;
        zznvVar.zze().zza((zzaj) Preconditions.checkNotNull(zznvVar.zzb));
        zzms zzmsVar = new zzms(zznvVar);
        zzmsVar.zzam();
        zznvVar.zzj = zzmsVar;
        zzv zzvVar = new zzv(zznvVar);
        zzvVar.zzam();
        zznvVar.zzg = zzvVar;
        zzlf zzlfVar = new zzlf(zznvVar);
        zzlfVar.zzam();
        zznvVar.zzi = zzlfVar;
        zznm zznmVar = new zznm(zznvVar);
        zznmVar.zzam();
        zznvVar.zzf = zznmVar;
        zznvVar.zze = new zzgs(zznvVar);
        if (zznvVar.zzs != zznvVar.zzt) {
            zznvVar.zzj().zzg().zza("Not all upload components initialized", Integer.valueOf(zznvVar.zzs), Integer.valueOf(zznvVar.zzt));
        }
        zznvVar.zzn = true;
    }

    private zznv(zzoh zzohVar) {
        this(zzohVar, null);
    }

    private zznv(zzoh zzohVar, zzhw zzhwVar) {
        this.zzn = false;
        this.zzr = new HashSet();
        this.zzah = new zzoa(this);
        Preconditions.checkNotNull(zzohVar);
        this.zzm = zzhw.zza(zzohVar.zza, null, null);
        this.zzab = -1L;
        this.zzk = new zznq(this);
        zzol zzolVar = new zzol(this);
        zzolVar.zzam();
        this.zzh = zzolVar;
        zzgp zzgpVar = new zzgp(this);
        zzgpVar.zzam();
        this.zzc = zzgpVar;
        zzhg zzhgVar = new zzhg(this);
        zzhgVar.zzam();
        this.zzb = zzhgVar;
        this.zzac = new HashMap();
        this.zzad = new HashMap();
        this.zzae = new HashMap();
        zzl().zzb(new zznx(this, zzohVar));
    }

    final void zza(Runnable runnable) {
        zzl().zzt();
        if (this.zzq == null) {
            this.zzq = new ArrayList();
        }
        this.zzq.add(runnable);
    }

    final void zzr() {
        zzl().zzt();
        zzs();
        if (this.zzo) {
            return;
        }
        this.zzo = true;
        if (zzaf()) {
            int iZza = zza(this.zzy);
            int iZzab = this.zzm.zzh().zzab();
            zzl().zzt();
            if (iZza > iZzab) {
                zzj().zzg().zza("Panic: can't downgrade version. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzab));
            } else if (iZza < iZzab) {
                if (zza(iZzab, this.zzy)) {
                    zzj().zzp().zza("Storage version upgraded. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzab));
                } else {
                    zzj().zzg().zza("Storage version upgrade failed. Previous, current version", Integer.valueOf(iZza), Integer.valueOf(iZzab));
                }
            }
        }
    }

    final void zzs() {
        if (!this.zzn) {
            throw new IllegalStateException("UploadController is not initialized");
        }
    }

    private final void zzaa() {
        zzl().zzt();
        if (this.zzu || this.zzv || this.zzw) {
            zzj().zzp().zza("Not stopping services. fetch, network, upload", Boolean.valueOf(this.zzu), Boolean.valueOf(this.zzv), Boolean.valueOf(this.zzw));
            return;
        }
        zzj().zzp().zza("Stopping uploading service(s)");
        List<Runnable> list = this.zzq;
        if (list == null) {
            return;
        }
        Iterator<Runnable> it = list.iterator();
        while (it.hasNext()) {
            it.next().run();
        }
        ((List) Preconditions.checkNotNull(this.zzq)).clear();
    }

    final void zza(String str, zzgn.zzk.zza zzaVar) {
        int iZza;
        int iIndexOf;
        Set<String> setZzg = zzi().zzg(str);
        if (setZzg != null) {
            zzaVar.zzd(setZzg);
        }
        if (zzi().zzq(str)) {
            zzaVar.zzj();
        }
        if (zzi().zzt(str)) {
            String strZzy = zzaVar.zzy();
            if (!TextUtils.isEmpty(strZzy) && (iIndexOf = strZzy.indexOf(".")) != -1) {
                zzaVar.zzo(strZzy.substring(0, iIndexOf));
            }
        }
        if (zzi().zzu(str) && (iZza = zzol.zza(zzaVar, "_id")) != -1) {
            zzaVar.zzc(iZza);
        }
        if (zzi().zzs(str)) {
            zzaVar.zzk();
        }
        if (zzi().zzp(str)) {
            zzaVar.zzh();
            if (!zzpd.zza() || !zze().zza(zzbj.zzdc) || zzb(str).zzj()) {
                zzb zzbVar = this.zzae.get(str);
                if (zzbVar == null || zzbVar.zzb + zze().zzc(str, zzbj.zzaw) < zzb().elapsedRealtime()) {
                    zzbVar = new zzb();
                    this.zzae.put(str, zzbVar);
                }
                zzaVar.zzk(zzbVar.zza);
            }
        }
        if (zzi().zzr(str)) {
            zzaVar.zzr();
        }
    }

    private final void zzb(zzh zzhVar) {
        zzl().zzt();
        if (TextUtils.isEmpty(zzhVar.zzah()) && TextUtils.isEmpty(zzhVar.zzaa())) {
            zza((String) Preconditions.checkNotNull(zzhVar.zzac()), XMPError.BADSTREAM, null, null, null);
            return;
        }
        ArrayMap arrayMap = null;
        if (zzqt.zza() && zze().zza(zzbj.zzcc)) {
            String str = (String) Preconditions.checkNotNull(zzhVar.zzac());
            zzj().zzp().zza("Fetching remote configuration", str);
            zzfx.zzd zzdVarZzc = zzi().zzc(str);
            String strZze = zzi().zze(str);
            if (zzdVarZzc != null) {
                if (!TextUtils.isEmpty(strZze)) {
                    arrayMap = new ArrayMap();
                    arrayMap.put(HttpHeaders.IF_MODIFIED_SINCE, strZze);
                }
                String strZzd = zzi().zzd(str);
                if (!TextUtils.isEmpty(strZzd)) {
                    if (arrayMap == null) {
                        arrayMap = new ArrayMap();
                    }
                    arrayMap.put(HttpHeaders.IF_NONE_MATCH, strZzd);
                }
            }
            ArrayMap arrayMap2 = arrayMap;
            this.zzu = true;
            zzgp zzgpVarZzh = zzh();
            zzgo zzgoVar = new zzgo() { // from class: com.google.android.gms.measurement.internal.zznu
                @Override // com.google.android.gms.measurement.internal.zzgo
                public final void zza(String str2, int i, Throwable th, byte[] bArr, Map map) {
                    this.zza.zza(str2, i, th, bArr, map);
                }
            };
            zzgpVarZzh.zzt();
            zzgpVarZzh.zzal();
            Preconditions.checkNotNull(zzhVar);
            Preconditions.checkNotNull(zzgoVar);
            String strZza = zzgpVarZzh.zzo().zza(zzhVar);
            try {
                zzgpVarZzh.zzl().zza(new zzgt(zzgpVarZzh, zzhVar.zzac(), new URI(strZza).toURL(), null, arrayMap2, zzgoVar));
                return;
            } catch (IllegalArgumentException | MalformedURLException | URISyntaxException unused) {
                zzgpVarZzh.zzj().zzg().zza("Failed to parse config URL. Not fetching. appId", zzgi.zza(zzhVar.zzac()), strZza);
                return;
            }
        }
        String strZza2 = this.zzk.zza(zzhVar);
        try {
            String str2 = (String) Preconditions.checkNotNull(zzhVar.zzac());
            URL url = new URL(strZza2);
            zzj().zzp().zza("Fetching remote configuration", str2);
            zzfx.zzd zzdVarZzc2 = zzi().zzc(str2);
            String strZze2 = zzi().zze(str2);
            if (zzdVarZzc2 != null) {
                if (!TextUtils.isEmpty(strZze2)) {
                    arrayMap = new ArrayMap();
                    arrayMap.put(HttpHeaders.IF_MODIFIED_SINCE, strZze2);
                }
                String strZzd2 = zzi().zzd(str2);
                if (!TextUtils.isEmpty(strZzd2)) {
                    if (arrayMap == null) {
                        arrayMap = new ArrayMap();
                    }
                    arrayMap.put(HttpHeaders.IF_NONE_MATCH, strZzd2);
                }
            }
            this.zzu = true;
            zzgp zzgpVarZzh2 = zzh();
            zzny zznyVar = new zzny(this);
            zzgpVarZzh2.zzt();
            zzgpVarZzh2.zzal();
            Preconditions.checkNotNull(url);
            Preconditions.checkNotNull(zznyVar);
            zzgpVarZzh2.zzl().zza(new zzgt(zzgpVarZzh2, str2, url, null, arrayMap, zznyVar));
        } catch (MalformedURLException unused2) {
            zzj().zzg().zza("Failed to parse config URL. Not fetching. appId", zzgi.zza(zzhVar.zzac()), strZza2);
        }
    }

    final void zza(zzh zzhVar, zzgn.zzk.zza zzaVar) {
        zzgn.zzo next;
        zzl().zzt();
        zzs();
        zzai zzaiVarZza = zzai.zza(zzaVar.zzv());
        if (zzox.zza() && zze().zza(zzbj.zzcw)) {
            String strZzac = zzhVar.zzac();
            zzl().zzt();
            zzs();
            zzjc zzjcVarZzb = zzb(strZzac);
            int i = zzoc.zza[zzjcVarZzb.zzc().ordinal()];
            if (i == 1) {
                zzaiVarZza.zza(zzjc.zza.AD_STORAGE, zzal.REMOTE_ENFORCED_DEFAULT);
            } else if (i == 2 || i == 3) {
                zzaiVarZza.zza(zzjc.zza.AD_STORAGE, zzjcVarZzb.zza());
            } else {
                zzaiVarZza.zza(zzjc.zza.AD_STORAGE, zzal.FAILSAFE);
            }
            int i2 = zzoc.zza[zzjcVarZzb.zzd().ordinal()];
            if (i2 == 1) {
                zzaiVarZza.zza(zzjc.zza.ANALYTICS_STORAGE, zzal.REMOTE_ENFORCED_DEFAULT);
            } else if (i2 == 2 || i2 == 3) {
                zzaiVarZza.zza(zzjc.zza.ANALYTICS_STORAGE, zzjcVarZzb.zza());
            } else {
                zzaiVarZza.zza(zzjc.zza.ANALYTICS_STORAGE, zzal.FAILSAFE);
            }
        } else {
            String strZzac2 = zzhVar.zzac();
            zzl().zzt();
            zzs();
            zzjc zzjcVarZzb2 = zzb(strZzac2);
            if (zzjcVarZzb2.zze() != null) {
                zzaiVarZza.zza(zzjc.zza.AD_STORAGE, zzjcVarZzb2.zza());
            } else {
                zzaiVarZza.zza(zzjc.zza.AD_STORAGE, zzal.FAILSAFE);
            }
            if (zzjcVarZzb2.zzf() != null) {
                zzaiVarZza.zza(zzjc.zza.ANALYTICS_STORAGE, zzjcVarZzb2.zza());
            } else {
                zzaiVarZza.zza(zzjc.zza.ANALYTICS_STORAGE, zzal.FAILSAFE);
            }
        }
        String strZzac3 = zzhVar.zzac();
        zzl().zzt();
        zzs();
        zzaz zzazVarZza = zza(strZzac3, zzd(strZzac3), zzb(strZzac3), zzaiVarZza);
        zzaVar.zzb(((Boolean) Preconditions.checkNotNull(zzazVarZza.zzd())).booleanValue());
        if (!TextUtils.isEmpty(zzazVarZza.zze())) {
            zzaVar.zzh(zzazVarZza.zze());
        }
        zzl().zzt();
        zzs();
        Iterator<zzgn.zzo> it = zzaVar.zzab().iterator();
        while (true) {
            if (it.hasNext()) {
                next = it.next();
                if ("_npa".equals(next.zzg())) {
                    break;
                }
            } else {
                next = null;
                break;
            }
        }
        if (next != null) {
            if (zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION) == zzal.UNSET) {
                zzom zzomVarZze = zzf().zze(zzhVar.zzac(), "_npa");
                if (zzomVarZze != null) {
                    if ("tcf".equals(zzomVarZze.zzb)) {
                        zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION, zzal.TCF);
                    } else if ("app".equals(zzomVarZze.zzb)) {
                        zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION, zzal.API);
                    } else {
                        zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION, zzal.MANIFEST);
                    }
                } else {
                    Boolean boolZzx = zzhVar.zzx();
                    if (boolZzx == null || ((boolZzx == Boolean.TRUE && next.zzc() != 1) || (boolZzx == Boolean.FALSE && next.zzc() != 0))) {
                        zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION, zzal.API);
                    } else {
                        zzaiVarZza.zza(zzjc.zza.AD_PERSONALIZATION, zzal.MANIFEST);
                    }
                }
            }
        } else {
            int iZza = zza(zzhVar.zzac(), zzaiVarZza);
            zzaVar.zza((zzgn.zzo) ((com.google.android.gms.internal.measurement.zzlc) zzgn.zzo.zze().zza("_npa").zzb(zzb().currentTimeMillis()).zza(iZza).zzai()));
            zzj().zzp().zza("Setting user property", "non_personalized_ads(_npa)", Integer.valueOf(iZza));
        }
        zzaVar.zzf(zzaiVarZza.toString());
        boolean zZzn = this.zzb.zzn(zzhVar.zzac());
        List<zzgn.zzf> listZzaa = zzaVar.zzaa();
        int i3 = 0;
        for (int i4 = 0; i4 < listZzaa.size(); i4++) {
            if ("_tcf".equals(listZzaa.get(i4).zzg())) {
                zzgn.zzf.zza zzaVarZzcd = listZzaa.get(i4).zzcd();
                List<zzgn.zzh> listZzf = zzaVarZzcd.zzf();
                while (true) {
                    if (i3 >= listZzf.size()) {
                        break;
                    }
                    if ("_tcfd".equals(listZzf.get(i3).zzg())) {
                        zzaVarZzcd.zza(i3, zzgn.zzh.zze().zza("_tcfd").zzb(zzni.zza(listZzf.get(i3).zzh(), zZzn)));
                        break;
                    }
                    i3++;
                }
                zzaVar.zza(i4, zzaVarZzcd);
                return;
            }
        }
    }

    private static void zza(zzgn.zzf.zza zzaVar, int i, String str) {
        List<zzgn.zzh> listZzf = zzaVar.zzf();
        for (int i2 = 0; i2 < listZzf.size(); i2++) {
            if ("_err".equals(listZzf.get(i2).zzg())) {
                return;
            }
        }
        zzaVar.zza((zzgn.zzh) ((com.google.android.gms.internal.measurement.zzlc) zzgn.zzh.zze().zza("_err").zza(Long.valueOf(i).longValue()).zzai())).zza((zzgn.zzh) ((com.google.android.gms.internal.measurement.zzlc) zzgn.zzh.zze().zza("_ev").zzb(str).zzai()));
    }

    final void zza(zzbh zzbhVar, zzp zzpVar) {
        zzbh zzbhVar2;
        List<zzaf> listZza;
        List<zzaf> listZza2;
        List<zzaf> listZza3;
        String str;
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzl().zzt();
        zzs();
        String str2 = zzpVar.zza;
        long j = zzbhVar.zzd;
        zzgm zzgmVarZza = zzgm.zza(zzbhVar);
        zzl().zzt();
        zzop.zza((this.zzaf == null || (str = this.zzag) == null || !str.equals(str2)) ? null : this.zzaf, zzgmVarZza.zzd, false);
        zzbh zzbhVarZza = zzgmVarZza.zza();
        zzp();
        if (zzol.zza(zzbhVarZza, zzpVar)) {
            if (!zzpVar.zzh) {
                zza(zzpVar);
                return;
            }
            if (zzpVar.zzs == null) {
                zzbhVar2 = zzbhVarZza;
            } else if (zzpVar.zzs.contains(zzbhVarZza.zza)) {
                Bundle bundleZzb = zzbhVarZza.zzb.zzb();
                bundleZzb.putLong("ga_safelisted", 1L);
                zzbhVar2 = new zzbh(zzbhVarZza.zza, new zzbc(bundleZzb), zzbhVarZza.zzc, zzbhVarZza.zzd);
            } else {
                zzj().zzc().zza("Dropping non-safelisted event. appId, event name, origin", str2, zzbhVarZza.zza, zzbhVarZza.zzc);
                return;
            }
            zzf().zzp();
            try {
                zzam zzamVarZzf = zzf();
                Preconditions.checkNotEmpty(str2);
                zzamVarZzf.zzt();
                zzamVarZzf.zzal();
                if (j < 0) {
                    zzamVarZzf.zzj().zzu().zza("Invalid time querying timed out conditional properties", zzgi.zza(str2), Long.valueOf(j));
                    listZza = Collections.emptyList();
                } else {
                    listZza = zzamVarZzf.zza("active=0 and app_id=? and abs(? - creation_timestamp) > trigger_timeout", new String[]{str2, String.valueOf(j)});
                }
                for (zzaf zzafVar : listZza) {
                    if (zzafVar != null) {
                        zzj().zzp().zza("User property timed out", zzafVar.zza, this.zzm.zzk().zzc(zzafVar.zzc.zza), zzafVar.zzc.zza());
                        if (zzafVar.zzg != null) {
                            zzc(new zzbh(zzafVar.zzg, j), zzpVar);
                        }
                        zzf().zza(str2, zzafVar.zzc.zza);
                    }
                }
                zzam zzamVarZzf2 = zzf();
                Preconditions.checkNotEmpty(str2);
                zzamVarZzf2.zzt();
                zzamVarZzf2.zzal();
                if (j < 0) {
                    zzamVarZzf2.zzj().zzu().zza("Invalid time querying expired conditional properties", zzgi.zza(str2), Long.valueOf(j));
                    listZza2 = Collections.emptyList();
                } else {
                    listZza2 = zzamVarZzf2.zza("active<>0 and app_id=? and abs(? - triggered_timestamp) > time_to_live", new String[]{str2, String.valueOf(j)});
                }
                ArrayList arrayList = new ArrayList(listZza2.size());
                for (zzaf zzafVar2 : listZza2) {
                    if (zzafVar2 != null) {
                        zzj().zzp().zza("User property expired", zzafVar2.zza, this.zzm.zzk().zzc(zzafVar2.zzc.zza), zzafVar2.zzc.zza());
                        zzf().zzh(str2, zzafVar2.zzc.zza);
                        if (zzafVar2.zzk != null) {
                            arrayList.add(zzafVar2.zzk);
                        }
                        zzf().zza(str2, zzafVar2.zzc.zza);
                    }
                }
                int size = arrayList.size();
                int i = 0;
                while (i < size) {
                    Object obj = arrayList.get(i);
                    i++;
                    zzc(new zzbh((zzbh) obj, j), zzpVar);
                }
                zzam zzamVarZzf3 = zzf();
                String str3 = zzbhVar2.zza;
                Preconditions.checkNotEmpty(str2);
                Preconditions.checkNotEmpty(str3);
                zzamVarZzf3.zzt();
                zzamVarZzf3.zzal();
                if (j < 0) {
                    zzamVarZzf3.zzj().zzu().zza("Invalid time querying triggered conditional properties", zzgi.zza(str2), zzamVarZzf3.zzi().zza(str3), Long.valueOf(j));
                    listZza3 = Collections.emptyList();
                } else {
                    listZza3 = zzamVarZzf3.zza("active=0 and app_id=? and trigger_event_name=? and abs(? - creation_timestamp) <= trigger_timeout", new String[]{str2, str3, String.valueOf(j)});
                }
                ArrayList arrayList2 = new ArrayList(listZza3.size());
                for (zzaf zzafVar3 : listZza3) {
                    if (zzafVar3 != null) {
                        zzok zzokVar = zzafVar3.zzc;
                        zzom zzomVar = new zzom((String) Preconditions.checkNotNull(zzafVar3.zza), zzafVar3.zzb, zzokVar.zza, j, Preconditions.checkNotNull(zzokVar.zza()));
                        if (zzf().zza(zzomVar)) {
                            zzj().zzp().zza("User property triggered", zzafVar3.zza, this.zzm.zzk().zzc(zzomVar.zzc), zzomVar.zze);
                        } else {
                            zzj().zzg().zza("Too many active user properties, ignoring", zzgi.zza(zzafVar3.zza), this.zzm.zzk().zzc(zzomVar.zzc), zzomVar.zze);
                        }
                        if (zzafVar3.zzi != null) {
                            arrayList2.add(zzafVar3.zzi);
                        }
                        zzafVar3.zzc = new zzok(zzomVar);
                        zzafVar3.zze = true;
                        zzf().zza(zzafVar3);
                    }
                }
                zzc(zzbhVar2, zzpVar);
                int size2 = arrayList2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = arrayList2.get(i2);
                    i2++;
                    zzc(new zzbh((zzbh) obj2, j), zzpVar);
                }
                zzf().zzw();
            } finally {
                zzf().zzu();
            }
        }
    }

    final void zza(zzbh zzbhVar, String str) {
        zzh zzhVarZze = zzf().zze(str);
        if (zzhVarZze == null || TextUtils.isEmpty(zzhVarZze.zzaf())) {
            zzj().zzc().zza("No app data available; dropping event", str);
            return;
        }
        Boolean boolZza = zza(zzhVarZze);
        if (boolZza == null) {
            if (!"_ui".equals(zzbhVar.zza)) {
                zzj().zzu().zza("Could not find package. appId", zzgi.zza(str));
            }
        } else if (!boolZza.booleanValue()) {
            zzj().zzg().zza("App version does not match; dropping event. appId", zzgi.zza(str));
            return;
        }
        zzb(zzbhVar, new zzp(str, zzhVarZze.zzah(), zzhVarZze.zzaf(), zzhVarZze.zze(), zzhVarZze.zzae(), zzhVarZze.zzq(), zzhVarZze.zzn(), (String) null, zzhVarZze.zzar(), false, zzhVarZze.zzag(), zzhVarZze.zzd(), 0L, 0, zzhVarZze.zzaq(), false, zzhVarZze.zzaa(), zzhVarZze.zzx(), zzhVarZze.zzo(), zzhVarZze.zzan(), (String) null, zzb(str).zzh(), "", (String) null, zzhVarZze.zzat(), zzhVarZze.zzw(), zzb(str).zza(), zzd(str).zzf(), zzhVarZze.zza(), zzhVarZze.zzf(), zzhVarZze.zzam(), zzhVarZze.zzak()));
    }

    private final void zzb(zzbh zzbhVar, zzp zzpVar) {
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzgm zzgmVarZza = zzgm.zza(zzbhVar);
        zzq().zza(zzgmVarZza.zzd, zzf().zzd(zzpVar.zza));
        zzq().zza(zzgmVarZza, zze().zzb(zzpVar.zza));
        zzbh zzbhVarZza = zzgmVarZza.zza();
        if (Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN.equals(zzbhVarZza.zza) && "referrer API v2".equals(zzbhVarZza.zzb.zzd("_cis"))) {
            String strZzd = zzbhVarZza.zzb.zzd("gclid");
            if (!TextUtils.isEmpty(strZzd)) {
                zza(new zzok("_lgclid", zzbhVarZza.zzd, strZzd, "auto"), zzpVar);
            }
        }
        zza(zzbhVarZza, zzpVar);
    }

    private final void zza(zzgn.zzk.zza zzaVar, long j, boolean z) {
        String str;
        zzom zzomVar;
        String str2;
        if (!z) {
            str = "_lte";
        } else {
            str = "_se";
        }
        zzom zzomVarZze = zzf().zze(zzaVar.zzt(), str);
        if (zzomVarZze == null || zzomVarZze.zze == null) {
            zzomVar = new zzom(zzaVar.zzt(), "auto", str, zzb().currentTimeMillis(), Long.valueOf(j));
        } else {
            zzomVar = new zzom(zzaVar.zzt(), "auto", str, zzb().currentTimeMillis(), Long.valueOf(((Long) zzomVarZze.zze).longValue() + j));
        }
        zzgn.zzo zzoVar = (zzgn.zzo) ((com.google.android.gms.internal.measurement.zzlc) zzgn.zzo.zze().zza(str).zzb(zzb().currentTimeMillis()).zza(((Long) zzomVar.zze).longValue()).zzai());
        int iZza = zzol.zza(zzaVar, str);
        if (iZza >= 0) {
            zzaVar.zza(iZza, zzoVar);
        } else {
            zzaVar.zza(zzoVar);
        }
        if (j > 0) {
            zzf().zza(zzomVar);
            if (!z) {
                str2 = "lifetime";
            } else {
                str2 = "session-scoped";
            }
            zzj().zzp().zza("Updated engagement user property. scope, value", str2, zzomVar.zze);
        }
    }

    final void zzt() {
        this.zzt++;
    }

    private final void zzab() {
        zzl().zzt();
        for (String str : this.zzr) {
            if (zzrl.zza() && zze().zze(str, zzbj.zzcg)) {
                zzj().zzc().zza("Notifying app that trigger URIs are available. App ID", str);
                Intent intent = new Intent();
                intent.setAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
                intent.setPackage(str);
                this.zzm.zza().sendBroadcast(intent);
            }
        }
        this.zzr.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX INFO: renamed from: zzb, reason: merged with bridge method [inline-methods] */
    public final void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
        zzl().zzt();
        zzs();
        Preconditions.checkNotEmpty(str);
        if (bArr == null) {
            try {
                bArr = new byte[0];
            } finally {
                this.zzu = false;
                zzaa();
            }
        }
        zzj().zzp().zza("onConfigFetched. Response size", Integer.valueOf(bArr.length));
        zzf().zzp();
        try {
            zzh zzhVarZze = zzf().zze(str);
            boolean z = (i == 200 || i == 204 || i == 304) && th == null;
            if (zzhVarZze == null) {
                zzj().zzu().zza("App does not exist in onConfigFetched. appId", zzgi.zza(str));
            } else if (z || i == 404) {
                List<String> list = map != null ? map.get(HttpHeaders.LAST_MODIFIED) : null;
                String str2 = (list == null || list.isEmpty()) ? null : list.get(0);
                List<String> list2 = map != null ? map.get(HttpHeaders.ETAG) : null;
                String str3 = (list2 == null || list2.isEmpty()) ? null : list2.get(0);
                if (i == 404 || i == 304) {
                    if (zzi().zzc(str) == null && !zzi().zza(str, null, null, null)) {
                        return;
                    }
                } else if (!zzi().zza(str, bArr, str2, str3)) {
                    return;
                }
                zzhVarZze.zzd(zzb().currentTimeMillis());
                zzf().zza(zzhVarZze, false, false);
                if (i == 404) {
                    zzj().zzv().zza("Config not found. Using empty config. appId", str);
                } else {
                    zzj().zzp().zza("Successfully fetched config. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr.length));
                }
                if (zzh().zzu() && zzad()) {
                    zzw();
                } else if (zze().zza(zzbj.zzbz) && zzh().zzu() && zzf().zzs(zzhVarZze.zzac())) {
                    zze(zzhVarZze.zzac());
                } else {
                    zzac();
                }
            } else {
                zzhVarZze.zzm(zzb().currentTimeMillis());
                zzf().zza(zzhVarZze, false, false);
                zzj().zzp().zza("Fetching config failed. code, error", Integer.valueOf(i), th);
                zzi().zzi(str);
                this.zzj.zze.zza(zzb().currentTimeMillis());
                if (i == 503 || i == 429) {
                    this.zzj.zzc.zza(zzb().currentTimeMillis());
                }
                zzac();
            }
            zzf().zzw();
        } finally {
            zzf().zzu();
        }
    }

    final void zza(boolean z) {
        zzac();
    }

    final void zza(boolean z, int i, Throwable th, byte[] bArr, String str, List<Pair<zzgn.zzj, zzns>> list) {
        byte[] bArr2;
        zzl().zzt();
        zzs();
        if (bArr == null) {
            try {
                bArr2 = new byte[0];
            } finally {
                this.zzv = false;
                zzaa();
            }
        } else {
            bArr2 = bArr;
        }
        List<Long> list2 = (List) Preconditions.checkNotNull(this.zzz);
        this.zzz = null;
        if ((zzpo.zza() && zze().zza(zzbj.zzcr) && !z) || ((i == 200 || i == 204) && th == null)) {
            try {
                if (!zzpo.zza() || !zze().zza(zzbj.zzcr) || z) {
                    this.zzj.zzd.zza(zzb().currentTimeMillis());
                }
                this.zzj.zze.zza(0L);
                zzac();
                if (!zzpo.zza() || !zze().zza(zzbj.zzcr) || z) {
                    zzj().zzp().zza("Successful upload. Got network response. code, size", Integer.valueOf(i), Integer.valueOf(bArr2.length));
                } else if (zzpo.zza() && zze().zza(zzbj.zzcr)) {
                    zzj().zzp().zza("Purged empty bundles");
                }
                zzf().zzp();
                try {
                    if (zze().zza(zzbj.zzbz)) {
                        for (Pair<zzgn.zzj, zzns> pair : list) {
                            zzgn.zzj zzjVar = (zzgn.zzj) pair.first;
                            zzns zznsVar = (zzns) pair.second;
                            zzf().zza(str, zzjVar, zznsVar.zzb(), zznsVar.zzc(), zznsVar.zza());
                        }
                    }
                    for (Long l : list2) {
                        try {
                            zzam zzamVarZzf = zzf();
                            long jLongValue = l.longValue();
                            zzamVarZzf.zzt();
                            zzamVarZzf.zzal();
                            try {
                                if (zzamVarZzf.m156e_().delete("queue", "rowid=?", new String[]{String.valueOf(jLongValue)}) != 1) {
                                    throw new SQLiteException("Deleted fewer rows from queue than expected");
                                }
                            } catch (SQLiteException e) {
                                zzamVarZzf.zzj().zzg().zza("Failed to delete a bundle in a queue table", e);
                                throw e;
                            }
                        } catch (SQLiteException e2) {
                            List<Long> list3 = this.zzaa;
                            if (list3 == null || !list3.contains(l)) {
                                throw e2;
                            }
                        }
                    }
                    zzf().zzw();
                    zzf().zzu();
                    this.zzaa = null;
                    if (zzh().zzu() && zzad()) {
                        zzw();
                    } else if (zze().zza(zzbj.zzbz) && zzh().zzu() && zzf().zzs(str)) {
                        zze(str);
                    } else {
                        this.zzab = -1L;
                        zzac();
                    }
                    this.zzp = 0L;
                } catch (Throwable th2) {
                    zzf().zzu();
                    throw th2;
                }
            } catch (SQLiteException e3) {
                zzj().zzg().zza("Database error while trying to delete uploaded bundles", e3);
                this.zzp = zzb().elapsedRealtime();
                zzj().zzp().zza("Disable upload, time", Long.valueOf(this.zzp));
            }
        } else {
            zzj().zzp().zza("Network upload failed. Will retry later. code, error", Integer.valueOf(i), th);
            this.zzj.zze.zza(zzb().currentTimeMillis());
            if (i == 503 || i == 429) {
                this.zzj.zzc.zza(zzb().currentTimeMillis());
            }
            zzf().zza(list2);
            zzac();
        }
    }

    final void zza(String str, int i, Throwable th, byte[] bArr, zzog zzogVar) {
        zzl().zzt();
        zzs();
        try {
            if ((i == 200 || i == 204) && th == null) {
                if (zzogVar != null) {
                    zzam zzamVarZzf = zzf();
                    Long lValueOf = Long.valueOf(zzogVar.zza());
                    zzamVarZzf.zzt();
                    zzamVarZzf.zzal();
                    Preconditions.checkNotNull(lValueOf);
                    if (!zzrw.zza() || zzamVarZzf.zze().zza(zzbj.zzbz)) {
                        try {
                            if (zzamVarZzf.m156e_().delete("upload_queue", "rowid=?", new String[]{String.valueOf(lValueOf)}) != 1) {
                                zzamVarZzf.zzj().zzu().zza("Deleted fewer rows from upload_queue than expected");
                            }
                        } catch (SQLiteException e) {
                            zzamVarZzf.zzj().zzg().zza("Failed to delete a MeasurementBatch in a upload_queue table", e);
                            throw e;
                        }
                    }
                }
                zzj().zzp().zza("Successfully uploaded batch from upload queue. appId, status", str, Integer.valueOf(i));
                if (zze().zza(zzbj.zzbz) && zzh().zzu() && zzf().zzs(str)) {
                    zze(str);
                } else {
                    zzac();
                }
            } else {
                zzj().zzp().zza("Network upload failed. Will retry later. appId, status", str, Integer.valueOf(i));
                if (zzogVar != null) {
                    zzf().zza(Long.valueOf(zzogVar.zza()));
                }
                zzac();
            }
        } finally {
            this.zzv = false;
            zzaa();
        }
    }

    final void zzb(zzh zzhVar, zzgn.zzk.zza zzaVar) {
        zzl().zzt();
        zzs();
        zzgn.zza.C4940zza c4940zzaZzc = zzgn.zza.zzc();
        byte[] bArrZzav = zzhVar.zzav();
        if (bArrZzav != null) {
            try {
                c4940zzaZzc = (zzgn.zza.C4940zza) zzol.zza(c4940zzaZzc, bArrZzav);
            } catch (com.google.android.gms.internal.measurement.zzlk unused) {
                zzj().zzu().zza("Failed to parse locally stored ad campaign info. appId", zzgi.zza(zzhVar.zzac()));
            }
        }
        for (zzgn.zzf zzfVar : zzaVar.zzaa()) {
            if (zzfVar.zzg().equals(Constants.ScionAnalytics.EVENT_FIREBASE_CAMPAIGN)) {
                String str = (String) zzol.zza(zzfVar, "gclid", "");
                String str2 = (String) zzol.zza(zzfVar, "gbraid", "");
                String str3 = (String) zzol.zza(zzfVar, "gad_source", "");
                if (!str.isEmpty() || !str2.isEmpty()) {
                    long jLongValue = ((Long) zzol.zza(zzfVar, "click_timestamp", (Object) 0L)).longValue();
                    if (jLongValue <= 0) {
                        jLongValue = zzfVar.zzd();
                    }
                    if ("referrer API v2".equals(zzol.zzb(zzfVar, "_cis"))) {
                        if (jLongValue > c4940zzaZzc.zzb()) {
                            if (str.isEmpty()) {
                                c4940zzaZzc.zzh();
                            } else {
                                c4940zzaZzc.zzf(str);
                            }
                            if (str2.isEmpty()) {
                                c4940zzaZzc.zzg();
                            } else {
                                c4940zzaZzc.zze(str2);
                            }
                            if (str3.isEmpty()) {
                                c4940zzaZzc.zzf();
                            } else {
                                c4940zzaZzc.zzd(str3);
                            }
                            c4940zzaZzc.zzb(jLongValue);
                        }
                    } else if (jLongValue > c4940zzaZzc.zza()) {
                        if (str.isEmpty()) {
                            c4940zzaZzc.zze();
                        } else {
                            c4940zzaZzc.zzc(str);
                        }
                        if (str2.isEmpty()) {
                            c4940zzaZzc.zzd();
                        } else {
                            c4940zzaZzc.zzb(str2);
                        }
                        if (str3.isEmpty()) {
                            c4940zzaZzc.zzc();
                        } else {
                            c4940zzaZzc.zza(str3);
                        }
                        c4940zzaZzc.zza(jLongValue);
                    }
                }
            }
        }
        if (!((zzgn.zza) ((com.google.android.gms.internal.measurement.zzlc) c4940zzaZzc.zzai())).equals(zzgn.zza.zze())) {
            zzaVar.zza((zzgn.zza) ((com.google.android.gms.internal.measurement.zzlc) c4940zzaZzc.zzai()));
        }
        zzhVar.zza(((zzgn.zza) ((com.google.android.gms.internal.measurement.zzlc) c4940zzaZzc.zzai())).zzca());
        if (zzhVar.zzas()) {
            zzf().zza(zzhVar, false, false);
        }
    }

    final void zzc(zzp zzpVar) {
        zzl().zzt();
        zzs();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        if (zze().zza(zzbj.zzdg)) {
            int i = 0;
            if (zze().zza(zzbj.zzbi)) {
                long jCurrentTimeMillis = zzb().currentTimeMillis();
                int iZzb = zze().zzb((String) null, zzbj.zzau);
                zze();
                long jZzh = jCurrentTimeMillis - zzah.zzh();
                while (i < iZzb && zza((String) null, jZzh)) {
                    i++;
                }
            } else {
                zze();
                long jZzn = zzah.zzn();
                while (i < jZzn && zza(zzpVar.zza, 0L)) {
                    i++;
                }
            }
            if (zze().zza(zzbj.zzbj)) {
                zzab();
            }
        }
    }

    final void zzd(zzp zzpVar) {
        int i;
        zzbd zzbdVarZzd;
        PackageInfo packageInfo;
        String str;
        String str2;
        ApplicationInfo applicationInfo;
        long j;
        boolean z;
        zzl().zzt();
        zzs();
        Preconditions.checkNotNull(zzpVar);
        Preconditions.checkNotEmpty(zzpVar.zza);
        if (zzi(zzpVar)) {
            zzh zzhVarZze = zzf().zze(zzpVar.zza);
            if (zzhVarZze != null && TextUtils.isEmpty(zzhVarZze.zzah()) && !TextUtils.isEmpty(zzpVar.zzb)) {
                zzhVarZze.zzd(0L);
                zzf().zza(zzhVarZze, false, false);
                zzi().zzj(zzpVar.zza);
            }
            if (!zzpVar.zzh) {
                zza(zzpVar);
                return;
            }
            long jCurrentTimeMillis = zzpVar.zzl;
            if (jCurrentTimeMillis == 0) {
                jCurrentTimeMillis = zzb().currentTimeMillis();
            }
            this.zzm.zzg().zzm();
            int i2 = zzpVar.zzm;
            if (i2 != 0 && i2 != 1) {
                zzj().zzu().zza("Incorrect app type, assuming installed app. appId, appType", zzgi.zza(zzpVar.zza), Integer.valueOf(i2));
                i2 = 0;
            }
            zzf().zzp();
            try {
                zzom zzomVarZze = zzf().zze(zzpVar.zza, "_npa");
                Boolean boolZzh = zzh(zzpVar);
                if (zzomVarZze != null && !"auto".equals(zzomVarZze.zzb)) {
                    i = 1;
                } else if (boolZzh != null) {
                    i = 1;
                    zzok zzokVar = new zzok("_npa", jCurrentTimeMillis, Long.valueOf(boolZzh.booleanValue() ? 1L : 0L), "auto");
                    if (zzomVarZze == null || !zzomVarZze.zze.equals(zzokVar.zzc)) {
                        zza(zzokVar, zzpVar);
                    }
                } else {
                    i = 1;
                    if (zzomVarZze != null) {
                        zza("_npa", zzpVar);
                    }
                }
                zzh zzhVarZze2 = zzf().zze((String) Preconditions.checkNotNull(zzpVar.zza));
                if (zzhVarZze2 != null) {
                    zzq();
                    if (zzop.zza(zzpVar.zzb, zzhVarZze2.zzah(), zzpVar.zzp, zzhVarZze2.zzaa())) {
                        zzj().zzu().zza("New GMP App Id passed in. Removing cached database data. appId", zzgi.zza(zzhVarZze2.zzac()));
                        zzam zzamVarZzf = zzf();
                        String strZzac = zzhVarZze2.zzac();
                        zzamVarZzf.zzal();
                        zzamVarZzf.zzt();
                        Preconditions.checkNotEmpty(strZzac);
                        try {
                            SQLiteDatabase sQLiteDatabaseM156e_ = zzamVarZzf.m156e_();
                            String[] strArr = new String[i];
                            strArr[0] = strZzac;
                            int iDelete = sQLiteDatabaseM156e_.delete(DatabaseConstants.EVENT_TABLE_NAME, "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("apps", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("event_filters", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("property_filters", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("consent_settings", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("trigger_uris", "app_id=?", strArr);
                            if (iDelete > 0) {
                                zzamVarZzf.zzj().zzp().zza("Deleted application data. app, records", strZzac, Integer.valueOf(iDelete));
                            }
                        } catch (SQLiteException e) {
                            zzamVarZzf.zzj().zzg().zza("Error deleting application data. appId, error", zzgi.zza(strZzac), e);
                        }
                        zzhVarZze2 = null;
                    }
                }
                if (zzhVarZze2 != null) {
                    boolean z2 = (zzhVarZze2.zze() == -2147483648L || zzhVarZze2.zze() == zzpVar.zzj) ? false : true;
                    String strZzaf = zzhVarZze2.zzaf();
                    if (z2 | ((zzhVarZze2.zze() != -2147483648L || strZzaf == null || strZzaf.equals(zzpVar.zzc)) ? false : true)) {
                        Bundle bundle = new Bundle();
                        bundle.putString("_pv", strZzaf);
                        zza(new zzbh("_au", new zzbc(bundle), "auto", jCurrentTimeMillis), zzpVar);
                    }
                }
                zza(zzpVar);
                if (i2 == 0) {
                    zzbdVarZzd = zzf().zzd(zzpVar.zza, "_f");
                } else {
                    zzbdVarZzd = i2 == 1 ? zzf().zzd(zzpVar.zza, "_v") : null;
                }
                if (zzbdVarZzd == null) {
                    long j2 = ((jCurrentTimeMillis / DateUtils.MILLIS_PER_HOUR) + 1) * DateUtils.MILLIS_PER_HOUR;
                    if (i2 == 0) {
                        zza(new zzok("_fot", jCurrentTimeMillis, Long.valueOf(j2), "auto"), zzpVar);
                        zzl().zzt();
                        zzhd zzhdVar = (zzhd) Preconditions.checkNotNull(this.zzl);
                        String str3 = zzpVar.zza;
                        if (str3 == null || str3.isEmpty()) {
                            zzhdVar.zza.zzj().zzw().zza("Install Referrer Reporter was called with invalid app package name");
                        } else {
                            zzhdVar.zza.zzl().zzt();
                            if (!zzhdVar.zza()) {
                                zzhdVar.zza.zzj().zzn().zza("Install Referrer Reporter is not available");
                            } else {
                                zzhc zzhcVar = new zzhc(zzhdVar, str3);
                                zzhdVar.zza.zzl().zzt();
                                Intent intent = new Intent("com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE");
                                intent.setComponent(new ComponentName("com.android.vending", "com.google.android.finsky.externalreferrer.GetInstallReferrerService"));
                                PackageManager packageManager = zzhdVar.zza.zza().getPackageManager();
                                if (packageManager == null) {
                                    zzhdVar.zza.zzj().zzw().zza("Failed to obtain Package Manager to verify binding conditions for Install Referrer");
                                } else {
                                    List<ResolveInfo> listQueryIntentServices = packageManager.queryIntentServices(intent, 0);
                                    if (listQueryIntentServices != null && !listQueryIntentServices.isEmpty()) {
                                        ResolveInfo resolveInfo = listQueryIntentServices.get(0);
                                        if (resolveInfo.serviceInfo != null) {
                                            String str4 = resolveInfo.serviceInfo.packageName;
                                            if (resolveInfo.serviceInfo.name != null && "com.android.vending".equals(str4) && zzhdVar.zza()) {
                                                try {
                                                    zzhdVar.zza.zzj().zzp().zza("Install Referrer Service is", ConnectionTracker.getInstance().bindService(zzhdVar.zza.zza(), new Intent(intent), zzhcVar, 1) ? "available" : "not available");
                                                } catch (RuntimeException e2) {
                                                    zzhdVar.zza.zzj().zzg().zza("Exception occurred while binding to Install Referrer Service", e2.getMessage());
                                                }
                                            } else {
                                                zzhdVar.zza.zzj().zzu().zza("Play Store version 8.3.73 or higher required for Install Referrer");
                                            }
                                        }
                                    } else {
                                        zzhdVar.zza.zzj().zzn().zza("Play Service for fetching Install Referrer is unavailable on device");
                                    }
                                }
                            }
                        }
                        zzl().zzt();
                        zzs();
                        Bundle bundle2 = new Bundle();
                        bundle2.putLong("_c", 1L);
                        bundle2.putLong("_r", 1L);
                        bundle2.putLong("_uwa", 0L);
                        bundle2.putLong("_pfo", 0L);
                        bundle2.putLong("_sys", 0L);
                        bundle2.putLong("_sysu", 0L);
                        bundle2.putLong("_et", 1L);
                        if (zzpVar.zzo) {
                            bundle2.putLong("_dac", 1L);
                        }
                        String str5 = (String) Preconditions.checkNotNull(zzpVar.zza);
                        zzam zzamVarZzf2 = zzf();
                        Preconditions.checkNotEmpty(str5);
                        zzamVarZzf2.zzt();
                        zzamVarZzf2.zzal();
                        long jZzb = zzamVarZzf2.zzb(str5, "first_open_count");
                        if (this.zzm.zza().getPackageManager() == null) {
                            zzj().zzg().zza("PackageManager is null, first open report might be inaccurate. appId", zzgi.zza(str5));
                            str = "_pfo";
                        } else {
                            try {
                                packageInfo = Wrappers.packageManager(this.zzm.zza()).getPackageInfo(str5, 0);
                            } catch (PackageManager.NameNotFoundException e3) {
                                zzj().zzg().zza("Package info is null, first open report might be inaccurate. appId", zzgi.zza(str5), e3);
                                packageInfo = null;
                            }
                            if (packageInfo == null || packageInfo.firstInstallTime == 0) {
                                str = "_pfo";
                                str2 = "_sysu";
                            } else {
                                str = "_pfo";
                                if (packageInfo.firstInstallTime != packageInfo.lastUpdateTime) {
                                    if (!zze().zza(zzbj.zzbr) || jZzb == 0) {
                                        bundle2.putLong("_uwa", 1L);
                                    }
                                    z = false;
                                } else {
                                    z = true;
                                }
                                str2 = "_sysu";
                                zza(new zzok("_fi", jCurrentTimeMillis, Long.valueOf(z ? 1L : 0L), "auto"), zzpVar);
                            }
                            try {
                                applicationInfo = Wrappers.packageManager(this.zzm.zza()).getApplicationInfo(str5, 0);
                            } catch (PackageManager.NameNotFoundException e4) {
                                zzj().zzg().zza("Application info is null, first open report might be inaccurate. appId", zzgi.zza(str5), e4);
                                applicationInfo = null;
                            }
                            if (applicationInfo != null) {
                                if ((applicationInfo.flags & 1) != 0) {
                                    j = 1;
                                    bundle2.putLong("_sys", 1L);
                                } else {
                                    j = 1;
                                }
                                if ((applicationInfo.flags & 128) != 0) {
                                    bundle2.putLong(str2, j);
                                }
                            }
                        }
                        if (jZzb >= 0) {
                            bundle2.putLong(str, jZzb);
                        }
                        zzb(new zzbh("_f", new zzbc(bundle2), "auto", jCurrentTimeMillis), zzpVar);
                    } else if (i2 == 1) {
                        zza(new zzok("_fvt", jCurrentTimeMillis, Long.valueOf(j2), "auto"), zzpVar);
                        zzl().zzt();
                        zzs();
                        Bundle bundle3 = new Bundle();
                        bundle3.putLong("_c", 1L);
                        bundle3.putLong("_r", 1L);
                        bundle3.putLong("_et", 1L);
                        if (zzpVar.zzo) {
                            bundle3.putLong("_dac", 1L);
                        }
                        zzb(new zzbh("_v", new zzbc(bundle3), "auto", jCurrentTimeMillis), zzpVar);
                    }
                } else if (zzpVar.zzi) {
                    zzb(new zzbh("_cd", new zzbc(new Bundle()), "auto", jCurrentTimeMillis), zzpVar);
                }
                zzf().zzw();
            } finally {
                zzf().zzu();
            }
        }
    }

    final void zzu() {
        this.zzs++;
    }

    final void zza(zzaf zzafVar) {
        zzp zzpVarZzc = zzc((String) Preconditions.checkNotNull(zzafVar.zza));
        if (zzpVarZzc != null) {
            zza(zzafVar, zzpVarZzc);
        }
    }

    final void zza(zzaf zzafVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzafVar);
        Preconditions.checkNotEmpty(zzafVar.zza);
        Preconditions.checkNotNull(zzafVar.zzc);
        Preconditions.checkNotEmpty(zzafVar.zzc.zza);
        zzl().zzt();
        zzs();
        if (zzi(zzpVar)) {
            if (!zzpVar.zzh) {
                zza(zzpVar);
                return;
            }
            zzf().zzp();
            try {
                zza(zzpVar);
                String str = (String) Preconditions.checkNotNull(zzafVar.zza);
                zzaf zzafVarZzc = zzf().zzc(str, zzafVar.zzc.zza);
                if (zzafVarZzc != null) {
                    zzj().zzc().zza("Removing conditional user property", zzafVar.zza, this.zzm.zzk().zzc(zzafVar.zzc.zza));
                    zzf().zza(str, zzafVar.zzc.zza);
                    if (zzafVarZzc.zze) {
                        zzf().zzh(str, zzafVar.zzc.zza);
                    }
                    if (zzafVar.zzk != null) {
                        zzc((zzbh) Preconditions.checkNotNull(zzq().zza(str, ((zzbh) Preconditions.checkNotNull(zzafVar.zzk)).zza, zzafVar.zzk.zzb != null ? zzafVar.zzk.zzb.zzb() : null, zzafVarZzc.zzb, zzafVar.zzk.zzd, true, true)), zzpVar);
                    }
                } else {
                    zzj().zzu().zza("Conditional user property doesn't exist", zzgi.zza(zzafVar.zza), this.zzm.zzk().zzc(zzafVar.zzc.zza));
                }
                zzf().zzw();
            } finally {
                zzf().zzu();
            }
        }
    }

    private static void zza(zzgn.zzf.zza zzaVar, String str) {
        List<zzgn.zzh> listZzf = zzaVar.zzf();
        for (int i = 0; i < listZzf.size(); i++) {
            if (str.equals(listZzf.get(i).zzg())) {
                zzaVar.zza(i);
                return;
            }
        }
    }

    final void zza(String str, zzp zzpVar) {
        zzl().zzt();
        zzs();
        if (zzi(zzpVar)) {
            if (!zzpVar.zzh) {
                zza(zzpVar);
                return;
            }
            Boolean boolZzh = zzh(zzpVar);
            if ("_npa".equals(str) && boolZzh != null) {
                zzj().zzc().zza("Falling back to manifest metadata value for ad personalization");
                zza(new zzok("_npa", zzb().currentTimeMillis(), Long.valueOf(boolZzh.booleanValue() ? 1L : 0L), "auto"), zzpVar);
                return;
            }
            zzj().zzc().zza("Removing user property", this.zzm.zzk().zzc(str));
            zzf().zzp();
            try {
                zza(zzpVar);
                if ("_id".equals(str)) {
                    zzf().zzh((String) Preconditions.checkNotNull(zzpVar.zza), "_lair");
                }
                zzf().zzh((String) Preconditions.checkNotNull(zzpVar.zza), str);
                zzf().zzw();
                zzj().zzc().zza("User property removed", this.zzm.zzk().zzc(str));
            } finally {
                zzf().zzu();
            }
        }
    }

    final void zze(zzp zzpVar) {
        if (this.zzz != null) {
            ArrayList arrayList = new ArrayList();
            this.zzaa = arrayList;
            arrayList.addAll(this.zzz);
        }
        zzam zzamVarZzf = zzf();
        String str = (String) Preconditions.checkNotNull(zzpVar.zza);
        Preconditions.checkNotEmpty(str);
        zzamVarZzf.zzt();
        zzamVarZzf.zzal();
        try {
            SQLiteDatabase sQLiteDatabaseM156e_ = zzamVarZzf.m156e_();
            String[] strArr = {str};
            int iDelete = sQLiteDatabaseM156e_.delete("apps", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete(DatabaseConstants.EVENT_TABLE_NAME, "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("events_snapshot", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("user_attributes", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("conditional_properties", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("raw_events", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("raw_events_metadata", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("queue", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("audience_filter_values", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("main_event_params", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("default_event_params", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("trigger_uris", "app_id=?", strArr) + sQLiteDatabaseM156e_.delete("upload_queue", "app_id=?", strArr);
            if (iDelete > 0) {
                zzamVarZzf.zzj().zzp().zza("Reset analytics data. app, records", str, Integer.valueOf(iDelete));
            }
        } catch (SQLiteException e) {
            zzamVarZzf.zzj().zzg().zza("Error resetting analytics data. appId, error", zzgi.zza(str), e);
        }
        if (zzpVar.zzh) {
            zzd(zzpVar);
        }
    }

    final void zzf(zzp zzpVar) {
        zzl().zzt();
        zzs();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzaz zzazVarZza = zzaz.zza(zzpVar.zzz);
        zzj().zzp().zza("Setting DMA consent for package", zzpVar.zza, zzazVarZza);
        String str = zzpVar.zza;
        zzl().zzt();
        zzs();
        zzjb zzjbVarZzc = zzaz.zza(zza(str), 100).zzc();
        this.zzad.put(str, zzazVarZza);
        zzf().zza(str, zzazVarZza);
        zzjb zzjbVarZzc2 = zzaz.zza(zza(str), 100).zzc();
        zzl().zzt();
        zzs();
        boolean z = true;
        boolean z2 = zzjbVarZzc == zzjb.DENIED && zzjbVarZzc2 == zzjb.GRANTED;
        boolean z3 = zzjbVarZzc == zzjb.GRANTED && zzjbVarZzc2 == zzjb.DENIED;
        if (zze().zza(zzbj.zzcp)) {
            if (!z2 && !z3) {
                z = false;
            }
            z2 = z;
        }
        if (z2) {
            zzj().zzp().zza("Generated _dcu event for", str);
            Bundle bundle = new Bundle();
            if (zzf().zza(zzx(), str, false, false, false, false, false, false).zzf < zze().zzb(str, zzbj.zzay)) {
                bundle.putLong("_r", 1L);
                zzj().zzp().zza("_dcu realtime event count", str, Long.valueOf(zzf().zza(zzx(), str, false, false, false, false, false, true).zzf));
            }
            this.zzah.zza(str, "_dcu", bundle);
        }
    }

    public final void zza(String str, zzlh zzlhVar) {
        zzl().zzt();
        String str2 = this.zzag;
        if (str2 == null || str2.equals(str) || zzlhVar != null) {
            this.zzag = str;
            this.zzaf = zzlhVar;
        }
    }

    final void zzg(zzp zzpVar) {
        zzl().zzt();
        zzs();
        Preconditions.checkNotEmpty(zzpVar.zza);
        zzjc zzjcVarZza = zzjc.zza(zzpVar.zzt, zzpVar.zzy);
        zzjc zzjcVarZzb = zzb(zzpVar.zza);
        zzj().zzp().zza("Setting storage consent for package", zzpVar.zza, zzjcVarZza);
        zza(zzpVar.zza, zzjcVarZza);
        if (!(zzpd.zza() && zze().zza(zzbj.zzdc)) && zzjcVarZza.zzc(zzjcVarZzb)) {
            zze(zzpVar);
        }
    }

    private final void zza(List<Long> list) {
        Preconditions.checkArgument(!list.isEmpty());
        if (this.zzz != null) {
            zzj().zzg().zza("Set uploading progress before finishing the previous upload");
        } else {
            this.zzz = new ArrayList(list);
        }
    }

    protected final void zzv() {
        int iDelete;
        zzl().zzt();
        zzf().zzv();
        zzam zzamVarZzf = zzf();
        zzamVarZzf.zzt();
        zzamVarZzf.zzal();
        if (zzamVarZzf.zzaa() && zzbj.zzbh.zza(null).longValue() != 0 && (iDelete = zzamVarZzf.m156e_().delete("trigger_uris", "abs(timestamp_millis - ?) > cast(? as integer)", new String[]{String.valueOf(zzamVarZzf.zzb().currentTimeMillis()), String.valueOf(zzbj.zzbh.zza(null))})) > 0) {
            zzamVarZzf.zzj().zzp().zza("Deleted stale trigger uris. rowsDeleted", Integer.valueOf(iDelete));
        }
        if (this.zzj.zzd.zza() == 0) {
            this.zzj.zzd.zza(zzb().currentTimeMillis());
        }
        zzac();
    }

    final void zzb(zzaf zzafVar) {
        zzp zzpVarZzc = zzc((String) Preconditions.checkNotNull(zzafVar.zza));
        if (zzpVarZzc != null) {
            zzb(zzafVar, zzpVarZzc);
        }
    }

    final void zzb(zzaf zzafVar, zzp zzpVar) {
        Preconditions.checkNotNull(zzafVar);
        Preconditions.checkNotEmpty(zzafVar.zza);
        Preconditions.checkNotNull(zzafVar.zzb);
        Preconditions.checkNotNull(zzafVar.zzc);
        Preconditions.checkNotEmpty(zzafVar.zzc.zza);
        zzl().zzt();
        zzs();
        if (zzi(zzpVar)) {
            if (!zzpVar.zzh) {
                zza(zzpVar);
                return;
            }
            zzaf zzafVar2 = new zzaf(zzafVar);
            boolean z = false;
            zzafVar2.zze = false;
            zzf().zzp();
            try {
                zzaf zzafVarZzc = zzf().zzc((String) Preconditions.checkNotNull(zzafVar2.zza), zzafVar2.zzc.zza);
                if (zzafVarZzc != null && !zzafVarZzc.zzb.equals(zzafVar2.zzb)) {
                    zzj().zzu().zza("Updating a conditional user property with different origin. name, origin, origin (from DB)", this.zzm.zzk().zzc(zzafVar2.zzc.zza), zzafVar2.zzb, zzafVarZzc.zzb);
                }
                if (zzafVarZzc != null && zzafVarZzc.zze) {
                    zzafVar2.zzb = zzafVarZzc.zzb;
                    zzafVar2.zzd = zzafVarZzc.zzd;
                    zzafVar2.zzh = zzafVarZzc.zzh;
                    zzafVar2.zzf = zzafVarZzc.zzf;
                    zzafVar2.zzi = zzafVarZzc.zzi;
                    zzafVar2.zze = zzafVarZzc.zze;
                    zzafVar2.zzc = new zzok(zzafVar2.zzc.zza, zzafVarZzc.zzc.zzb, zzafVar2.zzc.zza(), zzafVarZzc.zzc.zze);
                } else if (TextUtils.isEmpty(zzafVar2.zzf)) {
                    zzafVar2.zzc = new zzok(zzafVar2.zzc.zza, zzafVar2.zzd, zzafVar2.zzc.zza(), zzafVar2.zzc.zze);
                    z = true;
                    zzafVar2.zze = true;
                }
                if (zzafVar2.zze) {
                    zzok zzokVar = zzafVar2.zzc;
                    zzom zzomVar = new zzom((String) Preconditions.checkNotNull(zzafVar2.zza), zzafVar2.zzb, zzokVar.zza, zzokVar.zzb, Preconditions.checkNotNull(zzokVar.zza()));
                    if (zzf().zza(zzomVar)) {
                        zzj().zzc().zza("User property updated immediately", zzafVar2.zza, this.zzm.zzk().zzc(zzomVar.zzc), zzomVar.zze);
                    } else {
                        zzj().zzg().zza("(2)Too many active user properties, ignoring", zzgi.zza(zzafVar2.zza), this.zzm.zzk().zzc(zzomVar.zzc), zzomVar.zze);
                    }
                    if (z && zzafVar2.zzi != null) {
                        zzc(new zzbh(zzafVar2.zzi, zzafVar2.zzd), zzpVar);
                    }
                }
                if (zzf().zza(zzafVar2)) {
                    zzj().zzc().zza("Conditional property added", zzafVar2.zza, this.zzm.zzk().zzc(zzafVar2.zzc.zza), zzafVar2.zzc.zza());
                } else {
                    zzj().zzg().zza("Too many conditional properties, ignoring", zzgi.zza(zzafVar2.zza), this.zzm.zzk().zzc(zzafVar2.zzc.zza), zzafVar2.zzc.zza());
                }
                zzf().zzw();
            } finally {
                zzf().zzu();
            }
        }
    }

    private final void zzac() {
        long jMax;
        long jMax2;
        zzl().zzt();
        zzs();
        if (this.zzp > 0) {
            long jAbs = DateUtils.MILLIS_PER_HOUR - Math.abs(zzb().elapsedRealtime() - this.zzp);
            if (jAbs > 0) {
                zzj().zzp().zza("Upload has been suspended. Will update scheduling later in approximately ms", Long.valueOf(jAbs));
                zzy().zzb();
                zzz().zzu();
                return;
            }
            this.zzp = 0L;
        }
        if (!this.zzm.zzaf() || !zzad()) {
            zzj().zzp().zza("Nothing to upload or uploading impossible");
            zzy().zzb();
            zzz().zzu();
            return;
        }
        long jCurrentTimeMillis = zzb().currentTimeMillis();
        zze();
        long jMax3 = Math.max(0L, zzbj.zzab.zza(null).longValue());
        boolean z = zzf().zzz() || zzf().zzy();
        if (z) {
            String strZzu = zze().zzu();
            if (!TextUtils.isEmpty(strZzu) && !".none.".equals(strZzu)) {
                zze();
                jMax = Math.max(0L, zzbj.zzw.zza(null).longValue());
            } else {
                zze();
                jMax = Math.max(0L, zzbj.zzv.zza(null).longValue());
            }
        } else {
            zze();
            jMax = Math.max(0L, zzbj.zzu.zza(null).longValue());
        }
        long jZza = this.zzj.zzd.zza();
        long jZza2 = this.zzj.zze.zza();
        long j = jMax;
        long jMax4 = Math.max(zzf().m154c_(), zzf().m155d_());
        if (jMax4 == 0) {
            jMax2 = 0;
        } else {
            long jAbs2 = jCurrentTimeMillis - Math.abs(jMax4 - jCurrentTimeMillis);
            long jAbs3 = jCurrentTimeMillis - Math.abs(jZza - jCurrentTimeMillis);
            long jAbs4 = jCurrentTimeMillis - Math.abs(jZza2 - jCurrentTimeMillis);
            long jMax5 = Math.max(jAbs3, jAbs4);
            jMax2 = jAbs2 + jMax3;
            if (z && jMax5 > 0) {
                jMax2 = Math.min(jAbs2, jMax5) + j;
            }
            if (!zzp().zza(jMax5, j)) {
                jMax2 = jMax5 + j;
            }
            if (jAbs4 != 0 && jAbs4 >= jAbs2) {
                int i = 0;
                while (true) {
                    zze();
                    if (i >= Math.min(20, Math.max(0, zzbj.zzad.zza(null).intValue()))) {
                        break;
                    }
                    zze();
                    jMax2 += Math.max(0L, zzbj.zzac.zza(null).longValue()) * (1 << i);
                    if (jMax2 > jAbs4) {
                        break;
                    } else {
                        i++;
                    }
                }
                jMax2 = 0;
            }
        }
        if (jMax2 == 0) {
            zzj().zzp().zza("Next upload time is 0");
            zzy().zzb();
            zzz().zzu();
            return;
        }
        if (!zzh().zzu()) {
            zzj().zzp().zza("No network");
            zzy().zza();
            zzz().zzu();
            return;
        }
        long jZza3 = this.zzj.zzc.zza();
        zze();
        long jMax6 = Math.max(0L, zzbj.zzs.zza(null).longValue());
        if (!zzp().zza(jZza3, jMax6)) {
            jMax2 = Math.max(jMax2, jZza3 + jMax6);
        }
        zzy().zzb();
        long jCurrentTimeMillis2 = jMax2 - zzb().currentTimeMillis();
        if (jCurrentTimeMillis2 <= 0) {
            zze();
            jCurrentTimeMillis2 = Math.max(0L, zzbj.zzx.zza(null).longValue());
            this.zzj.zzd.zza(zzb().currentTimeMillis());
        }
        zzj().zzp().zza("Upload scheduled in approximately ms", Long.valueOf(jCurrentTimeMillis2));
        zzz().zza(jCurrentTimeMillis2);
    }

    private final void zza(String str, zzjc zzjcVar) {
        zzl().zzt();
        zzs();
        this.zzac.put(str, zzjcVar);
        zzf().zzb(str, zzjcVar);
    }

    private final void zza(String str, boolean z, Long l, Long l2) {
        zzh zzhVarZze = zzf().zze(str);
        if (zzhVarZze != null) {
            zzhVarZze.zzd(z);
            zzhVarZze.zza(l);
            zzhVarZze.zzb(l2);
            if (zzhVarZze.zzas()) {
                zzf().zza(zzhVarZze, false, false);
            }
        }
    }

    final void zza(zzok zzokVar, zzp zzpVar) {
        zzom zzomVarZze;
        long jLongValue;
        zzl().zzt();
        zzs();
        if (zzi(zzpVar)) {
            if (!zzpVar.zzh) {
                zza(zzpVar);
                return;
            }
            int iZzb = zzq().zzb(zzokVar.zza);
            int length = 0;
            if (iZzb != 0) {
                zzq();
                String str = zzokVar.zza;
                zze();
                String strZza = zzop.zza(str, 24, true);
                int length2 = zzokVar.zza != null ? zzokVar.zza.length() : 0;
                zzq();
                zzop.zza(this.zzah, zzpVar.zza, iZzb, "_ev", strZza, length2);
                return;
            }
            int iZza = zzq().zza(zzokVar.zza, zzokVar.zza());
            if (iZza != 0) {
                zzq();
                String str2 = zzokVar.zza;
                zze();
                String strZza2 = zzop.zza(str2, 24, true);
                Object objZza = zzokVar.zza();
                if (objZza != null && ((objZza instanceof String) || (objZza instanceof CharSequence))) {
                    length = String.valueOf(objZza).length();
                }
                zzq();
                zzop.zza(this.zzah, zzpVar.zza, iZza, "_ev", strZza2, length);
                return;
            }
            Object objZzc = zzq().zzc(zzokVar.zza, zzokVar.zza());
            if (objZzc == null) {
                return;
            }
            if ("_sid".equals(zzokVar.zza)) {
                long j = zzokVar.zzb;
                String str3 = zzokVar.zze;
                String str4 = (String) Preconditions.checkNotNull(zzpVar.zza);
                zzom zzomVarZze2 = zzf().zze(str4, "_sno");
                if (zzomVarZze2 != null && (zzomVarZze2.zze instanceof Long)) {
                    jLongValue = ((Long) zzomVarZze2.zze).longValue();
                } else {
                    if (zzomVarZze2 != null) {
                        zzj().zzu().zza("Retrieved last session number from database does not contain a valid (long) value", zzomVarZze2.zze);
                    }
                    zzbd zzbdVarZzd = zzf().zzd(str4, "_s");
                    if (zzbdVarZzd != null) {
                        jLongValue = zzbdVarZzd.zzc;
                        zzj().zzp().zza("Backfill the session number. Last used session number", Long.valueOf(jLongValue));
                    } else {
                        jLongValue = 0;
                    }
                }
                zza(new zzok("_sno", j, Long.valueOf(jLongValue + 1), str3), zzpVar);
            }
            zzom zzomVar = new zzom((String) Preconditions.checkNotNull(zzpVar.zza), (String) Preconditions.checkNotNull(zzokVar.zze), zzokVar.zza, zzokVar.zzb, objZzc);
            zzj().zzp().zza("Setting user property", this.zzm.zzk().zzc(zzomVar.zzc), objZzc);
            zzf().zzp();
            try {
                if ("_id".equals(zzomVar.zzc) && (zzomVarZze = zzf().zze(zzpVar.zza, "_id")) != null && !zzomVar.zze.equals(zzomVarZze.zze)) {
                    zzf().zzh(zzpVar.zza, "_lair");
                }
                zza(zzpVar);
                boolean zZza = zzf().zza(zzomVar);
                if ("_sid".equals(zzokVar.zza)) {
                    long jZza = zzp().zza(zzpVar.zzv);
                    zzh zzhVarZze = zzf().zze(zzpVar.zza);
                    if (zzhVarZze != null) {
                        zzhVarZze.zzs(jZza);
                        if (zzhVarZze.zzas()) {
                            zzf().zza(zzhVarZze, false, false);
                        }
                    }
                }
                zzf().zzw();
                if (!zZza) {
                    zzj().zzg().zza("Too many unique user properties are set. Ignoring user property", this.zzm.zzk().zzc(zzomVar.zzc), zzomVar.zze);
                    zzq();
                    zzop.zza(this.zzah, zzpVar.zza, 9, (String) null, (String) null, 0);
                }
            } finally {
                zzf().zzu();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x056d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void zzw() {
        /*
            Method dump skipped, instruction units count: 1563
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zzw():void");
    }

    private final void zze(String str) {
        zzl().zzt();
        zzs();
        this.zzw = true;
        try {
            Boolean boolZzab = this.zzm.zzr().zzab();
            if (boolZzab == null) {
                zzj().zzu().zza("Upload data called on the client side before use of service was decided");
                return;
            }
            if (boolZzab.booleanValue()) {
                zzj().zzg().zza("Upload called in the client side when service should be used");
                return;
            }
            if (this.zzp > 0) {
                zzac();
                return;
            }
            if (zzae()) {
                zzj().zzp().zza("Uploading requested multiple times");
                return;
            }
            if (!zzh().zzu()) {
                zzj().zzp().zza("Network not connected, ignoring upload request");
                zzac();
                return;
            }
            if (!zzf().zzs(str)) {
                zzj().zzp().zza("Upload queue has no batches for appId", str);
                return;
            }
            zzog zzogVarZzj = zzf().zzj(str);
            if (zzogVarZzj == null) {
                return;
            }
            zzgn.zzj zzjVarZzb = zzogVarZzj.zzb();
            if (zzjVarZzb == null) {
                return;
            }
            String strZza = zzp().zza(zzjVarZzb);
            byte[] bArrZzca = zzjVarZzb.zzca();
            zzj().zzp().zza("Uploading data from upload queue. appId, uncompressed size, data", str, Integer.valueOf(bArrZzca.length), strZza);
            try {
                this.zzv = true;
                zzh().zza(str, new URL(zzogVarZzj.zzc()), bArrZzca, zzogVarZzj.zzd(), new zznz(this, str, zzogVarZzj));
            } catch (MalformedURLException unused) {
                zzj().zzg().zza("Failed to parse URL. Not uploading MeasurementBatch. appId", zzgi.zza(str), zzogVarZzj.zzc());
            }
        } finally {
            this.zzw = false;
            zzaa();
        }
    }

    private final void zza(String str, zzgn.zzh.zza zzaVar, Bundle bundle, String str2) {
        int iZzb;
        List listListOf = CollectionUtils.listOf((Object[]) new String[]{"_o", "_sn", "_sc", "_si"});
        if (zzop.zzg(zzaVar.zzf()) || zzop.zzg(str)) {
            iZzb = zze().zzb(str2, true);
        } else {
            iZzb = zze().zza(str2, true);
        }
        long j = iZzb;
        long jCodePointCount = zzaVar.zzg().codePointCount(0, zzaVar.zzg().length());
        zzq();
        String strZzf = zzaVar.zzf();
        zze();
        String strZza = zzop.zza(strZzf, 40, true);
        if (jCodePointCount <= j || listListOf.contains(zzaVar.zzf())) {
            return;
        }
        if ("_ev".equals(zzaVar.zzf())) {
            zzq();
            bundle.putString("_ev", zzop.zza(zzaVar.zzg(), zze().zzb(str2, true), true));
            return;
        }
        zzj().zzv().zza("Param value is too long; discarded. Name, value length", strZza, Long.valueOf(jCodePointCount));
        if (bundle.getLong("_err") == 0) {
            bundle.putLong("_err", 4L);
            if (bundle.getString("_ev") == null) {
                bundle.putString("_ev", strZza);
                bundle.putLong("_el", jCodePointCount);
            }
        }
        bundle.remove(zzaVar.zzf());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:245:0x0746  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0a34 A[Catch: all -> 0x0a81, TryCatch #1 {all -> 0x0a81, blocks: (B:56:0x0197, B:59:0x01a6, B:61:0x01b0, B:66:0x01bc, B:114:0x0356, B:116:0x03a4, B:118:0x03aa, B:119:0x03c1, B:123:0x03d2, B:125:0x03ea, B:127:0x03f2, B:128:0x0409, B:133:0x042b, B:137:0x0451, B:138:0x0468, B:141:0x0477, B:144:0x0496, B:145:0x04b0, B:147:0x04ba, B:149:0x04c8, B:151:0x04ce, B:152:0x04d7, B:154:0x04e3, B:156:0x04ed, B:158:0x04f7, B:160:0x04fd, B:162:0x0501, B:163:0x050d, B:165:0x0519, B:166:0x052e, B:168:0x0551, B:171:0x0568, B:174:0x05a7, B:176:0x05d5, B:178:0x0613, B:179:0x0618, B:181:0x0620, B:182:0x0625, B:184:0x062d, B:185:0x0632, B:187:0x063a, B:188:0x063f, B:190:0x0648, B:191:0x064e, B:193:0x065b, B:194:0x0660, B:196:0x0687, B:198:0x068f, B:199:0x0694, B:201:0x069a, B:203:0x06a8, B:205:0x06b3, B:209:0x06c8, B:214:0x06d7, B:216:0x06de, B:220:0x06eb, B:224:0x06f8, B:228:0x0705, B:232:0x0712, B:236:0x071f, B:240:0x072a, B:244:0x0737, B:246:0x0748, B:248:0x074e, B:249:0x0753, B:251:0x0762, B:252:0x0765, B:254:0x0781, B:256:0x0785, B:258:0x078f, B:260:0x0799, B:262:0x079d, B:264:0x07a8, B:265:0x07b3, B:267:0x07b9, B:269:0x07c5, B:271:0x07cf, B:273:0x07db, B:275:0x07e7, B:277:0x07ed, B:280:0x0806, B:282:0x080c, B:283:0x0817, B:285:0x081d, B:289:0x0849, B:286:0x0827, B:288:0x0833, B:290:0x0855, B:292:0x089c, B:294:0x08a6, B:295:0x08a9, B:297:0x08b5, B:299:0x08d5, B:300:0x08e2, B:302:0x091a, B:304:0x0920, B:306:0x092a, B:307:0x0937, B:309:0x0941, B:310:0x094e, B:311:0x0959, B:313:0x095f, B:315:0x099d, B:317:0x09a7, B:319:0x09b9, B:321:0x09bf, B:322:0x09cf, B:324:0x09d7, B:325:0x09dd, B:327:0x09e3, B:336:0x0a2e, B:338:0x0a34, B:341:0x0a50, B:330:0x09f1, B:332:0x0a1b, B:340:0x0a3a, B:175:0x05c7, B:72:0x01d5, B:74:0x01df, B:76:0x01f6, B:82:0x0212, B:89:0x024e, B:91:0x0254, B:93:0x0262, B:95:0x027b, B:98:0x0282, B:111:0x031f, B:113:0x0329, B:99:0x02b3, B:100:0x02d1, B:102:0x02dd, B:110:0x0307, B:109:0x02f6, B:85:0x0220, B:88:0x0244), top: B:350:0x0197, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01cb  */
    /* JADX WARN: Type inference failed for: r12v17 */
    /* JADX WARN: Type inference failed for: r12v18, types: [int] */
    /* JADX WARN: Type inference failed for: r12v39 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzc(com.google.android.gms.measurement.internal.zzbh r39, com.google.android.gms.measurement.internal.zzp r40) {
        /*
            Method dump skipped, instruction units count: 2699
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zzc(com.google.android.gms.measurement.internal.zzbh, com.google.android.gms.measurement.internal.zzp):void");
    }

    private static boolean zzi(zzp zzpVar) {
        return (TextUtils.isEmpty(zzpVar.zzb) && TextUtils.isEmpty(zzpVar.zzp)) ? false : true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:183:0x05b7 A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:214:0x066e  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x067a A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:229:0x06cb A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0722 A[PHI: r5 r7
      0x0722: PHI (r5v83 com.google.android.gms.internal.measurement.zzgn$zzk$zza) = 
      (r5v82 com.google.android.gms.internal.measurement.zzgn$zzk$zza)
      (r5v82 com.google.android.gms.internal.measurement.zzgn$zzk$zza)
      (r5v86 com.google.android.gms.internal.measurement.zzgn$zzk$zza)
     binds: [B:230:0x06d9, B:232:0x06ec, B:228:0x06c6] A[DONT_GENERATE, DONT_INLINE]
      0x0722: PHI (r7v81 int) = (r7v80 int), (r7v80 int), (r7v91 int) binds: [B:230:0x06d9, B:232:0x06ec, B:228:0x06c6] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:243:0x072e A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:276:0x0862  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x08b2 A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00f9 A[Catch: SQLiteException -> 0x0227, all -> 0x1134, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0227, blocks: (B:21:0x007e, B:38:0x00d0, B:40:0x00f9, B:44:0x0111, B:45:0x0115, B:46:0x0127, B:48:0x012d, B:49:0x013e, B:51:0x014a, B:53:0x0170, B:55:0x019e, B:60:0x01b7, B:61:0x01c0, B:63:0x01cb, B:71:0x0202, B:70:0x01f1, B:52:0x0161, B:78:0x0210), top: B:567:0x007e }] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0d86 A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:442:0x0dab A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0111 A[Catch: SQLiteException -> 0x0227, all -> 0x1134, TRY_ENTER, TRY_LEAVE, TryCatch #0 {SQLiteException -> 0x0227, blocks: (B:21:0x007e, B:38:0x00d0, B:40:0x00f9, B:44:0x0111, B:45:0x0115, B:46:0x0127, B:48:0x012d, B:49:0x013e, B:51:0x014a, B:53:0x0170, B:55:0x019e, B:60:0x01b7, B:61:0x01c0, B:63:0x01cb, B:71:0x0202, B:70:0x01f1, B:52:0x0161, B:78:0x0210), top: B:567:0x007e }] */
    /* JADX WARN: Removed duplicated region for block: B:519:0x0ff6 A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:522:0x1015 A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:523:0x1019 A[Catch: all -> 0x113c, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:562:0x1138 A[Catch: all -> 0x113c, TRY_ENTER, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Removed duplicated region for block: B:641:? A[Catch: all -> 0x113c, SYNTHETIC, TRY_LEAVE, TryCatch #6 {all -> 0x113c, blocks: (B:3:0x000d, B:18:0x0075, B:94:0x024e, B:96:0x0252, B:99:0x025c, B:100:0x0272, B:103:0x028a, B:106:0x02b4, B:108:0x02e9, B:111:0x02fa, B:113:0x0304, B:278:0x0882, B:115:0x032b, B:117:0x0339, B:120:0x0355, B:122:0x035b, B:124:0x036d, B:126:0x037b, B:128:0x038b, B:129:0x0398, B:130:0x039d, B:132:0x03b3, B:183:0x05b7, B:184:0x05c3, B:187:0x05cd, B:193:0x05f0, B:190:0x05df, B:196:0x05f6, B:198:0x0602, B:200:0x060e, B:212:0x064f, B:216:0x0670, B:218:0x067a, B:221:0x068d, B:223:0x06a0, B:225:0x06ae, B:241:0x0728, B:243:0x072e, B:245:0x073a, B:247:0x0740, B:248:0x074c, B:250:0x0752, B:252:0x0762, B:254:0x076c, B:255:0x077f, B:257:0x0785, B:258:0x07a0, B:260:0x07a6, B:261:0x07c8, B:262:0x07d3, B:266:0x07fd, B:263:0x07d9, B:265:0x07e7, B:267:0x0809, B:268:0x0823, B:270:0x0829, B:272:0x083d, B:273:0x084c, B:275:0x0856, B:277:0x0868, B:229:0x06cb, B:231:0x06db, B:234:0x06f0, B:236:0x0703, B:238:0x0711, B:204:0x062c, B:208:0x063f, B:210:0x0645, B:213:0x0668, B:135:0x03c9, B:141:0x03e2, B:144:0x03ec, B:146:0x03fa, B:150:0x044b, B:147:0x041c, B:149:0x042c, B:154:0x0458, B:156:0x0486, B:157:0x04b2, B:159:0x04e6, B:161:0x04ec, B:164:0x04f8, B:166:0x052d, B:167:0x0548, B:169:0x054e, B:171:0x055c, B:175:0x0573, B:172:0x0568, B:178:0x057a, B:180:0x0580, B:181:0x059e, B:281:0x0893, B:283:0x08a1, B:285:0x08aa, B:296:0x08db, B:286:0x08b2, B:288:0x08bb, B:290:0x08c1, B:293:0x08cd, B:295:0x08d5, B:297:0x08de, B:298:0x08ea, B:301:0x08f2, B:303:0x0904, B:304:0x090f, B:306:0x0917, B:310:0x093c, B:312:0x095d, B:314:0x0972, B:316:0x0978, B:318:0x0984, B:320:0x099e, B:321:0x09b0, B:322:0x09b3, B:323:0x09c2, B:325:0x09c8, B:327:0x09d8, B:328:0x09df, B:330:0x09eb, B:331:0x09f2, B:332:0x09f5, B:334:0x0a00, B:336:0x0a0c, B:338:0x0a45, B:340:0x0a4b, B:346:0x0a72, B:348:0x0a78, B:349:0x0a81, B:351:0x0a87, B:341:0x0a59, B:343:0x0a5f, B:345:0x0a65, B:352:0x0a8d, B:354:0x0a93, B:356:0x0aa5, B:358:0x0ab4, B:360:0x0ac4, B:363:0x0acd, B:365:0x0ad3, B:366:0x0ae8, B:368:0x0aee, B:370:0x0afe, B:372:0x0b16, B:374:0x0b28, B:376:0x0b4b, B:378:0x0b76, B:379:0x0ba3, B:380:0x0bae, B:381:0x0bb2, B:383:0x0bb8, B:385:0x0bc4, B:387:0x0c22, B:389:0x0c32, B:390:0x0c45, B:392:0x0c4b, B:395:0x0c66, B:397:0x0c81, B:399:0x0c97, B:401:0x0c9c, B:403:0x0ca0, B:405:0x0ca4, B:407:0x0cb0, B:408:0x0cb8, B:410:0x0cbc, B:412:0x0cc4, B:413:0x0cd2, B:414:0x0cdd, B:485:0x0f29, B:416:0x0ce9, B:420:0x0d1b, B:421:0x0d23, B:423:0x0d29, B:425:0x0d3b, B:427:0x0d3f, B:441:0x0d86, B:442:0x0dab, B:444:0x0db7, B:446:0x0dcd, B:448:0x0e0c, B:452:0x0e24, B:454:0x0e2b, B:456:0x0e3c, B:458:0x0e40, B:460:0x0e44, B:462:0x0e48, B:463:0x0e54, B:464:0x0e59, B:466:0x0e5f, B:468:0x0e7e, B:469:0x0e87, B:484:0x0f26, B:470:0x0e9f, B:472:0x0ea6, B:476:0x0ec6, B:478:0x0ef0, B:479:0x0efe, B:480:0x0f0e, B:482:0x0f16, B:473:0x0eb1, B:429:0x0d4d, B:431:0x0d51, B:433:0x0d5b, B:435:0x0d5f, B:439:0x0d72, B:486:0x0f36, B:488:0x0f42, B:489:0x0f49, B:490:0x0f51, B:492:0x0f57, B:495:0x0f6f, B:497:0x0f7f, B:525:0x1024, B:527:0x102a, B:529:0x103a, B:532:0x1041, B:537:0x1072, B:533:0x1049, B:535:0x1055, B:536:0x105b, B:538:0x1083, B:539:0x109a, B:542:0x10a2, B:543:0x10a7, B:544:0x10b7, B:546:0x10d1, B:547:0x10ea, B:548:0x10f2, B:553:0x1114, B:552:0x1103, B:498:0x0f98, B:500:0x0f9e, B:502:0x0fa8, B:504:0x0faf, B:510:0x0fbf, B:512:0x0fc6, B:514:0x0fcc, B:516:0x0fd8, B:518:0x0fe5, B:520:0x0ff9, B:522:0x1015, B:524:0x101c, B:523:0x1019, B:519:0x0ff6, B:511:0x0fc3, B:503:0x0fac, B:386:0x0bf7, B:313:0x096f, B:307:0x091c, B:309:0x0922, B:556:0x1124, B:42:0x010c, B:57:0x01b1, B:66:0x01eb, B:74:0x020a, B:80:0x0223, B:93:0x024b, B:562:0x1138, B:563:0x113b, B:34:0x00c2, B:45:0x0115), top: B:575:0x000d, inners: #5, #7 }] */
    /* JADX WARN: Type inference failed for: r41v0, types: [com.google.android.gms.measurement.internal.zznv] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.measurement.internal.zzoe] */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r7v88, types: [android.os.Bundle] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean zza(java.lang.String r42, long r43) {
        /*
            Method dump skipped, instruction units count: 4422
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zznv.zza(java.lang.String, long):boolean");
    }

    private final boolean zzad() {
        zzl().zzt();
        zzs();
        return zzf().zzx() || !TextUtils.isEmpty(zzf().m157f_());
    }

    private final boolean zzae() {
        zzl().zzt();
        return this.zzz != null;
    }

    private final boolean zzaf() {
        zzl().zzt();
        FileLock fileLock = this.zzx;
        if (fileLock != null && fileLock.isValid()) {
            zzj().zzp().zza("Storage concurrent access okay");
            return true;
        }
        try {
            FileChannel channel = new RandomAccessFile(new File(com.google.android.gms.internal.measurement.zzcf.zza().zza(this.zzm.zza().getFilesDir(), "google_app_measurement.db")), "rw").getChannel();
            this.zzy = channel;
            FileLock fileLockTryLock = channel.tryLock();
            this.zzx = fileLockTryLock;
            if (fileLockTryLock != null) {
                zzj().zzp().zza("Storage concurrent access okay");
                return true;
            }
            zzj().zzg().zza("Storage concurrent data access panic");
            return false;
        } catch (FileNotFoundException e) {
            zzj().zzg().zza("Failed to acquire storage lock", e);
            return false;
        } catch (IOException e2) {
            zzj().zzg().zza("Failed to access storage lock file", e2);
            return false;
        } catch (OverlappingFileLockException e3) {
            zzj().zzu().zza("Storage lock already acquired", e3);
            return false;
        }
    }

    private final boolean zza(zzgn.zzf.zza zzaVar, zzgn.zzf.zza zzaVar2) {
        Preconditions.checkArgument("_e".equals(zzaVar.zze()));
        zzp();
        zzgn.zzh zzhVarZza = zzol.zza((zzgn.zzf) ((com.google.android.gms.internal.measurement.zzlc) zzaVar.zzai()), "_sc");
        String strZzh = zzhVarZza == null ? null : zzhVarZza.zzh();
        zzp();
        zzgn.zzh zzhVarZza2 = zzol.zza((zzgn.zzf) ((com.google.android.gms.internal.measurement.zzlc) zzaVar2.zzai()), "_pc");
        String strZzh2 = zzhVarZza2 != null ? zzhVarZza2.zzh() : null;
        if (strZzh2 == null || !strZzh2.equals(strZzh)) {
            return false;
        }
        Preconditions.checkArgument("_e".equals(zzaVar.zze()));
        zzp();
        zzgn.zzh zzhVarZza3 = zzol.zza((zzgn.zzf) ((com.google.android.gms.internal.measurement.zzlc) zzaVar.zzai()), "_et");
        if (zzhVarZza3 == null || !zzhVarZza3.zzl() || zzhVarZza3.zzd() <= 0) {
            return true;
        }
        long jZzd = zzhVarZza3.zzd();
        zzp();
        zzgn.zzh zzhVarZza4 = zzol.zza((zzgn.zzf) ((com.google.android.gms.internal.measurement.zzlc) zzaVar2.zzai()), "_et");
        if (zzhVarZza4 != null && zzhVarZza4.zzd() > 0) {
            jZzd += zzhVarZza4.zzd();
        }
        zzp();
        zzol.zza(zzaVar2, "_et", Long.valueOf(jZzd));
        zzp();
        zzol.zza(zzaVar, "_fr", (Object) 1L);
        return true;
    }

    private final boolean zza(int i, FileChannel fileChannel) {
        zzl().zzt();
        if (fileChannel == null || !fileChannel.isOpen()) {
            zzj().zzg().zza("Bad channel to read from");
            return false;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(4);
        byteBufferAllocate.putInt(i);
        byteBufferAllocate.flip();
        try {
            fileChannel.truncate(0L);
            fileChannel.write(byteBufferAllocate);
            fileChannel.force(true);
            if (fileChannel.size() != 4) {
                zzj().zzg().zza("Error writing to channel. Bytes written", Long.valueOf(fileChannel.size()));
            }
            return true;
        } catch (IOException e) {
            zzj().zzg().zza("Failed to write to channel", e);
            return false;
        }
    }
}
