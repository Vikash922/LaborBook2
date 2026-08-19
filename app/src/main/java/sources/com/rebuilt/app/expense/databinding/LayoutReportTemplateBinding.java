package com.rebuilt.app.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.rebuilt.app.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutReportTemplateBinding implements ViewBinding {
    public final LinearLayout llCashInTotal;
    public final LinearLayout llCashOutTotal;
    public final LinearLayout llMarketingFooter;
    public final LinearLayout llTotalEarnings;
    public final LinearLayout llTransactionItems;
    private final ScrollView rootView;
    public final TextViewBold14 tvCashInTotal;
    public final TextViewBold14 tvCashOutTotal;
    public final TextViewRegular12 tvDownloadApp;
    public final TextViewRegular14 tvNameLabel;
    public final TextViewRegular14 tvPhoneLabel;
    public final TextViewRegular12 tvReportGeneratedBy;
    public final TextViewBold20 tvReportTitle;
    public final TextViewBold16 tvTotalAmount;
    public final TextViewBold16 tvTotalLabel;

    private LayoutReportTemplateBinding(ScrollView rootView, LinearLayout llCashInTotal, LinearLayout llCashOutTotal, LinearLayout llMarketingFooter, LinearLayout llTotalEarnings, LinearLayout llTransactionItems, TextViewBold14 tvCashInTotal, TextViewBold14 tvCashOutTotal, TextViewRegular12 tvDownloadApp, TextViewRegular14 tvNameLabel, TextViewRegular14 tvPhoneLabel, TextViewRegular12 tvReportGeneratedBy, TextViewBold20 tvReportTitle, TextViewBold16 tvTotalAmount, TextViewBold16 tvTotalLabel) {
        this.rootView = rootView;
        this.llCashInTotal = llCashInTotal;
        this.llCashOutTotal = llCashOutTotal;
        this.llMarketingFooter = llMarketingFooter;
        this.llTotalEarnings = llTotalEarnings;
        this.llTransactionItems = llTransactionItems;
        this.tvCashInTotal = tvCashInTotal;
        this.tvCashOutTotal = tvCashOutTotal;
        this.tvDownloadApp = tvDownloadApp;
        this.tvNameLabel = tvNameLabel;
        this.tvPhoneLabel = tvPhoneLabel;
        this.tvReportGeneratedBy = tvReportGeneratedBy;
        this.tvReportTitle = tvReportTitle;
        this.tvTotalAmount = tvTotalAmount;
        this.tvTotalLabel = tvTotalLabel;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ScrollView getRoot() {
        return this.rootView;
    }

    public static LayoutReportTemplateBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static LayoutReportTemplateBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.layout_report_template, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutReportTemplateBinding bind(View rootView) {
        int i = C3591R.id.ll_cash_in_total;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
        if (linearLayout != null) {
            i = C3591R.id.ll_cash_out_total;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
            if (linearLayout2 != null) {
                i = C3591R.id.ll_marketing_footer;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                if (linearLayout3 != null) {
                    i = C3591R.id.ll_total_earnings;
                    LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout4 != null) {
                        i = C3591R.id.ll_transaction_items;
                        LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                        if (linearLayout5 != null) {
                            i = C3591R.id.tv_cash_in_total;
                            TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold14 != null) {
                                i = C3591R.id.tv_cash_out_total;
                                TextViewBold14 textViewBold142 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                if (textViewBold142 != null) {
                                    i = C3591R.id.tv_download_app;
                                    TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewRegular12 != null) {
                                        i = C3591R.id.tv_name_label;
                                        TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewRegular14 != null) {
                                            i = C3591R.id.tv_phone_label;
                                            TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewRegular142 != null) {
                                                i = C3591R.id.tv_report_generated_by;
                                                TextViewRegular12 textViewRegular122 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewRegular122 != null) {
                                                    i = C3591R.id.tv_report_title;
                                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewBold20 != null) {
                                                        i = C3591R.id.tv_total_amount;
                                                        TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewBold16 != null) {
                                                            i = C3591R.id.tv_total_label;
                                                            TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold162 != null) {
                                                                return new LayoutReportTemplateBinding((ScrollView) rootView, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, textViewBold14, textViewBold142, textViewRegular12, textViewRegular14, textViewRegular142, textViewRegular122, textViewBold20, textViewBold16, textViewBold162);
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
