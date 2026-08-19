package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzlc;
import java.util.List;
import kotlin.text.Typography;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzhg {

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zza extends zzlc<zza, C4941zza> implements zzmn {
        private static final zza zzc;
        private static volatile zzmu<zza> zzd;
        private zzll<zzb> zze = zzch();

        /* JADX INFO: renamed from: com.google.android.gms.internal.measurement.zzhg$zza$zza, reason: collision with other inner class name */
        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class C4941zza extends zzlc.zzb<zza, C4941zza> implements zzmn {
            private C4941zza() {
                super(zza.zzc);
            }
        }

        public final int zza() {
            return this.zze.size();
        }

        public static zza zzc() {
            return zzc;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzhi.zza[i - 1]) {
                case 1:
                    return new zza();
                case 2:
                    return new C4941zza();
                case 3:
                    return zza(zzc, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", zzb.class});
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

        public final List<zzb> zzd() {
            return this.zze;
        }

        static {
            zza zzaVar = new zza();
            zzc = zzaVar;
            zzlc.zza((Class<zza>) zza.class, zzaVar);
        }

        private zza() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzc extends zzlc<zzc, zza> implements zzmn {
        private static final zzc zzc;
        private static volatile zzmu<zzc> zzd;
        private int zze;
        private zzll<zzd> zzf = zzch();
        private zza zzg;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzc, zza> implements zzmn {
            private zza() {
                super(zzc.zzc);
            }
        }

        public final zza zza() {
            zza zzaVar = this.zzg;
            return zzaVar == null ? zza.zzc() : zzaVar;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzhi.zza[i - 1]) {
                case 1:
                    return new zzc();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", zzd.class, "zzg"});
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

        public final List<zzd> zzc() {
            return this.zzf;
        }

        static {
            zzc zzcVar = new zzc();
            zzc = zzcVar;
            zzlc.zza((Class<zzc>) zzc.class, zzcVar);
        }

        private zzc() {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzd extends zzlc<zzd, zza> implements zzmn {
        private static final zzd zzc;
        private static volatile zzmu<zzd> zzd;
        private int zze;
        private int zzf;
        private zzll<zzd> zzg = zzch();
        private String zzh = "";
        private String zzi = "";
        private boolean zzj;
        private double zzk;

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzd, zza> implements zzmn {
            private zza() {
                super(zzd.zzc);
            }
        }

        public final double zza() {
            return this.zzk;
        }

        public final zzb zzb() {
            zzb zzbVarZza = zzb.zza(this.zzf);
            return zzbVarZza == null ? zzb.UNKNOWN : zzbVarZza;
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzhi.zza[i - 1]) {
                case 1:
                    return new zzd();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", zzb.zzb(), "zzg", zzd.class, "zzh", "zzi", "zzj", "zzk"});
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
            UNKNOWN(0),
            STRING(1),
            NUMBER(2),
            BOOLEAN(3),
            STATEMENT(4);

            private final int zzg;

            @Override // com.google.android.gms.internal.measurement.zzlh
            public final int zza() {
                return this.zzg;
            }

            public static zzb zza(int i) {
                if (i == 0) {
                    return UNKNOWN;
                }
                if (i == 1) {
                    return STRING;
                }
                if (i == 2) {
                    return NUMBER;
                }
                if (i == 3) {
                    return BOOLEAN;
                }
                if (i != 4) {
                    return null;
                }
                return STATEMENT;
            }

            public static zzlg zzb() {
                return zzho.zza;
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
            return this.zzi;
        }

        public final List<zzd> zzf() {
            return this.zzg;
        }

        static {
            zzd zzdVar = new zzd();
            zzc = zzdVar;
            zzlc.zza((Class<zzd>) zzd.class, zzdVar);
        }

        private zzd() {
        }

        public final boolean zzg() {
            return this.zzj;
        }

        public final boolean zzh() {
            return (this.zze & 8) != 0;
        }

        public final boolean zzi() {
            return (this.zze & 16) != 0;
        }

        public final boolean zzj() {
            return (this.zze & 4) != 0;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
    public static final class zzb extends zzlc<zzb, zza> implements zzmn {
        private static final zzb zzc;
        private static volatile zzmu<zzb> zzd;
        private int zze;
        private String zzf = "";
        private zzll<zzd> zzg = zzch();

        /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@22.1.0 */
        public static final class zza extends zzlc.zzb<zzb, zza> implements zzmn {
            private zza() {
                super(zzb.zzc);
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzlc
        protected final Object zza(int i, Object obj, Object obj2) {
            switch (zzhi.zza[i - 1]) {
                case 1:
                    return new zzb();
                case 2:
                    return new zza();
                case 3:
                    return zza(zzc, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zze", "zzf", "zzg", zzd.class});
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

        public final String zzb() {
            return this.zzf;
        }

        public final List<zzd> zzc() {
            return this.zzg;
        }

        static {
            zzb zzbVar = new zzb();
            zzc = zzbVar;
            zzlc.zza((Class<zzb>) zzb.class, zzbVar);
        }

        private zzb() {
        }
    }
}
