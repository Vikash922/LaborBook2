package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@24.2.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdea extends zzcqg {
    private final Context zzc;
    private final WeakReference zzd;
    private final zzdcg zze;
    private final zzdfm zzf;
    private final zzcrb zzg;
    private final zzfnc zzh;
    private final zzcvp zzi;
    private final zzbze zzj;
    private boolean zzk;

    zzdea(zzcqf zzcqfVar, Context context, @Nullable zzcel zzcelVar, zzdcg zzdcgVar, zzdfm zzdfmVar, zzcrb zzcrbVar, zzfnc zzfncVar, zzcvp zzcvpVar, zzbze zzbzeVar) {
        super(zzcqfVar);
        this.zzk = false;
        this.zzc = context;
        this.zzd = new WeakReference(zzcelVar);
        this.zze = zzdcgVar;
        this.zzf = zzdfmVar;
        this.zzg = zzcrbVar;
        this.zzh = zzfncVar;
        this.zzi = zzcvpVar;
        this.zzj = zzbzeVar;
    }

    public final void finalize() throws Throwable {
        try {
            final zzcel zzcelVar = (zzcel) this.zzd.get();
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbci.zzgH)).booleanValue()) {
                if (!this.zzk && zzcelVar != null) {
                    zzgcd zzgcdVar = zzbzk.zzf;
                    Objects.requireNonNull(zzcelVar);
                    zzgcdVar.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzddz
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzcelVar.destroy();
                        }
                    });
                }
            } else if (zzcelVar != null) {
                zzcelVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean zza() {
        return this.zzg.zzg();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005f  */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzc(boolean r7, @javax.annotation.Nullable android.app.Activity r8) {
        /*
            Method dump skipped, instruction units count: 214
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzdea.zzc(boolean, android.app.Activity):boolean");
    }
}
