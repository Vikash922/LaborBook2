package com.rebuilt.app.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.rebuilt.app.auth.C3554R;

/* JADX INFO: loaded from: classes.dex */
public final class ActivityLoginBinding implements ViewBinding {
    public final FragmentContainerView container;
    public final ConstraintLayout main;
    private final ConstraintLayout rootView;

    private ActivityLoginBinding(ConstraintLayout constraintLayout, FragmentContainerView fragmentContainerView, ConstraintLayout constraintLayout2) {
        this.rootView = constraintLayout;
        this.container = fragmentContainerView;
        this.main = constraintLayout2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ActivityLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3554R.layout.activity_login, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityLoginBinding bind(View view) {
        int i = C3554R.id.container;
        FragmentContainerView fragmentContainerView = (FragmentContainerView) ViewBindings.findChildViewById(view, i);
        if (fragmentContainerView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            return new ActivityLoginBinding(constraintLayout, fragmentContainerView, constraintLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
