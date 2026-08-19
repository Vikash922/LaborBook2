package com.boilerplate.navigator.data;

import androidx.fragment.app.Fragment;
import com.boilerplate.navigator.transitionanimation.TransitionAnimationType;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\u0004\b\b\u0010\tJ\t\u0010\u0010\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÆ\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007HÆ\u0003J)\u0010\u0013\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007HÆ\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0017\u001a\u00020\u0018HÖ\u0001J\t\u0010\u0019\u001a\u00020\u0005HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001a"}, m2722d2 = {"Lcom/boilerplate/navigator/data/FragmentData;", "", "fragment", "Landroidx/fragment/app/Fragment;", "fragmentTag", "", "transitionAnimation", "Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;", "<init>", "(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;)V", "getFragment", "()Landroidx/fragment/app/Fragment;", "getFragmentTag", "()Ljava/lang/String;", "getTransitionAnimation", "()Lcom/boilerplate/navigator/transitionanimation/TransitionAnimationType;", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "navigator_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final /* data */ class FragmentData {
    private final Fragment fragment;
    private final String fragmentTag;
    private final TransitionAnimationType transitionAnimation;

    public FragmentData(Fragment fragment, String fragmentTag, TransitionAnimationType transitionAnimationType) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        this.fragment = fragment;
        this.fragmentTag = fragmentTag;
        this.transitionAnimation = transitionAnimationType;
    }

    public static /* synthetic */ FragmentData copy$default(FragmentData fragmentData, Fragment fragment, String str, TransitionAnimationType transitionAnimationType, int i, Object obj) {
        if ((i & 1) != 0) {
            fragment = fragmentData.fragment;
        }
        if ((i & 2) != 0) {
            str = fragmentData.fragmentTag;
        }
        if ((i & 4) != 0) {
            transitionAnimationType = fragmentData.transitionAnimation;
        }
        return fragmentData.copy(fragment, str, transitionAnimationType);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final Fragment getFragment() {
        return this.fragment;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getFragmentTag() {
        return this.fragmentTag;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final TransitionAnimationType getTransitionAnimation() {
        return this.transitionAnimation;
    }

    public final FragmentData copy(Fragment fragment, String fragmentTag, TransitionAnimationType transitionAnimation) {
        Intrinsics.checkNotNullParameter(fragment, "fragment");
        Intrinsics.checkNotNullParameter(fragmentTag, "fragmentTag");
        return new FragmentData(fragment, fragmentTag, transitionAnimation);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof FragmentData)) {
            return false;
        }
        FragmentData fragmentData = (FragmentData) other;
        return Intrinsics.areEqual(this.fragment, fragmentData.fragment) && Intrinsics.areEqual(this.fragmentTag, fragmentData.fragmentTag) && this.transitionAnimation == fragmentData.transitionAnimation;
    }

    public final Fragment getFragment() {
        return this.fragment;
    }

    public final String getFragmentTag() {
        return this.fragmentTag;
    }

    public final TransitionAnimationType getTransitionAnimation() {
        return this.transitionAnimation;
    }

    public int hashCode() {
        int iHashCode = (this.fragmentTag.hashCode() + (this.fragment.hashCode() * 31)) * 31;
        TransitionAnimationType transitionAnimationType = this.transitionAnimation;
        return iHashCode + (transitionAnimationType == null ? 0 : transitionAnimationType.hashCode());
    }

    public String toString() {
        return "FragmentData(fragment=" + this.fragment + ", fragmentTag=" + this.fragmentTag + ", transitionAnimation=" + this.transitionAnimation + ')';
    }

    public /* synthetic */ FragmentData(Fragment fragment, String str, TransitionAnimationType transitionAnimationType, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(fragment, str, (i & 4) != 0 ? null : transitionAnimationType);
    }
}
