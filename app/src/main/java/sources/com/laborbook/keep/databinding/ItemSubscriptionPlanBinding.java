package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemSubscriptionPlanBinding implements ViewBinding {
    public final ImageView ivSelectionCheck;
    public final ConstraintLayout llPlanRoot;
    private final ConstraintLayout rootView;
    public final TextView tvDiscountBadge;
    public final TextView tvPerMonthPrice;
    public final TextView tvPlanBreakdown;
    public final TextView tvPlanName;

    private ItemSubscriptionPlanBinding(ConstraintLayout rootView, ImageView ivSelectionCheck, ConstraintLayout llPlanRoot, TextView tvDiscountBadge, TextView tvPerMonthPrice, TextView tvPlanBreakdown, TextView tvPlanName) {
        this.rootView = rootView;
        this.ivSelectionCheck = ivSelectionCheck;
        this.llPlanRoot = llPlanRoot;
        this.tvDiscountBadge = tvDiscountBadge;
        this.tvPerMonthPrice = tvPerMonthPrice;
        this.tvPlanBreakdown = tvPlanBreakdown;
        this.tvPlanName = tvPlanName;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemSubscriptionPlanBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemSubscriptionPlanBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_subscription_plan, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemSubscriptionPlanBinding bind(View rootView) {
        int i = C3656R.id.iv_selection_check;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
            i = C3656R.id.tv_discount_badge;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = C3656R.id.tv_per_month_price;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView2 != null) {
                    i = C3656R.id.tv_plan_breakdown;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView3 != null) {
                        i = C3656R.id.tv_plan_name;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                        if (textView4 != null) {
                            return new ItemSubscriptionPlanBinding(constraintLayout, imageView, constraintLayout, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
