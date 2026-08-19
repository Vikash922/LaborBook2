package com.laborbook.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text10.TextViewRegular10;
import com.boilerplate.uikit.views.textviews.text14.TextViewError14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.laborbook.auth.C3554R;
import com.mukeshsolanki.OtpView;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentOtpBinding implements ViewBinding {
    public final PrimaryButton btnVerifyOtp;
    public final TextViewRegular14 ivResendOtp;
    public final OtpView otpView;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3413pb;
    private final ConstraintLayout rootView;
    public final ToolbarBinding toolbar;
    public final TextViewError14 tvOtpError;
    public final TextViewRegular14 tvOtpSentToNumber;
    public final TextViewRegular10 tvTermsAndConditions;
    public final TextViewBold20 tvVerifyOtp;

    private FragmentOtpBinding(ConstraintLayout constraintLayout, PrimaryButton primaryButton, TextViewRegular14 textViewRegular14, OtpView otpView, ProgressBar progressBar, ToolbarBinding toolbarBinding, TextViewError14 textViewError14, TextViewRegular14 textViewRegular142, TextViewRegular10 textViewRegular10, TextViewBold20 textViewBold20) {
        this.rootView = constraintLayout;
        this.btnVerifyOtp = primaryButton;
        this.ivResendOtp = textViewRegular14;
        this.otpView = otpView;
        this.f3413pb = progressBar;
        this.toolbar = toolbarBinding;
        this.tvOtpError = textViewError14;
        this.tvOtpSentToNumber = textViewRegular142;
        this.tvTermsAndConditions = textViewRegular10;
        this.tvVerifyOtp = textViewBold20;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentOtpBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentOtpBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3554R.layout.fragment_otp, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentOtpBinding bind(View view) {
        View viewFindChildViewById;
        int i = C3554R.id.btn_verify_otp;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(view, i);
        if (primaryButton != null) {
            i = C3554R.id.iv_resend_otp;
            TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(view, i);
            if (textViewRegular14 != null) {
                i = C3554R.id.otp_view;
                OtpView otpView = (OtpView) ViewBindings.findChildViewById(view, i);
                if (otpView != null) {
                    i = C3554R.id.f3411pb;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                    if (progressBar != null && (viewFindChildViewById = ViewBindings.findChildViewById(view, (i = C3554R.id.toolbar))) != null) {
                        ToolbarBinding toolbarBindingBind = ToolbarBinding.bind(viewFindChildViewById);
                        i = C3554R.id.tv_otp_error;
                        TextViewError14 textViewError14 = (TextViewError14) ViewBindings.findChildViewById(view, i);
                        if (textViewError14 != null) {
                            i = C3554R.id.tv_otp_sent_to_number;
                            TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(view, i);
                            if (textViewRegular142 != null) {
                                i = C3554R.id.tv_terms_and_conditions;
                                TextViewRegular10 textViewRegular10 = (TextViewRegular10) ViewBindings.findChildViewById(view, i);
                                if (textViewRegular10 != null) {
                                    i = C3554R.id.tv_verify_otp;
                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(view, i);
                                    if (textViewBold20 != null) {
                                        return new FragmentOtpBinding((ConstraintLayout) view, primaryButton, textViewRegular14, otpView, progressBar, toolbarBindingBind, textViewError14, textViewRegular142, textViewRegular10, textViewBold20);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
