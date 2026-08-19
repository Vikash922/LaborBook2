package com.laborbook.income.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.laborbook.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class LayoutReportTemplateBinding implements ViewBinding {
    public final LinearLayout llMarketingFooter;
    public final LinearLayout llTotalEarnings;
    public final LinearLayout llTransactionItems;
    private final ScrollView rootView;
    public final TextViewRegular12 tvDownloadApp;
    public final TextViewRegular14 tvNameLabel;
    public final TextViewRegular14 tvPhoneLabel;
    public final TextViewRegular12 tvReportGeneratedBy;
    public final TextViewBold20 tvReportTitle;
    public final TextViewBold16 tvTotalAmount;
    public final TextViewBold16 tvTotalLabel;

    private LayoutReportTemplateBinding(ScrollView rootView, LinearLayout llMarketingFooter, LinearLayout llTotalEarnings, LinearLayout llTransactionItems, TextViewRegular12 tvDownloadApp, TextViewRegular14 tvNameLabel, TextViewRegular14 tvPhoneLabel, TextViewRegular12 tvReportGeneratedBy, TextViewBold20 tvReportTitle, TextViewBold16 tvTotalAmount, TextViewBold16 tvTotalLabel) {
        this.rootView = rootView;
        this.llMarketingFooter = llMarketingFooter;
        this.llTotalEarnings = llTotalEarnings;
        this.llTransactionItems = llTransactionItems;
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
        View viewInflate = inflater.inflate(C3621R.layout.layout_report_template, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static LayoutReportTemplateBinding bind(View rootView) {
        int i = C3621R.id.ll_marketing_footer;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
        if (linearLayout != null) {
            i = C3621R.id.ll_total_earnings;
            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
            if (linearLayout2 != null) {
                i = C3621R.id.ll_transaction_items;
                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                if (linearLayout3 != null) {
                    i = C3621R.id.tv_download_app;
                    TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                    if (textViewRegular12 != null) {
                        i = C3621R.id.tv_name_label;
                        TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                        if (textViewRegular14 != null) {
                            i = C3621R.id.tv_phone_label;
                            TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                            if (textViewRegular142 != null) {
                                i = C3621R.id.tv_report_generated_by;
                                TextViewRegular12 textViewRegular122 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                if (textViewRegular122 != null) {
                                    i = C3621R.id.tv_report_title;
                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewBold20 != null) {
                                        i = C3621R.id.tv_total_amount;
                                        TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewBold16 != null) {
                                            i = C3621R.id.tv_total_label;
                                            TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewBold162 != null) {
                                                return new LayoutReportTemplateBinding((ScrollView) rootView, linearLayout, linearLayout2, linearLayout3, textViewRegular12, textViewRegular14, textViewRegular142, textViewRegular122, textViewBold20, textViewBold16, textViewBold162);
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
