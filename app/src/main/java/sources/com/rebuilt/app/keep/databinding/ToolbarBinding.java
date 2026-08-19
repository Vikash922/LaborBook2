package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ToolbarBinding implements ViewBinding {
    public final ImageView ivBack;
    private final ConstraintLayout rootView;
    public final TextViewBold16 tvToolbarText;

    private ToolbarBinding(ConstraintLayout rootView, ImageView ivBack, TextViewBold16 tvToolbarText) {
        this.rootView = rootView;
        this.ivBack = ivBack;
        this.tvToolbarText = tvToolbarText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ToolbarBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ToolbarBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.toolbar, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToolbarBinding bind(View rootView) {
        int i = C3656R.id.iv_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = C3656R.id.tv_toolbar_text;
            TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
            if (textViewBold16 != null) {
                return new ToolbarBinding((ConstraintLayout) rootView, imageView, textViewBold16);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
