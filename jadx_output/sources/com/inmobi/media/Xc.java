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

/* JADX INFO: loaded from: classes6.dex */
public abstract class Xc {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ScheduledExecutorService f282a = Executors.newSingleThreadScheduledExecutor();

    public static final String a(Thread thread, Throwable error) {
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
            boolean zB = b(stackTrace);
            C0551w5 c0551w5 = C0551w5.f513a;
            C0551w5.a(jSONObject, zB, jCurrentTimeMillis);
            CrashConfig crashConfig = AbstractC0583y9.f536a;
            AbstractC0583y9.a(jSONObject, error instanceof OutOfMemoryError, zB, jCurrentTimeMillis);
            String string = jSONObject.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            return string;
        } catch (JSONException e) {
            e.toString();
            return "";
        }
    }

    public static final boolean b(StackTraceElement[] stackTraceElementArr) {
        Intrinsics.checkNotNullParameter(stackTraceElementArr, "<this>");
        Regex regex = new Regex("com\\.inmobi\\.(media|ads|commons|unification|sdk|unifiedId|adquality|compliance)");
        int length = stackTraceElementArr.length;
        for (int i = 0; i < length && !a(stackTraceElementArr[i], InMobiInterstitial.a.class.getSuperclass()) && !a(stackTraceElementArr[i], InMobiInterstitial.a.class) && !a(stackTraceElementArr[i], InMobiNative.NativeCallbacks.class) && !a(stackTraceElementArr[i], InMobiBanner.a.class) && !a(stackTraceElementArr[i], InMobiBanner.a.class.getSuperclass()) && (!Intrinsics.areEqual(stackTraceElementArr[i].getClassName(), InMobiSdk.class.getName()) || !Intrinsics.areEqual(stackTraceElementArr[i].getMethodName(), InMobiSdk.class.getDeclaredMethod("a", SdkInitializationListener.class, String.class).getName())); i++) {
            String className = stackTraceElementArr[i].getClassName();
            Intrinsics.checkNotNullExpressionValue(className, "getClassName(...)");
            String name = C0312g3.class.getName();
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

    public static final String a(StackTraceElement[] stackTraceElementArr) {
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

    public static final boolean a(C0565x5 c0565x5) {
        Intrinsics.checkNotNullParameter(c0565x5, "<this>");
        if (c0565x5 instanceof C0329h3) {
            StackTraceElement[] stackTraceElementArr = ((C0329h3) c0565x5).g;
            if (stackTraceElementArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("stackTrace");
                stackTraceElementArr = null;
            }
            return b(stackTraceElementArr);
        }
        if (c0565x5 instanceof C0232b1) {
            C0232b1 c0232b1 = (C0232b1) c0565x5;
            if (c0232b1.g == 6) {
                return new Regex("com\\.inmobi\\.(media|ads|commons|unification|sdk|unifiedId|adquality|compliance)").containsMatchIn(c0232b1.h);
            }
        } else if (c0565x5 instanceof zd) {
            return b(((zd) c0565x5).g);
        }
        return false;
    }

    public static final boolean a(StackTraceElement stackTraceElement, Class cls) {
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
