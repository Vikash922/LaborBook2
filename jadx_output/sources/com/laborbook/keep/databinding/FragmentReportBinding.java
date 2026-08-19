package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentReportBinding implements ViewBinding {
    public final MaterialButton btnSharePdf;
    public final View dividerToolbar;
    public final ImageView ivBack;
    public final LinearLayout reportToolbar;
    private final ConstraintLayout rootView;
    public final TextView tvAbsentCount;
    public final TextView tvAdvanceAmount;
    public final TextView tvBalance;
    public final TextView tvHalfdayCount;
    public final TextView tvOvertimeCount;
    public final TextView tvPPlusHalf;
    public final TextView tvPPlusP;
    public final TextView tvPresentCount;
    public final TextView tvReportMonth;
    public final TextView tvReportNameValue;
    public final TextView tvReportPhone;
    public final TextView tvReportTitle;
    public final TextView tvTotalEarnings;

    private FragmentReportBinding(ConstraintLayout rootView, MaterialButton btnSharePdf, View dividerToolbar, ImageView ivBack, LinearLayout reportToolbar, TextView tvAbsentCount, TextView tvAdvanceAmount, TextView tvBalance, TextView tvHalfdayCount, TextView tvOvertimeCount, TextView tvPPlusHalf, TextView tvPPlusP, TextView tvPresentCount, TextView tvReportMonth, TextView tvReportNameValue, TextView tvReportPhone, TextView tvReportTitle, TextView tvTotalEarnings) {
        this.rootView = rootView;
        this.btnSharePdf = btnSharePdf;
        this.dividerToolbar = dividerToolbar;
        this.ivBack = ivBack;
        this.reportToolbar = reportToolbar;
        this.tvAbsentCount = tvAbsentCount;
        this.tvAdvanceAmount = tvAdvanceAmount;
        this.tvBalance = tvBalance;
        this.tvHalfdayCount = tvHalfdayCount;
        this.tvOvertimeCount = tvOvertimeCount;
        this.tvPPlusHalf = tvPPlusHalf;
        this.tvPPlusP = tvPPlusP;
        this.tvPresentCount = tvPresentCount;
        this.tvReportMonth = tvReportMonth;
        this.tvReportNameValue = tvReportNameValue;
        this.tvReportPhone = tvReportPhone;
        this.tvReportTitle = tvReportTitle;
        this.tvTotalEarnings = tvTotalEarnings;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentReportBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentReportBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_report, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentReportBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_share_pdf;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(rootView, i);
        if (materialButton != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_toolbar))) != null) {
            i = C3656R.id.iv_back;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = C3656R.id.report_toolbar;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                if (linearLayout != null) {
                    i = C3656R.id.tv_absent_count;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView != null) {
                        i = C3656R.id.tv_advance_amount;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView2 != null) {
                            i = C3656R.id.tv_balance;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                            if (textView3 != null) {
                                i = C3656R.id.tv_halfday_count;
                                TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                if (textView4 != null) {
                                    i = C3656R.id.tv_overtime_count;
                                    TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                    if (textView5 != null) {
                                        i = C3656R.id.tv_p_plus_half;
                                        TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView6 != null) {
                                            i = C3656R.id.tv_p_plus_p;
                                            TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView7 != null) {
                                                i = C3656R.id.tv_present_count;
                                                TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                if (textView8 != null) {
                                                    i = C3656R.id.tv_report_month;
                                                    TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                    if (textView9 != null) {
                                                        i = C3656R.id.tv_report_name_value;
                                                        TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                        if (textView10 != null) {
                                                            i = C3656R.id.tv_report_phone;
                                                            TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                            if (textView11 != null) {
                                                                i = C3656R.id.tv_report_title;
                                                                TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                if (textView12 != null) {
                                                                    i = C3656R.id.tv_total_earnings;
                                                                    TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textView13 != null) {
                                                                        return new FragmentReportBinding((ConstraintLayout) rootView, materialButton, viewFindChildViewById, imageView, linearLayout, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13);
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
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
