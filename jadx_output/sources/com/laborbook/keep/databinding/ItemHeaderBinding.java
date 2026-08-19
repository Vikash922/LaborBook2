package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemHeaderBinding implements ViewBinding {
    private final ConstraintLayout rootView;
    public final TextViewBold16 tvHeader;

    private ItemHeaderBinding(ConstraintLayout rootView, TextViewBold16 tvHeader) {
        this.rootView = rootView;
        this.tvHeader = tvHeader;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemHeaderBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemHeaderBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_header, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemHeaderBinding bind(View rootView) {
        int i = C3656R.id.tvHeader;
        TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
        if (textViewBold16 != null) {
            return new ItemHeaderBinding((ConstraintLayout) rootView, textViewBold16);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
