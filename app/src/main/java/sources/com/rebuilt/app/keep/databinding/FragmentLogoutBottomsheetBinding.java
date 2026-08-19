package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentLogoutBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnNo;
    public final Button btnYes;
    public final ConstraintLayout clLogoutContent;
    public final View divider;
    public final ImageView ivClose;
    public final ImageView ivLogoutIcon;
    public final LinearLayout llButtons;
    private final ConstraintLayout rootView;
    public final TextViewBold16 tvLogoutMessage;

    private FragmentLogoutBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnNo, Button btnYes, ConstraintLayout clLogoutContent, View divider, ImageView ivClose, ImageView ivLogoutIcon, LinearLayout llButtons, TextViewBold16 tvLogoutMessage) {
        this.rootView = rootView;
        this.btnNo = btnNo;
        this.btnYes = btnYes;
        this.clLogoutContent = clLogoutContent;
        this.divider = divider;
        this.ivClose = ivClose;
        this.ivLogoutIcon = ivLogoutIcon;
        this.llButtons = llButtons;
        this.tvLogoutMessage = tvLogoutMessage;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLogoutBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentLogoutBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_logout_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLogoutBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_no;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.btn_yes;
            Button button = (Button) ViewBindings.findChildViewById(rootView, i);
            if (button != null) {
                i = C3656R.id.cl_logout_content;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider))) != null) {
                    i = C3656R.id.iv_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3656R.id.iv_logout_icon;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView2 != null) {
                            i = C3656R.id.ll_buttons;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                            if (linearLayout != null) {
                                i = C3656R.id.tv_logout_message;
                                TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                if (textViewBold16 != null) {
                                    return new FragmentLogoutBottomsheetBinding((ConstraintLayout) rootView, primaryButton, button, constraintLayout, viewFindChildViewById, imageView, imageView2, linearLayout, textViewBold16);
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
