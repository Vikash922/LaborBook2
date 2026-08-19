package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemCashbookDateHeaderBinding implements ViewBinding {
    private final TextView rootView;
    public final TextView tvDate;

    private ItemCashbookDateHeaderBinding(TextView rootView, TextView tvDate) {
        this.rootView = rootView;
        this.tvDate = tvDate;
    }

    @Override // androidx.viewbinding.ViewBinding
    public TextView getRoot() {
        return this.rootView;
    }

    public static ItemCashbookDateHeaderBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemCashbookDateHeaderBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_cashbook_date_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemCashbookDateHeaderBinding bind(View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        TextView textView = (TextView) rootView;
        return new ItemCashbookDateHeaderBinding(textView, textView);
    }
}
