package org.koin.android.error;

import com.itextpdf.svg.SvgConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: MissingAndroidContextException.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m2722d2 = {"Lorg/koin/android/error/MissingAndroidContextException;", "", SvgConstants.Attributes.PATH_DATA_REL_CURVE_TO_S, "", "(Ljava/lang/String;)V", "koin-android_release"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class MissingAndroidContextException extends Throwable {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MissingAndroidContextException(String s) {
        super(s);
        Intrinsics.checkNotNullParameter(s, "s");
    }
}
