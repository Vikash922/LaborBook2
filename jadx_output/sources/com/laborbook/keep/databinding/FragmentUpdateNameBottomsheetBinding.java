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
public final class FragmentUpdateNameBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnUpdateName;
    public final ConstraintLayout clAttendance;
    public final View divider2;
    public final EditText etName;
    public final ImageView ivClose;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3459pb;
    private final ConstraintLayout rootView;
    public final TextViewBold18 tvAdvance;

    private FragmentUpdateNameBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnUpdateName, ConstraintLayout clAttendance, View divider2, EditText etName, ImageView ivClose, ProgressBar pb, TextViewBold18 tvAdvance) {
        this.rootView = rootView;
        this.btnUpdateName = btnUpdateName;
        this.clAttendance = clAttendance;
        this.divider2 = divider2;
        this.etName = etName;
        this.ivClose = ivClose;
        this.f3459pb = pb;
        this.tvAdvance = tvAdvance;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentUpdateNameBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentUpdateNameBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_update_name_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentUpdateNameBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_update_name;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_attendance;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_2))) != null) {
                i = C3656R.id.et_name;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                if (editText != null) {
                    i = C3656R.id.iv_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3656R.id.f3440pb;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                        if (progressBar != null) {
                            i = C3656R.id.tv_advance;
                            TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold18 != null) {
                                return new FragmentUpdateNameBottomsheetBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, viewFindChildViewById, editText, imageView, progressBar, textViewBold18);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
