package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzlc;
import com.google.android.gms.internal.measurement.zzlc.zzb;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class zzlc<MessageType extends zzlc<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzji<MessageType, BuilderType> {
    private static Map<Class<?>, zzlc<?, ?>> zzc = new ConcurrentHashMap();
    private int zzd = -1;
    protected zznw zzb = zznw.zzc();

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
    protected static class zza<T extends zzlc<T, ?>> extends zzjj<T> {
        public zza(T t) {
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
    public static abstract class zzb<MessageType extends zzlc<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> extends zzjh<MessageType, BuilderType> {
        protected MessageType zza;
        private final MessageType zzb;

        @Override // com.google.android.gms.internal.measurement.zzjh
        /* JADX INFO: renamed from: zzaf */
        public final /* synthetic */ zzjh clone() {
            return (zzb) clone();
        }

        @Override // com.google.android.gms.internal.measurement.zzjh
        /* JADX INFO: renamed from: zza */
        public final /* synthetic */ zzjh zzb(zzkg zzkgVar, zzkp zzkpVar) throws IOException {
            return (zzb) zzb(zzkgVar, zzkpVar);
        }

        @Override // com.google.android.gms.internal.measurement.zzjh
        public final /* synthetic */ zzjh zza(byte[] bArr, int i, int i2) throws zzlk {
            return zzb(bArr, 0, i2, zzkp.zza);
        }

        @Override // com.google.android.gms.internal.measurement.zzjh
        public final /* synthetic */ zzjh zza(byte[] bArr, int i, int i2, zzkp zzkpVar) throws zzlk {
            return zzb(bArr, 0, i2, zzkpVar);
        }

        public final BuilderType zza(MessageType messagetype) {
            if (this.zzb.equals(messagetype)) {
                return this;
            }
            if (!this.zza.zzco()) {
                zzal();
            }
            zza(this.zza, messagetype);
            return this;
        }

        /* JADX INFO: Access modifiers changed from: private */
        @Override // com.google.android.gms.internal.measurement.zzjh
        /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
        public final BuilderType zzb(zzkg zzkgVar, zzkp zzkpVar) throws IOException {
            if (!this.zza.zzco()) {
                zzal();
            }
            try {
                zzmz.zza().zza(this.zza).zza(this.zza, zzkk.zza(zzkgVar), zzkpVar);
                return this;
            } catch (RuntimeException e) {
                if (e.getCause() instanceof IOException) {
                    throw ((IOException) e.getCause());
                }
                throw e;
            }
        }

        private final BuilderType zzb(byte[] bArr, int i, int i2, zzkp zzkpVar) throws zzlk {
            if (!this.zza.zzco()) {
                zzal();
            }
            try {
                zzmz.zza().zza(this.zza).zza(this.zza, bArr, 0, i2, new zzjn(zzkpVar));
                return this;
            } catch (zzlk e) {
                throw e;
            } catch (IOException e2) {
                throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
            } catch (IndexOutOfBoundsException unused) {
                throw zzlk.zzi();
            }
        }

        @Override // com.google.android.gms.internal.measurement.zzmk
        /* JADX INFO: renamed from: zzag, reason: merged with bridge method [inline-methods] */
        public final MessageType zzai() {
            MessageType messagetype = (MessageType) zzaj();
            if (zzlc.zza(messagetype, true)) {
                return messagetype;
            }
            throw new zznu(messagetype);
        }

        @Override // com.google.android.gms.internal.measurement.zzmk
        /* JADX INFO: renamed from: zzah, reason: merged with bridge method [inline-methods] */
        public MessageType zzaj() {
            if (!this.zza.zzco()) {
                return this.zza;
            }
            this.zza.zzcl();
            return this.zza;
        }

        @Override // com.google.android.gms.internal.measurement.zzmn
        public final /* synthetic */ zzml zzck() {
            return this.zzb;
        }

        @Override // com.google.android.gms.internal.measurement.zzjh
        public /* synthetic */ Object clone() throws CloneNotSupportedException {
            zzb zzbVar = (zzb) this.zzb.zza(zze.zze, null, null);
            zzbVar.zza = (MessageType) zzaj();
            return zzbVar;
        }

        protected zzb(MessageType messagetype) {
            this.zzb = messagetype;
            if (messagetype.zzco()) {
                throw new IllegalArgumentException("Default instance must be immutable.");
            }
            this.zza = (MessageType) messagetype.zzce();
        }

        protected final void zzak() {
            if (this.zza.zzco()) {
                return;
            }
            zzal();
        }

        protected void zzal() {
            MessageType messagetype = (MessageType) this.zzb.zzce();
            zza(messagetype, this.zza);
            this.zza = messagetype;
        }

        private static <MessageType> void zza(MessageType messagetype, MessageType messagetype2) {
            zzmz.zza().zza(messagetype).zza(messagetype, messagetype2);
        }

        @Override // com.google.android.gms.internal.measurement.zzmn
        public final boolean zzcn() {
            return zzlc.zza(this.zza, false);
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
    static final class zzc implements zzkx<zzc> {
        @Override // java.lang.Comparable
        public final /* synthetic */ int compareTo(Object obj) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final int zza() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final zzmk zza(zzmk zzmkVar, zzml zzmlVar) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final zzmq zza(zzmq zzmqVar, zzmq zzmqVar2) {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final zzof zzb() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final zzop zzc() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final boolean zzd() {
            throw new NoSuchMethodError();
        }

        @Override // com.google.android.gms.internal.measurement.zzkx
        public final boolean zze() {
            throw new NoSuchMethodError();
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
    public static abstract class zzd<MessageType extends zzd<MessageType, BuilderType>, BuilderType> extends zzlc<MessageType, BuilderType> implements zzmn {
        protected zzkv<zzc> zzc = zzkv.zzb();

        final zzkv<zzc> zza() {
            if (this.zzc.zzf()) {
                this.zzc = (zzkv) this.zzc.clone();
            }
            return this.zzc;
        }
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
    public static class zzf<ContainingType extends zzml, Type> extends zzkq<ContainingType, Type> {
    }

    private final int zza() {
        return zzmz.zza().zza(this).zzb(this);
    }

    protected abstract Object zza(int i, Object obj, Object obj2);

    private final int zzb(zznd<?> zzndVar) {
        if (zzndVar == null) {
            return zzmz.zza().zza(this).zza(this);
        }
        return zzndVar.zza(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    final int zzby() {
        return this.zzd & Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final int zzcb() {
        return zza((zznd) null);
    }

    /* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
    public enum zze {
        public static final int zza = 1;
        public static final int zzb = 2;
        public static final int zzc = 3;
        public static final int zzd = 4;
        public static final int zze = 5;
        public static final int zzf = 6;
        public static final int zzg = 7;
        private static final /* synthetic */ int[] zzh = {1, 2, 3, 4, 5, 6, 7};

        public static int[] zza() {
            return (int[]) zzh.clone();
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    final int zza(zznd zzndVar) {
        if (zzco()) {
            int iZzb = zzb(zzndVar);
            if (iZzb >= 0) {
                return iZzb;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + iZzb);
        }
        if (zzby() != Integer.MAX_VALUE) {
            return zzby();
        }
        int iZzb2 = zzb(zzndVar);
        zzc(iZzb2);
        return iZzb2;
    }

    public int hashCode() {
        if (zzco()) {
            return zza();
        }
        if (this.zza == 0) {
            this.zza = zza();
        }
        return this.zza;
    }

    protected final <MessageType extends zzlc<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zzcc() {
        return (BuilderType) zza(zze.zze, (Object) null, (Object) null);
    }

    protected final <MessageType extends zzlc<MessageType, BuilderType>, BuilderType extends zzb<MessageType, BuilderType>> BuilderType zza(MessageType messagetype) {
        return (BuilderType) zzcc().zza(messagetype);
    }

    public final BuilderType zzcd() {
        return (BuilderType) ((zzb) zza(zze.zze, (Object) null, (Object) null)).zza(this);
    }

    static <T extends zzlc<?, ?>> T zza(Class<T> cls) {
        zzlc<?, ?> zzlcVar = zzc.get(cls);
        if (zzlcVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzlcVar = zzc.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzlcVar == null) {
            zzlcVar = (T) ((zzlc) zzny.zza(cls)).zza(zze.zzf, (Object) null, (Object) null);
            if (zzlcVar == null) {
                throw new IllegalStateException();
            }
            zzc.put((Class<?>) cls, zzlcVar);
        }
        return (T) zzlcVar;
    }

    final MessageType zzce() {
        return (MessageType) zza(zze.zzd, (Object) null, (Object) null);
    }

    protected static zzlj zzcf() {
        return zzlf.zzd();
    }

    protected static zzli zzcg() {
        return zzlw.zzd();
    }

    protected static zzli zza(zzli zzliVar) {
        int size = zzliVar.size();
        return zzliVar.zza(size == 0 ? 10 : size << 1);
    }

    protected static <E> zzll<E> zzch() {
        return zzmy.zzd();
    }

    protected static <E> zzll<E> zza(zzll<E> zzllVar) {
        int size = zzllVar.size();
        return zzllVar.zza(size == 0 ? 10 : size << 1);
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ zzmk zzci() {
        return (zzb) zza(zze.zze, (Object) null, (Object) null);
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final /* synthetic */ zzmk zzcj() {
        return ((zzb) zza(zze.zze, (Object) null, (Object) null)).zza(this);
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final /* synthetic */ zzml zzck() {
        return (zzlc) zza(zze.zzf, (Object) null, (Object) null);
    }

    static Object zza(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (cause instanceof RuntimeException) {
                throw ((RuntimeException) cause);
            }
            if (cause instanceof Error) {
                throw ((Error) cause);
            }
            throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
        }
    }

    protected static Object zza(zzml zzmlVar, String str, Object[] objArr) {
        return new zznb(zzmlVar, str, objArr);
    }

    public String toString() {
        return zzmm.zza(this, super.toString());
    }

    protected final void zzcl() {
        zzmz.zza().zza(this).zzd(this);
        zzcm();
    }

    final void zzcm() {
        this.zzd &= Integer.MAX_VALUE;
    }

    protected static <T extends zzlc<?, ?>> void zza(Class<T> cls, T t) {
        t.zzcm();
        zzc.put(cls, t);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    final void zzc(int i) {
        if (i < 0) {
            throw new IllegalStateException("serialized size must be non-negative, was " + i);
        }
        this.zzd = (i & Integer.MAX_VALUE) | (this.zzd & Integer.MIN_VALUE);
    }

    @Override // com.google.android.gms.internal.measurement.zzml
    public final void zza(zzkl zzklVar) throws IOException {
        zzmz.zza().zza(this).zza(this, zzko.zza(zzklVar));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return zzmz.zza().zza(this).zzb(this, (zzlc) obj);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.zzmn
    public final boolean zzcn() {
        return zza(this, true);
    }

    protected static final <T extends zzlc<T, ?>> boolean zza(T t, boolean z) {
        byte bByteValue = ((Byte) t.zza(zze.zza, null, null)).byteValue();
        if (bByteValue == 1) {
            return true;
        }
        if (bByteValue == 0) {
            return false;
        }
        boolean zZze = zzmz.zza().zza(t).zze(t);
        if (z) {
            t.zza(zze.zzb, zZze ? t : null, null);
        }
        return zZze;
    }

    final boolean zzco() {
        return (this.zzd & Integer.MIN_VALUE) != 0;
    }
}
