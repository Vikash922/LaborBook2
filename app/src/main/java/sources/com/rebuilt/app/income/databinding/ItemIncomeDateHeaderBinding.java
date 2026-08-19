package com.rebuilt.app.income.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.rebuilt.app.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemIncomeDateHeaderBinding implements ViewBinding {
    public final LinearLayout llTableHeader;
    private final ConstraintLayout rootView;
    public final TextViewBold12 tvCashInAmount;
    public final TextViewBold14 tvDateHeader;

    private ItemIncomeDateHeaderBinding(ConstraintLayout rootView, LinearLayout llTableHeader, TextViewBold12 tvCashInAmount, TextViewBold14 tvDateHeader) {
        this.rootView = rootView;
        this.llTableHeader = llTableHeader;
        this.tvCashInAmount = tvCashInAmount;
        this.tvDateHeader = tvDateHeader;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemIncomeDateHeaderBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemIncomeDateHeaderBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3621R.layout.item_income_date_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemIncomeDateHeaderBinding bind(View rootView) {
        int i = C3621R.id.ll_table_header;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
        if (linearLayout != null) {
            i = C3621R.id.tvCashInAmount;
            TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
            if (textViewBold12 != null) {
                i = C3621R.id.tv_date_header;
                TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                if (textViewBold14 != null) {
                    return new ItemIncomeDateHeaderBinding((ConstraintLayout) rootView, linearLayout, textViewBold12, textViewBold14);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
