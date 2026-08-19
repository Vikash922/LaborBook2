package com.rebuilt.app.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldError16;
import com.rebuilt.app.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemExpenseBinding implements ViewBinding {
    public final LinearLayout container;
    public final View divider;
    public final ImageView ivArrow;
    private final LinearLayout rootView;
    public final TextViewBoldError16 tvCashOutAmount;
    public final TextViewBold14 tvExpenseDate;
    public final TextViewRegular14 tvExpenseDay;
    public final TextViewRegular14 tvExpenseReason;

    private ItemExpenseBinding(LinearLayout rootView, LinearLayout container, View divider, ImageView ivArrow, TextViewBoldError16 tvCashOutAmount, TextViewBold14 tvExpenseDate, TextViewRegular14 tvExpenseDay, TextViewRegular14 tvExpenseReason) {
        this.rootView = rootView;
        this.container = container;
        this.divider = divider;
        this.ivArrow = ivArrow;
        this.tvCashOutAmount = tvCashOutAmount;
        this.tvExpenseDate = tvExpenseDate;
        this.tvExpenseDay = tvExpenseDay;
        this.tvExpenseReason = tvExpenseReason;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemExpenseBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemExpenseBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.item_expense, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemExpenseBinding bind(View rootView) {
        LinearLayout linearLayout = (LinearLayout) rootView;
        int i = C3591R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, i);
        if (viewFindChildViewById != null) {
            i = C3591R.id.iv_arrow;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = C3591R.id.tv_cash_out_amount;
                TextViewBoldError16 textViewBoldError16 = (TextViewBoldError16) ViewBindings.findChildViewById(rootView, i);
                if (textViewBoldError16 != null) {
                    i = C3591R.id.tv_expense_date;
                    TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                    if (textViewBold14 != null) {
                        i = C3591R.id.tv_expense_day;
                        TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                        if (textViewRegular14 != null) {
                            i = C3591R.id.tv_expense_reason;
                            TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                            if (textViewRegular142 != null) {
                                return new ItemExpenseBinding(linearLayout, linearLayout, viewFindChildViewById, imageView, textViewBoldError16, textViewBold14, textViewRegular14, textViewRegular142);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
