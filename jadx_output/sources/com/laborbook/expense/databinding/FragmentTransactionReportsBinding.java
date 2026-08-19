package com.laborbook.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldWhite16;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.laborbook.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentTransactionReportsBinding implements ViewBinding {
    public final Button btnSharePdf;
    public final TextViewBoldWhite16 btnShareWhatsapp;
    public final ConstraintLayout header;
    public final View headerDivider;
    public final ImageView ivBack;
    public final LinearLayout llDateRange;
    public final LinearLayout llShareButtons;
    public final LinearLayout llTableHeader;
    private final ConstraintLayout rootView;
    public final RecyclerView rvTransactions;
    public final TextViewBold12 tvFromDate;
    public final TextViewBold18 tvTitle;
    public final TextViewBold12 tvToDate;

    private FragmentTransactionReportsBinding(ConstraintLayout rootView, Button btnSharePdf, TextViewBoldWhite16 btnShareWhatsapp, ConstraintLayout header, View headerDivider, ImageView ivBack, LinearLayout llDateRange, LinearLayout llShareButtons, LinearLayout llTableHeader, RecyclerView rvTransactions, TextViewBold12 tvFromDate, TextViewBold18 tvTitle, TextViewBold12 tvToDate) {
        this.rootView = rootView;
        this.btnSharePdf = btnSharePdf;
        this.btnShareWhatsapp = btnShareWhatsapp;
        this.header = header;
        this.headerDivider = headerDivider;
        this.ivBack = ivBack;
        this.llDateRange = llDateRange;
        this.llShareButtons = llShareButtons;
        this.llTableHeader = llTableHeader;
        this.rvTransactions = rvTransactions;
        this.tvFromDate = tvFromDate;
        this.tvTitle = tvTitle;
        this.tvToDate = tvToDate;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentTransactionReportsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentTransactionReportsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.fragment_transaction_reports, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentTransactionReportsBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3591R.id.btn_share_pdf;
        Button button = (Button) ViewBindings.findChildViewById(rootView, i);
        if (button != null) {
            i = C3591R.id.btn_share_whatsapp;
            TextViewBoldWhite16 textViewBoldWhite16 = (TextViewBoldWhite16) ViewBindings.findChildViewById(rootView, i);
            if (textViewBoldWhite16 != null) {
                i = C3591R.id.header;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3591R.id.header_divider))) != null) {
                    i = C3591R.id.iv_back;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3591R.id.ll_date_range;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                        if (linearLayout != null) {
                            i = C3591R.id.ll_share_buttons;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                            if (linearLayout2 != null) {
                                i = C3591R.id.ll_table_header;
                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                if (linearLayout3 != null) {
                                    i = C3591R.id.rv_transactions;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                    if (recyclerView != null) {
                                        i = C3591R.id.tv_from_date;
                                        TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewBold12 != null) {
                                            i = C3591R.id.tv_title;
                                            TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewBold18 != null) {
                                                i = C3591R.id.tv_to_date;
                                                TextViewBold12 textViewBold122 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewBold122 != null) {
                                                    return new FragmentTransactionReportsBinding((ConstraintLayout) rootView, button, textViewBoldWhite16, constraintLayout, viewFindChildViewById, imageView, linearLayout, linearLayout2, linearLayout3, recyclerView, textViewBold12, textViewBold18, textViewBold122);
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
