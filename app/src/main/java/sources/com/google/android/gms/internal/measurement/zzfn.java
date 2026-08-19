package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzlc;
import java.util.List;
import kotlin.text.Typography;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfn {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zza extends zzlc<zza, C4935zza> implements zzmn {
        private static final zza zzc;
        private static volatile zzmu<zza> zzd;
        private int zze;
        private int zzf;
        private zzll<zze> zzg = zzch();
        private zzll<zzb> zzh = zzch();
        private boolean zzi;
        private boolean zzj;

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzfn$zza$zza, reason: collision with other inner class name */
        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class C4935zza extends zzlc.zzb<zza, C4935zza> implements zzmn {
            public final int zza() {
                return ((zza) this.zza).zzb();
            }

            public final int zzb() {
                return ((zza) this.zza).zzc();
            }

            public final C4935zza zza(int i, zzb.zza zzaVar) {
                zzak();
                zza.zza((zza) this.zza, i, (zzb) ((zzlc) zzaVar.zzai()));
                return this;
            }

            public final C4935zza zza(int i, zze.zza zzaVar) {
                zzak();
                zza.zza((zza) this.zza, i, (zze) ((zzlc) zzaVar.zzai()));
                return this;
            }

            public final zzb zza(int i) {
                return ((zza) this.zza).zza(i);
            }

            public final zze zzb(int i) {
                return ((zza) this.zza).zzb(i);
            }

            private C4935zza() {
                super(zza.zzc);
            }
        }

        public final int zza() {
            return this.zzf;
        }

        public final int zzb() {
            return this.zzh.size();
        }

        public final int zzc() {
            return this.zzg.size();
        }

        public final zzb zza(int i) {
            return this.zzh.get(i);
        }

        public final zze zzb(int i) {
            return this.zzg.get(i);
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzfm.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C4935zza();
                case 3:
                    return zza(zzc, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", zze.class, "zzh", zzb.class, "zzi", "zzj"});
                case 4:
                    return zzc;
                case 5:
                    zzmu<zza> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zza.class) {
                            zzaVar = zzd;
                            if (zzaVar == null) {
                                zzaVar = new zzlc.zza<>(zzc);
                                zzd = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final List<zzb> zze() {
            return this.zzh;
        }

        public final List<zze> zzf() {
            return this.zzg;
        }

        static /* synthetic */ void zza(zza zzaVar, int i, zzb zzbVar) {
            zzbVar.getClass();
            zzll<zzb> zzllVar = zzaVar.zzh;
            if (!zzllVar.zzc()) {
                zzaVar.zzh = zzlc.zza(zzllVar);
            }
            zzaVar.zzh.set(i, zzbVar);
        }

        static /* synthetic */ void zza(zza zzaVar, int i, zze zzeVar) {
            zzeVar.getClass();
            zzll<zze> zzllVar = zzaVar.zzg;
            if (!zzllVar.zzc()) {
                zzaVar.zzg = zzlc.zza(zzllVar);
            }
            zzaVar.zzg.set(i, zzeVar);
        }

        static {
            zza zzaVar = new zza();
            zzc = zzaVar;
            zzlc.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }

        public final boolean zzg() {
            return (this.zze & 1) != 0;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzb extends zzlc<zzb, zza> implements zzmn {
        private static final zzb zzc;
        private static volatile zzmu<zzb> zzd;
        private int zze;
        private int zzf;
        private String zzg = "";
        private zzll<zzc> zzh = zzch();
        private boolean zzi;
        private zzd zzj;
        private boolean zzk;
        private boolean zzl;
        private boolean zzm;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzb, zza> implements zzmn {
            public final int zza() {
                return ((zzb) this.zza).zza();
            }

            public final zza zza(String str) {
                zzak();
                zzb.zza((zzb) this.zza, str);
                return this;
            }

            public final zza zza(int i, zzc zzcVar) {
                zzak();
                zzb.zza((zzb) this.zza, i, zzcVar);
                return this;
            }

            public final zzc zza(int i) {
                return ((zzb) this.zza).zza(i);
            }

            public final String zzb() {
                return ((zzb) this.zza).zzf();
            }

            private zza() {
                super(zzb.zzc);
            }
        }

        public final int zza() {
            return this.zzh.size();
        }

        public final int zzb() {
            return this.zzf;
        }

        public static zza zzc() {
            return zzc.zzcc();
        }

        public final zzc zza(int i) {
            return this.zzh.get(i);
        }

        public final zzd zze() {
            zzd zzdVar = this.zzj;
            return zzdVar == null ? zzd.zzc() : zzdVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzfm.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", zzc.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
                case 4:
                    return zzc;
                case 5:
                    zzmu<zzb> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzb.class) {
                            zzaVar = zzd;
                            if (zzaVar == null) {
                                zzaVar = new zzlc.zza<>(zzc);
                                zzd = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zzf() {
            return this.zzg;
        }

        public final List<zzc> zzg() {
            return this.zzh;
        }

        static /* synthetic */ void zza(zzb zzbVar, String str) {
            str.getClass();
            zzbVar.zze |= 2;
            zzbVar.zzg = str;
        }

        static /* synthetic */ void zza(zzb zzbVar, int i, zzc zzcVar) {
            zzcVar.getClass();
            zzll<zzc> zzllVar = zzbVar.zzh;
            if (!zzllVar.zzc()) {
                zzbVar.zzh = zzlc.zza(zzllVar);
            }
            zzbVar.zzh.set(i, zzcVar);
        }

        static {
            zzb zzbVar = new zzb();
            zzc = zzbVar;
            zzlc.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }

        public final boolean zzh() {
            return this.zzk;
        }

        public final boolean zzi() {
            return this.zzl;
        }

        public final boolean zzj() {
            return this.zzm;
        }

        public final boolean zzk() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzl() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzm() {
            return (this.zze & 64) != 0;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzc extends zzlc<zzc, zza> implements zzmn {
        private static final zzc zzc;
        private static volatile zzmu<zzc> zzd;
        private int zze;
        private zzf zzf;
        private zzd zzg;
        private boolean zzh;
        private String zzi = "";

        public static zzc zzb() {
            return zzc;
        }

        public final zzd zzc() {
            zzd zzdVar = this.zzg;
            return zzdVar == null ? zzd.zzc() : zzdVar;
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzc, zza> implements zzmn {
            public final zza zza(String str) {
                zzak();
                zzc.zza((zzc) this.zza, str);
                return this;
            }

            private zza() {
                super(zzc.zzc);
            }
        }

        public final zzf zzd() {
            zzf zzfVar = this.zzf;
            return zzfVar == null ? zzf.zzd() : zzfVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzfm.zza[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
                case 4:
                    return zzc;
                case 5:
                    zzmu<zzc> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzc.class) {
                            zzaVar = zzd;
                            if (zzaVar == null) {
                                zzaVar = new zzlc.zza<>(zzc);
                                zzd = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zze() {
            return this.zzi;
        }

        static /* synthetic */ void zza(zzc zzcVar, String str) {
            str.getClass();
            zzcVar.zze |= 8;
            zzcVar.zzi = str;
        }

        static {
            zzc zzcVar = new zzc();
            zzc = zzcVar;
            zzlc.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }

        public final boolean zzf() {
            return this.zzh;
        }

        public final boolean zzg() {
            return (this.zze & 4) != 0;
        }

        public final boolean zzh() {
            return (this.zze & 2) != 0;
        }

        public final boolean zzi() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 1) != 0;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zze extends zzlc<zze, zza> implements zzmn {
        private static final zze zzc;
        private static volatile zzmu<zze> zzd;
        private int zze;
        private int zzf;
        private String zzg = "";
        private zzc zzh;
        private boolean zzi;
        private boolean zzj;
        private boolean zzk;

        public final int zza() {
            return this.zzf;
        }

        public final zzc zzb() {
            zzc zzcVar = this.zzh;
            return zzcVar == null ? zzc.zzb() : zzcVar;
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zze, zza> implements zzmn {
            public final zza zza(String str) {
                zzak();
                zze.zza((zze) this.zza, str);
                return this;
            }

            private zza() {
                super(zze.zzc);
            }
        }

        public static zza zzc() {
            return zzc.zzcc();
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzfm.zza[i - 1]) {
                case 1:
                    return new zze();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
                case 4:
                    return zzc;
                case 5:
                    zzmu<zze> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zze.class) {
                            zzaVar = zzd;
                            if (zzaVar == null) {
                                zzaVar = new zzlc.zza<>(zzc);
                                zzd = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        public final String zze() {
            return this.zzg;
        }

        static /* synthetic */ void zza(zze zzeVar, String str) {
            str.getClass();
            zzeVar.zze |= 2;
            zzeVar.zzg = str;
        }

        static {
            zze zzeVar = new zze();
            zzc = zzeVar;
            zzlc.zza((Class<zze>) zze.class, zzeVar);
        }

        private zze() {
        }

        public final boolean zzf() {
            return this.zzi;
        }

        public final boolean zzg() {
            return this.zzj;
        }

        public final boolean zzh() {
            return this.zzk;
        }

        public final boolean zzi() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 32) != 0;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzf extends zzlc<zzf, zza> implements zzmn {
        private static final zzf zzc;
        private static volatile zzmu<zzf> zzd;
        private int zze;
        private int zzf;
        private boolean zzh;
        private String zzg = "";
        private zzll<String> zzi = zzlc.zzch();

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzf, zza> implements zzmn {
            private zza() {
                super(zzf.zzc);
            }
        }

        public final int zza() {
            return this.zzi.size();
        }

        public final zzb zzb() {
            zzb zzbVarZza = zzb.zza(this.zzf);
            return zzbVarZza == null ? zzb.UNKNOWN_MATCH_TYPE : zzbVarZza;
        }

        public static zzf zzd() {
            return zzc;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzfm.zza[i - 1]) {
                case 1:
                    return new zzf();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", zzb.zzb(), "zzg", "zzh", "zzi"});
                case 4:
                    return zzc;
                case 5:
                    zzmu<zzf> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzf.class) {
                            zzaVar = zzd;
                            if (zzaVar == null) {
                                zzaVar = new zzlc.zza<>(zzc);
                                zzd = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public enum zzb implements zzlh {
            UNKNOWN_MATCH_TYPE(0),
            REGEXP(1),
            BEGINS_WITH(2),
            ENDS_WITH(3),
            PARTIAL(4),
            EXACT(5),
            IN_LIST(6);

            private final int zzi;

            @Override // com.google.android.gms.internal.measurement.zzlh
            public final int zza() {
                return this.zzi;
            }

            public static zzb zza(int i) {
                switch (i) {
                    case 0:
                        return UNKNOWN_MATCH_TYPE;
                    case 1:
                        return REGEXP;
                    case 2:
                        return BEGINS_WITH;
                    case 3:
                        return ENDS_WITH;
                    case 4:
                        return PARTIAL;
                    case 5:
                        return EXACT;
                    case 6:
                        return IN_LIST;
                    default:
                        return null;
                }
            }

            public static zzlg zzb() {
                return zzfv.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.zzi);
                return sb.append(" name=").append(name()).append(Typography.greater).toString();
            }

            zzb(int i) {
                this.zzi = i;
            }
        }

        public final String zze() {
            return this.zzg;
        }

        public final List<String> zzf() {
            return this.zzi;
        }

        static {
            zzf zzfVar = new zzf();
            zzc = zzfVar;
            zzlc.zza((Class<zzf>) zzf.class, zzfVar);
        }

        private zzf() {
        }

        public final boolean zzg() {
            return this.zzh;
        }

        public final boolean zzh() {
            return (this.zze & 4) != 0;
        }

        public final boolean zzi() {
            return (this.zze & 2) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 1) != 0;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzd extends zzlc<zzd, zza> implements zzmn {
        private static final zzd zzc;
        private static volatile zzmu<zzd> zzd;
        private int zze;
        private int zzf;
        private boolean zzg;
        private String zzh = "";
        private String zzi = "";
        private String zzj = "";

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzd, zza> implements zzmn {
            private zza() {
                super(zzd.zzc);
            }
        }

        public final zzb zza() {
            zzb zzbVarZza = zzb.zza(this.zzf);
            return zzbVarZza == null ? zzb.UNKNOWN_COMPARISON_TYPE : zzbVarZza;
        }

        public static zzd zzc() {
            return zzc;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzfm.zza[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", zzb.zzb(), "zzg", "zzh", "zzi", "zzj"});
                case 4:
                    return zzc;
                case 5:
                    zzmu<zzd> zzaVar = zzd;
                    if (zzaVar == null) {
                        synchronized (zzd.class) {
                            zzaVar = zzd;
                            if (zzaVar == null) {
                                zzaVar = new zzlc.zza<>(zzc);
                                zzd = zzaVar;
                            }
                            break;
                        }
                    }
                    return zzaVar;
                case 6:
                    return (byte) 1;
                case 7:
                    return null;
                default:
                    throw new UnsupportedOperationException();
            }
        }

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public enum zzb implements zzlh {
            UNKNOWN_COMPARISON_TYPE(0),
            LESS_THAN(1),
            GREATER_THAN(2),
            EQUAL(3),
            BETWEEN(4);

            private final int zzg;

            @Override // com.google.android.gms.internal.measurement.zzlh
            public final int zza() {
                return this.zzg;
            }

            public static zzb zza(int i) {
                if (i == 0) {
                    return UNKNOWN_COMPARISON_TYPE;
                }
                if (i == 1) {
                    return LESS_THAN;
                }
                if (i == 2) {
                    return GREATER_THAN;
                }
                if (i == 3) {
                    return EQUAL;
                }
                if (i != 4) {
                    return null;
                }
                return BETWEEN;
            }

            public static zzlg zzb() {
                return zzfs.zza;
            }

            @Override // java.lang.Enum
            public final String toString() {
                StringBuilder sb = new StringBuilder("<");
                sb.append(getClass().getName()).append('@').append(Integer.toHexString(System.identityHashCode(this)));
                sb.append(" number=").append(this.zzg);
                return sb.append(" name=").append(name()).append(Typography.greater).toString();
            }

            zzb(int i) {
                this.zzg = i;
            }
        }

        public final String zzd() {
            return this.zzh;
        }

        public final String zze() {
            return this.zzj;
        }

        public final String zzf() {
            return this.zzi;
        }

        static {
            zzd zzdVar = new zzd();
            zzc = zzdVar;
            zzlc.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
        }

        public final boolean zzg() {
            return this.zzg;
        }

        public final boolean zzh() {
            return (this.zze & 1) != 0;
        }

        public final boolean zzi() {
            return (this.zze & 4) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 2) != 0;
        }

        public final boolean zzk() {
            return (this.zze & 16) != 0;
        }

        public final boolean zzl() {
            return (this.zze & 8) != 0;
        }
    }
}
