package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.example.swipebutton_library.SwipeButton;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentDeleteStaffBottomsheetBinding implements ViewBinding {
    public final SwipeButton btnDeleteStaff;
    public final ConstraintLayout clDeleteStaff;
    public final View divider2;
    public final ImageView ivClose;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3452pb;
    private final ConstraintLayout rootView;
    public final TextView tvInitial;
    public final TextViewBold18 tvName;

    private FragmentDeleteStaffBottomsheetBinding(ConstraintLayout rootView, SwipeButton btnDeleteStaff, ConstraintLayout clDeleteStaff, View divider2, ImageView ivClose, ProgressBar pb, TextView tvInitial, TextViewBold18 tvName) {
        this.rootView = rootView;
        this.btnDeleteStaff = btnDeleteStaff;
        this.clDeleteStaff = clDeleteStaff;
        this.divider2 = divider2;
        this.ivClose = ivClose;
        this.f3452pb = pb;
        this.tvInitial = tvInitial;
        this.tvName = tvName;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentDeleteStaffBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentDeleteStaffBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_delete_staff_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentDeleteStaffBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_delete_staff;
        SwipeButton swipeButton = (SwipeButton) ViewBindings.findChildViewById(rootView, i);
        if (swipeButton != null) {
            i = C3656R.id.cl_delete_staff;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_2))) != null) {
                i = C3656R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3656R.id.f3440pb;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                    if (progressBar != null) {
                        i = C3656R.id.tv_initial;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView != null) {
                            i = C3656R.id.tv_name;
                            TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold18 != null) {
                                return new FragmentDeleteStaffBottomsheetBinding((ConstraintLayout) rootView, swipeButton, constraintLayout, viewFindChildViewById, imageView, progressBar, textView, textViewBold18);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
