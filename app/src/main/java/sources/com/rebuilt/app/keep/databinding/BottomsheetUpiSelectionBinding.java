package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class BottomsheetUpiSelectionBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final RecyclerView rvUpiApps;
    public final TextViewBold16 tvTitle;

    private BottomsheetUpiSelectionBinding(ConstraintLayout rootView, RecyclerView rvUpiApps, TextViewBold16 tvTitle) {
        this.rootView = rootView;
        this.rvUpiApps = rvUpiApps;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static BottomsheetUpiSelectionBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static BottomsheetUpiSelectionBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.bottomsheet_upi_selection, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static BottomsheetUpiSelectionBinding bind(View rootView) {
        int i = C3656R.id.rv_upi_apps;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
        if (recyclerView != null) {
            i = C3656R.id.tv_title;
            TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
            if (textViewBold16 != null) {
                return new BottomsheetUpiSelectionBinding((ConstraintLayout) rootView, recyclerView, textViewBold16);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
