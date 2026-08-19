package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class BottomsheetPaymentFailedBinding implements ViewBinding {
    public final PrimaryButton btnTryAgain;
    public final ConstraintLayout clContent;
    public final View divider;
    public final ImageView ivClose;
    public final ImageView ivErrorIcon;
    private final ConstraintLayout rootView;
    public final TextView tvMessage;
    public final TextView tvTitle;

    private BottomsheetPaymentFailedBinding(ConstraintLayout rootView, PrimaryButton btnTryAgain, ConstraintLayout clContent, View divider, ImageView ivClose, ImageView ivErrorIcon, TextView tvMessage, TextView tvTitle) {
        this.rootView = rootView;
        this.btnTryAgain = btnTryAgain;
        this.clContent = clContent;
        this.divider = divider;
        this.ivClose = ivClose;
        this.ivErrorIcon = ivErrorIcon;
        this.tvMessage = tvMessage;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BottomsheetPaymentFailedBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static BottomsheetPaymentFailedBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.bottomsheet_payment_failed, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static BottomsheetPaymentFailedBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_try_again;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_content;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider))) != null) {
                i = C3656R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3656R.id.iv_error_icon;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView2 != null) {
                        i = C3656R.id.tv_message;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView != null) {
                            i = C3656R.id.tv_title;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                            if (textView2 != null) {
                                return new BottomsheetPaymentFailedBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, viewFindChildViewById, imageView, imageView2, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
