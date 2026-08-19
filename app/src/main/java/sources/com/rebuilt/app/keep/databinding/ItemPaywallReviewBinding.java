package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemPaywallReviewBinding implements ViewBinding {
    public final ImageView ivReviewAvatar;
    private final LinearLayout rootView;
    public final TextView tvReviewName;
    public final TextView tvReviewStars;
    public final TextView tvReviewText;

    private ItemPaywallReviewBinding(LinearLayout rootView, ImageView ivReviewAvatar, TextView tvReviewName, TextView tvReviewStars, TextView tvReviewText) {
        this.rootView = rootView;
        this.ivReviewAvatar = ivReviewAvatar;
        this.tvReviewName = tvReviewName;
        this.tvReviewStars = tvReviewStars;
        this.tvReviewText = tvReviewText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public LinearLayout getRoot() {
        return this.rootView;
    }

    public static ItemPaywallReviewBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemPaywallReviewBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_paywall_review, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemPaywallReviewBinding bind(View rootView) {
        int i = C3656R.id.iv_review_avatar;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = C3656R.id.tv_review_name;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = C3656R.id.tv_review_stars;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView2 != null) {
                    i = C3656R.id.tv_review_text;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView3 != null) {
                        return new ItemPaywallReviewBinding((LinearLayout) rootView, imageView, textView, textView2, textView3);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
