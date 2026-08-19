package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewWhiteRegular12;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemPaywallFeatureBinding implements ViewBinding {
    public final ImageView ivFeatureIcon;
    private final LinearLayout rootView;
    public final TextViewWhiteRegular12 tvFeatureText;

    private ItemPaywallFeatureBinding(LinearLayout rootView, ImageView ivFeatureIcon, TextViewWhiteRegular12 tvFeatureText) {
        this.rootView = rootView;
        this.ivFeatureIcon = ivFeatureIcon;
        this.tvFeatureText = tvFeatureText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemPaywallFeatureBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemPaywallFeatureBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_paywall_feature, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemPaywallFeatureBinding bind(View rootView) {
        int i = C3656R.id.iv_feature_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = C3656R.id.tv_feature_text;
            TextViewWhiteRegular12 textViewWhiteRegular12 = (TextViewWhiteRegular12) ViewBindings.findChildViewById(rootView, i);
            if (textViewWhiteRegular12 != null) {
                return new ItemPaywallFeatureBinding((LinearLayout) rootView, imageView, textViewWhiteRegular12);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
