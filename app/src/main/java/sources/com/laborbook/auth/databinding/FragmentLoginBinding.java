package com.laborbook.auth.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text10.TextViewRegular10;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.laborbook.auth.C3554R;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentLoginBinding implements ViewBinding {
    public final MaterialButton btnLogin;
    public final ImageView btnTcLogin;
    public final MaterialCardView cvLogin;
    public final TextInputEditText etNumber;
    public final FrameLayout flCollage;
    public final ImageView ivLanguageSwitch;
    public final ImageView ivVisual;
    public final LinearLayout llCollage;
    public final LinearLayout llHeader;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3412pb;
    private final ConstraintLayout rootView;
    public final NestedScrollView svCol1;
    public final NestedScrollView svCol2;
    public final NestedScrollView svCol3;
    public final TextInputLayout tilPhoneNumber;
    public final TextView tvDailyAttendance;
    public final TextViewBold20 tvEnterMobileNumber;
    public final TextView tvMadeInIndia;
    public final TextViewRegular14 tvOrWith;
    public final TextView tvSecure;
    public final TextViewRegular10 tvTermsAndConditions;
    public final ImageView tvTitle;

    private FragmentLoginBinding(ConstraintLayout constraintLayout, MaterialButton materialButton, ImageView imageView, MaterialCardView materialCardView, TextInputEditText textInputEditText, FrameLayout frameLayout, ImageView imageView2, ImageView imageView3, LinearLayout linearLayout, LinearLayout linearLayout2, ProgressBar progressBar, NestedScrollView nestedScrollView, NestedScrollView nestedScrollView2, NestedScrollView nestedScrollView3, TextInputLayout textInputLayout, TextView textView, TextViewBold20 textViewBold20, TextView textView2, TextViewRegular14 textViewRegular14, TextView textView3, TextViewRegular10 textViewRegular10, ImageView imageView4) {
        this.rootView = constraintLayout;
        this.btnLogin = materialButton;
        this.btnTcLogin = imageView;
        this.cvLogin = materialCardView;
        this.etNumber = textInputEditText;
        this.flCollage = frameLayout;
        this.ivLanguageSwitch = imageView2;
        this.ivVisual = imageView3;
        this.llCollage = linearLayout;
        this.llHeader = linearLayout2;
        this.f3412pb = progressBar;
        this.svCol1 = nestedScrollView;
        this.svCol2 = nestedScrollView2;
        this.svCol3 = nestedScrollView3;
        this.tilPhoneNumber = textInputLayout;
        this.tvDailyAttendance = textView;
        this.tvEnterMobileNumber = textViewBold20;
        this.tvMadeInIndia = textView2;
        this.tvOrWith = textViewRegular14;
        this.tvSecure = textView3;
        this.tvTermsAndConditions = textViewRegular10;
        this.tvTitle = imageView4;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentLoginBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static FragmentLoginBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3554R.layout.fragment_login, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentLoginBinding bind(View view) {
        int i = C3554R.id.btn_login;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, i);
        if (materialButton != null) {
            i = C3554R.id.btn_tc_login;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i);
            if (imageView != null) {
                i = C3554R.id.cv_login;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, i);
                if (materialCardView != null) {
                    i = C3554R.id.et_number;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, i);
                    if (textInputEditText != null) {
                        i = C3554R.id.fl_collage;
                        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i);
                        if (frameLayout != null) {
                            i = C3554R.id.iv_language_switch;
                            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, i);
                            if (imageView2 != null) {
                                i = C3554R.id.iv_visual;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, i);
                                if (imageView3 != null) {
                                    i = C3554R.id.ll_collage;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                    if (linearLayout != null) {
                                        i = C3554R.id.ll_header;
                                        LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i);
                                        if (linearLayout2 != null) {
                                            i = C3554R.id.f3411pb;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i);
                                            if (progressBar != null) {
                                                i = C3554R.id.sv_col1;
                                                NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                if (nestedScrollView != null) {
                                                    i = C3554R.id.sv_col2;
                                                    NestedScrollView nestedScrollView2 = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                    if (nestedScrollView2 != null) {
                                                        i = C3554R.id.sv_col3;
                                                        NestedScrollView nestedScrollView3 = (NestedScrollView) ViewBindings.findChildViewById(view, i);
                                                        if (nestedScrollView3 != null) {
                                                            i = C3554R.id.til_phone_number;
                                                            TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, i);
                                                            if (textInputLayout != null) {
                                                                i = C3554R.id.tv_daily_attendance;
                                                                TextView textView = (TextView) ViewBindings.findChildViewById(view, i);
                                                                if (textView != null) {
                                                                    i = C3554R.id.tv_enter_mobile_number;
                                                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(view, i);
                                                                    if (textViewBold20 != null) {
                                                                        i = C3554R.id.tv_made_in_india;
                                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                        if (textView2 != null) {
                                                                            i = C3554R.id.tv_or_with;
                                                                            TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(view, i);
                                                                            if (textViewRegular14 != null) {
                                                                                i = C3554R.id.tv_secure;
                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i);
                                                                                if (textView3 != null) {
                                                                                    i = C3554R.id.tv_terms_and_conditions;
                                                                                    TextViewRegular10 textViewRegular10 = (TextViewRegular10) ViewBindings.findChildViewById(view, i);
                                                                                    if (textViewRegular10 != null) {
                                                                                        i = C3554R.id.tv_title;
                                                                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, i);
                                                                                        if (imageView4 != null) {
                                                                                            return new FragmentLoginBinding((ConstraintLayout) view, materialButton, imageView, materialCardView, textInputEditText, frameLayout, imageView2, imageView3, linearLayout, linearLayout2, progressBar, nestedScrollView, nestedScrollView2, nestedScrollView3, textInputLayout, textView, textViewBold20, textView2, textViewRegular14, textView3, textViewRegular10, imageView4);
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
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
    }
}
