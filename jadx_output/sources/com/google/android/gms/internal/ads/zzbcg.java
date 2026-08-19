package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.ConditionVariable;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-api@@24.2.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzbcg implements SharedPreferences.OnSharedPreferenceChangeListener {
    private Context zzg;
    private final Object zzb = new Object();
    private final ConditionVariable zzc = new ConditionVariable();
    private volatile boolean zzd = false;
    volatile boolean zza = false;
    private SharedPreferences zze = null;
    private Bundle zzf = new Bundle();
    private JSONObject zzh = new JSONObject();
    private boolean zzi = false;
    private boolean zzj = false;

    private final void zzg(final SharedPreferences sharedPreferences) {
        if (sharedPreferences != null) {
            try {
                this.zzh = new JSONObject((String) zzbck.zza(new zzfuo() { // from class: com.google.android.gms.internal.ads.zzbcd
                    @Override // com.google.android.gms.internal.ads.zzfuo
                    public final Object zza() {
                        return sharedPreferences.getString("flag_configuration", "{}");
                    }
                }));
            } catch (JSONException unused) {
            }
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        if ("flag_configuration".equals(str)) {
            zzg(sharedPreferences);
        }
    }

    public final Object zzb(final zzbbz zzbbzVar) {
        if (!this.zzc.block(5000L)) {
            synchronized (this.zzb) {
                if (!this.zza) {
                    throw new IllegalStateException("Flags.initialize() was not called!");
                }
            }
        }
        if (!this.zzd || this.zze == null || this.zzj) {
            synchronized (this.zzb) {
                if (this.zzd && this.zze != null && !this.zzj) {
                }
                return zzbbzVar.zzk();
            }
        }
        if (zzbbzVar.zze() != 2) {
            return (zzbbzVar.zze() == 1 && this.zzh.has(zzbbzVar.zzl())) ? zzbbzVar.zza(this.zzh) : zzbck.zza(new zzfuo() { // from class: com.google.android.gms.internal.ads.zzbce
                @Override // com.google.android.gms.internal.ads.zzfuo
                public final Object zza() {
                    return zzbbzVar.zzc(this.zza.zze);
                }
            });
        }
        Bundle bundle = this.zzf;
        return bundle == null ? zzbbzVar.zzk() : zzbbzVar.zzb(bundle);
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x011d A[Catch: all -> 0x015d, DONT_GENERATE, TRY_ENTER, TryCatch #3 {, blocks: (B:7:0x0008, B:9:0x000c, B:11:0x000e, B:13:0x0013, B:14:0x0015, B:16:0x0027, B:17:0x002b, B:18:0x002d, B:38:0x0099, B:39:0x00a0, B:48:0x00d1, B:49:0x00d8, B:63:0x011d, B:64:0x0124, B:72:0x014b, B:73:0x0152, B:76:0x0155, B:77:0x015c, B:20:0x0042, B:23:0x004c, B:27:0x0055, B:30:0x0060, B:31:0x0068, B:33:0x006e, B:35:0x007e, B:37:0x0095, B:41:0x00a2, B:43:0x00a6, B:45:0x00b6, B:47:0x00cd, B:51:0x00da, B:61:0x0119, B:66:0x0126, B:68:0x013d, B:70:0x0141, B:71:0x0144, B:54:0x00eb, B:56:0x00f9, B:58:0x0101, B:59:0x010c), top: B:88:0x0008, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0126 A[Catch: all -> 0x0154, TRY_ENTER, TryCatch #0 {all -> 0x0154, blocks: (B:20:0x0042, B:23:0x004c, B:27:0x0055, B:30:0x0060, B:31:0x0068, B:33:0x006e, B:35:0x007e, B:37:0x0095, B:41:0x00a2, B:43:0x00a6, B:45:0x00b6, B:47:0x00cd, B:51:0x00da, B:61:0x0119, B:66:0x0126, B:68:0x013d, B:70:0x0141, B:71:0x0144, B:54:0x00eb, B:56:0x00f9, B:58:0x0101, B:59:0x010c), top: B:83:0x0042, outer: #3 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(android.content.Context r11) {
        /*
            Method dump skipped, instruction units count: 352
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbcg.zzd(android.content.Context):void");
    }

    public final boolean zze() {
        return this.zzj;
    }

    final boolean zzf() {
        return this.zzi;
    }

    public final Object zzc(zzbbz zzbbzVar) {
        return (this.zzd || this.zza) ? zzb(zzbbzVar) : zzbbzVar.zzk();
    }
}
