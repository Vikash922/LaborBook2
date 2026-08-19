package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldError16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldGreen16;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentLaborMonthlyCalendarBinding implements ViewBinding {
    public final PrimaryButton btnMarkAttendance;
    public final TextViewBoldPrimaryColor14 btnOpenReport;
    public final TextView btnShare;
    public final View divider1;
    public final View divider2;
    public final View divider3;
    public final View divider4;
    public final View dividerButton;
    public final FrameLayout flButton;
    public final ImageView ivBack;
    public final ImageView ivDeleteStaff;
    public final ImageView ivMore;
    public final ImageView ivRefreshAmount;
    public final ImageView ivReportIcon;
    public final ImageView ivStatsDropdown;
    public final LinearLayout llContent;
    public final LinearLayout llDateSelector;
    public final LinearLayout llOpenReport;
    public final LinearLayout llStats;
    public final LinearLayout llStatsFirstRow;
    public final LinearLayout llStatsSecondRow;
    public final LinearLayout llTableHeader;
    public final NestedScrollView nestedScrollView;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3454pb;
    private final ConstraintLayout rootView;
    public final RecyclerView rvAttendance;
    public final ConstraintLayout toolbar;
    public final TextViewBoldPrimaryColor14 tvAddAmount;
    public final TextViewBold12 tvEdit;
    public final TextViewBold12 tvMonthYear;
    public final TextViewBold18 tvToolbarText;
    public final TextViewBoldError16 tvTotalAbsent;
    public final TextViewBold16 tvTotalAdvance;
    public final TextViewBold16 tvTotalHalfDay;
    public final TextViewBold16 tvTotalOt;
    public final TextViewBold16 tvTotalPh;
    public final TextViewBold16 tvTotalPp;
    public final TextViewBoldGreen16 tvTotalPresent;

    private FragmentLaborMonthlyCalendarBinding(ConstraintLayout rootView, PrimaryButton btnMarkAttendance, TextViewBoldPrimaryColor14 btnOpenReport, TextView btnShare, View divider1, View divider2, View divider3, View divider4, View dividerButton, FrameLayout flButton, ImageView ivBack, ImageView ivDeleteStaff, ImageView ivMore, ImageView ivRefreshAmount, ImageView ivReportIcon, ImageView ivStatsDropdown, LinearLayout llContent, LinearLayout llDateSelector, LinearLayout llOpenReport, LinearLayout llStats, LinearLayout llStatsFirstRow, LinearLayout llStatsSecondRow, LinearLayout llTableHeader, NestedScrollView nestedScrollView, ProgressBar pb, RecyclerView rvAttendance, ConstraintLayout toolbar, TextViewBoldPrimaryColor14 tvAddAmount, TextViewBold12 tvEdit, TextViewBold12 tvMonthYear, TextViewBold18 tvToolbarText, TextViewBoldError16 tvTotalAbsent, TextViewBold16 tvTotalAdvance, TextViewBold16 tvTotalHalfDay, TextViewBold16 tvTotalOt, TextViewBold16 tvTotalPh, TextViewBold16 tvTotalPp, TextViewBoldGreen16 tvTotalPresent) {
        this.rootView = rootView;
        this.btnMarkAttendance = btnMarkAttendance;
        this.btnOpenReport = btnOpenReport;
        this.btnShare = btnShare;
        this.divider1 = divider1;
        this.divider2 = divider2;
        this.divider3 = divider3;
        this.divider4 = divider4;
        this.dividerButton = dividerButton;
        this.flButton = flButton;
        this.ivBack = ivBack;
        this.ivDeleteStaff = ivDeleteStaff;
        this.ivMore = ivMore;
        this.ivRefreshAmount = ivRefreshAmount;
        this.ivReportIcon = ivReportIcon;
        this.ivStatsDropdown = ivStatsDropdown;
        this.llContent = llContent;
        this.llDateSelector = llDateSelector;
        this.llOpenReport = llOpenReport;
        this.llStats = llStats;
        this.llStatsFirstRow = llStatsFirstRow;
        this.llStatsSecondRow = llStatsSecondRow;
        this.llTableHeader = llTableHeader;
        this.nestedScrollView = nestedScrollView;
        this.f3454pb = pb;
        this.rvAttendance = rvAttendance;
        this.toolbar = toolbar;
        this.tvAddAmount = tvAddAmount;
        this.tvEdit = tvEdit;
        this.tvMonthYear = tvMonthYear;
        this.tvToolbarText = tvToolbarText;
        this.tvTotalAbsent = tvTotalAbsent;
        this.tvTotalAdvance = tvTotalAdvance;
        this.tvTotalHalfDay = tvTotalHalfDay;
        this.tvTotalOt = tvTotalOt;
        this.tvTotalPh = tvTotalPh;
        this.tvTotalPp = tvTotalPp;
        this.tvTotalPresent = tvTotalPresent;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLaborMonthlyCalendarBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentLaborMonthlyCalendarBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_labor_monthly_calendar, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLaborMonthlyCalendarBinding bind(View rootView) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        View viewFindChildViewById3;
        View viewFindChildViewById4;
        View viewFindChildViewById5;
        int i = C3656R.id.btn_mark_attendance;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.btn_open_report;
            TextViewBoldPrimaryColor14 textViewBoldPrimaryColor14 = (TextViewBoldPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
            if (textViewBoldPrimaryColor14 != null) {
                i = C3656R.id.btn_share;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_1))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_2))) != null && (viewFindChildViewById3 = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_3))) != null && (viewFindChildViewById4 = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_4))) != null && (viewFindChildViewById5 = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_button))) != null) {
                    i = C3656R.id.fl_button;
                    FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, i);
                    if (frameLayout != null) {
                        i = C3656R.id.iv_back;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView != null) {
                            i = C3656R.id.iv_delete_staff;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                            if (imageView2 != null) {
                                i = C3656R.id.iv_more;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                if (imageView3 != null) {
                                    i = C3656R.id.iv_refresh_amount;
                                    ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                    if (imageView4 != null) {
                                        i = C3656R.id.iv_report_icon;
                                        ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                        if (imageView5 != null) {
                                            i = C3656R.id.iv_stats_dropdown;
                                            ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                            if (imageView6 != null) {
                                                i = C3656R.id.ll_content;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                if (linearLayout != null) {
                                                    i = C3656R.id.ll_date_selector;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                    if (linearLayout2 != null) {
                                                        i = C3656R.id.ll_open_report;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                        if (linearLayout3 != null) {
                                                            i = C3656R.id.ll_stats;
                                                            LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                            if (linearLayout4 != null) {
                                                                i = C3656R.id.ll_stats_first_row;
                                                                LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                if (linearLayout5 != null) {
                                                                    i = C3656R.id.ll_stats_second_row;
                                                                    LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                    if (linearLayout6 != null) {
                                                                        i = C3656R.id.ll_table_header;
                                                                        LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                        if (linearLayout7 != null) {
                                                                            i = C3656R.id.nested_scroll_view;
                                                                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(rootView, i);
                                                                            if (nestedScrollView != null) {
                                                                                i = C3656R.id.f3440pb;
                                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                                                if (progressBar != null) {
                                                                                    i = C3656R.id.rv_attendance;
                                                                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (recyclerView != null) {
                                                                                        i = C3656R.id.toolbar;
                                                                                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                                                                                        if (constraintLayout != null) {
                                                                                            i = C3656R.id.tv_add_amount;
                                                                                            TextViewBoldPrimaryColor14 textViewBoldPrimaryColor142 = (TextViewBoldPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
                                                                                            if (textViewBoldPrimaryColor142 != null) {
                                                                                                i = C3656R.id.tv_edit;
                                                                                                TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                                                                if (textViewBold12 != null) {
                                                                                                    i = C3656R.id.tv_month_year;
                                                                                                    TextViewBold12 textViewBold122 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                                                                    if (textViewBold122 != null) {
                                                                                                        i = C3656R.id.tv_toolbar_text;
                                                                                                        TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                                                                                                        if (textViewBold18 != null) {
                                                                                                            i = C3656R.id.tv_total_absent;
                                                                                                            TextViewBoldError16 textViewBoldError16 = (TextViewBoldError16) ViewBindings.findChildViewById(rootView, i);
                                                                                                            if (textViewBoldError16 != null) {
                                                                                                                i = C3656R.id.tv_total_advance;
                                                                                                                TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                if (textViewBold16 != null) {
                                                                                                                    i = C3656R.id.tv_total_half_day;
                                                                                                                    TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                    if (textViewBold162 != null) {
                                                                                                                        i = C3656R.id.tv_total_ot;
                                                                                                                        TextViewBold16 textViewBold163 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                        if (textViewBold163 != null) {
                                                                                                                            i = C3656R.id.tv_total_ph;
                                                                                                                            TextViewBold16 textViewBold164 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                            if (textViewBold164 != null) {
                                                                                                                                i = C3656R.id.tv_total_pp;
                                                                                                                                TextViewBold16 textViewBold165 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                if (textViewBold165 != null) {
                                                                                                                                    i = C3656R.id.tv_total_present;
                                                                                                                                    TextViewBoldGreen16 textViewBoldGreen16 = (TextViewBoldGreen16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                    if (textViewBoldGreen16 != null) {
                                                                                                                                        return new FragmentLaborMonthlyCalendarBinding((ConstraintLayout) rootView, primaryButton, textViewBoldPrimaryColor14, textView, viewFindChildViewById, viewFindChildViewById2, viewFindChildViewById3, viewFindChildViewById4, viewFindChildViewById5, frameLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, nestedScrollView, progressBar, recyclerView, constraintLayout, textViewBoldPrimaryColor142, textViewBold12, textViewBold122, textViewBold18, textViewBoldError16, textViewBold16, textViewBold162, textViewBold163, textViewBold164, textViewBold165, textViewBoldGreen16);
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
