package com.google.android.gms.internal.measurement;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@22.1.0 */
/* JADX INFO: loaded from: classes2.dex */
public enum zzkw {
    DOUBLE(0, zzky.SCALAR, zzlm.DOUBLE),
    FLOAT(1, zzky.SCALAR, zzlm.FLOAT),
    INT64(2, zzky.SCALAR, zzlm.LONG),
    UINT64(3, zzky.SCALAR, zzlm.LONG),
    INT32(4, zzky.SCALAR, zzlm.INT),
    FIXED64(5, zzky.SCALAR, zzlm.LONG),
    FIXED32(6, zzky.SCALAR, zzlm.INT),
    BOOL(7, zzky.SCALAR, zzlm.BOOLEAN),
    STRING(8, zzky.SCALAR, zzlm.STRING),
    MESSAGE(9, zzky.SCALAR, zzlm.MESSAGE),
    BYTES(10, zzky.SCALAR, zzlm.BYTE_STRING),
    UINT32(11, zzky.SCALAR, zzlm.INT),
    ENUM(12, zzky.SCALAR, zzlm.ENUM),
    SFIXED32(13, zzky.SCALAR, zzlm.INT),
    SFIXED64(14, zzky.SCALAR, zzlm.LONG),
    SINT32(15, zzky.SCALAR, zzlm.INT),
    SINT64(16, zzky.SCALAR, zzlm.LONG),
    GROUP(17, zzky.SCALAR, zzlm.MESSAGE),
    DOUBLE_LIST(18, zzky.VECTOR, zzlm.DOUBLE),
    FLOAT_LIST(19, zzky.VECTOR, zzlm.FLOAT),
    INT64_LIST(20, zzky.VECTOR, zzlm.LONG),
    UINT64_LIST(21, zzky.VECTOR, zzlm.LONG),
    INT32_LIST(22, zzky.VECTOR, zzlm.INT),
    FIXED64_LIST(23, zzky.VECTOR, zzlm.LONG),
    FIXED32_LIST(24, zzky.VECTOR, zzlm.INT),
    BOOL_LIST(25, zzky.VECTOR, zzlm.BOOLEAN),
    STRING_LIST(26, zzky.VECTOR, zzlm.STRING),
    MESSAGE_LIST(27, zzky.VECTOR, zzlm.MESSAGE),
    BYTES_LIST(28, zzky.VECTOR, zzlm.BYTE_STRING),
    UINT32_LIST(29, zzky.VECTOR, zzlm.INT),
    ENUM_LIST(30, zzky.VECTOR, zzlm.ENUM),
    SFIXED32_LIST(31, zzky.VECTOR, zzlm.INT),
    SFIXED64_LIST(32, zzky.VECTOR, zzlm.LONG),
    SINT32_LIST(33, zzky.VECTOR, zzlm.INT),
    SINT64_LIST(34, zzky.VECTOR, zzlm.LONG),
    DOUBLE_LIST_PACKED(35, zzky.PACKED_VECTOR, zzlm.DOUBLE),
    FLOAT_LIST_PACKED(36, zzky.PACKED_VECTOR, zzlm.FLOAT),
    INT64_LIST_PACKED(37, zzky.PACKED_VECTOR, zzlm.LONG),
    UINT64_LIST_PACKED(38, zzky.PACKED_VECTOR, zzlm.LONG),
    INT32_LIST_PACKED(39, zzky.PACKED_VECTOR, zzlm.INT),
    FIXED64_LIST_PACKED(40, zzky.PACKED_VECTOR, zzlm.LONG),
    FIXED32_LIST_PACKED(41, zzky.PACKED_VECTOR, zzlm.INT),
    BOOL_LIST_PACKED(42, zzky.PACKED_VECTOR, zzlm.BOOLEAN),
    UINT32_LIST_PACKED(43, zzky.PACKED_VECTOR, zzlm.INT),
    ENUM_LIST_PACKED(44, zzky.PACKED_VECTOR, zzlm.ENUM),
    SFIXED32_LIST_PACKED(45, zzky.PACKED_VECTOR, zzlm.INT),
    SFIXED64_LIST_PACKED(46, zzky.PACKED_VECTOR, zzlm.LONG),
    SINT32_LIST_PACKED(47, zzky.PACKED_VECTOR, zzlm.INT),
    SINT64_LIST_PACKED(48, zzky.PACKED_VECTOR, zzlm.LONG),
    GROUP_LIST(49, zzky.VECTOR, zzlm.MESSAGE),
    MAP(50, zzky.MAP, zzlm.VOID);

    private static final zzkw[] zzaz;
    private final int zzbb;

    public final int zza() {
        return this.zzbb;
    }

    static {
        zzkw[] zzkwVarArrValues = values();
        zzaz = new zzkw[zzkwVarArrValues.length];
        for (zzkw zzkwVar : zzkwVarArrValues) {
            zzaz[zzkwVar.zzbb] = zzkwVar;
        }
    }

    zzkw(int i, zzky zzkyVar, zzlm zzlmVar) {
        this.zzbb = i;
        int iOrdinal = zzkyVar.ordinal();
        if (iOrdinal == 1 || iOrdinal == 3) {
            zzlmVar.zza();
        }
        if (zzkyVar == zzky.SCALAR) {
            int i2 = zzkz.zza[zzlmVar.ordinal()];
        }
    }
}
