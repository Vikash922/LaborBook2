package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentAppBackupBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnOk;
    public final ConstraintLayout clBackupContent;
    public final View divider;
    public final ImageView ivBackupIcon;
    public final ImageView ivClose;
    private final ConstraintLayout rootView;
    public final TextViewBold16 tvBackupMessage;
    public final TextViewBold18 tvBackupTitle;
    public final TextViewRegular12 tvLastUpdated;

    private FragmentAppBackupBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnOk, ConstraintLayout clBackupContent, View divider, ImageView ivBackupIcon, ImageView ivClose, TextViewBold16 tvBackupMessage, TextViewBold18 tvBackupTitle, TextViewRegular12 tvLastUpdated) {
        this.rootView = rootView;
        this.btnOk = btnOk;
        this.clBackupContent = clBackupContent;
        this.divider = divider;
        this.ivBackupIcon = ivBackupIcon;
        this.ivClose = ivClose;
        this.tvBackupMessage = tvBackupMessage;
        this.tvBackupTitle = tvBackupTitle;
        this.tvLastUpdated = tvLastUpdated;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAppBackupBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentAppBackupBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_app_backup_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentAppBackupBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_ok;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_backup_content;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider))) != null) {
                i = C3656R.id.iv_backup_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3656R.id.iv_close;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView2 != null) {
                        i = C3656R.id.tv_backup_message;
                        TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                        if (textViewBold16 != null) {
                            i = C3656R.id.tv_backup_title;
                            TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold18 != null) {
                                i = C3656R.id.tv_last_updated;
                                TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                if (textViewRegular12 != null) {
                                    return new FragmentAppBackupBottomsheetBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, viewFindChildViewById, imageView, imageView2, textViewBold16, textViewBold18, textViewRegular12);
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
