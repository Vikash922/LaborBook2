package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemUpiAppBinding implements ViewBinding {
    public final FrameLayout flUpiIconContainer;
    public final ImageView ivSelected;
    public final ImageView ivUpiIcon;
    private final ConstraintLayout rootView;
    public final TextView tvUpiLetter;
    public final TextViewRegular14 tvUpiName;

    private ItemUpiAppBinding(ConstraintLayout rootView, FrameLayout flUpiIconContainer, ImageView ivSelected, ImageView ivUpiIcon, TextView tvUpiLetter, TextViewRegular14 tvUpiName) {
        this.rootView = rootView;
        this.flUpiIconContainer = flUpiIconContainer;
        this.ivSelected = ivSelected;
        this.ivUpiIcon = ivUpiIcon;
        this.tvUpiLetter = tvUpiLetter;
        this.tvUpiName = tvUpiName;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemUpiAppBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemUpiAppBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_upi_app, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemUpiAppBinding bind(View rootView) {
        int i = C3656R.id.fl_upi_icon_container;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, i);
        if (frameLayout != null) {
            i = C3656R.id.iv_selected;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
            if (imageView != null) {
                i = C3656R.id.iv_upi_icon;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView2 != null) {
                    i = C3656R.id.tv_upi_letter;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView != null) {
                        i = C3656R.id.tv_upi_name;
                        TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                        if (textViewRegular14 != null) {
                            return new ItemUpiAppBinding((ConstraintLayout) rootView, frameLayout, imageView, imageView2, textView, textViewRegular14);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
