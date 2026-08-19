package com.inmobi.media;

import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.wallet.WalletConstants;
import com.itextpdf.kernel.xmp.XMPError;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.c4, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC0250c4 {
    public static final /* synthetic */ EnumC0250c4[] A;
    public static final C0235b4 b;
    public static final SparseArray c;
    public static final EnumC0250c4 d;
    public static final EnumC0250c4 e;
    public static final EnumC0250c4 f;
    public static final EnumC0250c4 g;
    public static final EnumC0250c4 h;
    public static final EnumC0250c4 i;
    public static final EnumC0250c4 j;
    public static final EnumC0250c4 k;
    public static final EnumC0250c4 l;
    public static final EnumC0250c4 m;
    public static final EnumC0250c4 n;
    public static final EnumC0250c4 o;
    public static final EnumC0250c4 p;
    public static final EnumC0250c4 q;
    public static final EnumC0250c4 r;
    public static final EnumC0250c4 s;
    public static final EnumC0250c4 t;
    public static final EnumC0250c4 u;
    public static final EnumC0250c4 v;
    public static final EnumC0250c4 w;
    public static final EnumC0250c4 x;
    public static final EnumC0250c4 y;
    public static final EnumC0250c4 z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f319a;

    static {
        EnumC0250c4 enumC0250c4 = new EnumC0250c4(0, 0, "NETWORK_UNAVAILABLE_ERROR");
        d = enumC0250c4;
        EnumC0250c4 enumC0250c42 = new EnumC0250c4(1, -1, "UNKNOWN_ERROR");
        e = enumC0250c42;
        EnumC0250c4 enumC0250c43 = new EnumC0250c4(2, -2, "NETWORK_IO_ERROR");
        f = enumC0250c43;
        EnumC0250c4 enumC0250c44 = new EnumC0250c4(3, -3, "OUT_OF_MEMORY_ERROR");
        g = enumC0250c44;
        EnumC0250c4 enumC0250c45 = new EnumC0250c4(4, -4, "INVALID_ENCRYPTED_RESPONSE_RECEIVED");
        EnumC0250c4 enumC0250c46 = new EnumC0250c4(5, -5, "RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT");
        EnumC0250c4 enumC0250c47 = new EnumC0250c4(6, -6, "GZIP_DECOMPRESSION_FAILED");
        h = enumC0250c47;
        EnumC0250c4 enumC0250c48 = new EnumC0250c4(7, -7, "BAD_REQUEST");
        i = enumC0250c48;
        EnumC0250c4 enumC0250c49 = new EnumC0250c4(8, -8, "GDPR_COMPLIANCE_ENFORCED");
        j = enumC0250c49;
        EnumC0250c4 enumC0250c410 = new EnumC0250c4(9, -9, "GENERIC_HTTP_2XX");
        k = enumC0250c410;
        EnumC0250c4 enumC0250c411 = new EnumC0250c4(10, -10, "RESPONSE_PARSING_ERROR");
        l = enumC0250c411;
        EnumC0250c4 enumC0250c412 = new EnumC0250c4(11, -11, "RETRY_ATTEMPTED");
        m = enumC0250c412;
        EnumC0250c4 enumC0250c413 = new EnumC0250c4(12, -12, "NETWORK_UNAVAILABLE_CONTEXT_LOSS");
        n = enumC0250c413;
        EnumC0250c4 enumC0250c414 = new EnumC0250c4(13, -13, "NETWORK_UNAVAILABLE_IDLE_MODE");
        o = enumC0250c414;
        EnumC0250c4 enumC0250c415 = new EnumC0250c4(14, -14, "NETWORK_UNAVAILABLE_NO_CONNECTION_M_OR_ABOVE");
        p = enumC0250c415;
        EnumC0250c4 enumC0250c416 = new EnumC0250c4(15, -15, "NETWORK_UNAVAILABLE_NO_CONNECTION_BELOW_M");
        q = enumC0250c416;
        EnumC0250c4 enumC0250c417 = new EnumC0250c4(16, -16, "NETWORK_UNAVAILABLE_EXCEPTION");
        r = enumC0250c417;
        EnumC0250c4 enumC0250c418 = new EnumC0250c4(17, -17, "NETWORK_PREPARE_FAIL");
        s = enumC0250c418;
        EnumC0250c4 enumC0250c419 = new EnumC0250c4(18, -18, "NETWORK_UNAVAILABLE_CUSTOM_VALIDATOR");
        t = enumC0250c419;
        EnumC0250c4 enumC0250c420 = new EnumC0250c4(19, XMPError.BADSTREAM, "HTTP_NO_CONTENT");
        EnumC0250c4 enumC0250c421 = new EnumC0250c4(20, 304, "HTTP_NOT_MODIFIED");
        EnumC0250c4 enumC0250c422 = new EnumC0250c4(21, 303, "HTTP_SEE_OTHER");
        u = enumC0250c422;
        EnumC0250c4 enumC0250c423 = new EnumC0250c4(22, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, "HTTP_SERVER_NOT_FOUND");
        v = enumC0250c423;
        EnumC0250c4 enumC0250c424 = new EnumC0250c4(23, 302, "HTTP_MOVED_TEMP");
        w = enumC0250c424;
        EnumC0250c4 enumC0250c425 = new EnumC0250c4(24, 500, "HTTP_INTERNAL_SERVER_ERROR");
        EnumC0250c4 enumC0250c426 = new EnumC0250c4(25, TypedValues.PositionType.TYPE_TRANSITION_EASING, "HTTP_NOT_IMPLEMENTED");
        EnumC0250c4 enumC0250c427 = new EnumC0250c4(26, TypedValues.PositionType.TYPE_DRAWPATH, "HTTP_BAD_GATEWAY");
        x = enumC0250c427;
        EnumC0250c4 enumC0250c428 = new EnumC0250c4(27, TypedValues.PositionType.TYPE_PERCENT_WIDTH, "HTTP_SERVER_NOT_AVAILABLE");
        y = enumC0250c428;
        EnumC0250c4 enumC0250c429 = new EnumC0250c4(28, TypedValues.PositionType.TYPE_PERCENT_HEIGHT, "HTTP_GATEWAY_TIMEOUT");
        z = enumC0250c429;
        EnumC0250c4[] enumC0250c4Arr = {enumC0250c4, enumC0250c42, enumC0250c43, enumC0250c44, enumC0250c45, enumC0250c46, enumC0250c47, enumC0250c48, enumC0250c49, enumC0250c410, enumC0250c411, enumC0250c412, enumC0250c413, enumC0250c414, enumC0250c415, enumC0250c416, enumC0250c417, enumC0250c418, enumC0250c419, enumC0250c420, enumC0250c421, enumC0250c422, enumC0250c423, enumC0250c424, enumC0250c425, enumC0250c426, enumC0250c427, enumC0250c428, enumC0250c429, new EnumC0250c4(29, 505, "HTTP_VERSION_NOT_SUPPORTED")};
        A = enumC0250c4Arr;
        EnumEntriesKt.enumEntries(enumC0250c4Arr);
        b = new C0235b4();
        c = new SparseArray();
        for (EnumC0250c4 enumC0250c430 : values()) {
            c.put(enumC0250c430.f319a, enumC0250c430);
        }
    }

    public EnumC0250c4(int i2, int i3, String str) {
        this.f319a = i3;
    }

    public static EnumC0250c4 valueOf(String str) {
        return (EnumC0250c4) Enum.valueOf(EnumC0250c4.class, str);
    }

    public static EnumC0250c4[] values() {
        return (EnumC0250c4[]) A.clone();
    }
}
