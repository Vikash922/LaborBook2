package com.rebuilt.app.income.databinding;

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
import com.boilerplate.uikit.views.buttons.RoundedGreenButton;
import com.boilerplate.uikit.views.textviews.text10.TextViewHintBold10;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldGreen16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.rebuilt.app.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentIncomeBinding implements ViewBinding {
    public final RoundedGreenButton btnCashIn;
    public final View dividerHeader;
    public final EditText etSearchIncome;
    public final ImageView icHiddenAmount;
    public final ImageView ivArrow;
    public final ImageView ivEyeOpenClose;
    public final LinearLayout llParentTotalCashIn;
    public final LinearLayout llStats;
    public final LinearLayout llStatsRow;
    public final LinearLayout llTableHeader;
    public final LinearLayout llTotalCashIn;
    public final NestedScrollView nestedScrollView;
    public final ProgressBar progressBar;
    private final ConstraintLayout rootView;
    public final RecyclerView rvExpense;
    public final TextViewBold16 tvAddFirstEntry;
    public final TextViewHintBold10 tvCashInTitle;
    public final TextViewHintBold10 tvEntriesTitle;
    public final TextViewBold20 tvExpense;
    public final TextViewBold12 tvMonthYear;
    public final TextViewBoldGreen16 tvTotalCashIn;
    public final TextViewBold16 tvTotalEntries;
    public final TextViewBoldPrimaryColor14 tvViewReports;

    private FragmentIncomeBinding(ConstraintLayout rootView, RoundedGreenButton btnCashIn, View dividerHeader, EditText etSearchIncome, ImageView icHiddenAmount, ImageView ivArrow, ImageView ivEyeOpenClose, LinearLayout llParentTotalCashIn, LinearLayout llStats, LinearLayout llStatsRow, LinearLayout llTableHeader, LinearLayout llTotalCashIn, NestedScrollView nestedScrollView, ProgressBar progressBar, RecyclerView rvExpense, TextViewBold16 tvAddFirstEntry, TextViewHintBold10 tvCashInTitle, TextViewHintBold10 tvEntriesTitle, TextViewBold20 tvExpense, TextViewBold12 tvMonthYear, TextViewBoldGreen16 tvTotalCashIn, TextViewBold16 tvTotalEntries, TextViewBoldPrimaryColor14 tvViewReports) {
        this.rootView = rootView;
        this.btnCashIn = btnCashIn;
        this.dividerHeader = dividerHeader;
        this.etSearchIncome = etSearchIncome;
        this.icHiddenAmount = icHiddenAmount;
        this.ivArrow = ivArrow;
        this.ivEyeOpenClose = ivEyeOpenClose;
        this.llParentTotalCashIn = llParentTotalCashIn;
        this.llStats = llStats;
        this.llStatsRow = llStatsRow;
        this.llTableHeader = llTableHeader;
        this.llTotalCashIn = llTotalCashIn;
        this.nestedScrollView = nestedScrollView;
        this.progressBar = progressBar;
        this.rvExpense = rvExpense;
        this.tvAddFirstEntry = tvAddFirstEntry;
        this.tvCashInTitle = tvCashInTitle;
        this.tvEntriesTitle = tvEntriesTitle;
        this.tvExpense = tvExpense;
        this.tvMonthYear = tvMonthYear;
        this.tvTotalCashIn = tvTotalCashIn;
        this.tvTotalEntries = tvTotalEntries;
        this.tvViewReports = tvViewReports;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentIncomeBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentIncomeBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3621R.layout.fragment_income, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentIncomeBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3621R.id.btn_cash_in;
        RoundedGreenButton roundedGreenButton = (RoundedGreenButton) ViewBindings.findChildViewById(rootView, i);
        if (roundedGreenButton != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3621R.id.divider_header))) != null) {
            i = C3621R.id.et_search_income;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
            if (editText != null) {
                i = C3621R.id.ic_hidden_amount;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3621R.id.iv_arrow;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView2 != null) {
                        i = C3621R.id.iv_eye_open_close;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView3 != null) {
                            i = C3621R.id.ll_parent_total_cash_in;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                            if (linearLayout != null) {
                                i = C3621R.id.ll_stats;
                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                if (linearLayout2 != null) {
                                    i = C3621R.id.ll_stats_row;
                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                    if (linearLayout3 != null) {
                                        i = C3621R.id.ll_table_header;
                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                        if (linearLayout4 != null) {
                                            i = C3621R.id.ll_total_cash_in;
                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                            if (linearLayout5 != null) {
                                                i = C3621R.id.nested_scroll_view;
                                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, i);
                                                if (nestedScrollView != null) {
                                                    i = C3621R.id.progressBar;
                                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                    if (progressBar != null) {
                                                        i = C3621R.id.rv_expense;
                                                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                                        if (recyclerView != null) {
                                                            i = C3621R.id.tv_add_first_entry;
                                                            TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold16 != null) {
                                                                i = C3621R.id.tv_cash_in_title;
                                                                TextViewHintBold10 textViewHintBold10 = (TextViewHintBold10) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewHintBold10 != null) {
                                                                    i = C3621R.id.tv_entries_title;
                                                                    TextViewHintBold10 textViewHintBold102 = (TextViewHintBold10) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textViewHintBold102 != null) {
                                                                        i = C3621R.id.tv_expense;
                                                                        TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                                                        if (textViewBold20 != null) {
                                                                            i = C3621R.id.tv_month_year;
                                                                            TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                                            if (textViewBold12 != null) {
                                                                                i = C3621R.id.tv_total_cash_in;
                                                                                TextViewBoldGreen16 textViewBoldGreen16 = (TextViewBoldGreen16) ViewBindings.findChildViewById(rootView, i);
                                                                                if (textViewBoldGreen16 != null) {
                                                                                    i = C3621R.id.tv_total_entries;
                                                                                    TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (textViewBold162 != null) {
                                                                                        i = C3621R.id.tv_view_reports;
                                                                                        TextViewBoldPrimaryColor14 textViewBoldPrimaryColor14 = (TextViewBoldPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
                                                                                        if (textViewBoldPrimaryColor14 != null) {
                                                                                            return new FragmentIncomeBinding((ConstraintLayout) rootView, roundedGreenButton, viewFindChildViewById, editText, imageView, imageView2, imageView3, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, nestedScrollView, progressBar, recyclerView, textViewBold16, textViewHintBold10, textViewHintBold102, textViewBold20, textViewBold12, textViewBoldGreen16, textViewBold162, textViewBoldPrimaryColor14);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
