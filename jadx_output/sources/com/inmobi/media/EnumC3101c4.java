package com.inmobi.media;

import android.util.SparseArray;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.google.android.gms.wallet.WalletConstants;
import com.itextpdf.kernel.xmp.XMPError;
import kotlin.enums.EnumEntriesKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: renamed from: com.inmobi.media.c4 */
/* JADX INFO: loaded from: classes6.dex */
public final class EnumC3101c4 {

    /* JADX INFO: renamed from: A */
    public static final /* synthetic */ EnumC3101c4[] f1918A;

    /* JADX INFO: renamed from: b */
    public static final C3086b4 f1919b;

    /* JADX INFO: renamed from: c */
    public static final SparseArray f1920c;

    /* JADX INFO: renamed from: d */
    public static final EnumC3101c4 f1921d;

    /* JADX INFO: renamed from: e */
    public static final EnumC3101c4 f1922e;

    /* JADX INFO: renamed from: f */
    public static final EnumC3101c4 f1923f;

    /* JADX INFO: renamed from: g */
    public static final EnumC3101c4 f1924g;

    /* JADX INFO: renamed from: h */
    public static final EnumC3101c4 f1925h;

    /* JADX INFO: renamed from: i */
    public static final EnumC3101c4 f1926i;

    /* JADX INFO: renamed from: j */
    public static final EnumC3101c4 f1927j;

    /* JADX INFO: renamed from: k */
    public static final EnumC3101c4 f1928k;

    /* JADX INFO: renamed from: l */
    public static final EnumC3101c4 f1929l;

    /* JADX INFO: renamed from: m */
    public static final EnumC3101c4 f1930m;

    /* JADX INFO: renamed from: n */
    public static final EnumC3101c4 f1931n;

    /* JADX INFO: renamed from: o */
    public static final EnumC3101c4 f1932o;

    /* JADX INFO: renamed from: p */
    public static final EnumC3101c4 f1933p;

    /* JADX INFO: renamed from: q */
    public static final EnumC3101c4 f1934q;

    /* JADX INFO: renamed from: r */
    public static final EnumC3101c4 f1935r;

    /* JADX INFO: renamed from: s */
    public static final EnumC3101c4 f1936s;

    /* JADX INFO: renamed from: t */
    public static final EnumC3101c4 f1937t;

    /* JADX INFO: renamed from: u */
    public static final EnumC3101c4 f1938u;

    /* JADX INFO: renamed from: v */
    public static final EnumC3101c4 f1939v;

    /* JADX INFO: renamed from: w */
    public static final EnumC3101c4 f1940w;

    /* JADX INFO: renamed from: x */
    public static final EnumC3101c4 f1941x;

    /* JADX INFO: renamed from: y */
    public static final EnumC3101c4 f1942y;

    /* JADX INFO: renamed from: z */
    public static final EnumC3101c4 f1943z;

    /* JADX INFO: renamed from: a */
    public final int f1944a;

