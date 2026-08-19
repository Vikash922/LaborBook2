package org.koin.androidx.fragment.android;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentFactory;
import androidx.fragment.app.FragmentTransaction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.KoinExperimentalAPI;
import org.koin.core.scope.Scope;

/* JADX INFO: compiled from: ActivityExt.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u00000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a;\u0010\u0000\u001a\u00020\u0001\"\n\b\u0000\u0010\u0002\u0018\u0001*\u00020\u0003*\u00020\u00012\b\b\u0001\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\tH\u0087\b\u001a\u0018\u0010\n\u001a\u00020\u000b*\u00020\f2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0007¨\u0006\u000f"}, m2722d2 = {"replace", "Landroidx/fragment/app/FragmentTransaction;", "F", "Landroidx/fragment/app/Fragment;", "containerViewId", "", "args", "Landroid/os/Bundle;", "tag", "", "setupKoinFragmentFactory", "", "Landroidx/fragment/app/FragmentActivity;", "scope", "Lorg/koin/core/scope/Scope;", "koin-android_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class ActivityExtKt {
    public static /* synthetic */ void setupKoinFragmentFactory$default(FragmentActivity fragmentActivity, Scope scope, int i, Object obj) {
        if ((i & 1) != 0) {
            scope = null;
        }
        setupKoinFragmentFactory(fragmentActivity, scope);
    }

    @KoinExperimentalAPI
    public static final void setupKoinFragmentFactory(FragmentActivity fragmentActivity, Scope scope) {
        Intrinsics.checkNotNullParameter(fragmentActivity, "<this>");
        if (scope == null) {
            fragmentActivity.getSupportFragmentManager().setFragmentFactory((FragmentFactory) ComponentCallbackExtKt.getDefaultScope(fragmentActivity).get(Reflection.getOrCreateKotlinClass(FragmentFactory.class), null, null));
        } else {
            fragmentActivity.getSupportFragmentManager().setFragmentFactory(new KoinFragmentFactory(scope));
        }
    }

    public static /* synthetic */ FragmentTransaction replace$default(FragmentTransaction fragmentTransaction, int i, Bundle bundle, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            bundle = null;
        }
        if ((i2 & 4) != 0) {
            str = null;
        }
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction fragmentTransactionReplace = fragmentTransaction.replace(i, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionReplace, "replace(containerViewId, F::class.java, args, tag)");
        return fragmentTransactionReplace;
    }

    @KoinExperimentalAPI
    public static final /* synthetic */ FragmentTransaction replace(FragmentTransaction fragmentTransaction, int i, Bundle bundle, String str) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        Intrinsics.reifiedOperationMarker(4, "F");
        FragmentTransaction fragmentTransactionReplace = fragmentTransaction.replace(i, Fragment.class, bundle, str);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionReplace, "replace(containerViewId, F::class.java, args, tag)");
        return fragmentTransactionReplace;
    }
}
