package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzjh;
import com.google.android.gms.internal.measurement.zzji;
import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzjh<MessageType extends zzji<MessageType, BuilderType>, BuilderType extends zzjh<MessageType, BuilderType>> implements zzmk {
    @Override // 
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType zzb(zzkg zzkgVar, zzkp zzkpVar) throws IOException;

    @Override // 
    /* JADX INFO: renamed from: zzaf, reason: merged with bridge method [inline-methods] */
    public abstract BuilderType clone();

    public BuilderType zza(byte[] bArr, int i, int i2) throws zzlk {
        try {
            zzkg zzkgVarZza = zzkg.zza(bArr, 0, i2, false);
            zzb(zzkgVarZza, zzkp.zza);
            zzkgVarZza.zzb(0);
            return this;
        } catch (zzlk e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    public BuilderType zza(byte[] bArr, int i, int i2, zzkp zzkpVar) throws zzlk {
        try {
            zzkg zzkgVarZza = zzkg.zza(bArr, 0, i2, false);
            zzb(zzkgVarZza, zzkpVar);
            zzkgVarZza.zzb(0);
            return this;
        } catch (zzlk e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final /* synthetic */ zzmk zza(byte[] bArr) throws zzlk {
        return zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzmk
    public final /* synthetic */ zzmk zza(byte[] bArr, zzkp zzkpVar) throws zzlk {
        return zza(bArr, 0, bArr.length, zzkpVar);
    }

    private final String zza(String str) {
        return "Reading " + getClass().getName() + " from a " + str + " threw an IOException (should never happen).";
    }
}
