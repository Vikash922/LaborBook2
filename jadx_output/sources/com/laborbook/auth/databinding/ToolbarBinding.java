package com.laborbook.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.laborbook.auth.C3554R;

/* JADX INFO: loaded from: classes.dex */
public final class ToolbarBinding implements ViewBinding {
    public final ImageView ivBack;
    private final ConstraintLayout rootView;
    public final TextViewBold16 tvToolbarText;

    private ToolbarBinding(ConstraintLayout constraintLayout, ImageView imageView, TextViewBold16 textViewBold16) {
        this.rootView = constraintLayout;
        this.ivBack = imageView;
        this.tvToolbarText = textViewBold16;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ToolbarBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static ToolbarBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3554R.layout.toolbar, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ToolbarBinding bind(View view) {
        int i = C3554R.id.iv_back;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
        if (imageView != null) {
            i = C3554R.id.tv_toolbar_text;
            TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(view, i);
            if (textViewBold16 != null) {
                return new ToolbarBinding((ConstraintLayout) view, imageView, textViewBold16);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
