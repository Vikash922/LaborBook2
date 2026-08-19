package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewHintRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentOvertimeBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnOk;
    public final TextView btnRemoveOt;
    public final ConstraintLayout clContainer;
    public final View dividerButton;
    public final EditText etHours;
    public final EditText etRate;
    public final ImageView ivClose;
    public final LinearLayout llTotalAmount;
    private final ConstraintLayout rootView;
    public final TextViewBold14 tvDate;
    public final TextViewHintRegular12 tvHoursLabel;
    public final TextViewHintRegular12 tvRateLabel;
    public final TextViewBold18 tvTitle;
    public final TextViewBold16 tvTotalAmount;
    public final TextViewBold16 tvTotalLabel;

    private FragmentOvertimeBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnOk, TextView btnRemoveOt, ConstraintLayout clContainer, View dividerButton, EditText etHours, EditText etRate, ImageView ivClose, LinearLayout llTotalAmount, TextViewBold14 tvDate, TextViewHintRegular12 tvHoursLabel, TextViewHintRegular12 tvRateLabel, TextViewBold18 tvTitle, TextViewBold16 tvTotalAmount, TextViewBold16 tvTotalLabel) {
        this.rootView = rootView;
        this.btnOk = btnOk;
        this.btnRemoveOt = btnRemoveOt;
        this.clContainer = clContainer;
        this.dividerButton = dividerButton;
        this.etHours = etHours;
        this.etRate = etRate;
        this.ivClose = ivClose;
        this.llTotalAmount = llTotalAmount;
        this.tvDate = tvDate;
        this.tvHoursLabel = tvHoursLabel;
        this.tvRateLabel = tvRateLabel;
        this.tvTitle = tvTitle;
        this.tvTotalAmount = tvTotalAmount;
        this.tvTotalLabel = tvTotalLabel;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOvertimeBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentOvertimeBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_overtime_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentOvertimeBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_ok;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.btn_remove_ot;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = C3656R.id.cl_container;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_button))) != null) {
                    i = C3656R.id.et_hours;
                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                    if (editText != null) {
                        i = C3656R.id.et_rate;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, i);
                        if (editText2 != null) {
                            i = C3656R.id.iv_close;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                            if (imageView != null) {
                                i = C3656R.id.ll_total_amount;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                if (linearLayout != null) {
                                    i = C3656R.id.tv_date;
                                    TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewBold14 != null) {
                                        i = C3656R.id.tv_hours_label;
                                        TextViewHintRegular12 textViewHintRegular12 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewHintRegular12 != null) {
                                            i = C3656R.id.tv_rate_label;
                                            TextViewHintRegular12 textViewHintRegular122 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewHintRegular122 != null) {
                                                i = C3656R.id.tv_title;
                                                TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewBold18 != null) {
                                                    i = C3656R.id.tv_total_amount;
                                                    TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewBold16 != null) {
                                                        i = C3656R.id.tv_total_label;
                                                        TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewBold162 != null) {
                                                            return new FragmentOvertimeBottomsheetBinding((ConstraintLayout) rootView, primaryButton, textView, constraintLayout, viewFindChildViewById, editText, editText2, imageView, linearLayout, textViewBold14, textViewHintRegular12, textViewHintRegular122, textViewBold18, textViewBold16, textViewBold162);
                                                        }
                                                    }
                                                }
                                            }
                                        }
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
