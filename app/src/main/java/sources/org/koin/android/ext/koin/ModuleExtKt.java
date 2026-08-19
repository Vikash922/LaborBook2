package org.koin.android.ext.koin;

import android.app.Application;
import android.content.Context;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.error.MissingAndroidContextException;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ModuleExt.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\n\u0010\u0002\u001a\u00020\u0003*\u00020\u0004\u001a\n\u0010\u0005\u001a\u00020\u0006*\u00020\u0004\"\u000e\u0010\u0000\u001a\u00020\u0001X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m2722d2 = {"ERROR_MSG", "", "androidApplication", "Landroid/app/Application;", "Lorg/koin/core/scope/Scope;", "androidContext", "Landroid/content/Context;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ModuleExtKt {
    public static final String ERROR_MSG = "Please use androidContext() function in your KoinApplication configuration.";

    public static final Context androidContext(Scope scope) throws MissingAndroidContextException {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        try {
            return (Context) scope.get(Reflection.getOrCreateKotlinClass(Context.class), null, null);
        } catch (Exception unused) {
            throw new MissingAndroidContextException("Can't resolve Context instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }

    public static final Application androidApplication(Scope scope) throws MissingAndroidContextException {
        Intrinsics.checkNotNullParameter(scope, "<this>");
        try {
            return (Application) scope.get(Reflection.getOrCreateKotlinClass(Application.class), null, null);
        } catch (Exception unused) {
            throw new MissingAndroidContextException("Can't resolve Application instance. Please use androidContext() function in your KoinApplication configuration.");
        }
    }
}
