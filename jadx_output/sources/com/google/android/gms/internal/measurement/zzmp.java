package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmp<T> implements zznd<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzny.zzb();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzml zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzmt zzn;
    private final zzlv zzo;
    private final zznx<?, ?> zzp;
    private final zzkr<?> zzq;
    private final zzme zzr;

    private static <T> double zza(T t, long j) {
        return ((Double) zzny.zze(t, j)).doubleValue();
    }

    private static boolean zzg(int i) {
        return (i & 536870912) != 0;
    }

    private static <T> float zzb(T t, long j) {
        return ((Float) zzny.zze(t, j)).floatValue();
    }

    private static int zza(byte[] bArr, int i, int i2, zzof zzofVar, Class<?> cls, zzjn zzjnVar) throws IOException {
        switch (zzmo.zza[zzofVar.ordinal()]) {
            case 1:
                int iZzd = zzjo.zzd(bArr, i, zzjnVar);
                zzjnVar.zzc = Boolean.valueOf(zzjnVar.zzb != 0);
                return iZzd;
            case 2:
                return zzjo.zza(bArr, i, zzjnVar);
            case 3:
                zzjnVar.zzc = Double.valueOf(zzjo.zza(bArr, i));
                return i + 8;
            case 4:
            case 5:
                zzjnVar.zzc = Integer.valueOf(zzjo.zzc(bArr, i));
                return i + 4;
            case 6:
            case 7:
                zzjnVar.zzc = Long.valueOf(zzjo.zzd(bArr, i));
                return i + 8;
            case 8:
                zzjnVar.zzc = Float.valueOf(zzjo.zzb(bArr, i));
                return i + 4;
            case 9:
            case 10:
            case 11:
                int iZzc = zzjo.zzc(bArr, i, zzjnVar);
                zzjnVar.zzc = Integer.valueOf(zzjnVar.zza);
                return iZzc;
            case 12:
            case 13:
                int iZzd2 = zzjo.zzd(bArr, i, zzjnVar);
                zzjnVar.zzc = Long.valueOf(zzjnVar.zzb);
                return iZzd2;
            case 14:
                return zzjo.zza(zzmz.zza().zza((Class) cls), bArr, i, i2, zzjnVar);
            case 15:
                int iZzc2 = zzjo.zzc(bArr, i, zzjnVar);
                zzjnVar.zzc = Integer.valueOf(zzkg.zze(zzjnVar.zza));
                return iZzc2;
            case 16:
                int iZzd3 = zzjo.zzd(bArr, i, zzjnVar);
                zzjnVar.zzc = Long.valueOf(zzkg.zza(zzjnVar.zzb));
                return iZzd3;
            case 17:
                return zzjo.zzb(bArr, i, zzjnVar);
            default:
                throw new RuntimeException("unsupported field type.");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v243 */
    /* JADX WARN: Type inference failed for: r0v245 */
    /* JADX WARN: Type inference failed for: r0v246 */
    /* JADX WARN: Type inference failed for: r15v0 */
    /* JADX WARN: Type inference failed for: r15v1, types: [int] */
    /* JADX WARN: Type inference failed for: r15v10 */
    /* JADX WARN: Type inference failed for: r15v11 */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v13 */
    /* JADX WARN: Type inference failed for: r15v14 */
    /* JADX WARN: Type inference failed for: r15v15 */
    /* JADX WARN: Type inference failed for: r15v16 */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v18 */
    /* JADX WARN: Type inference failed for: r15v19 */
    /* JADX WARN: Type inference failed for: r15v2, types: [int] */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v22 */
    /* JADX WARN: Type inference failed for: r15v23 */
    /* JADX WARN: Type inference failed for: r15v24 */
    /* JADX WARN: Type inference failed for: r15v25 */
    /* JADX WARN: Type inference failed for: r15v26 */
    /* JADX WARN: Type inference failed for: r15v6 */
    /* JADX WARN: Type inference failed for: r15v7 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v1 */
    /* JADX WARN: Type inference failed for: r16v2 */
    /* JADX WARN: Type inference failed for: r17v0 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v57 */
    /* JADX WARN: Type inference failed for: r1v58 */
    /* JADX WARN: Type inference failed for: r1v60 */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.google.android.gms.internal.measurement.zzne, com.google.android.gms.internal.measurement.zzne<T extends com.google.android.gms.internal.measurement.zzkx<T>, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v15 */
    /* JADX WARN: Type inference failed for: r4v16 */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v19 */
    /* JADX WARN: Type inference failed for: r4v20 */
    /* JADX WARN: Type inference failed for: r4v21 */
    /* JADX WARN: Type inference failed for: r4v23 */
    /* JADX WARN: Type inference failed for: r4v4 */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v22 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v19 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v20 */
    /* JADX WARN: Type inference failed for: r9v3, types: [int] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.google.android.gms.internal.measurement.zznd
    public final int zza(T t) {
        int i;
        ?? r16;
        ?? r5;
        ?? r15;
        int iZza;
        int iZzb;
        int iZzd;
        int iZzd2;
        int iZzi;
        int iZzj;
        Unsafe unsafe = zzb;
        ?? r9 = 0;
        int i2 = 1048575;
        ?? r1 = 0;
        int i3 = 0;
        int iZzh = 0;
        int i4 = 1048575;
        while (i3 < this.zzc.length) {
            int iZzc = zzc(i3);
            int i5 = (267386880 & iZzc) >>> 20;
            int[] iArr = this.zzc;
            int i6 = iArr[i3];
            int i7 = iArr[i3 + 2];
            int i8 = i7 & i2;
            ?? r12 = r1;
            if (i5 <= 17) {
                if (i8 != i4) {
                    r12 = i8 == i2 ? r9 : unsafe.getInt(t, i8);
                    i4 = i8;
                }
                i = i4;
                r16 = r12;
                r5 = 1 << (i7 >>> 20);
            } else {
                i = i4;
                r16 = r1 == true ? 1 : 0;
                r5 = r9;
            }
            long j = iZzc & i2;
            if (i5 >= zzkw.DOUBLE_LIST_PACKED.zza()) {
                zzkw.SINT64_LIST_PACKED.zza();
            }
            ?? r17 = r5;
            switch (i5) {
                case 0:
                    r15 = r9;
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZza = zzkl.zza(i6, 0.0d);
                        r15 = r15;
                        iZzh += iZza;
                    }
                    break;
                case 1:
                    r15 = r9;
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZza = zzkl.zza(i6, 0.0f);
                        r15 = r15;
                        iZzh += iZza;
                    }
                    break;
                case 2:
                    r15 = r9;
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZza = zzkl.zzd(i6, unsafe.getLong(t, j));
                        r15 = r15;
                        iZzh += iZza;
                    }
                    break;
                case 3:
                    r15 = r9;
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZza = zzkl.zzg(i6, unsafe.getLong(t, j));
                        r15 = r15;
                        iZzh += iZza;
                    }
                    break;
                case 4:
                    r15 = r9;
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZza = zzkl.zzg(i6, unsafe.getInt(t, j));
                        r15 = r15;
                        iZzh += iZza;
                    }
                    break;
                case 5:
                    r15 = r9;
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZza = zzkl.zzc(i6, 0L);
                        r15 = r15;
                        iZzh += iZza;
                    }
                    break;
                case 6:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        r15 = 0;
                        iZza = zzkl.zzf(i6, 0);
                        iZzh += iZza;
                    }
                    r15 = 0;
                    break;
                case 7:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zzb(i6, true);
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 8:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzjs) {
                            iZzb = zzkl.zzc(i6, (zzjs) object);
                        } else {
                            iZzb = zzkl.zzb(i6, (String) object);
                        }
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 9:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zznf.zza(i6, unsafe.getObject(t, j), (zznd<?>) zze(i3));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 10:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zzc(i6, (zzjs) unsafe.getObject(t, j));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 11:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zzj(i6, unsafe.getInt(t, j));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 12:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zze(i6, unsafe.getInt(t, j));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 13:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzh += zzkl.zzh(i6, 0);
                    }
                    r15 = 0;
                    break;
                case 14:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zze(i6, 0L);
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 15:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zzi(i6, unsafe.getInt(t, j));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 16:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zzf(i6, unsafe.getLong(t, j));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 17:
                    if (zza(t, i3, i, r16 == true ? 1 : 0, r17 == true ? 1 : 0)) {
                        iZzb = zzkl.zzb(i6, (zzml) unsafe.getObject(t, j), zze(i3));
                        iZzh += iZzb;
                    }
                    r15 = 0;
                    break;
                case 18:
                    iZzd = zznf.zzd(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 19:
                    iZzd = zznf.zzc(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 20:
                    iZzd = zznf.zzf(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 21:
                    iZzd = zznf.zzj(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 22:
                    iZzd = zznf.zze(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 23:
                    iZzd = zznf.zzd(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 24:
                    iZzd = zznf.zzc(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 25:
                    iZzd = zznf.zza(i6, (List<?>) unsafe.getObject(t, j), (boolean) r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 26:
                    iZzd = zznf.zzb(i6, (List) unsafe.getObject(t, j));
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 27:
                    iZzd = zznf.zzb(i6, (List<?>) unsafe.getObject(t, j), (zznd<?>) zze(i3));
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 28:
                    iZzd = zznf.zza(i6, (List<zzjs>) unsafe.getObject(t, j));
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 29:
                    iZzd = zznf.zzi(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 30:
                    iZzd = zznf.zzb(i6, (List<Integer>) unsafe.getObject(t, j), (boolean) r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 31:
                    iZzd = zznf.zzc(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 32:
                    iZzd = zznf.zzd(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 33:
                    iZzd = zznf.zzg(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 34:
                    iZzd = zznf.zzh(i6, (List) unsafe.getObject(t, j), r9);
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 35:
                    iZzd2 = zznf.zzd((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 36:
                    iZzd2 = zznf.zzc((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 37:
                    iZzd2 = zznf.zzf((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 38:
                    iZzd2 = zznf.zzj((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 39:
                    iZzd2 = zznf.zze((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 40:
                    iZzd2 = zznf.zzd((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 41:
                    iZzd2 = zznf.zzc((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 42:
                    iZzd2 = zznf.zza((List<?>) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 43:
                    iZzd2 = zznf.zzi((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 44:
                    iZzd2 = zznf.zzb((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 45:
                    iZzd2 = zznf.zzc((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 46:
                    iZzd2 = zznf.zzd((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 47:
                    iZzd2 = zznf.zzg((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 48:
                    iZzd2 = zznf.zzh((List) unsafe.getObject(t, j));
                    if (iZzd2 > 0) {
                        iZzi = zzkl.zzi(i6);
                        iZzj = zzkl.zzj(iZzd2);
                        iZzh += iZzi + iZzj + iZzd2;
                    }
                    r15 = r9;
                    break;
                case 49:
                    iZzd = zznf.zza(i6, (List<zzml>) unsafe.getObject(t, j), (zznd<?>) zze(i3));
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 50:
                    iZzd = this.zzr.zza(i6, unsafe.getObject(t, j), zzf(i3));
                    iZzh += iZzd;
                    r15 = r9;
                    break;
                case 51:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zza(i6, 0.0d);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 52:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zza(i6, 0.0f);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 53:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzd(i6, zzd(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 54:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzg(i6, zzd(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 55:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzg(i6, zzc(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 56:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzc(i6, 0L);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 57:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzf(i6, (int) r9);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 58:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzb(i6, true);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 59:
                    if (zzc(t, i6, i3)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzjs) {
                            iZzd = zzkl.zzc(i6, (zzjs) object2);
                        } else {
                            iZzd = zzkl.zzb(i6, (String) object2);
                        }
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 60:
                    if (zzc(t, i6, i3)) {
                        iZzd = zznf.zza(i6, unsafe.getObject(t, j), (zznd<?>) zze(i3));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 61:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzc(i6, (zzjs) unsafe.getObject(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 62:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzj(i6, zzc(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 63:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zze(i6, zzc(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 64:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzh(i6, (int) r9);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 65:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zze(i6, 0L);
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 66:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzi(i6, zzc(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 67:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzf(i6, zzd(t, j));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                case 68:
                    if (zzc(t, i6, i3)) {
                        iZzd = zzkl.zzb(i6, (zzml) unsafe.getObject(t, j), zze(i3));
                        iZzh += iZzd;
                    }
                    r15 = r9;
                    break;
                default:
                    r15 = r9;
                    break;
            }
            i3 += 3;
            i4 = i;
            r9 = r15;
            r1 = r16;
            i2 = 1048575;
        }
        ?? r152 = r9;
        zznx<?, ?> zznxVar = this.zzp;
        int iZza2 = iZzh + zznxVar.zza(zznxVar.zzd(t));
        if (!this.zzh) {
            return iZza2;
        }
        zzkv zzkvVarZza = this.zzq.zza(t);
        int iZza3 = zzkvVarZza.zza.zza();
        ?? r92 = r152;
        ?? Zza = r152;
        while (r92 < iZza3) {
            Map.Entry entryZza = zzkvVarZza.zza.zza(r92);
            r92++;
            Zza += zzkv.zza((zzkx<?>) entryZza.getKey(), entryZza.getValue());
        }
        ?? Zza2 = Zza;
        for (Map.Entry entry : zzkvVarZza.zza.zzb()) {
            Zza2 += zzkv.zza((zzkx<?>) entry.getKey(), entry.getValue());
        }
        return iZza2 + Zza2;
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final int zzb(T t) {
        int i;
        int iZza;
        int length = this.zzc.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3 += 3) {
            int iZzc = zzc(i3);
            int i4 = this.zzc[i3];
            long j = 1048575 & iZzc;
            int iHashCode = 37;
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    i = i2 * 53;
                    iZza = zzle.zza(Double.doubleToLongBits(zzny.zza(t, j)));
                    i2 = i + iZza;
                    break;
                case 1:
                    i = i2 * 53;
                    iZza = Float.floatToIntBits(zzny.zzb(t, j));
                    i2 = i + iZza;
                    break;
                case 2:
                    i = i2 * 53;
                    iZza = zzle.zza(zzny.zzd(t, j));
                    i2 = i + iZza;
                    break;
                case 3:
                    i = i2 * 53;
                    iZza = zzle.zza(zzny.zzd(t, j));
                    i2 = i + iZza;
                    break;
                case 4:
                    i = i2 * 53;
                    iZza = zzny.zzc(t, j);
                    i2 = i + iZza;
                    break;
                case 5:
                    i = i2 * 53;
                    iZza = zzle.zza(zzny.zzd(t, j));
                    i2 = i + iZza;
                    break;
                case 6:
                    i = i2 * 53;
                    iZza = zzny.zzc(t, j);
                    i2 = i + iZza;
                    break;
                case 7:
                    i = i2 * 53;
                    iZza = zzle.zza(zzny.zzh(t, j));
                    i2 = i + iZza;
                    break;
                case 8:
                    i = i2 * 53;
                    iZza = ((String) zzny.zze(t, j)).hashCode();
                    i2 = i + iZza;
                    break;
                case 9:
                    Object objZze = zzny.zze(t, j);
                    if (objZze != null) {
                        iHashCode = objZze.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 10:
                    i = i2 * 53;
                    iZza = zzny.zze(t, j).hashCode();
                    i2 = i + iZza;
                    break;
                case 11:
                    i = i2 * 53;
                    iZza = zzny.zzc(t, j);
                    i2 = i + iZza;
                    break;
                case 12:
                    i = i2 * 53;
                    iZza = zzny.zzc(t, j);
                    i2 = i + iZza;
                    break;
                case 13:
                    i = i2 * 53;
                    iZza = zzny.zzc(t, j);
                    i2 = i + iZza;
                    break;
                case 14:
                    i = i2 * 53;
                    iZza = zzle.zza(zzny.zzd(t, j));
                    i2 = i + iZza;
                    break;
                case 15:
                    i = i2 * 53;
                    iZza = zzny.zzc(t, j);
                    i2 = i + iZza;
                    break;
                case 16:
                    i = i2 * 53;
                    iZza = zzle.zza(zzny.zzd(t, j));
                    i2 = i + iZza;
                    break;
                case 17:
                    Object objZze2 = zzny.zze(t, j);
                    if (objZze2 != null) {
                        iHashCode = objZze2.hashCode();
                    }
                    i2 = (i2 * 53) + iHashCode;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i = i2 * 53;
                    iZza = zzny.zze(t, j).hashCode();
                    i2 = i + iZza;
                    break;
                case 50:
                    i = i2 * 53;
                    iZza = zzny.zze(t, j).hashCode();
                    i2 = i + iZza;
                    break;
                case 51:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(Double.doubleToLongBits(zza(t, j)));
                        i2 = i + iZza;
                    }
                    break;
                case 52:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = Float.floatToIntBits(zzb(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 53:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(zzd(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 54:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(zzd(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 55:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzc(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 56:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(zzd(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 57:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzc(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 58:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(zze(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 59:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = ((String) zzny.zze(t, j)).hashCode();
                        i2 = i + iZza;
                    }
                    break;
                case 60:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzny.zze(t, j).hashCode();
                        i2 = i + iZza;
                    }
                    break;
                case 61:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzny.zze(t, j).hashCode();
                        i2 = i + iZza;
                    }
                    break;
                case 62:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzc(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 63:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzc(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 64:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzc(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 65:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(zzd(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 66:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzc(t, j);
                        i2 = i + iZza;
                    }
                    break;
                case 67:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzle.zza(zzd(t, j));
                        i2 = i + iZza;
                    }
                    break;
                case 68:
                    if (zzc(t, i4, i3)) {
                        i = i2 * 53;
                        iZza = zzny.zze(t, j).hashCode();
                        i2 = i + iZza;
                    }
                    break;
            }
        }
        int iHashCode2 = (i2 * 53) + this.zzp.zzd(t).hashCode();
        return this.zzh ? (iHashCode2 * 53) + this.zzq.zza(t).hashCode() : iHashCode2;
    }

    private static <T> int zzc(T t, long j) {
        return ((Integer) zzny.zze(t, j)).intValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:423:0x0a2d, code lost:
    
        throw com.google.android.gms.internal.measurement.zzlk.zzi();
     */
    /* JADX WARN: Removed duplicated region for block: B:572:0x0902 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:578:0x0cd9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:599:0x0c6e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:622:0x08f3 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int zza(T r31, byte[] r32, int r33, int r34, int r35, com.google.android.gms.internal.measurement.zzjn r36) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzjn):int");
    }

    private final int zza(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zza(i, 0);
    }

    private final int zzb(int i) {
        return this.zzc[i + 2];
    }

    private final int zza(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private final int zzc(int i) {
        return this.zzc[i + 1];
    }

    private static <T> long zzd(T t, long j) {
        return ((Long) zzny.zze(t, j)).longValue();
    }

    private final zzlg zzd(int i) {
        return (zzlg) this.zzd[((i / 3) << 1) + 1];
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x027e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x033b  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0387  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.android.gms.internal.measurement.zzmp<T> zza(java.lang.Class<T> r32, com.google.android.gms.internal.measurement.zzmj r33, com.google.android.gms.internal.measurement.zzmt r34, com.google.android.gms.internal.measurement.zzlv r35, com.google.android.gms.internal.measurement.zznx<?, ?> r36, com.google.android.gms.internal.measurement.zzkr<?> r37, com.google.android.gms.internal.measurement.zzme r38) {
        /*
            Method dump skipped, instruction units count: 1037
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzmj, com.google.android.gms.internal.measurement.zzmt, com.google.android.gms.internal.measurement.zzlv, com.google.android.gms.internal.measurement.zznx, com.google.android.gms.internal.measurement.zzkr, com.google.android.gms.internal.measurement.zzme):com.google.android.gms.internal.measurement.zzmp");
    }

    private final zznd zze(int i) {
        int i2 = (i / 3) << 1;
        zznd zzndVar = (zznd) this.zzd[i2];
        if (zzndVar != null) {
            return zzndVar;
        }
        zznd<T> zzndVarZza = zzmz.zza().zza((Class) this.zzd[i2 + 1]);
        this.zzd[i2] = zzndVarZza;
        return zzndVarZza;
    }

    static zznw zzc(Object obj) {
        zzlc zzlcVar = (zzlc) obj;
        zznw zznwVar = zzlcVar.zzb;
        if (zznwVar != zznw.zzc()) {
            return zznwVar;
        }
        zznw zznwVarZzd = zznw.zzd();
        zzlcVar.zzb = zznwVarZzd;
        return zznwVarZzd;
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zznx<UT, UB> zznxVar, Object obj2) {
        zzlg zzlgVarZzd;
        int i2 = this.zzc[i];
        Object objZze = zzny.zze(obj, zzc(i) & 1048575);
        return (objZze == null || (zzlgVarZzd = zzd(i)) == null) ? ub : (UB) zza(i, i2, this.zzr.zze(objZze), zzlgVarZzd, ub, zznxVar, obj2);
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzlg zzlgVar, UB ub, zznx<UT, UB> zznxVar, Object obj) {
        zzmc<?, ?> zzmcVarZza = this.zzr.zza(zzf(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzlgVar.zza(((Integer) next.getValue()).intValue())) {
                if (ub == null) {
                    ub = zznxVar.zzc(obj);
                }
                zzjx zzjxVarZzc = zzjs.zzc(zzmd.zza(zzmcVarZza, next.getKey(), next.getValue()));
                try {
                    zzmd.zza(zzjxVarZzc.zzb(), zzmcVarZza, next.getKey(), next.getValue());
                    zznxVar.zza(ub, i2, zzjxVarZzc.zza());
                    it.remove();
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final Object zzf(int i) {
        return this.zzd[(i / 3) << 1];
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t, int i) {
        zznd zzndVarZze = zze(i);
        long jZzc = zzc(i) & 1048575;
        if (!zzc((Object) t, i)) {
            return zzndVarZze.zza();
        }
        Object object = zzb.getObject(t, jZzc);
        if (zzg(object)) {
            return object;
        }
        Object objZza = zzndVarZze.zza();
        if (object != null) {
            zzndVarZze.zza(objZza, object);
        }
        return objZza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final Object zza(T t, int i, int i2) {
        zznd zzndVarZze = zze(i2);
        if (!zzc(t, i, i2)) {
            return zzndVarZze.zza();
        }
        Object object = zzb.getObject(t, zzc(i2) & 1048575);
        if (zzg(object)) {
            return object;
        }
        Object objZza = zzndVarZze.zza();
        if (object != null) {
            zzndVarZze.zza(objZza, object);
        }
        return objZza;
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final T zza() {
        return (T) this.zzn.zza(this.zzg);
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException unused) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            throw new RuntimeException("Field " + str + " for " + cls.getName() + " not found. Known fields are " + Arrays.toString(declaredFields));
        }
    }

    private zzmp(int[] iArr, Object[] objArr, int i, int i2, zzml zzmlVar, boolean z, int[] iArr2, int i3, int i4, zzmt zzmtVar, zzlv zzlvVar, zznx<?, ?> zznxVar, zzkr<?> zzkrVar, zzme zzmeVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzmlVar instanceof zzlc;
        this.zzh = zzkrVar != null && zzkrVar.zza(zzmlVar);
        this.zzj = false;
        this.zzk = iArr2;
        this.zzl = i3;
        this.zzm = i4;
        this.zzn = zzmtVar;
        this.zzo = zzlvVar;
        this.zzp = zznxVar;
        this.zzq = zzkrVar;
        this.zzg = zzmlVar;
        this.zzr = zzmeVar;
    }

    private static void zzf(Object obj) {
        if (zzg(obj)) {
            return;
        }
        throw new IllegalArgumentException("Mutating immutable message: " + String.valueOf(obj));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzd(T r8) {
        /*
            Method dump skipped, instruction units count: 218
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zzd(java.lang.Object):void");
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void zza(T t, T t2) {
        zzf(t);
        t2.getClass();
        for (int i = 0; i < this.zzc.length; i += 3) {
            int iZzc = zzc(i);
            long j = 1048575 & iZzc;
            int i2 = this.zzc[i];
            switch ((iZzc & 267386880) >>> 20) {
                case 0:
                    if (zzc((Object) t2, i)) {
                        zzny.zza(t, j, zzny.zza(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 1:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzb(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 2:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 3:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 4:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 5:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 6:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 7:
                    if (zzc((Object) t2, i)) {
                        zzny.zzc(t, j, zzny.zzh(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 8:
                    if (zzc((Object) t2, i)) {
                        zzny.zza(t, j, zzny.zze(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zzc((Object) t2, i)) {
                        zzny.zza(t, j, zzny.zze(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 11:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 12:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 13:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 14:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 15:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzc(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 16:
                    if (zzc((Object) t2, i)) {
                        zzny.zza((Object) t, j, zzny.zzd(t2, j));
                        zzb((Object) t, i);
                    }
                    break;
                case 17:
                    zza(t, t2, i);
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    this.zzo.zza(t, t2, j);
                    break;
                case 50:
                    zznf.zza(this.zzr, t, t2, j);
                    break;
                case 51:
                case 52:
                case 53:
                case 54:
                case 55:
                case 56:
                case 57:
                case 58:
                case 59:
                    if (zzc(t2, i2, i)) {
                        zzny.zza(t, j, zzny.zze(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 60:
                    zzb(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzc(t2, i2, i)) {
                        zzny.zza(t, j, zzny.zze(t2, j));
                        zzb(t, i2, i);
                    }
                    break;
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zznf.zza(this.zzp, t, t2);
        if (this.zzh) {
            zznf.zza(this.zzq, t, t2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0625 A[Catch: all -> 0x0297, TryCatch #4 {all -> 0x0297, blocks: (B:153:0x05f6, B:163:0x0620, B:165:0x0625, B:166:0x062a, B:50:0x00cc, B:51:0x00de, B:52:0x00f0, B:53:0x0102, B:54:0x0113, B:55:0x0124, B:57:0x012e, B:60:0x0135, B:61:0x013b, B:62:0x0148, B:63:0x0159, B:64:0x0166, B:65:0x0177, B:67:0x0182, B:68:0x0193, B:69:0x01a4, B:70:0x01b5, B:71:0x01c6, B:72:0x01d7, B:73:0x01e8, B:74:0x01f9, B:75:0x020b, B:77:0x021b, B:81:0x023c, B:78:0x0225, B:80:0x022d, B:82:0x024d, B:83:0x025f, B:84:0x026d, B:85:0x027b, B:86:0x0289), top: B:195:0x05f6 }] */
    /* JADX WARN: Removed duplicated region for block: B:183:0x065b A[LOOP:3: B:181:0x0657->B:183:0x065b, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:185:0x066f  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x0630 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r19v0, types: [com.google.android.gms.internal.measurement.zzna] */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r18, com.google.android.gms.internal.measurement.zzna r19, com.google.android.gms.internal.measurement.zzkp r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1794
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzna, com.google.android.gms.internal.measurement.zzkp):void");
    }

    @Override // com.google.android.gms.internal.measurement.zznd
    public final void zza(T t, byte[] bArr, int i, int i2, zzjn zzjnVar) throws IOException {
        zza(t, bArr, i, i2, 0, zzjnVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zza(T t, T t2, int i) {
        if (zzc((Object) t2, i)) {
            long jZzc = zzc(i) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t2, jZzc);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + String.valueOf(t2));
            }
            zznd zzndVarZze = zze(i);
            if (!zzc((Object) t, i)) {
                if (!zzg(object)) {
                    unsafe.putObject(t, jZzc, object);
                } else {
                    Object objZza = zzndVarZze.zza();
                    zzndVarZze.zza(objZza, object);
                    unsafe.putObject(t, jZzc, objZza);
                }
                zzb((Object) t, i);
                return;
            }
            Object object2 = unsafe.getObject(t, jZzc);
            if (!zzg(object2)) {
                Object objZza2 = zzndVarZze.zza();
                zzndVarZze.zza(objZza2, object2);
                unsafe.putObject(t, jZzc, objZza2);
                object2 = objZza2;
            }
            zzndVarZze.zza(object2, object);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final void zzb(T t, T t2, int i) {
        int i2 = this.zzc[i];
        if (zzc(t2, i2, i)) {
            long jZzc = zzc(i) & 1048575;
            Unsafe unsafe = zzb;
            Object object = unsafe.getObject(t2, jZzc);
            if (object == null) {
                throw new IllegalStateException("Source subfield " + this.zzc[i] + " is present but null: " + String.valueOf(t2));
            }
            zznd zzndVarZze = zze(i);
            if (!zzc(t, i2, i)) {
                if (!zzg(object)) {
                    unsafe.putObject(t, jZzc, object);
                } else {
                    Object objZza = zzndVarZze.zza();
                    zzndVarZze.zza(objZza, object);
                    unsafe.putObject(t, jZzc, objZza);
                }
                zzb(t, i2, i);
                return;
            }
            Object object2 = unsafe.getObject(t, jZzc);
            if (!zzg(object2)) {
                Object objZza2 = zzndVarZze.zza();
                zzndVarZze.zza(objZza2, object2);
                unsafe.putObject(t, jZzc, objZza2);
                object2 = objZza2;
            }
            zzndVarZze.zza(object2, object);
        }
    }

    private final void zza(Object obj, int i, zzna zznaVar) throws IOException {
        if (zzg(i)) {
            zzny.zza(obj, i & 1048575, zznaVar.zzr());
        } else if (this.zzi) {
            zzny.zza(obj, i & 1048575, zznaVar.zzq());
        } else {
            zzny.zza(obj, i & 1048575, zznaVar.zzp());
        }
    }

    private final void zzb(T t, int i) {
        int iZzb = zzb(i);
        long j = 1048575 & iZzb;
        if (j == 1048575) {
            return;
        }
        zzny.zza((Object) t, j, (1 << (iZzb >>> 20)) | zzny.zzc(t, j));
    }

    private final void zzb(T t, int i, int i2) {
        zzny.zza((Object) t, zzb(i2) & 1048575, i);
    }

    private final void zza(T t, int i, Object obj) {
        zzb.putObject(t, zzc(i) & 1048575, obj);
        zzb((Object) t, i);
    }

    private final void zza(T t, int i, int i2, Object obj) {
        zzb.putObject(t, zzc(i2) & 1048575, obj);
        zzb(t, i, i2);
    }

    private final <K, V> void zza(zzos zzosVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzosVar.zza(i, this.zzr.zza(zzf(i2)), this.zzr.zzd(obj));
        }
    }

    private static void zza(int i, Object obj, zzos zzosVar) throws IOException {
        if (obj instanceof String) {
            zzosVar.zza(i, (String) obj);
        } else {
            zzosVar.zza(i, (zzjs) obj);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:176:0x054a  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0036  */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r24, com.google.android.gms.internal.measurement.zzos r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 3270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzos):void");
    }

    private static <UT, UB> void zza(zznx<UT, UB> zznxVar, T t, zzos zzosVar) throws IOException {
        zznxVar.zzb(zznxVar.zzd(t), zzosVar);
    }

    private final boolean zzc(T t, T t2, int i) {
        return zzc((Object) t, i) == zzc((Object) t2, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:104:0x01c1  */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzb(T r10, T r11) {
        /*
            Method dump skipped, instruction units count: 640
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zzb(java.lang.Object, java.lang.Object):boolean");
    }

    private final boolean zzc(T t, int i) {
        int iZzb = zzb(i);
        long j = iZzb & 1048575;
        if (j != 1048575) {
            return (zzny.zzc(t, j) & (1 << (iZzb >>> 20))) != 0;
        }
        int iZzc = zzc(i);
        long j2 = iZzc & 1048575;
        switch ((iZzc & 267386880) >>> 20) {
            case 0:
                return Double.doubleToRawLongBits(zzny.zza(t, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzny.zzb(t, j2)) != 0;
            case 2:
                return zzny.zzd(t, j2) != 0;
            case 3:
                return zzny.zzd(t, j2) != 0;
            case 4:
                return zzny.zzc(t, j2) != 0;
            case 5:
                return zzny.zzd(t, j2) != 0;
            case 6:
                return zzny.zzc(t, j2) != 0;
            case 7:
                return zzny.zzh(t, j2);
            case 8:
                Object objZze = zzny.zze(t, j2);
                if (objZze instanceof String) {
                    return !((String) objZze).isEmpty();
                }
                if (objZze instanceof zzjs) {
                    return !zzjs.zza.equals(objZze);
                }
                throw new IllegalArgumentException();
            case 9:
                return zzny.zze(t, j2) != null;
            case 10:
                return !zzjs.zza.equals(zzny.zze(t, j2));
            case 11:
                return zzny.zzc(t, j2) != 0;
            case 12:
                return zzny.zzc(t, j2) != 0;
            case 13:
                return zzny.zzc(t, j2) != 0;
            case 14:
                return zzny.zzd(t, j2) != 0;
            case 15:
                return zzny.zzc(t, j2) != 0;
            case 16:
                return zzny.zzd(t, j2) != 0;
            case 17:
                return zzny.zze(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        if (i2 == 1048575) {
            return zzc((Object) t, i);
        }
        return (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00d2  */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [com.google.android.gms.internal.measurement.zznd] */
    /* JADX WARN: Type inference failed for: r1v30 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v8, types: [com.google.android.gms.internal.measurement.zznd] */
    @Override // com.google.android.gms.internal.measurement.zznd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zze(T r18) {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzmp.zze(java.lang.Object):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zznd zzndVar) {
        return zzndVar.zze(zzny.zze(obj, i & 1048575));
    }

    private static boolean zzg(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof zzlc) {
            return ((zzlc) obj).zzco();
        }
        return true;
    }

    private final boolean zzc(T t, int i, int i2) {
        return zzny.zzc(t, (long) (zzb(i2) & 1048575)) == i;
    }

    private static <T> boolean zze(T t, long j) {
        return ((Boolean) zzny.zze(t, j)).booleanValue();
    }
}
