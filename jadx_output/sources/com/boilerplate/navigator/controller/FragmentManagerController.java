package com.boilerplate.navigator.controller;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import androidx.activity.result.ActivityResultCaller;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentTransaction;
import com.boilerplate.navigator.C1095R;
import com.boilerplate.navigator.Navigator;
import com.boilerplate.navigator.common.extensions.FragmentTransactionExtensionsKt;
import com.boilerplate.navigator.data.FragmentData;
import com.boilerplate.navigator.transaction.NavigatorTransaction;
import com.boilerplate.navigator.transaction.TransactionType;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0014\u0010\u0014\u001a\u00020\u000f2\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00110\u0016J\u000e\u0010\u0017\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u0019J'\u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u00112\u0012\u0010\u001c\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00190\u001d\"\u00020\u0019¢\u0006\u0002\u0010\u001eJ\u001c\u0010\u001f\u001a\u00020\u000f2\b\b\u0001\u0010 \u001a\u00020\u00052\b\b\u0001\u0010!\u001a\u00020\u0005H\u0002J0\u0010\u001f\u001a\u00020\u000f2\b\b\u0001\u0010 \u001a\u00020\u00052\b\b\u0001\u0010!\u001a\u00020\u00052\b\b\u0001\u0010\"\u001a\u00020\u00052\b\b\u0001\u0010#\u001a\u00020\u0005H\u0002J\u0012\u0010$\u001a\u0004\u0018\u00010%2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010'\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u000e\u0010(\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u0010\u0010)\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010*\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010+\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0010\u0010,\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0002J\u0006\u0010-\u001a\u00020\u000fJ\b\u0010.\u001a\u00020\u000fH\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006/"}, m2722d2 = {"Lcom/boilerplate/navigator/controller/FragmentManagerController;", "", "fragmentManager", "Landroidx/fragment/app/FragmentManager;", "containerId", "", "navigatorTransaction", "Lcom/boilerplate/navigator/transaction/NavigatorTransaction;", "<init>", "(Landroidx/fragment/app/FragmentManager;ILcom/boilerplate/navigator/transaction/NavigatorTransaction;)V", "currentTransaction", "Landroidx/fragment/app/FragmentTransaction;", "currentTransitionAnimationType", "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;", "enableFragment", "", "fragmentTag", "", "disableFragment", "removeFragment", "removeFragments", "fragmentTagList", "", "addFragment", "fragmentData", "Lcom/boilerplate/navigator/data/FragmentData;", "disableAndStartFragment", "disableFragmentTag", "fragmentDataArgs", "", "(Ljava/lang/String;[Lcom/boilerplate/navigator/data/FragmentData;)V", "setCustomAnimations", "enter", "exit", "popEnter", "popExit", "getFragmentWithExecutingPendingTransactionsIfNeeded", "Landroidx/fragment/app/Fragment;", "getFragment", "getFragmentNavigatorTransaction", "findFragmentByTagAndRemove", "commitShow", "commitAttach", "commitHide", "commitDetach", "commitAllowingStateLoss", "checkAndCreateTransaction", "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class FragmentManagerController {
    private final int containerId;
    private FragmentTransaction currentTransaction;
    private TransitionAnimationType currentTransitionAnimationType;
    private final FragmentManager fragmentManager;
    private final NavigatorTransaction navigatorTransaction;

    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;
        public static final /* synthetic */ int[] $EnumSwitchMapping$1;

        static {
            int[] iArr = new int[TransactionType.values().length];
            try {
                iArr[TransactionType.SHOW_HIDE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[TransactionType.ATTACH_DETACH.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $EnumSwitchMapping$0 = iArr;
            int[] iArr2 = new int[TransitionAnimationType.values().length];
            try {
                iArr2[TransitionAnimationType.LEFT_TO_RIGHT.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr2[TransitionAnimationType.RIGHT_TO_LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr2[TransitionAnimationType.BOTTOM_TO_TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr2[TransitionAnimationType.TOP_TO_BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr2[TransitionAnimationType.FADE_IN_OUT.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            $EnumSwitchMapping$1 = iArr2;
        }
    }

    public FragmentManagerController(FragmentManager fragmentManager, int i, NavigatorTransaction navigatorTransaction) {
        Intrinsics.checkNotNullParameter(fragmentManager, "fragmentManager");
        Intrinsics.checkNotNullParameter(navigatorTransaction, "navigatorTransaction");
        this.fragmentManager = fragmentManager;
        this.containerId = i;
        this.navigatorTransaction = navigatorTransaction;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void checkAndCreateTransaction() {
        if (this.currentTransaction == null) {
            this.currentTransaction = this.fragmentManager.beginTransaction();
        }
    }

    private final void commitAttach(String fragmentTag) {
        checkAndCreateTransaction();
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            FragmentTransactionExtensionsKt.attach(fragmentTransaction, getFragment(fragmentTag));
        }
        commitAllowingStateLoss();
    }

    private final void commitDetach(String fragmentTag) {
        checkAndCreateTransaction();
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            FragmentTransactionExtensionsKt.detach(fragmentTransaction, getFragmentWithExecutingPendingTransactionsIfNeeded(fragmentTag));
        }
        commitAllowingStateLoss();
    }

    private final void commitHide(String fragmentTag) {
        checkAndCreateTransaction();
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            FragmentTransactionExtensionsKt.hide(fragmentTransaction, getFragmentWithExecutingPendingTransactionsIfNeeded(fragmentTag));
        }
        commitAllowingStateLoss();
    }

    private final void commitShow(String fragmentTag) {
        checkAndCreateTransaction();
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            FragmentTransactionExtensionsKt.show(fragmentTransaction, getFragment(fragmentTag));
        }
        commitAllowingStateLoss();
    }

    private final NavigatorTransaction getFragmentNavigatorTransaction(String fragmentTag) {
        NavigatorTransaction navigatorTransaction = this.navigatorTransaction;
        ActivityResultCaller fragment = getFragment(fragmentTag);
        return (fragment == null || !(fragment instanceof Navigator.OnNavigatorTransactionListener)) ? navigatorTransaction : ((Navigator.OnNavigatorTransactionListener) fragment).getNavigatorTransaction();
    }

    private final Fragment getFragmentWithExecutingPendingTransactionsIfNeeded(String fragmentTag) {
        Fragment fragment = getFragment(fragmentTag);
        return (fragment == null && this.fragmentManager.executePendingTransactions()) ? getFragment(fragmentTag) : fragment;
    }

    private final void setCustomAnimations(int enter, int exit) {
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.setCustomAnimations(enter, exit);
        }
    }

    public final void addFragment(FragmentData fragmentData) {
        Intrinsics.checkNotNullParameter(fragmentData, "fragmentData");
        checkAndCreateTransaction();
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.add(this.containerId, fragmentData.getFragment(), fragmentData.getFragmentTag());
        }
        commitAllowingStateLoss();
    }

    public final void commitAllowingStateLoss() {
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.commitAllowingStateLoss();
        }
        this.currentTransaction = null;
    }

    public final void disableAndStartFragment(String disableFragmentTag, FragmentData... fragmentDataArgs) {
        int i;
        Intrinsics.checkNotNullParameter(disableFragmentTag, "disableFragmentTag");
        Intrinsics.checkNotNullParameter(fragmentDataArgs, "fragmentDataArgs");
        Fragment fragmentWithExecutingPendingTransactionsIfNeeded = getFragmentWithExecutingPendingTransactionsIfNeeded(disableFragmentTag);
        checkAndCreateTransaction();
        for (FragmentData fragmentData : fragmentDataArgs) {
            TransitionAnimationType transitionAnimation = fragmentData.getTransitionAnimation();
            this.currentTransitionAnimationType = transitionAnimation;
            int i2 = transitionAnimation == null ? -1 : WhenMappings.$EnumSwitchMapping$1[transitionAnimation.ordinal()];
            if (i2 != -1) {
                if (i2 == 1) {
                    i = C1095R.anim.enter_from_left;
                } else if (i2 == 2) {
                    i = C1095R.anim.enter_from_right;
                } else if (i2 == 3) {
                    i = C1095R.anim.enter_from_bottom;
                } else if (i2 == 4) {
                    i = C1095R.anim.enter_from_top;
                } else {
                    if (i2 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    i = C1095R.anim.fade_in;
                }
                setCustomAnimations(i, C1095R.anim.empty_animation);
            }
            FragmentTransaction fragmentTransaction = this.currentTransaction;
            if (fragmentTransaction != null) {
                fragmentTransaction.add(this.containerId, fragmentData.getFragment(), fragmentData.getFragmentTag());
            }
        }
        int i3 = WhenMappings.$EnumSwitchMapping$0[getFragmentNavigatorTransaction(disableFragmentTag).getTransactionType().ordinal()];
        if (i3 == 1) {
            FragmentTransaction fragmentTransaction2 = this.currentTransaction;
            if (fragmentTransaction2 != null) {
                FragmentTransactionExtensionsKt.hide(fragmentTransaction2, fragmentWithExecutingPendingTransactionsIfNeeded);
            }
        } else {
            if (i3 != 2) {
                throw new NoWhenBranchMatchedException();
            }
            FragmentTransaction fragmentTransaction3 = this.currentTransaction;
            if (fragmentTransaction3 != null) {
                FragmentTransactionExtensionsKt.detach(fragmentTransaction3, fragmentWithExecutingPendingTransactionsIfNeeded);
            }
        }
        commitAllowingStateLoss();
    }

    public final void disableFragment(String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        int i = WhenMappings.$EnumSwitchMapping$0[getFragmentNavigatorTransaction(fragmentTag).getTransactionType().ordinal()];
        if (i == 1) {
            commitHide(fragmentTag);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            commitDetach(fragmentTag);
        }
    }

    public final void enableFragment(String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        int i = WhenMappings.$EnumSwitchMapping$0[getFragmentNavigatorTransaction(fragmentTag).getTransactionType().ordinal()];
        if (i == 1) {
            commitShow(fragmentTag);
        } else {
            if (i != 2) {
                throw new NoWhenBranchMatchedException();
            }
            commitAttach(fragmentTag);
        }
    }

    public final void findFragmentByTagAndRemove(String fragmentTag) {
        FragmentTransaction fragmentTransaction;
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        checkAndCreateTransaction();
        Fragment fragmentWithExecutingPendingTransactionsIfNeeded = getFragmentWithExecutingPendingTransactionsIfNeeded(fragmentTag);
        if (fragmentWithExecutingPendingTransactionsIfNeeded == null || (fragmentTransaction = this.currentTransaction) == null) {
            return;
        }
        fragmentTransaction.remove(fragmentWithExecutingPendingTransactionsIfNeeded);
    }

    public final Fragment getFragment(String fragmentTag) {
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        return this.fragmentManager.findFragmentByTag(fragmentTag);
    }

    public final void removeFragment(final String fragmentTag) {
        Object objM3325constructorimpl;
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        TransitionAnimationType transitionAnimationType = this.currentTransitionAnimationType;
        int i = transitionAnimationType == null ? -1 : WhenMappings.$EnumSwitchMapping$1[transitionAnimationType.ordinal()];
        int i2 = i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? 0 : C1095R.anim.fade_out : C1095R.anim.exit_to_top : C1095R.anim.exit_to_bottom : C1095R.anim.exit_to_right : C1095R.anim.exit_to_left;
        Fragment fragment = getFragment(fragmentTag);
        Unit unit = null;
        View view = fragment != null ? fragment.getView() : null;
        final Ref.BooleanRef booleanRef = new Ref.BooleanRef();
        try {
            Result.Companion companion = Result.INSTANCE;
            Animation animationLoadAnimation = AnimationUtils.loadAnimation(view != null ? view.getContext() : null, i2);
            animationLoadAnimation.setDuration(200L);
            animationLoadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: com.boilerplate.navigator.controller.FragmentManagerController$removeFragment$1$1
                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationEnd(Animation p0) {
                    this.$this_runCatching.checkAndCreateTransaction();
                    FragmentTransaction fragmentTransaction = this.$this_runCatching.currentTransaction;
                    if (fragmentTransaction != null) {
                        FragmentTransactionExtensionsKt.remove(fragmentTransaction, this.$this_runCatching.getFragment(fragmentTag));
                    }
                    this.$this_runCatching.commitAllowingStateLoss();
                    booleanRef.element = true;
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationRepeat(Animation p0) {
                }

                @Override // android.view.animation.Animation.AnimationListener
                public void onAnimationStart(Animation p0) {
                }
            });
            if (view != null) {
                view.startAnimation(animationLoadAnimation);
                unit = Unit.INSTANCE;
            }
            objM3325constructorimpl = Result.m3325constructorimpl(unit);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM3325constructorimpl = Result.m3325constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m3328exceptionOrNullimpl(objM3325constructorimpl) == null || booleanRef.element) {
            return;
        }
        checkAndCreateTransaction();
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            FragmentTransactionExtensionsKt.remove(fragmentTransaction, getFragment(fragmentTag));
        }
        commitAllowingStateLoss();
    }

    public final void removeFragments(List<String> fragmentTagList) {
        FragmentTransaction fragmentTransaction;
        Intrinsics.checkNotNullParameter(fragmentTagList, "fragmentTagList");
        checkAndCreateTransaction();
        Iterator<String> it = fragmentTagList.iterator();
        while (it.hasNext()) {
            Fragment fragment = getFragment(it.next());
            if (fragment != null && (fragmentTransaction = this.currentTransaction) != null) {
                fragmentTransaction.remove(fragment);
            }
        }
        commitAllowingStateLoss();
    }

    private final void setCustomAnimations(int enter, int exit, int popEnter, int popExit) {
        FragmentTransaction fragmentTransaction = this.currentTransaction;
        if (fragmentTransaction != null) {
            fragmentTransaction.setCustomAnimations(enter, exit, popEnter, popExit);
        }
    }
}
