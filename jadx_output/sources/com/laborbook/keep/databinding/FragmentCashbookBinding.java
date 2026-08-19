package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.google.android.material.button.MaterialButton;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentCashbookBinding implements ViewBinding {
    public final EditText etSearch;
    public final MaterialButton fabCashIn;
    public final MaterialButton fabCashOut;
    public final LinearLayout llFabs;
    public final LinearLayout llSummary;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3451pb;
    private final ConstraintLayout rootView;
    public final RecyclerView rvTransactions;
    public final NestedScrollView scrollContent;
    public final TextView tvBalance;
    public final TextView tvCashIn;
    public final TextView tvCashOut;
    public final TextViewBold20 tvCashbook;
    public final TextView tvEmpty;
    public final TextViewBold12 tvMonthYear;
    public final LinearLayout tvReports;

    private FragmentCashbookBinding(ConstraintLayout rootView, EditText etSearch, MaterialButton fabCashIn, MaterialButton fabCashOut, LinearLayout llFabs, LinearLayout llSummary, ProgressBar pb, RecyclerView rvTransactions, NestedScrollView scrollContent, TextView tvBalance, TextView tvCashIn, TextView tvCashOut, TextViewBold20 tvCashbook, TextView tvEmpty, TextViewBold12 tvMonthYear, LinearLayout tvReports) {
        this.rootView = rootView;
        this.etSearch = etSearch;
        this.fabCashIn = fabCashIn;
        this.fabCashOut = fabCashOut;
        this.llFabs = llFabs;
        this.llSummary = llSummary;
        this.f3451pb = pb;
        this.rvTransactions = rvTransactions;
        this.scrollContent = scrollContent;
        this.tvBalance = tvBalance;
        this.tvCashIn = tvCashIn;
        this.tvCashOut = tvCashOut;
        this.tvCashbook = tvCashbook;
        this.tvEmpty = tvEmpty;
        this.tvMonthYear = tvMonthYear;
        this.tvReports = tvReports;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCashbookBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentCashbookBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_cashbook, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentCashbookBinding bind(View rootView) {
        int i = C3656R.id.et_search;
        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
        if (editText != null) {
            i = C3656R.id.fab_cash_in;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(rootView, i);
            if (materialButton != null) {
                i = C3656R.id.fab_cash_out;
                MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(rootView, i);
                if (materialButton2 != null) {
                    i = C3656R.id.ll_fabs;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout != null) {
                        i = C3656R.id.ll_summary;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                        if (linearLayout2 != null) {
                            i = C3656R.id.f3440pb;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                            if (progressBar != null) {
                                i = C3656R.id.rv_transactions;
                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                if (recyclerView != null) {
                                    i = C3656R.id.scroll_content;
                                    NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, i);
                                    if (nestedScrollView != null) {
                                        i = C3656R.id.tv_balance;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView != null) {
                                            i = C3656R.id.tv_cash_in;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView2 != null) {
                                                i = C3656R.id.tv_cash_out;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                if (textView3 != null) {
                                                    i = C3656R.id.tv_cashbook;
                                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewBold20 != null) {
                                                        i = C3656R.id.tv_empty;
                                                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                        if (textView4 != null) {
                                                            i = C3656R.id.tv_month_year;
                                                            TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold12 != null) {
                                                                i = C3656R.id.tv_reports;
                                                                LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                if (linearLayout3 != null) {
                                                                    return new FragmentCashbookBinding((ConstraintLayout) rootView, editText, materialButton, materialButton2, linearLayout, linearLayout2, progressBar, recyclerView, nestedScrollView, textView, textView2, textView3, textViewBold20, textView4, textViewBold12, linearLayout3);
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
