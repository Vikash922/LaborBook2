package com.truecaller.android.sdk.common.callVerification;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: CallRejector.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0007\u001a\u00020\bH\u0016J\u0016\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0002J/\u0010\t\u001a\u0004\u0018\u00010\n*\u00020\n2\u0006\u0010\r\u001a\u00020\f2\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\n0\u000f\"\u00020\nH\u0002¢\u0006\u0002\u0010\u0010R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/truecaller/android/sdk/common/callVerification/CallRejectorLegacyImpl;", "Lcom/truecaller/android/sdk/common/callVerification/CallRejector;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "telephonyManager", "Landroid/telephony/TelephonyManager;", "reject", "", "invoke", "", "methodName", "", "name", "parameters", "", "(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class CallRejectorLegacyImpl implements CallRejector {
    private final TelephonyManager telephonyManager;

    public CallRejectorLegacyImpl(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Object systemService = context.getSystemService("phone");
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
        this.telephonyManager = (TelephonyManager) systemService;
    }

    @Override // com.truecaller.android.sdk.common.callVerification.CallRejector
    public boolean reject() {
        try {
            Object objInvoke = invoke(this.telephonyManager, "getITelephony");
            if (objInvoke != null) {
                invoke(objInvoke, "endCall");
            }
            return true;
        } catch (Exception unused) {
            try {
                Object objInvoke2 = invoke(this.telephonyManager, "getITelephonyMSim");
                if (objInvoke2 != null) {
                    if (Intrinsics.areEqual(invoke(objInvoke2, "endCall", 0), (Object) false)) {
                        invoke(objInvoke2, "endCall", 1);
                    }
                    return true;
                }
            } catch (Exception unused2) {
            }
            return false;
        }
    }

    private final Object invoke(Object obj, String str) throws NoSuchMethodException {
        Method declaredMethod = obj.getClass().getDeclaredMethod(str, new Class[0]);
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, new Object[0]);
    }

    private final Object invoke(Object obj, String str, Object... objArr) throws NoSuchMethodException {
        Class<?> cls = obj.getClass();
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj2 : objArr) {
            arrayList.add(obj2.getClass());
        }
        Class[] clsArr = (Class[]) arrayList.toArray(new Class[0]);
        Method declaredMethod = cls.getDeclaredMethod(str, (Class[]) Arrays.copyOf(clsArr, clsArr.length));
        declaredMethod.setAccessible(true);
        return declaredMethod.invoke(obj, objArr);
    }
}
