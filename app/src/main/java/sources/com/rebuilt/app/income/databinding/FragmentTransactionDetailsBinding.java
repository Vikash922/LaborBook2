package com.rebuilt.app.income.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewRegular16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.rebuilt.app.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentTransactionDetailsBinding implements ViewBinding {
    public final PrimaryButton btnOk;
    public final ConstraintLayout clContainer;
    public final FrameLayout flAmountContainer;
    public final ImageView ivClose;
    public final ImageView ivSecretAmount;
    private final ConstraintLayout rootView;
    public final TextViewBold16 tvAmount;
    public final TextViewRegular16 tvAmountLabel;
    public final TextViewBold12 tvEdit;
    public final TextViewBold20 tvHeaderDate;
    public final TextViewBold16 tvNotes;
    public final TextViewRegular16 tvNotesLabel;
    public final TextViewRegular16 tvPaymentMethodLabel;
    public final TextViewBold16 tvPaymentMethodValue;
    public final TextViewBold16 tvTitle;
    public final TextViewRegular16 tvTitleLabel;

    private FragmentTransactionDetailsBinding(ConstraintLayout rootView, PrimaryButton btnOk, ConstraintLayout clContainer, FrameLayout flAmountContainer, ImageView ivClose, ImageView ivSecretAmount, TextViewBold16 tvAmount, TextViewRegular16 tvAmountLabel, TextViewBold12 tvEdit, TextViewBold20 tvHeaderDate, TextViewBold16 tvNotes, TextViewRegular16 tvNotesLabel, TextViewRegular16 tvPaymentMethodLabel, TextViewBold16 tvPaymentMethodValue, TextViewBold16 tvTitle, TextViewRegular16 tvTitleLabel) {
        this.rootView = rootView;
        this.btnOk = btnOk;
        this.clContainer = clContainer;
        this.flAmountContainer = flAmountContainer;
        this.ivClose = ivClose;
        this.ivSecretAmount = ivSecretAmount;
        this.tvAmount = tvAmount;
        this.tvAmountLabel = tvAmountLabel;
        this.tvEdit = tvEdit;
        this.tvHeaderDate = tvHeaderDate;
        this.tvNotes = tvNotes;
        this.tvNotesLabel = tvNotesLabel;
        this.tvPaymentMethodLabel = tvPaymentMethodLabel;
        this.tvPaymentMethodValue = tvPaymentMethodValue;
        this.tvTitle = tvTitle;
        this.tvTitleLabel = tvTitleLabel;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentTransactionDetailsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentTransactionDetailsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3621R.layout.fragment_transaction_details, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentTransactionDetailsBinding bind(View rootView) {
        int i = C3621R.id.btn_ok;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3621R.id.cl_container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null) {
                i = C3621R.id.fl_amount_container;
                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(rootView, i);
                if (frameLayout != null) {
                    i = C3621R.id.iv_close;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3621R.id.iv_secret_amount;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView2 != null) {
                            i = C3621R.id.tv_amount;
                            TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                            if (textViewBold16 != null) {
                                i = C3621R.id.tv_amount_label;
                                TextViewRegular16 textViewRegular16 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                if (textViewRegular16 != null) {
                                    i = C3621R.id.tv_edit;
                                    TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewBold12 != null) {
                                        i = C3621R.id.tv_header_date;
                                        TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewBold20 != null) {
                                            i = C3621R.id.tv_notes;
                                            TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewBold162 != null) {
                                                i = C3621R.id.tv_notes_label;
                                                TextViewRegular16 textViewRegular162 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewRegular162 != null) {
                                                    i = C3621R.id.tv_payment_method_label;
                                                    TextViewRegular16 textViewRegular163 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewRegular163 != null) {
                                                        i = C3621R.id.tv_payment_method_value;
                                                        TextViewBold16 textViewBold163 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewBold163 != null) {
                                                            i = C3621R.id.tv_title;
                                                            TextViewBold16 textViewBold164 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold164 != null) {
                                                                i = C3621R.id.tv_title_label;
                                                                TextViewRegular16 textViewRegular164 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewRegular164 != null) {
                                                                    return new FragmentTransactionDetailsBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, frameLayout, imageView, imageView2, textViewBold16, textViewRegular16, textViewBold12, textViewBold20, textViewBold162, textViewRegular162, textViewRegular163, textViewBold163, textViewBold164, textViewRegular164);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
