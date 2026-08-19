package com.laborbook.income.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldGreen14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.laborbook.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemIncomeBinding implements ViewBinding {
    public final LinearLayout container;
    public final View divider;
    public final ImageView ivArrow;
    public final ImageView ivSecretAmount;
    public final LinearLayout llAmountWithArrow;
    private final LinearLayout rootView;
    public final TextViewBoldGreen14 tvCashInAmount;
    public final TextViewBold14 tvIncomeDate;
    public final TextViewRegular14 tvIncomeDay;
    public final TextViewRegular14 tvIncomeReason;

    private ItemIncomeBinding(LinearLayout rootView, LinearLayout container, View divider, ImageView ivArrow, ImageView ivSecretAmount, LinearLayout llAmountWithArrow, TextViewBoldGreen14 tvCashInAmount, TextViewBold14 tvIncomeDate, TextViewRegular14 tvIncomeDay, TextViewRegular14 tvIncomeReason) {
        this.rootView = rootView;
        this.container = container;
        this.divider = divider;
        this.ivArrow = ivArrow;
        this.ivSecretAmount = ivSecretAmount;
        this.llAmountWithArrow = llAmountWithArrow;
        this.tvCashInAmount = tvCashInAmount;
        this.tvIncomeDate = tvIncomeDate;
        this.tvIncomeDay = tvIncomeDay;
        this.tvIncomeReason = tvIncomeReason;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemIncomeBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemIncomeBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3621R.layout.item_income, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemIncomeBinding bind(View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i = C3621R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, i);
        if (viewFindChildViewById != null) {
            i = C3621R.id.iv_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = C3621R.id.iv_secret_amount;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView2 != null) {
                    i = C3621R.id.ll_amount_with_arrow;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout2 != null) {
                        i = C3621R.id.tv_cash_in_amount;
                        TextViewBoldGreen14 textViewBoldGreen14 = (TextViewBoldGreen14) ViewBindings.findChildViewById(rootView, i);
                        if (textViewBoldGreen14 != null) {
                            i = C3621R.id.tv_income_date;
                            TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold14 != null) {
                                i = C3621R.id.tv_income_day;
                                TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                if (textViewRegular14 != null) {
                                    i = C3621R.id.tv_income_reason;
                                    TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewRegular142 != null) {
                                        return new ItemIncomeBinding(linearLayout, linearLayout, viewFindChildViewById, imageView, imageView2, linearLayout2, textViewBoldGreen14, textViewBold14, textViewRegular14, textViewRegular142);
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
