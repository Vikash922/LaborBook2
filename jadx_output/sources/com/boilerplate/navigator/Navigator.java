package com.boilerplate.navigator;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.LifecycleOwner;
import com.boilerplate.navigator.transaction.NavigatorTransaction;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import java.util.ArrayList;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001:\u0003-./J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\tH&J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u0007H&J\"\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u000bH&J\b\u0010\f\u001a\u00020\u0003H&J\b\u0010\r\u001a\u00020\u000eH&J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\tH&J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\u0011\u001a\u00020\u000eH&J\u0012\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0011\u001a\u00020\u000eH&J\b\u0010\u0010\u001a\u00020\u0003H&J1\u0010\u0013\u001a\u00020\u00032\"\u0010\u0014\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00160\u0017j\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u0016`\u0015H&¢\u0006\u0002\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0007H&J\u0010\u0010\u001a\u001a\u00020\u000e2\u0006\u0010\b\u001a\u00020\tH&J\n\u0010\u001b\u001a\u0004\u0018\u00010\u0005H&J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001d\u001a\u00020\u001eH&J\u0012\u0010\u001f\u001a\u00020\u00032\b\u0010 \u001a\u0004\u0018\u00010\u001eH&J$\u0010!\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0012\u0010$\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00030%H&J\u0012\u0010&\u001a\u00020\t2\b\u0010'\u001a\u0004\u0018\u00010\u0007H&J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010(\u001a\u00020)H&J*\u0010*\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030+H&J*\u0010,\u001a\u00020\u00032\u0006\u0010\"\u001a\u00020#2\u0018\u0010$\u001a\u0014\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00030+H&¨\u00060"}, m2722d2 = {"Lcom/boilerplate/navigator/Navigator;", "", "start", "", "fragment", "Landroidx/fragment/app/Fragment;", "fragmentGroupName", "", FragmentStackStateMapper.MEDUSA_TAB_INDEX, "", "transitionAnimation", "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;", "goBack", "canGoBack", "", "switchTab", "reset", "resetRootFragment", "resetCurrentTab", "resetWithFragmentProvider", "rootFragmentProvider", "Lkotlin/collections/ArrayList;", "Lkotlin/Function0;", "Ljava/util/ArrayList;", "(Ljava/util/ArrayList;)V", "clearGroup", "hasOnlyRoot", "getCurrentFragment", "onSaveInstanceState", "outState", "Landroid/os/Bundle;", "initialize", "savedState", "observeDestinationChanges", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "destinationChangedListener", "Lkotlin/Function1;", "getFragmentIndexInStackBySameType", "tag", "bottomSheetFragment", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "observeDestinationChangesWithTabChange", "Lkotlin/Function2;", "observeDestinationChangesWithPopBack", "NavigatorListener", "OnGoBackListener", "OnNavigatorTransactionListener", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface Navigator {

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class DefaultImpls {
        public static /* synthetic */ void reset$default(Navigator navigator, int i, boolean z, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: reset");
            }
            if ((i2 & 2) != 0) {
                z = false;
            }
            navigator.reset(i, z);
        }

        public static /* synthetic */ void resetCurrentTab$default(Navigator navigator, boolean z, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resetCurrentTab");
            }
            if ((i & 1) != 0) {
                z = false;
            }
            navigator.resetCurrentTab(z);
        }
    }

    @Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0006"}, m2722d2 = {"Lcom/boilerplate/navigator/Navigator$NavigatorListener;", "", "onTabChanged", "", FragmentStackStateMapper.MEDUSA_TAB_INDEX, "", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public interface NavigatorListener {
        void onTabChanged(int tabIndex);
    }

    /* JADX INFO: loaded from: classes3.dex */
    @Metadata(m2721d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m2722d2 = {"Lcom/boilerplate/navigator/Navigator$OnGoBackListener;", "", "onGoBack", "", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public interface OnGoBackListener {
        boolean onGoBack();
    }

    @Metadata(m2721d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, m2722d2 = {"Lcom/boilerplate/navigator/Navigator$OnNavigatorTransactionListener;", "", "getNavigatorTransaction", "Lcom/boilerplate/navigator/transaction/NavigatorTransaction;", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public interface OnNavigatorTransactionListener {
        NavigatorTransaction getNavigatorTransaction();
    }

    boolean canGoBack();

    void clearGroup(String fragmentGroupName);

    Fragment getCurrentFragment();

    int getFragmentIndexInStackBySameType(String tag);

    void goBack();

    boolean hasOnlyRoot(int tabIndex);

    void initialize(Bundle savedState);

    void observeDestinationChanges(LifecycleOwner lifecycleOwner, Function1<? super Fragment, Unit> destinationChangedListener);

    void observeDestinationChangesWithPopBack(LifecycleOwner lifecycleOwner, Function2<? super Fragment, ? super Boolean, Unit> destinationChangedListener);

    void observeDestinationChangesWithTabChange(LifecycleOwner lifecycleOwner, Function2<? super Fragment, ? super Boolean, Unit> destinationChangedListener);

    void onSaveInstanceState(Bundle outState);

    void reset();

    void reset(int tabIndex, boolean resetRootFragment);

    void resetCurrentTab(boolean resetRootFragment);

    void resetWithFragmentProvider(ArrayList<Function0<Fragment>> rootFragmentProvider);

    void start(Fragment fragment);

    void start(Fragment fragment, int tabIndex);

    void start(Fragment fragment, int tabIndex, String fragmentGroupName);

    void start(Fragment fragment, TransitionAnimationType transitionAnimation);

    void start(Fragment fragment, String fragmentGroupName);

    void start(Fragment fragment, String fragmentGroupName, TransitionAnimationType transitionAnimation);

    void start(BottomSheetDialogFragment bottomSheetFragment);

    void switchTab(int tabIndex);
}
