package com.laborbook.income.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.laborbook.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentMonthYearChooserBinding implements ViewBinding {
    public final PrimaryButton btnOk;
    public final ConstraintLayout clChooser;
    public final View divider2;
    public final ImageView ivClose;
    public final LinearLayout llMonth;
    public final LinearLayout llYear;
    private final ConstraintLayout rootView;
    public final TextViewBold14 tvMonth;
    public final TextViewBold16 tvTitle;
    public final TextViewBold14 tvYear;

    private FragmentMonthYearChooserBinding(ConstraintLayout rootView, PrimaryButton btnOk, ConstraintLayout clChooser, View divider2, ImageView ivClose, LinearLayout llMonth, LinearLayout llYear, TextViewBold14 tvMonth, TextViewBold16 tvTitle, TextViewBold14 tvYear) {
        this.rootView = rootView;
        this.btnOk = btnOk;
        this.clChooser = clChooser;
        this.divider2 = divider2;
        this.ivClose = ivClose;
        this.llMonth = llMonth;
        this.llYear = llYear;
        this.tvMonth = tvMonth;
        this.tvTitle = tvTitle;
        this.tvYear = tvYear;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentMonthYearChooserBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentMonthYearChooserBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3621R.layout.fragment_month_year_chooser, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentMonthYearChooserBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3621R.id.btn_ok;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3621R.id.cl_chooser;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3621R.id.divider_2))) != null) {
                i = C3621R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3621R.id.ll_month;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout != null) {
                        i = C3621R.id.ll_year;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                        if (linearLayout2 != null) {
                            i = C3621R.id.tv_month;
                            TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold14 != null) {
                                i = C3621R.id.tv_title;
                                TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                if (textViewBold16 != null) {
                                    i = C3621R.id.tv_year;
                                    TextViewBold14 textViewBold142 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewBold142 != null) {
                                        return new FragmentMonthYearChooserBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, viewFindChildViewById, imageView, linearLayout, linearLayout2, textViewBold14, textViewBold16, textViewBold142);
                                    }
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
