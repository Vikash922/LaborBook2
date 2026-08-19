package com.razorpay;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: PerformanceUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007¨\u0006\n"}, m2722d2 = {"Lcom/razorpay/PerformanceUtil;", "", "()V", "getPerformanceClass", "", "context", "Landroid/content/Context;", "getPerformanceClassFromRAM", "isLowEndDevice", "", "core_release"}, m2723k = 1, m2724mv = {1, 6, 0}, m2726xi = 48)
public final class PerformanceUtil {
    public static final PerformanceUtil INSTANCE = new PerformanceUtil();

    private PerformanceUtil() {
    }

    @JvmStatic
    public static final int getPerformanceClass(Context context) {
        int iL$1_I$l$;
        Intrinsics.checkNotNullParameter(context, "context");
        try {
            if (Build.VERSION.SDK_INT < 31 || (iL$1_I$l$ = Build.VERSION.MEDIA_PERFORMANCE_CLASS) == 0) {
                iL$1_I$l$ = INSTANCE.l$1_I$l$(context);
            }
            return iL$1_I$l$;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    private final int l$1_I$l$(Context context) {
        try {
            Object systemService = context.getSystemService("activity");
            if (systemService == null) {
                throw new NullPointerException("null cannot be cast to non-null type android.app.ActivityManager");
            }
            ((ActivityManager) systemService).getMemoryInfo(new ActivityManager.MemoryInfo());
            double d = r1.totalMem / 1.073741824E9d;
            if (d < 2.0d) {
                return 0;
            }
            return d < 4.0d ? 30 : d < 6.0d ? 31 : 33;
        } catch (Exception e) {
            e.printStackTrace();
            return 0;
        }
    }

    @JvmStatic
    public static final boolean isLowEndDevice(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        int performanceClass = getPerformanceClass(context);
        return performanceClass == 0 || performanceClass == 30;
    }
}
