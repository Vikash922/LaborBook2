package com.rebuilt.app.income.databinding;

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
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldError14;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.boilerplate.uikit.views.textviews.text48.TextViewBoldPrimaryColor48;
import com.google.android.material.textfield.TextInputEditText;
import com.rebuilt.app.income.C3621R;

/* JADX INFO: loaded from: classes6.dex */
public final class FragmentCashInBinding implements ViewBinding {
    public final TextViewBoldError14 btnDelete;
    public final PrimaryButton btnSave;
    public final ConstraintLayout clAttendance;
    public final View divider1;
    public final View divider2;
    public final TextInputEditText etAmount;
    public final EditText etDescription;
    public final ImageView ivClose;
    public final LinearLayout llPaymentMethod;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3433pb;
    public final TextView rbCash;
    public final TextView rbOnline;
    public final ConstraintLayout rlAmount;
    private final ConstraintLayout rootView;
    public final TextViewBoldPrimaryColor48 rupeeSymbol;
    public final TextViewBold14 tvDate;
    public final TextView tvDateEdit;
    public final TextViewBold20 tvTitle;

    private FragmentCashInBinding(ConstraintLayout rootView, TextViewBoldError14 btnDelete, PrimaryButton btnSave, ConstraintLayout clAttendance, View divider1, View divider2, TextInputEditText etAmount, EditText etDescription, ImageView ivClose, LinearLayout llPaymentMethod, ProgressBar pb, TextView rbCash, TextView rbOnline, ConstraintLayout rlAmount, TextViewBoldPrimaryColor48 rupeeSymbol, TextViewBold14 tvDate, TextView tvDateEdit, TextViewBold20 tvTitle) {
        this.rootView = rootView;
        this.btnDelete = btnDelete;
        this.btnSave = btnSave;
        this.clAttendance = clAttendance;
        this.divider1 = divider1;
        this.divider2 = divider2;
        this.etAmount = etAmount;
        this.etDescription = etDescription;
        this.ivClose = ivClose;
        this.llPaymentMethod = llPaymentMethod;
        this.f3433pb = pb;
        this.rbCash = rbCash;
        this.rbOnline = rbOnline;
        this.rlAmount = rlAmount;
        this.rupeeSymbol = rupeeSymbol;
        this.tvDate = tvDate;
        this.tvDateEdit = tvDateEdit;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentCashInBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentCashInBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3621R.layout.fragment_cash_in, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentCashInBinding bind(View rootView) {
        View viewFindChildViewById;
        View viewFindChildViewById2;
        int i = C3621R.id.btn_delete;
        TextViewBoldError14 textViewBoldError14 = (TextViewBoldError14) ViewBindings.findChildViewById(rootView, i);
        if (textViewBoldError14 != null) {
            i = C3621R.id.btn_save;
            PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
            if (primaryButton != null) {
                i = C3621R.id.cl_attendance;
                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3621R.id.divider_1))) != null && (viewFindChildViewById2 = ViewBindings.findChildViewById(rootView, (i = C3621R.id.divider_2))) != null) {
                    i = C3621R.id.et_amount;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(rootView, i);
                    if (textInputEditText != null) {
                        i = C3621R.id.et_description;
                        EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                        if (editText != null) {
                            i = C3621R.id.iv_close;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                            if (imageView != null) {
                                i = C3621R.id.ll_payment_method;
                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                if (linearLayout != null) {
                                    i = C3621R.id.f3429pb;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                    if (progressBar != null) {
                                        i = C3621R.id.rb_cash;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                        if (textView != null) {
                                            i = C3621R.id.rb_online;
                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                            if (textView2 != null) {
                                                i = C3621R.id.rl_amount;
                                                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                                                if (constraintLayout2 != null) {
                                                    i = C3621R.id.rupee_symbol;
                                                    TextViewBoldPrimaryColor48 textViewBoldPrimaryColor48 = (TextViewBoldPrimaryColor48) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewBoldPrimaryColor48 != null) {
                                                        i = C3621R.id.tv_date;
                                                        TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewBold14 != null) {
                                                            i = C3621R.id.tv_date_edit;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                            if (textView3 != null) {
                                                                i = C3621R.id.tv_title;
                                                                TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewBold20 != null) {
                                                                    return new FragmentCashInBinding((ConstraintLayout) rootView, textViewBoldError14, primaryButton, constraintLayout, viewFindChildViewById, viewFindChildViewById2, textInputEditText, editText, imageView, linearLayout, progressBar, textView, textView2, constraintLayout2, textViewBoldPrimaryColor48, textViewBold14, textView3, textViewBold20);
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
