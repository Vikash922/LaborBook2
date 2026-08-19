package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.RoundedPrimaryButton;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogSubscriptionSuccessBinding implements ViewBinding {
    public final RoundedPrimaryButton btnContinue;
    public final ImageView ivClose;
    private final ConstraintLayout rootView;

    private DialogSubscriptionSuccessBinding(ConstraintLayout rootView, RoundedPrimaryButton btnContinue, ImageView ivClose) {
        this.rootView = rootView;
        this.btnContinue = btnContinue;
        this.ivClose = ivClose;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogSubscriptionSuccessBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DialogSubscriptionSuccessBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.dialog_subscription_success, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogSubscriptionSuccessBinding bind(View rootView) {
        int i = C3656R.id.btn_continue;
        RoundedPrimaryButton roundedPrimaryButton = (RoundedPrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (roundedPrimaryButton != null) {
            i = C3656R.id.iv_close;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                return new DialogSubscriptionSuccessBinding((ConstraintLayout) rootView, roundedPrimaryButton, imageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
