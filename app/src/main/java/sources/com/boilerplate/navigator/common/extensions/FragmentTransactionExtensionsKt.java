package com.boilerplate.navigator.common.extensions;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u001a\u0016\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0016\u0010\u0005\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0016\u0010\u0006\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0016\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000\u001a\u0016\u0010\b\u001a\u00020\u0001*\u00020\u00022\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004H\u0000¨\u0006\t"}, m2722d2 = {"detach", "", "Landroidx/fragment/app/FragmentTransaction;", "fragment", "Landroidx/fragment/app/Fragment;", "hide", "attach", "show", "remove", "navigator_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FragmentTransactionExtensionsKt {
    public static final void attach(FragmentTransaction fragmentTransaction, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        if (fragment != null) {
            fragmentTransaction.attach(fragment);
        }
    }

    public static final void detach(FragmentTransaction fragmentTransaction, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        if (fragment != null) {
            fragmentTransaction.detach(fragment);
        }
    }

    public static final void hide(FragmentTransaction fragmentTransaction, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        if (fragment != null) {
            fragmentTransaction.hide(fragment);
        }
    }

    public static final void remove(FragmentTransaction fragmentTransaction, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        if (fragment != null) {
            fragmentTransaction.remove(fragment);
        }
    }

    public static final void show(FragmentTransaction fragmentTransaction, Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragmentTransaction, "<this>");
        if (fragment != null) {
            fragmentTransaction.show(fragment);
        }
    }
}
