package com.rebuilt.app.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.rebuilt.app.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemExpenseDateHeaderBinding implements ViewBinding {
    public final LinearLayout llTableHeader;
    private final ConstraintLayout rootView;
    public final TextViewBold12 tvCashOutAmount;
    public final TextViewBold14 tvDateHeader;

    private ItemExpenseDateHeaderBinding(ConstraintLayout rootView, LinearLayout llTableHeader, TextViewBold12 tvCashOutAmount, TextViewBold14 tvDateHeader) {
        this.rootView = rootView;
        this.llTableHeader = llTableHeader;
        this.tvCashOutAmount = tvCashOutAmount;
        this.tvDateHeader = tvDateHeader;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemExpenseDateHeaderBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemExpenseDateHeaderBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.item_expense_date_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemExpenseDateHeaderBinding bind(View rootView) {
        int i = C3591R.id.ll_table_header;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
        if (linearLayout != null) {
            i = C3591R.id.tvCashOutAmount;
            TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
            if (textViewBold12 != null) {
                i = C3591R.id.tv_date_header;
                TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                if (textViewBold14 != null) {
                    return new ItemExpenseDateHeaderBinding((ConstraintLayout) rootView, linearLayout, textViewBold12, textViewBold14);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
