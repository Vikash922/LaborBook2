package com.rebuilt.app.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.RoundedRedButton;
import com.boilerplate.uikit.views.textviews.text10.TextViewHintBold10;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldError16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.rebuilt.app.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentExpenseBinding implements ViewBinding {
    public final RoundedRedButton btnCashOut;
    public final View dividerHeader;
    public final EditText etSearchExpense;
    public final ImageView ivArrow;
    public final LinearLayout llStats;
    public final LinearLayout llStatsRow;
    public final LinearLayout llTableHeader;
    public final NestedScrollView nestedScrollView;
    public final ProgressBar progressBar;
    private final ConstraintLayout rootView;
    public final RecyclerView rvExpense;
    public final TextViewBold16 tvAddFirstEntry;
    public final TextViewHintBold10 tvCashOutTitle;
    public final TextViewHintBold10 tvEntriesTitle;
    public final TextViewBold20 tvExpense;
    public final TextViewBold12 tvMonthYear;
    public final TextViewBoldError16 tvTotalCashOut;
    public final TextViewBold16 tvTotalEntries;
    public final TextViewBoldPrimaryColor14 tvViewReports;

    private FragmentExpenseBinding(ConstraintLayout rootView, RoundedRedButton btnCashOut, View dividerHeader, EditText etSearchExpense, ImageView ivArrow, LinearLayout llStats, LinearLayout llStatsRow, LinearLayout llTableHeader, NestedScrollView nestedScrollView, ProgressBar progressBar, RecyclerView rvExpense, TextViewBold16 tvAddFirstEntry, TextViewHintBold10 tvCashOutTitle, TextViewHintBold10 tvEntriesTitle, TextViewBold20 tvExpense, TextViewBold12 tvMonthYear, TextViewBoldError16 tvTotalCashOut, TextViewBold16 tvTotalEntries, TextViewBoldPrimaryColor14 tvViewReports) {
        this.rootView = rootView;
        this.btnCashOut = btnCashOut;
        this.dividerHeader = dividerHeader;
        this.etSearchExpense = etSearchExpense;
        this.ivArrow = ivArrow;
        this.llStats = llStats;
        this.llStatsRow = llStatsRow;
        this.llTableHeader = llTableHeader;
        this.nestedScrollView = nestedScrollView;
        this.progressBar = progressBar;
        this.rvExpense = rvExpense;
        this.tvAddFirstEntry = tvAddFirstEntry;
        this.tvCashOutTitle = tvCashOutTitle;
        this.tvEntriesTitle = tvEntriesTitle;
        this.tvExpense = tvExpense;
        this.tvMonthYear = tvMonthYear;
        this.tvTotalCashOut = tvTotalCashOut;
        this.tvTotalEntries = tvTotalEntries;
        this.tvViewReports = tvViewReports;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExpenseBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentExpenseBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.fragment_expense, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExpenseBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3591R.id.btn_cash_out;
        RoundedRedButton roundedRedButton = (RoundedRedButton) ViewBindings.findChildViewById(rootView, i);
        if (roundedRedButton != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3591R.id.divider_header))) != null) {
            i = C3591R.id.et_search_expense;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
            if (editText != null) {
                i = C3591R.id.iv_arrow;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3591R.id.ll_stats;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout != null) {
                        i = C3591R.id.ll_stats_row;
                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                        if (linearLayout2 != null) {
                            i = C3591R.id.ll_table_header;
                            LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                            if (linearLayout3 != null) {
                                i = C3591R.id.nested_scroll_view;
                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, i);
                                if (nestedScrollView != null) {
                                    i = C3591R.id.progressBar;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                    if (progressBar != null) {
                                        i = C3591R.id.rv_expense;
                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                        if (recyclerView != null) {
                                            i = C3591R.id.tv_add_first_entry;
                                            TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewBold16 != null) {
                                                i = C3591R.id.tv_cash_out_title;
                                                TextViewHintBold10 textViewHintBold10 = (TextViewHintBold10) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewHintBold10 != null) {
                                                    i = C3591R.id.tv_entries_title;
                                                    TextViewHintBold10 textViewHintBold102 = (TextViewHintBold10) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewHintBold102 != null) {
                                                        i = C3591R.id.tv_expense;
                                                        TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewBold20 != null) {
                                                            i = C3591R.id.tv_month_year;
                                                            TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold12 != null) {
                                                                i = C3591R.id.tv_total_cash_out;
                                                                TextViewBoldError16 textViewBoldError16 = (TextViewBoldError16) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewBoldError16 != null) {
                                                                    i = C3591R.id.tv_total_entries;
                                                                    TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textViewBold162 != null) {
                                                                        i = C3591R.id.tv_view_reports;
                                                                        TextViewBoldPrimaryColor14 textViewBoldPrimaryColor14 = (TextViewBoldPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
                                                                        if (textViewBoldPrimaryColor14 != null) {
                                                                            return new FragmentExpenseBinding((ConstraintLayout) rootView, roundedRedButton, viewFindChildViewById, editText, imageView, linearLayout, linearLayout2, linearLayout3, nestedScrollView, progressBar, recyclerView, textViewBold16, textViewHintBold10, textViewHintBold102, textViewBold20, textViewBold12, textViewBoldError16, textViewBold162, textViewBoldPrimaryColor14);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
