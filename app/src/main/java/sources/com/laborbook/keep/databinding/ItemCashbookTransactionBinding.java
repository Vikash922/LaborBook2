package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemCashbookTransactionBinding implements ViewBinding {
    private final LinearLayout rootView;
    public final TextView tvAmount;
    public final TextView tvDateDay;
    public final TextView tvDateWeekday;
    public final TextView tvMode;
    public final TextView tvReason;

    private ItemCashbookTransactionBinding(LinearLayout rootView, TextView tvAmount, TextView tvDateDay, TextView tvDateWeekday, TextView tvMode, TextView tvReason) {
        this.rootView = rootView;
        this.tvAmount = tvAmount;
        this.tvDateDay = tvDateDay;
        this.tvDateWeekday = tvDateWeekday;
        this.tvMode = tvMode;
        this.tvReason = tvReason;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemCashbookTransactionBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemCashbookTransactionBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_cashbook_transaction, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemCashbookTransactionBinding bind(View rootView) {
        int i = C3656R.id.tv_amount;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = C3656R.id.tv_date_day;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView2 != null) {
                i = C3656R.id.tv_date_weekday;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView3 != null) {
                    i = C3656R.id.tv_mode;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView4 != null) {
                        i = C3656R.id.tv_reason;
                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView5 != null) {
                            return new ItemCashbookTransactionBinding((LinearLayout) rootView, textView, textView2, textView3, textView4, textView5);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
