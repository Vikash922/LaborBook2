package com.rebuilt.app.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.rebuilt.app.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class ItemTransactionReportBinding implements ViewBinding {
    public final View divider;
    public final LinearLayout llDate;
    private final LinearLayout rootView;
    public final TextViewBold14 tvAmount;
    public final TextViewBold14 tvDate;
    public final TextViewRegular14 tvDay;
    public final TextViewRegular14 tvNotes;

    private ItemTransactionReportBinding(LinearLayout rootView, View divider, LinearLayout llDate, TextViewBold14 tvAmount, TextViewBold14 tvDate, TextViewRegular14 tvDay, TextViewRegular14 tvNotes) {
        this.rootView = rootView;
        this.divider = divider;
        this.llDate = llDate;
        this.tvAmount = tvAmount;
        this.tvDate = tvDate;
        this.tvDay = tvDay;
        this.tvNotes = tvNotes;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemTransactionReportBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemTransactionReportBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.item_transaction_report, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemTransactionReportBinding bind(View rootView) {
        int i = C3591R.id.divider;
        View viewFindChildViewById = ViewBindings.findChildViewById(rootView, i);
        if (viewFindChildViewById != null) {
            i = C3591R.id.ll_date;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
            if (linearLayout != null) {
                i = C3591R.id.tv_amount;
                TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                if (textViewBold14 != null) {
                    i = C3591R.id.tv_date;
                    TextViewBold14 textViewBold142 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                    if (textViewBold142 != null) {
                        i = C3591R.id.tv_day;
                        TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                        if (textViewRegular14 != null) {
                            i = C3591R.id.tv_notes;
                            TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                            if (textViewRegular142 != null) {
                                return new ItemTransactionReportBinding((LinearLayout) rootView, viewFindChildViewById, linearLayout, textViewBold14, textViewBold142, textViewRegular14, textViewRegular142);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
