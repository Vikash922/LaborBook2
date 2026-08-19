package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentRequestFeatureBinding implements ViewBinding {
    public final PrimaryButton btnSubmit;
    public final ConstraintLayout clAttendance;
    public final View divider2;
    public final EditText etDescription;
    public final ImageView ivClose;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3456pb;
    private final ConstraintLayout rootView;
    public final TextViewBold18 tvAdvanceHint;

    private FragmentRequestFeatureBinding(ConstraintLayout rootView, PrimaryButton btnSubmit, ConstraintLayout clAttendance, View divider2, EditText etDescription, ImageView ivClose, ProgressBar pb, TextViewBold18 tvAdvanceHint) {
        this.rootView = rootView;
        this.btnSubmit = btnSubmit;
        this.clAttendance = clAttendance;
        this.divider2 = divider2;
        this.etDescription = etDescription;
        this.ivClose = ivClose;
        this.f3456pb = pb;
        this.tvAdvanceHint = tvAdvanceHint;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentRequestFeatureBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentRequestFeatureBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_request_feature, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentRequestFeatureBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_submit;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_attendance;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_2))) != null) {
                i = C3656R.id.et_description;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                if (editText != null) {
                    i = C3656R.id.iv_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3656R.id.f3440pb;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                        if (progressBar != null) {
                            i = C3656R.id.tv_advance_hint;
                            TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold18 != null) {
                                return new FragmentRequestFeatureBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, viewFindChildViewById, editText, imageView, progressBar, textViewBold18);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
