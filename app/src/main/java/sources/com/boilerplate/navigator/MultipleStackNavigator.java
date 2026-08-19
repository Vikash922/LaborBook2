package com.boilerplate.navigator;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.lifecycle.DefaultLifecycleObserver;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import com.boilerplate.navigator.Navigator;
import com.boilerplate.navigator.controller.FragmentManagerController;
import com.boilerplate.navigator.data.FragmentData;
import com.boilerplate.navigator.data.StackItem;
import com.boilerplate.navigator.tag.TagCreator;
import com.boilerplate.navigator.tag.UniqueTagCreator;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Stack;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u0000 [2\u00020\u0001:\u0001[Be\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\"\u0010\u0006\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\nj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\u0007\u0012\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\f\u0012\b\b\u0002\u0010\r\u001a\u00020\u000e\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\tH\u0016J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\u0005H\u0016J \u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00102\u001a\u00020\u00052\u0006\u00103\u001a\u000204H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00103\u001a\u000204H\u0016J\u0018\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00105\u001a\u00020\u0010H\u0016J\"\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\t2\u0006\u00103\u001a\u0002042\b\u00105\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u00106\u001a\u000200H\u0016J\b\u00107\u001a\u00020-H\u0016J\u0010\u00108\u001a\u0002002\u0006\u00102\u001a\u00020\u0005H\u0016J\u0018\u00109\u001a\u0002002\u0006\u00102\u001a\u00020\u00052\u0006\u0010:\u001a\u00020-H\u0016J\u0010\u0010;\u001a\u0002002\u0006\u0010:\u001a\u00020-H\u0016J\b\u00109\u001a\u000200H\u0016J1\u0010<\u001a\u0002002\"\u0010\u0006\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\nj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\u0007H\u0016¢\u0006\u0002\u0010\u001aJ\u0010\u0010=\u001a\u0002002\u0006\u00103\u001a\u000204H\u0016J\u000e\u0010=\u001a\u0002002\u0006\u00102\u001a\u00020\u0005J\u0010\u0010>\u001a\u00020-2\u0006\u00102\u001a\u00020\u0005H\u0016J\n\u0010?\u001a\u0004\u0018\u00010\tH\u0016J\u0012\u0010@\u001a\u0002002\b\u0010A\u001a\u0004\u0018\u00010BH\u0016J$\u0010C\u001a\u0002002\u0006\u0010D\u001a\u00020E2\u0012\u0010F\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u0002000GH\u0016J*\u0010H\u001a\u0002002\u0006\u0010D\u001a\u00020E2\u0018\u0010F\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u0002000IH\u0016J*\u0010J\u001a\u0002002\u0006\u0010D\u001a\u00020E2\u0018\u0010F\u001a\u0014\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020-\u0012\u0004\u0012\u0002000IH\u0016J\u0012\u0010K\u001a\u00020\u00052\b\u0010L\u001a\u0004\u0018\u000104H\u0016J\b\u0010M\u001a\u000200H\u0002J\u0010\u0010N\u001a\u0002002\u0006\u0010A\u001a\u00020BH\u0002J\u0010\u0010O\u001a\u00020\t2\u0006\u00102\u001a\u00020\u0005H\u0002J\u001c\u0010P\u001a\u0002002\b\b\u0002\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020-H\u0002J\b\u0010Q\u001a\u000204H\u0002J\b\u0010R\u001a\u00020-H\u0002J\b\u0010S\u001a\u00020-H\u0002J\b\u0010T\u001a\u000200H\u0002J\u0018\u0010T\u001a\u0002002\u0006\u00102\u001a\u00020\u00052\u0006\u0010:\u001a\u00020-H\u0002J\b\u0010U\u001a\u00020-H\u0002J$\u0010V\u001a\u0002002\u0006\u00101\u001a\u00020\t2\b\b\u0002\u0010,\u001a\u00020-2\b\b\u0002\u0010.\u001a\u00020-H\u0002J\u0010\u0010W\u001a\u0002002\u0006\u0010X\u001a\u00020BH\u0016J\u0010\u0010/\u001a\u0002002\u0006\u0010Y\u001a\u00020ZH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0016R8\u0010\u0006\u001a\u001e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\nj\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b`\u0007X\u0086\u000e¢\u0006\u0010\n\u0002\u0010\u001b\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u0010\u0010\u000b\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001dR\u0016\u0010\u001e\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010$\u001a\u00020%X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010&\u001a\u00020'X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R\u000e\u0010,\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010.\u001a\u00020-X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\\"}, m2722d2 = {"Lcom/boilerplate/navigator/MultipleStackNavigator;", "Lcom/boilerplate/navigator/Navigator;", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "containerId", "", "rootFragmentProvider", "Lkotlin/collections/ArrayList;", "Lkotlin/Function0;", "Landroidx/fragment/app/Fragment;", "Ljava/util/ArrayList;", "navigatorListener", "Lcom/boilerplate/navigator/Navigator$NavigatorListener;", "navigatorConfiguration", "Lcom/boilerplate/navigator/NavigatorConfiguration;", "transitionAnimationType", "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;", "context", "Landroid/content/Context;", "<init>", "(Landroidx/fragment/app/FragmentManager;ILjava/util/ArrayList;Lcom/boilerplate/navigator/Navigator$NavigatorListener;Lcom/boilerplate/navigator/NavigatorConfiguration;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;Landroid/content/Context;)V", "getFragmentManager", "()Landroidx/fragment/app/FragmentManager;", "getRootFragmentProvider", "()Ljava/util/ArrayList;", "setRootFragmentProvider", "(Ljava/util/ArrayList;)V", "Ljava/util/ArrayList;", "getContext", "()Landroid/content/Context;", "destinationChangeLiveData", "Landroidx/lifecycle/MutableLiveData;", "tagCreator", "Lcom/boilerplate/navigator/tag/TagCreator;", "fragmentManagerController", "Lcom/boilerplate/navigator/controller/FragmentManagerController;", "fragmentStackStateMapper", "Lcom/boilerplate/navigator/FragmentStackStateMapper;", "fragmentStackState", "Lcom/boilerplate/navigator/FragmentStackState;", "getFragmentStackState", "()Lcom/boilerplate/navigator/FragmentStackState;", "setFragmentStackState", "(Lcom/boilerplate/navigator/FragmentStackState;)V", "isFromSwitchTab", "", "isFromPopBack", "start", "", "fragment", FragmentStackStateMapper.MEDUSA_TAB_INDEX, "fragmentGroupName", "", "transitionAnimation", "goBack", "canGoBack", "switchTab", "reset", "resetRootFragment", "resetCurrentTab", "resetWithFragmentProvider", "clearGroup", "hasOnlyRoot", "getCurrentFragment", "initialize", "savedState", "Landroid/os/Bundle;", "observeDestinationChanges", "lifecycleOwner", "Landroidx/lifecycle/LifecycleOwner;", "destinationChangedListener", "Lkotlin/Function1;", "observeDestinationChangesWithTabChange", "Lkotlin/Function2;", "observeDestinationChangesWithPopBack", "getFragmentIndexInStackBySameType", "tag", "initializeStackState", "loadStackStateFromSavedState", "getRootFragment", "showUpperFragment", "getCurrentFragmentTag", "shouldExit", "shouldGoBackToInitialIndex", "clearAllFragments", "canFragmentGoBack", "notifyFragmentDestinationChange", "onSaveInstanceState", "outState", "bottomSheetFragment", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "Companion", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public class MultipleStackNavigator implements Navigator {
    public static final String DEFAULT_GROUP_NAME = "";
    public static final String MEDUSA_STACK_STATE_KEY = "MEDUSA_STACK_STATE_KEY";
    private final Context context;
    private MutableLiveData<Fragment> destinationChangeLiveData;
    private final FragmentManager fragmentManager;
    private final FragmentManagerController fragmentManagerController;
    private FragmentStackState fragmentStackState;
    private final FragmentStackStateMapper fragmentStackStateMapper;
    private boolean isFromPopBack;
    private boolean isFromSwitchTab;
    private final NavigatorConfiguration navigatorConfiguration;
    private Navigator.NavigatorListener navigatorListener;
    private ArrayList<Function0<Fragment>> rootFragmentProvider;
    private final TagCreator tagCreator;
    private final TransitionAnimationType transitionAnimationType;

    public MultipleStackNavigator(FragmentManager fragmentManager, int i, ArrayList<Function0<Fragment>> rootFragmentProvider, Navigator.NavigatorListener navigatorListener, NavigatorConfiguration navigatorConfiguration, TransitionAnimationType transitionAnimationType, Context context) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(rootFragmentProvider, "rootFragmentProvider");
        Intrinsics.checkNotNullParameter(navigatorConfiguration, "navigatorConfiguration");
        Intrinsics.checkNotNullParameter(context, "context");
        this.fragmentManager = fragmentManager;
        this.rootFragmentProvider = rootFragmentProvider;
        this.navigatorListener = navigatorListener;
        this.navigatorConfiguration = navigatorConfiguration;
        this.transitionAnimationType = transitionAnimationType;
        this.context = context;
        this.destinationChangeLiveData = new MutableLiveData<>();
        this.tagCreator = new UniqueTagCreator();
        this.fragmentManagerController = new FragmentManagerController(fragmentManager, i, navigatorConfiguration.getDefaultNavigatorTransaction());
        this.fragmentStackStateMapper = new FragmentStackStateMapper();
        this.fragmentStackState = new FragmentStackState(null, null, 3, null);
    }

    private final boolean canFragmentGoBack() {
        if (!(getCurrentFragment() instanceof Navigator.OnGoBackListener)) {
            return true;
        }
        ActivityResultCaller currentFragment = getCurrentFragment();
        Intrinsics.checkNotNull(currentFragment, "null cannot be cast to non-null type com.boilerplate.navigator.Navigator.OnGoBackListener");
        return ((Navigator.OnGoBackListener) currentFragment).onGoBack();
    }

    private final void clearAllFragments() {
        Iterator<T> it = this.fragmentStackState.popItemsFromNonEmptyTabs().iterator();
        while (it.hasNext()) {
            this.fragmentManagerController.findFragmentByTagAndRemove(((StackItem) it.next()).getFragmentTag());
        }
        this.fragmentManagerController.commitAllowingStateLoss();
    }

    private final String getCurrentFragmentTag() {
        StackItem stackItemPeekItemFromSelectedTab = this.fragmentStackState.peekItemFromSelectedTab();
        if (stackItemPeekItemFromSelectedTab != null) {
            return stackItemPeekItemFromSelectedTab.getFragmentTag();
        }
        throw new IllegalArgumentException("Required value was null.".toString());
    }

    private final Fragment getRootFragment(int tabIndex) {
        Integer numValueOf = Integer.valueOf(tabIndex);
        if (this.fragmentStackState.isTabEmpty(numValueOf.intValue())) {
            numValueOf = null;
        }
        if (numValueOf != null) {
            Fragment fragment = this.fragmentManagerController.getFragment(this.fragmentStackState.peekItem(numValueOf.intValue()).getFragmentTag());
            if (fragment != null) {
                return fragment;
            }
        }
        return this.rootFragmentProvider.get(tabIndex).invoke();
    }

    private final void initializeStackState() {
        int initialTabIndex = this.navigatorConfiguration.getInitialTabIndex();
        Fragment fragmentInvoke = this.rootFragmentProvider.get(initialTabIndex).invoke();
        StackItem stackItem = new StackItem(this.tagCreator.create(fragmentInvoke), null, 0, 6, null);
        this.fragmentStackState.setStackCount(this.rootFragmentProvider.size());
        this.fragmentStackState.notifyStackItemAdd(initialTabIndex, stackItem);
        this.fragmentStackState.switchTab(initialTabIndex);
        this.fragmentManagerController.addFragment(new FragmentData(fragmentInvoke, this.fragmentStackState.peekItem(initialTabIndex).getFragmentTag(), null, 4, null));
        Navigator.NavigatorListener navigatorListener = this.navigatorListener;
        if (navigatorListener != null) {
            navigatorListener.onTabChanged(this.navigatorConfiguration.getInitialTabIndex());
        }
        notifyFragmentDestinationChange$default(this, fragmentInvoke, false, false, 6, null);
    }

    private final void loadStackStateFromSavedState(Bundle savedState) {
        Navigator.NavigatorListener navigatorListener;
        FragmentStackState fragmentStackStateFromBundle = this.fragmentStackStateMapper.fromBundle(savedState.getBundle(MEDUSA_STACK_STATE_KEY));
        this.fragmentStackState.setStackState(fragmentStackStateFromBundle);
        if (fragmentStackStateFromBundle.getTabIndexStack().isEmpty() || (navigatorListener = this.navigatorListener) == null) {
            return;
        }
        Integer selectedTabIndex = this.fragmentStackState.getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
        navigatorListener.onTabChanged(selectedTabIndex.intValue());
    }

    private final void notifyFragmentDestinationChange(final Fragment fragment, final boolean isFromSwitchTab, final boolean isFromPopBack) {
        fragment.getLifecycle().addObserver(new DefaultLifecycleObserver() { // from class: com.boilerplate.navigator.MultipleStackNavigator.notifyFragmentDestinationChange.1
            @Override // androidx.lifecycle.DefaultLifecycleObserver
            public void onStart(LifecycleOwner owner) {
                Intrinsics.checkNotNullParameter(owner, "owner");
                owner.getLifecycle().removeObserver(this);
                Lifecycle lifecycle = fragment.getViewLifecycleOwner().getLifecycle();
                final MultipleStackNavigator multipleStackNavigator = this;
                final boolean z = isFromPopBack;
                final Fragment fragment2 = fragment;
                final boolean z2 = isFromSwitchTab;
                lifecycle.addObserver(new DefaultLifecycleObserver() { // from class: com.boilerplate.navigator.MultipleStackNavigator$notifyFragmentDestinationChange$1$onStart$1
                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                    public void onCreate(LifecycleOwner owner2) {
                        Intrinsics.checkNotNullParameter(owner2, "owner");
                        multipleStackNavigator.isFromPopBack = z;
                        multipleStackNavigator.destinationChangeLiveData.setValue(fragment2);
                        multipleStackNavigator.isFromSwitchTab = z2;
                    }

                    @Override // androidx.lifecycle.DefaultLifecycleObserver
                    public void onDestroy(LifecycleOwner owner2) {
                        Intrinsics.checkNotNullParameter(owner2, "owner");
                        if (Intrinsics.areEqual(multipleStackNavigator.destinationChangeLiveData.getValue(), fragment2)) {
                            multipleStackNavigator.destinationChangeLiveData.setValue(null);
                        }
                        owner2.getLifecycle().removeObserver(this);
                    }
                });
            }
        });
    }

    public static /* synthetic */ void notifyFragmentDestinationChange$default(MultipleStackNavigator multipleStackNavigator, Fragment fragment, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: notifyFragmentDestinationChange");
        }
        if ((i & 2) != 0) {
            z = false;
        }
        if ((i & 4) != 0) {
            z2 = false;
        }
        multipleStackNavigator.notifyFragmentDestinationChange(fragment, z, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeDestinationChanges$lambda$6(Function1 destinationChangedListener, Fragment fragment) {
        Intrinsics.checkNotNullParameter(destinationChangedListener, "$destinationChangedListener");
        if (fragment != null) {
            destinationChangedListener.invoke(fragment);
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeDestinationChangesWithPopBack$lambda$8(Function2 destinationChangedListener, MultipleStackNavigator this$0, Fragment fragment) {
        Intrinsics.checkNotNullParameter(destinationChangedListener, "$destinationChangedListener");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (fragment != null) {
            destinationChangedListener.invoke(fragment, Boolean.valueOf(this$0.isFromPopBack));
        }
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observeDestinationChangesWithTabChange$lambda$7(Function2 destinationChangedListener, MultipleStackNavigator this$0, Fragment fragment) {
        Intrinsics.checkNotNullParameter(destinationChangedListener, "$destinationChangedListener");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (fragment != null) {
            destinationChangedListener.invoke(fragment, Boolean.valueOf(this$0.isFromSwitchTab));
        }
        return Unit.INSTANCE;
    }

    private final boolean shouldExit() {
        return this.fragmentStackState.hasTabStack() && this.fragmentStackState.hasSelectedTabOnlyRoot();
    }

    private final boolean shouldGoBackToInitialIndex() {
        Integer selectedTabIndex = this.fragmentStackState.getSelectedTabIndex();
        return (selectedTabIndex == null || selectedTabIndex.intValue() != this.navigatorConfiguration.getInitialTabIndex()) && this.navigatorConfiguration.getAlwaysExitFromInitial();
    }

    private final void showUpperFragment(boolean isFromSwitchTab, boolean isFromPopBack) {
        StackItem stackItemPeekItemFromSelectedTab = this.fragmentStackState.peekItemFromSelectedTab();
        String fragmentTag = stackItemPeekItemFromSelectedTab != null ? stackItemPeekItemFromSelectedTab.getFragmentTag() : null;
        Fragment fragment = fragmentTag != null ? this.fragmentManagerController.getFragment(fragmentTag) : null;
        if (fragmentTag != null && fragment != null) {
            this.fragmentManagerController.enableFragment(fragmentTag);
            notifyFragmentDestinationChange(fragment, isFromSwitchTab, isFromPopBack);
            return;
        }
        Integer selectedTabIndex = this.fragmentStackState.getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
        Fragment rootFragment = getRootFragment(selectedTabIndex.intValue());
        String strCreate = this.tagCreator.create(rootFragment);
        FragmentData fragmentData = new FragmentData(rootFragment, strCreate, null, 4, null);
        FragmentStackState fragmentStackState = this.fragmentStackState;
        Integer selectedTabIndex2 = fragmentStackState.getSelectedTabIndex();
        Intrinsics.checkNotNullExpressionValue(selectedTabIndex2, "getSelectedTabIndex(...)");
        fragmentStackState.notifyStackItemAdd(selectedTabIndex2.intValue(), new StackItem(strCreate, null, 0, 6, null));
        this.fragmentManagerController.addFragment(fragmentData);
        notifyFragmentDestinationChange(rootFragment, isFromSwitchTab, isFromPopBack);
    }

    public static /* synthetic */ void showUpperFragment$default(MultipleStackNavigator multipleStackNavigator, boolean z, boolean z2, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showUpperFragment");
        }
        if ((i & 1) != 0) {
            z = false;
        }
        if ((i & 2) != 0) {
            z2 = false;
        }
        multipleStackNavigator.showUpperFragment(z, z2);
    }

    @Override // com.boilerplate.navigator.Navigator
    public boolean canGoBack() {
        return !shouldExit() || shouldGoBackToInitialIndex();
    }

    public final void clearGroup(int tabIndex) {
        StackItem stackItemPeekItemFromSelectedTab = this.fragmentStackState.peekItemFromSelectedTab();
        String fragmentTag = stackItemPeekItemFromSelectedTab != null ? stackItemPeekItemFromSelectedTab.getFragmentTag() : null;
        List<StackItem> listPopItemsFromTabIndex = this.fragmentStackState.popItemsFromTabIndex(tabIndex);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPopItemsFromTabIndex, 10));
        Iterator<T> it = listPopItemsFromTabIndex.iterator();
        while (it.hasNext()) {
            arrayList.add(((StackItem) it.next()).getFragmentTag());
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.fragmentManagerController.removeFragments(arrayList);
        if (CollectionsKt.contains(arrayList, fragmentTag)) {
            showUpperFragment$default(this, false, false, 3, null);
        }
    }

    public final Context getContext() {
        return this.context;
    }

    @Override // com.boilerplate.navigator.Navigator
    public Fragment getCurrentFragment() {
        Object objM3325constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM3325constructorimpl = Result.m3325constructorimpl(this.fragmentManagerController.getFragment(getCurrentFragmentTag()));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3325constructorimpl = Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3331isFailureimpl(objM3325constructorimpl)) {
            objM3325constructorimpl = null;
        }
        return (Fragment) objM3325constructorimpl;
    }

    @Override // com.boilerplate.navigator.Navigator
    public int getFragmentIndexInStackBySameType(String tag) {
        if (tag != null && tag.length() != 0) {
            Iterator<T> it = this.fragmentStackState.getFragmentTagStack().iterator();
            while (it.hasNext()) {
                int i = 0;
                for (Object obj : (Stack) it.next()) {
                    int i2 = i + 1;
                    if (i < 0) {
                        CollectionsKt.throwIndexOverflow();
                    }
                    if (Intrinsics.areEqual(((StackItem) obj).getFragmentTag(), tag)) {
                        return (r2.size() - i) - 1;
                    }
                    i = i2;
                }
            }
        }
        return -1;
    }

    public final FragmentManager getFragmentManager() {
        return this.fragmentManager;
    }

    public final FragmentStackState getFragmentStackState() {
        return this.fragmentStackState;
    }

    public final ArrayList<Function0<Fragment>> getRootFragmentProvider() {
        return this.rootFragmentProvider;
    }

    @Override // com.boilerplate.navigator.Navigator
    public void goBack() {
        try {
            Result.Companion companion = Result.INSTANCE;
            canGoBack();
            if (canFragmentGoBack()) {
                if (shouldExit() && shouldGoBackToInitialIndex()) {
                    this.fragmentStackState.insertTabToBottom(this.navigatorConfiguration.getInitialTabIndex());
                }
                if (this.fragmentStackState.hasSelectedTabOnlyRoot()) {
                    this.fragmentManagerController.disableFragment(getCurrentFragmentTag());
                    this.fragmentStackState.popSelectedTab();
                    Navigator.NavigatorListener navigatorListener = this.navigatorListener;
                    if (navigatorListener != null) {
                        Integer selectedTabIndex = this.fragmentStackState.getSelectedTabIndex();
                        Intrinsics.checkNotNullExpressionValue(selectedTabIndex, "getSelectedTabIndex(...)");
                        navigatorListener.onTabChanged(selectedTabIndex.intValue());
                    }
                } else {
                    this.fragmentManagerController.removeFragment(this.fragmentStackState.popItemFromSelectedTab().getFragmentTag());
                }
                showUpperFragment$default(this, false, true, 1, null);
                Result.m3325constructorimpl(Unit.INSTANCE);
            }
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // com.boilerplate.navigator.Navigator
    public boolean hasOnlyRoot(int tabIndex) {
        return this.fragmentStackState.hasOnlyRoot(tabIndex);
    }

    @Override // com.boilerplate.navigator.Navigator
    public void initialize(Bundle savedState) {
        if (savedState == null) {
            initializeStackState();
        } else {
            loadStackStateFromSavedState(savedState);
        }
    }

    @Override // com.boilerplate.navigator.Navigator
    public void observeDestinationChanges(LifecycleOwner lifecycleOwner, final Function1<? super Fragment, Unit> destinationChangedListener) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(destinationChangedListener, "destinationChangedListener");
        this.destinationChangeLiveData.observe(lifecycleOwner, new C1096a(new Function1() { // from class: com.boilerplate.navigator.MultipleStackNavigator$$ExternalSyntheticLambda1
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MultipleStackNavigator.observeDestinationChanges$lambda$6(destinationChangedListener, (Fragment) obj);
            }
        }));
    }

    @Override // com.boilerplate.navigator.Navigator
    public void observeDestinationChangesWithPopBack(LifecycleOwner lifecycleOwner, final Function2<? super Fragment, ? super Boolean, Unit> destinationChangedListener) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(destinationChangedListener, "destinationChangedListener");
        this.destinationChangeLiveData.observe(lifecycleOwner, new C1096a(new Function1() { // from class: com.boilerplate.navigator.MultipleStackNavigator$$ExternalSyntheticLambda2
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MultipleStackNavigator.observeDestinationChangesWithPopBack$lambda$8(destinationChangedListener, this, (Fragment) obj);
            }
        }));
    }

    @Override // com.boilerplate.navigator.Navigator
    public void observeDestinationChangesWithTabChange(LifecycleOwner lifecycleOwner, final Function2<? super Fragment, ? super Boolean, Unit> destinationChangedListener) {
        Intrinsics.checkNotNullParameter(lifecycleOwner, "lifecycleOwner");
        Intrinsics.checkNotNullParameter(destinationChangedListener, "destinationChangedListener");
        this.destinationChangeLiveData.observe(lifecycleOwner, new C1096a(new Function1() { // from class: com.boilerplate.navigator.MultipleStackNavigator$$ExternalSyntheticLambda0
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return MultipleStackNavigator.observeDestinationChangesWithTabChange$lambda$7(destinationChangedListener, this, (Fragment) obj);
            }
        }));
    }

    @Override // com.boilerplate.navigator.Navigator
    public void onSaveInstanceState(Bundle outState) {
        Intrinsics.checkNotNullParameter(outState, "outState");
        outState.putBundle(MEDUSA_STACK_STATE_KEY, this.fragmentStackStateMapper.toBundle(this.fragmentStackState));
    }

    @Override // com.boilerplate.navigator.Navigator
    public void reset() {
        clearAllFragments();
        this.fragmentStackState.clear();
        initializeStackState();
    }

    @Override // com.boilerplate.navigator.Navigator
    public void resetCurrentTab(boolean resetRootFragment) {
        Integer selectedTabIndex = this.fragmentStackState.getSelectedTabIndex();
        Intrinsics.checkNotNull(selectedTabIndex);
        clearAllFragments(selectedTabIndex.intValue(), resetRootFragment);
        if (resetRootFragment) {
            Fragment rootFragment = getRootFragment(selectedTabIndex.intValue());
            String strCreate = this.tagCreator.create(rootFragment);
            FragmentData fragmentData = new FragmentData(rootFragment, strCreate, null, 4, null);
            this.fragmentStackState.switchTab(selectedTabIndex.intValue());
            this.fragmentStackState.notifyStackItemAdd(selectedTabIndex.intValue(), new StackItem(strCreate, null, 0, 6, null));
            this.fragmentManagerController.addFragment(fragmentData);
            notifyFragmentDestinationChange$default(this, rootFragment, false, false, 6, null);
            return;
        }
        Fragment fragment = this.fragmentManagerController.getFragment(getCurrentFragmentTag());
        if (fragment == null) {
            fragment = getRootFragment(selectedTabIndex.intValue());
        }
        Fragment fragment2 = fragment;
        String strCreate2 = this.tagCreator.create(fragment2);
        notifyFragmentDestinationChange$default(this, fragment2, false, false, 6, null);
        this.fragmentManagerController.enableFragment(strCreate2);
    }

    @Override // com.boilerplate.navigator.Navigator
    public void resetWithFragmentProvider(ArrayList<Function0<Fragment>> rootFragmentProvider) {
        Intrinsics.checkNotNullParameter(rootFragmentProvider, "rootFragmentProvider");
        this.rootFragmentProvider = rootFragmentProvider;
        reset();
    }

    public final void setFragmentStackState(FragmentStackState fragmentStackState) {
        Intrinsics.checkNotNullParameter(fragmentStackState, "<set-?>");
        this.fragmentStackState = fragmentStackState;
    }

    public final void setRootFragmentProvider(ArrayList<Function0<Fragment>> arrayList) {
        Intrinsics.checkNotNullParameter(arrayList, "<set-?>");
        this.rootFragmentProvider = arrayList;
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(Fragment fragment) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        start(fragment, "", TransitionAnimationType.RIGHT_TO_LEFT);
    }

    @Override // com.boilerplate.navigator.Navigator
    public void switchTab(int tabIndex) {
        try {
            Result.Companion companion = Result.INSTANCE;
            if (this.fragmentStackState.isSelectedTab(tabIndex)) {
                return;
            }
            this.fragmentManagerController.disableFragment(getCurrentFragmentTag());
            this.fragmentStackState.switchTab(tabIndex);
            Unit unit = null;
            showUpperFragment$default(this, true, false, 2, null);
            Navigator.NavigatorListener navigatorListener = this.navigatorListener;
            if (navigatorListener != null) {
                navigatorListener.onTabChanged(tabIndex);
                unit = Unit.INSTANCE;
            }
            Result.m3325constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
    }

    public /* synthetic */ MultipleStackNavigator(FragmentManager fragmentManager, int i, ArrayList arrayList, Navigator.NavigatorListener navigatorListener, NavigatorConfiguration navigatorConfiguration, TransitionAnimationType transitionAnimationType, Context context, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragmentManager, i, arrayList, (i2 & 8) != 0 ? null : navigatorListener, (i2 & 16) != 0 ? new NavigatorConfiguration(0, false, null, 7, null) : navigatorConfiguration, (i2 & 32) != 0 ? null : transitionAnimationType, context);
    }

    private final void clearAllFragments(int tabIndex, boolean resetRootFragment) {
        if (this.fragmentStackState.isTabEmpty(tabIndex)) {
            return;
        }
        while (!this.fragmentStackState.isTabEmpty(tabIndex) && (!this.fragmentStackState.hasOnlyRoot(tabIndex) || resetRootFragment)) {
            this.fragmentManagerController.findFragmentByTagAndRemove(this.fragmentStackState.popItem(tabIndex).getFragmentTag());
        }
        this.fragmentManagerController.commitAllowingStateLoss();
    }

    @Override // com.boilerplate.navigator.Navigator
    public void clearGroup(String fragmentGroupName) {
        Intrinsics.checkNotNullParameter(fragmentGroupName, "fragmentGroupName");
        if (Intrinsics.areEqual(fragmentGroupName, "")) {
            throw new IllegalArgumentException("Fragment group name can not be empty.");
        }
        StackItem stackItemPeekItemFromSelectedTab = this.fragmentStackState.peekItemFromSelectedTab();
        String fragmentTag = stackItemPeekItemFromSelectedTab != null ? stackItemPeekItemFromSelectedTab.getFragmentTag() : null;
        List<StackItem> listPopItems = this.fragmentStackState.popItems(fragmentGroupName);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(listPopItems, 10));
        Iterator<T> it = listPopItems.iterator();
        while (it.hasNext()) {
            arrayList.add(((StackItem) it.next()).getFragmentTag());
        }
        if (arrayList.isEmpty()) {
            return;
        }
        this.fragmentManagerController.removeFragments(arrayList);
        if (CollectionsKt.contains(arrayList, fragmentTag)) {
            showUpperFragment$default(this, false, false, 3, null);
        }
    }

    @Override // com.boilerplate.navigator.Navigator
    public void reset(int tabIndex, boolean resetRootFragment) {
        if (this.fragmentStackState.isSelectedTab(tabIndex)) {
            resetCurrentTab(resetRootFragment);
        } else {
            clearAllFragments(tabIndex, resetRootFragment);
        }
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(Fragment fragment, int tabIndex) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        start(fragment, tabIndex, "");
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(Fragment fragment, int tabIndex, String fragmentGroupName) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentGroupName, "fragmentGroupName");
        switchTab(tabIndex);
        start(fragment, fragmentGroupName);
        Navigator.NavigatorListener navigatorListener = this.navigatorListener;
        if (navigatorListener != null) {
            navigatorListener.onTabChanged(tabIndex);
        }
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(Fragment fragment, TransitionAnimationType transitionAnimation) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(transitionAnimation, "transitionAnimation");
        start(fragment, "", transitionAnimation);
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(Fragment fragment, String fragmentGroupName) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentGroupName, "fragmentGroupName");
        start(fragment, fragmentGroupName, this.transitionAnimationType);
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(Fragment fragment, String fragmentGroupName, TransitionAnimationType transitionAnimation) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentGroupName, "fragmentGroupName");
        try {
            Result.Companion companion = Result.INSTANCE;
            String strCreate = this.tagCreator.create(fragment);
            Integer selectedTabIndex = this.fragmentStackState.getSelectedTabIndex();
            FragmentData fragmentData = new FragmentData(fragment, strCreate, transitionAnimation);
            if (this.fragmentStackState.isSelectedTabEmpty()) {
                Intrinsics.checkNotNull(selectedTabIndex);
                Fragment rootFragment = getRootFragment(selectedTabIndex.intValue());
                this.fragmentManagerController.disableAndStartFragment(getCurrentFragmentTag(), new FragmentData(rootFragment, this.tagCreator.create(rootFragment), transitionAnimation), fragmentData);
            } else {
                this.fragmentManagerController.disableAndStartFragment(getCurrentFragmentTag(), fragmentData);
            }
            FragmentStackState fragmentStackState = this.fragmentStackState;
            Integer selectedTabIndex2 = this.fragmentStackState.getSelectedTabIndex();
            Intrinsics.checkNotNullExpressionValue(selectedTabIndex2, "getSelectedTabIndex(...)");
            fragmentStackState.notifyStackItemAddToCurrentTab(new StackItem(strCreate, fragmentGroupName, selectedTabIndex2.intValue()));
            notifyFragmentDestinationChange$default(this, fragment, false, false, 6, null);
            Result.m3325constructorimpl(Unit.INSTANCE);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
    }

    @Override // com.boilerplate.navigator.Navigator
    public void start(BottomSheetDialogFragment bottomSheetFragment) {
        Intrinsics.checkNotNullParameter(bottomSheetFragment, "bottomSheetFragment");
        bottomSheetFragment.show(this.fragmentManager, this.tagCreator.create(bottomSheetFragment));
    }
}
