package com.boilerplate.navigator.common.extensions;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00002\n\u0000\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\u001a)\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0017\u0010\u0003\u001a\u0013\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0002\b\u0006H\u0080\bø\u0001\u0000\u001a$\u0010\u0007\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\b\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0000\u001a\u001b\u0010\r\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\u0010\u000e\u001a\u001b\u0010\u000f\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\u0010\u000e\u001a\u001b\u0010\u0010\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0000¢\u0006\u0002\u0010\u000e\u001a\u0014\u0010\u0011\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0000\u001a\u0014\u0010\u0013\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\fH\u0000\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u0014"}, m2722d2 = {"inTransaction", "", "Landroidx/fragment/app/FragmentManager;", "func", "Lkotlin/Function1;", "Landroidx/fragment/app/FragmentTransaction;", "Lkotlin/ExtensionFunctionType;", "commitAdd", "containerId", "fragment", "Landroidx/fragment/app/Fragment;", "fragmentTag", "", "commitRemove", "(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Ljava/lang/Integer;", "commitAttach", "commitDetach", "commitHide", "", "commitShow", "navigator_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FragmentManagerExtensionsKt {
    public static final int commitAdd(FragmentManager fragmentManager, int i, Fragment fragment, String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
        FragmentTransaction fragmentTransactionAdd = fragmentTransactionBeginTransaction.add(i, fragment, fragmentTag);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionAdd, "add(...)");
        return fragmentTransactionAdd.commitAllowingStateLoss();
    }

    public static final Integer commitAttach(FragmentManager fragmentManager, String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(fragmentTag);
        if (fragmentFindFragmentByTag == null) {
            return null;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
        FragmentTransaction fragmentTransactionAttach = fragmentTransactionBeginTransaction.attach(fragmentFindFragmentByTag);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionAttach, "attach(...)");
        return Integer.valueOf(fragmentTransactionAttach.commitAllowingStateLoss());
    }

    public static final Integer commitDetach(FragmentManager fragmentManager, String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(fragmentTag);
        if (fragmentFindFragmentByTag == null) {
            return null;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
        FragmentTransaction fragmentTransactionDetach = fragmentTransactionBeginTransaction.detach(fragmentFindFragmentByTag);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionDetach, "detach(...)");
        return Integer.valueOf(fragmentTransactionDetach.commitAllowingStateLoss());
    }

    public static final void commitHide(FragmentManager fragmentManager, String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(fragmentTag);
        if (fragmentFindFragmentByTag != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
            FragmentTransaction fragmentTransactionHide = fragmentTransactionBeginTransaction.hide(fragmentFindFragmentByTag);
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionHide, "hide(...)");
            fragmentTransactionHide.commitAllowingStateLoss();
        }
    }

    public static final Integer commitRemove(FragmentManager fragmentManager, String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(fragmentTag);
        if (fragmentFindFragmentByTag == null) {
            return null;
        }
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
        FragmentTransaction fragmentTransactionRemove = fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionRemove, "remove(...)");
        return Integer.valueOf(fragmentTransactionRemove.commitAllowingStateLoss());
    }

    public static final void commitShow(FragmentManager fragmentManager, String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        Fragment fragmentFindFragmentByTag = fragmentManager.findFragmentByTag(fragmentTag);
        if (fragmentFindFragmentByTag != null) {
            FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
            FragmentTransaction fragmentTransactionShow = fragmentTransactionBeginTransaction.show(fragmentFindFragmentByTag);
            Intrinsics.checkNotNullExpressionValue(fragmentTransactionShow, "show(...)");
            fragmentTransactionShow.commitAllowingStateLoss();
        }
    }

    public static final int inTransaction(FragmentManager fragmentManager, Function1<? super FragmentTransaction, ? extends FragmentTransaction> func) {
        Intrinsics.checkNotNullParameter(fragmentManager, "<this>");
        Intrinsics.checkNotNullParameter(func, "func");
        FragmentTransaction fragmentTransactionBeginTransaction = fragmentManager.beginTransaction();
        Intrinsics.checkNotNullExpressionValue(fragmentTransactionBeginTransaction, "beginTransaction(...)");
        return func.invoke(fragmentTransactionBeginTransaction).commitAllowingStateLoss();
    }
}