    static {
        EnumC3101c4 enumC3101c4 = new EnumC3101c4(0, 0, "NETWORK_UNAVAILABLE_ERROR");
        f1921d = enumC3101c4;
        EnumC3101c4 enumC3101c42 = new EnumC3101c4(1, -1, "UNKNOWN_ERROR");
        f1922e = enumC3101c42;
        EnumC3101c4 enumC3101c43 = new EnumC3101c4(2, -2, "NETWORK_IO_ERROR");
        f1923f = enumC3101c43;
        EnumC3101c4 enumC3101c44 = new EnumC3101c4(3, -3, "OUT_OF_MEMORY_ERROR");
        f1924g = enumC3101c44;
        EnumC3101c4 enumC3101c45 = new EnumC3101c4(4, -4, "INVALID_ENCRYPTED_RESPONSE_RECEIVED");
        EnumC3101c4 enumC3101c46 = new EnumC3101c4(5, -5, "RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT");
        EnumC3101c4 enumC3101c47 = new EnumC3101c4(6, -6, "GZIP_DECOMPRESSION_FAILED");
        f1925h = enumC3101c47;
        EnumC3101c4 enumC3101c48 = new EnumC3101c4(7, -7, "BAD_REQUEST");
        f1926i = enumC3101c48;
        EnumC3101c4 enumC3101c49 = new EnumC3101c4(8, -8, "GDPR_COMPLIANCE_ENFORCED");
        f1927j = enumC3101c49;
        EnumC3101c4 enumC3101c410 = new EnumC3101c4(9, -9, "GENERIC_HTTP_2XX");
        f1928k = enumC3101c410;
        EnumC3101c4 enumC3101c411 = new EnumC3101c4(10, -10, "RESPONSE_PARSING_ERROR");
        f1929l = enumC3101c411;
        EnumC3101c4 enumC3101c412 = new EnumC3101c4(11, -11, "RETRY_ATTEMPTED");
        f1930m = enumC3101c412;
        EnumC3101c4 enumC3101c413 = new EnumC3101c4(12, -12, "NETWORK_UNAVAILABLE_CONTEXT_LOSS");
        f1931n = enumC3101c413;
        EnumC3101c4 enumC3101c414 = new EnumC3101c4(13, -13, "NETWORK_UNAVAILABLE_IDLE_MODE");
        f1932o = enumC3101c414;
        EnumC3101c4 enumC3101c415 = new EnumC3101c4(14, -14, "NETWORK_UNAVAILABLE_NO_CONNECTION_M_OR_ABOVE");
        f1933p = enumC3101c415;
        EnumC3101c4 enumC3101c416 = new EnumC3101c4(15, -15, "NETWORK_UNAVAILABLE_NO_CONNECTION_BELOW_M");
        f1934q = enumC3101c416;
        EnumC3101c4 enumC3101c417 = new EnumC3101c4(16, -16, "NETWORK_UNAVAILABLE_EXCEPTION");
        f1935r = enumC3101c417;
        EnumC3101c4 enumC3101c418 = new EnumC3101c4(17, -17, "NETWORK_PREPARE_FAIL");
        f1936s = enumC3101c418;
        EnumC3101c4 enumC3101c419 = new EnumC3101c4(18, -18, "NETWORK_UNAVAILABLE_CUSTOM_VALIDATOR");
        f1937t = enumC3101c419;
        EnumC3101c4 enumC3101c420 = new EnumC3101c4(19, XMPError.BADSTREAM, "HTTP_NO_CONTENT");
        EnumC3101c4 enumC3101c421 = new EnumC3101c4(20, 304, "HTTP_NOT_MODIFIED");
        EnumC3101c4 enumC3101c422 = new EnumC3101c4(21, 303, "HTTP_SEE_OTHER");
        f1938u = enumC3101c422;
        EnumC3101c4 enumC3101c423 = new EnumC3101c4(22, WalletConstants.ERROR_CODE_INVALID_PARAMETERS, "HTTP_SERVER_NOT_FOUND");
        f1939v = enumC3101c423;
        EnumC3101c4 enumC3101c424 = new EnumC3101c4(23, 302, "HTTP_MOVED_TEMP");
        f1940w = enumC3101c424;
        EnumC3101c4 enumC3101c425 = new EnumC3101c4(24, 500, "HTTP_INTERNAL_SERVER_ERROR");
        EnumC3101c4 enumC3101c426 = new EnumC3101c4(25, TypedValues.PositionType.TYPE_TRANSITION_EASING, "HTTP_NOT_IMPLEMENTED");
        EnumC3101c4 enumC3101c427 = new EnumC3101c4(26, TypedValues.PositionType.TYPE_DRAWPATH, "HTTP_BAD_GATEWAY");
        f1941x = enumC3101c427;
        EnumC3101c4 enumC3101c428 = new EnumC3101c4(27, TypedValues.PositionType.TYPE_PERCENT_WIDTH, "HTTP_SERVER_NOT_AVAILABLE");
        f1942y = enumC3101c428;
        EnumC3101c4 enumC3101c429 = new EnumC3101c4(28, TypedValues.PositionType.TYPE_PERCENT_HEIGHT, "HTTP_GATEWAY_TIMEOUT");
        f1943z = enumC3101c429;
        EnumC3101c4[] enumC3101c4Arr = {enumC3101c4, enumC3101c42, enumC3101c43, enumC3101c44, enumC3101c45, enumC3101c46, enumC3101c47, enumC3101c48, enumC3101c49, enumC3101c410, enumC3101c411, enumC3101c412, enumC3101c413, enumC3101c414, enumC3101c415, enumC3101c416, enumC3101c417, enumC3101c418, enumC3101c419, enumC3101c420, enumC3101c421, enumC3101c422, enumC3101c423, enumC3101c424, enumC3101c425, enumC3101c426, enumC3101c427, enumC3101c428, enumC3101c429, new EnumC3101c4(29, 505, "HTTP_VERSION_NOT_SUPPORTED")};
        f1918A = enumC3101c4Arr;
        EnumEntriesKt.enumEntries(enumC3101c4Arr);
        f1919b = new C3086b4();
        f1920c = new SparseArray();
        for (EnumC3101c4 enumC3101c430 : values()) {
            f1920c.put(enumC3101c430.f1944a, enumC3101c430);
        }
    }

    public EnumC3101c4(int i, int i2, String str) {
        this.f1944a = i2;
    }

    public static EnumC3101c4 valueOf(String str) {
        return (EnumC3101c4) Enum.valueOf(EnumC3101c4.class, str);
    }

    public static EnumC3101c4[] values() {
        return (EnumC3101c4[]) f1918A.clone();
    }
}
