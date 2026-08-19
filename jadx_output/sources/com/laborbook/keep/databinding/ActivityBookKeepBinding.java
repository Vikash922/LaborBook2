package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.gms.ads.AdView;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.laborbook.base.ads.CustomAdView;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityBookKeepBinding implements ViewBinding {
    public final FrameLayout adContainer;
    public final AdView adView;
    public final Barrier adsBarrier;
    public final View adsShadow;
    public final BottomNavigationView bottomNav;
    public final FragmentContainerView container;
    public final CustomAdView customAdView;
    public final ConstraintLayout main;
    private final ConstraintLayout rootView;
    public final View shadow;

    private ActivityBookKeepBinding(ConstraintLayout rootView, FrameLayout adContainer, AdView adView, Barrier adsBarrier, View adsShadow, BottomNavigationView bottomNav, FragmentContainerView container, CustomAdView customAdView, ConstraintLayout main, View shadow) {
        this.rootView = rootView;
        this.adContainer = adContainer;
        this.adView = adView;
        this.adsBarrier = adsBarrier;
        this.adsShadow = adsShadow;
        this.bottomNav = bottomNav;
        this.container = container;
        this.customAdView = customAdView;
        this.main = main;
        this.shadow = shadow;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityBookKeepBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityBookKeepBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.activity_book_keep, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityBookKeepBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.ad_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, i);
        if (frameLayout != null) {
            i = C3656R.id.adView;
            AdView adView = (AdView) ViewBindings.findChildViewById(rootView, i);
            if (adView != null) {
                i = C3656R.id.ads_barrier;
                Barrier barrier = (Barrier) ViewBindings.findChildViewById(rootView, i);
                if (barrier != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.ads_shadow))) != null) {
                    i = C3656R.id.bottom_nav;
                    BottomNavigationView bottomNavigationView = (BottomNavigationView) ViewBindings.findChildViewById(rootView, i);
                    if (bottomNavigationView != null) {
                        i = C3656R.id.container;
                        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(rootView, i);
                        if (fragmentContainerView != null) {
                            i = C3656R.id.customAdView;
                            CustomAdView customAdView = (CustomAdView) ViewBindings.findChildViewById(rootView, i);
                            if (customAdView != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
                                i = C3656R.id.shadow;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, i);
                                if (viewFindChildViewById2 != null) {
                                    return new ActivityBookKeepBinding(constraintLayout, frameLayout, adView, barrier, viewFindChildViewById, bottomNavigationView, fragmentContainerView, customAdView, constraintLayout, viewFindChildViewById2);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
