package com.laborbook.expense.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.google.android.gms.ads.AdView;
import com.laborbook.base.ads.CustomAdView;
import com.laborbook.expense.C3591R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentExpenseTransactionStatusBinding implements ViewBinding {
    public final AdView adView;
    public final PrimaryButton btnOk;
    public final CustomAdView customAdView;
    public final ImageView ivTick;
    public final LinearLayout llTick;
    private final ConstraintLayout rootView;
    public final TextViewBold20 tvAmountAdded;

    private FragmentExpenseTransactionStatusBinding(ConstraintLayout rootView, AdView adView, PrimaryButton btnOk, CustomAdView customAdView, ImageView ivTick, LinearLayout llTick, TextViewBold20 tvAmountAdded) {
        this.rootView = rootView;
        this.adView = adView;
        this.btnOk = btnOk;
        this.customAdView = customAdView;
        this.ivTick = ivTick;
        this.llTick = llTick;
        this.tvAmountAdded = tvAmountAdded;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentExpenseTransactionStatusBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentExpenseTransactionStatusBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3591R.layout.fragment_expense_transaction_status, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentExpenseTransactionStatusBinding bind(View rootView) {
        int i = C3591R.id.adView;
        AdView adView = (AdView) ViewBindings.findChildViewById(rootView, i);
        if (adView != null) {
            i = C3591R.id.btn_ok;
            PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
            if (primaryButton != null) {
                i = C3591R.id.customAdView;
                CustomAdView customAdView = (CustomAdView) ViewBindings.findChildViewById(rootView, i);
                if (customAdView != null) {
                    i = C3591R.id.iv_tick;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3591R.id.ll_tick;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                        if (linearLayout != null) {
                            i = C3591R.id.tv_amount_added;
                            TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold20 != null) {
                                return new FragmentExpenseTransactionStatusBinding((ConstraintLayout) rootView, adView, primaryButton, customAdView, imageView, linearLayout, textViewBold20);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
