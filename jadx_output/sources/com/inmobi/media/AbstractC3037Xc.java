package com.inmobi.media;

import android.util.Log;
import com.boilerplate.navigator.FragmentStackStateMapper;
import com.inmobi.ads.InMobiBanner;
import com.inmobi.ads.InMobiInterstitial;
import com.inmobi.ads.InMobiNative;
import com.inmobi.ads.controllers.PublisherCallbacks;
import com.inmobi.commons.core.configs.CrashConfig;
import com.inmobi.sdk.InMobiSdk;
import com.inmobi.sdk.SdkInitializationListener;
import java.lang.reflect.Method;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.inmobi.media.Xc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3037Xc {

    /* JADX INFO: renamed from: a */
    public static final ScheduledExecutorService f1652a = Executors.newSingleThreadScheduledExecutor();

    /* JADX INFO: renamed from: a */
    public static final String m1914a(Thread thread, Throwable error) {
        Intrinsics.checkNotNullParameter(error, "error");
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("name", error.getClass().getSimpleName());
            jSONObject.put("message", error.getMessage());
            jSONObject.put(FragmentStackStateMapper.MEDUSA_STACK, Log.getStackTraceString(error));
            if (thread != null) {
                jSONObject.put("thread", thread.getName());
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            StackTraceElement[] stackTrace = error.getStackTrace();
            Intrinsics.checkNotNullExpressionValue(stackTrace, "getStackTrace(...)");
            boolean zM1918b = m1918b(stackTrace);
            C3402w5 c3402w5 = C3402w5.f2709a;
            C3402w5.m2551a(jSONObject, zM1918b, jCurrentTimeMillis);
            CrashConfig crashConfig = AbstractC3436y9.f2768a;
            AbstractC3436y9.m2622a(jSONObject, error instanceof OutOfMemoryError, zM1918b, jCurrentTimeMillis);
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            e.toString();
            return "";
        }
    }

    /* JADX INFO: renamed from: b */
    public static final boolean m1918b(StackTraceElement[] stackTraceElementArr) {
        Intrinsics.checkNotNullParameter(stackTraceElementArr, "<this>");
        Regex regex = new Regex("com\\.inmobi\\.(media|ads|commons|unification|sdk|unifiedId|adquality|compliance)");
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length && !m1917a(stackTraceElementArr[i], InMobiInterstitial.C2673a.class.getSuperclass()) && !m1917a(stackTraceElementArr[i], InMobiInterstitial.C2673a.class) && !m1917a(stackTraceElementArr[i], InMobiNative.NativeCallbacks.class) && !m1917a(stackTraceElementArr[i], InMobiBanner.C2672a.class) && !m1917a(stackTraceElementArr[i], InMobiBanner.C2672a.class.getSuperclass()) && (!Intrinsics.areEqual(stackTraceElementArr[i].getClassName(), InMobiSdk.class.getName()) || !Intrinsics.areEqual(stackTraceElementArr[i].getMethodName(), InMobiSdk.class.getDeclaredMethod("a", SdkInitializationListener.class, String.class).getName())); i++) {
            String className = stackTraceElementArr[i].getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            String name = C3160g3.class.getName();
            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
            if (StringsKt.contains$default((CharSequence) className, (CharSequence) name, false, 2, (Object) null)) {
                break;
            }
            String className2 = stackTraceElementArr[i].getClassName();
            Intrinsics.checkNotNullExpressionValue(className2, "getClassName(...)");
            if (regex.containsMatchIn(className2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    public static final String m1915a(StackTraceElement[] stackTraceElementArr) {
        Intrinsics.checkNotNullParameter(stackTraceElementArr, "<this>");
        StringBuilder sb = new StringBuilder();
        for (StackTraceElement stackTraceElement : stackTraceElementArr) {
            StringBuilder sbAppend = sb.append(stackTraceElement.toString());
            Intrinsics.checkNotNullExpressionValue(sbAppend, "append(value)");
            Intrinsics.checkNotNullExpressionValue(sbAppend.append('\n'), "append('\\n')");
        }
        String string = sb.toString();
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        return string;
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1916a(C3417x5 c3417x5) {
        Intrinsics.checkNotNullParameter(c3417x5, "<this>");
        if (c3417x5 instanceof C3175h3) {
            StackTraceElement[] stackTraceElementArr = ((C3175h3) c3417x5).f2132g;
            if (stackTraceElementArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("stackTrace");
                stackTraceElementArr = null;
            }
            return m1918b(stackTraceElementArr);
        }
        if (c3417x5 instanceof C3083b1) {
            C3083b1 c3083b1 = (C3083b1) c3417x5;
            if (c3083b1.f1870g == 6) {
                return new Regex("com\\.inmobi\\.(media|ads|commons|unification|sdk|unifiedId|adquality|compliance)").containsMatchIn(c3083b1.f1871h);
            }
        } else if (c3417x5 instanceof C3455zd) {
            return m1918b(((C3455zd) c3417x5).f2817g);
        }
        return false;
    }

    /* JADX INFO: renamed from: a */
    public static final boolean m1917a(StackTraceElement stackTraceElement, Class cls) {
        Intrinsics.checkNotNullParameter(stackTraceElement, "<this>");
        if (cls != null && Intrinsics.areEqual(stackTraceElement.getClassName(), cls.getName())) {
            Method[] declaredMethods = PublisherCallbacks.class.getDeclaredMethods();
            Intrinsics.checkNotNullExpressionValue(declaredMethods, "getDeclaredMethods(...)");
            for (Method method : declaredMethods) {
                if (Intrinsics.areEqual(stackTraceElement.getMethodName(), method.getName())) {
                    return true;
                }
            }
        }
        return false;
    }
}
