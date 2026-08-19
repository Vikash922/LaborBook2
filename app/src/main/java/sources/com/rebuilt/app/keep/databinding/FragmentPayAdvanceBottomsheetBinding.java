package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewRegular16;
import com.boilerplate.uikit.views.textviews.text20.TextViewRegular20;
import com.boilerplate.uikit.views.textviews.text48.TextViewBoldPrimaryColor48;
import com.google.android.material.textfield.TextInputEditText;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentPayAdvanceBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnAddAdvance;
    public final TextView btnRemoveAdvance;
    public final ConstraintLayout clAttendance;
    public final View divider1;
    public final View divider2;
    public final TextInputEditText etAdvance;
    public final EditText etDescription;
    public final ImageView ivClose;
    public final LinearLayout llPaymentMethod;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3455pb;
    public final TextView rbCash;
    public final TextView rbOnline;
    public final ConstraintLayout rlAmount;
    private final ConstraintLayout rootView;
    public final TextViewBoldPrimaryColor48 rupeeSymbol;
    public final TextViewRegular20 tvAdvanceHint;
    public final TextViewBold14 tvDate;
    public final TextViewBold16 tvStaffName;
    public final TextViewRegular16 tvTitleAdvance;

    private FragmentPayAdvanceBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnAddAdvance, TextView btnRemoveAdvance, ConstraintLayout clAttendance, View divider1, View divider2, TextInputEditText etAdvance, EditText etDescription, ImageView ivClose, LinearLayout llPaymentMethod, ProgressBar pb, TextView rbCash, TextView rbOnline, ConstraintLayout rlAmount, TextViewBoldPrimaryColor48 rupeeSymbol, TextViewRegular20 tvAdvanceHint, TextViewBold14 tvDate, TextViewBold16 tvStaffName, TextViewRegular16 tvTitleAdvance) {
        this.rootView = rootView;
        this.btnAddAdvance = btnAddAdvance;
        this.btnRemoveAdvance = btnRemoveAdvance;
        this.clAttendance = clAttendance;
        this.divider1 = divider1;
        this.divider2 = divider2;
        this.etAdvance = etAdvance;
        this.etDescription = etDescription;
        this.ivClose = ivClose;
        this.llPaymentMethod = llPaymentMethod;
        this.f3455pb = pb;
        this.rbCash = rbCash;
        this.rbOnline = rbOnline;
        this.rlAmount = rlAmount;
        this.rupeeSymbol = rupeeSymbol;
        this.tvAdvanceHint = tvAdvanceHint;
        this.tvDate = tvDate;
        this.tvStaffName = tvStaffName;
        this.tvTitleAdvance = tvTitleAdvance;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPayAdvanceBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentPayAdvanceBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_pay_advance_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPayAdvanceBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = C3656R.id.btn_add_advance;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.btn_remove_advance;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
            if (textView != null) {
                i = C3656R.id.cl_attendance;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_1))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_2))) != null) {
                    i = C3656R.id.et_advance;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                    if (textInputEditText != null) {
                        i = C3656R.id.et_description;
                        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                        if (editText != null) {
                            i = C3656R.id.iv_close;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                            if (imageView != null) {
                                i = C3656R.id.ll_payment_method;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                if (linearLayout != null) {
                                    i = C3656R.id.f3440pb;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                    if (progressBar != null) {
                                        i = C3656R.id.rb_cash;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView2 != null) {
                                            i = C3656R.id.rb_online;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView3 != null) {
                                                i = C3656R.id.rl_amount;
                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                                                if (constraintLayout2 != null) {
                                                    i = C3656R.id.rupee_symbol;
                                                    TextViewBoldPrimaryColor48 textViewBoldPrimaryColor48 = (TextViewBoldPrimaryColor48) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewBoldPrimaryColor48 != null) {
                                                        i = C3656R.id.tv_advance_hint;
                                                        TextViewRegular20 textViewRegular20 = (TextViewRegular20) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewRegular20 != null) {
                                                            i = C3656R.id.tv_date;
                                                            TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold14 != null) {
                                                                i = C3656R.id.tv_staff_name;
                                                                TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewBold16 != null) {
                                                                    i = C3656R.id.tv_title_advance;
                                                                    TextViewRegular16 textViewRegular16 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textViewRegular16 != null) {
                                                                        return new FragmentPayAdvanceBottomsheetBinding((ConstraintLayout) rootView, primaryButton, textView, constraintLayout, viewFindChildViewById, viewFindChildViewById2, textInputEditText, editText, imageView, linearLayout, progressBar, textView2, textView3, constraintLayout2, textViewBoldPrimaryColor48, textViewRegular20, textViewBold14, textViewBold16, textViewRegular16);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
