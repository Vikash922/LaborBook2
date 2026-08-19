package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.ScrollView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text12.TextViewHintRegular12;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewBoldError14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentPremiumSettingsBinding implements ViewBinding {
    public final ConstraintLayout clFaq1;
    public final ConstraintLayout clFaq2;
    public final ConstraintLayout clFaq3;
    public final ConstraintLayout clFaq4;
    public final ConstraintLayout clPremiumDetails;
    public final ConstraintLayout clPremiumUserInfo;
    public final ImageView ivBack;
    public final ImageView ivExpand;
    public final ImageView ivFaq1Expand;
    public final ImageView ivFaq2Expand;
    public final ImageView ivFaq3Expand;
    public final ImageView ivFaq4Expand;
    public final ImageView ivProfile;
    public final LinearLayout llUserInfo;
    public final ProgressBar progressBar;
    private final ConstraintLayout rootView;
    public final ScrollView scrollContent;
    public final ConstraintLayout toolbar;
    public final TextViewBold12 tvAmountPaid;
    public final TextViewRegular12 tvAmountPaidLabel;
    public final TextViewBoldError14 tvCancel;
    public final TextViewHintRegular12 tvFaq;
    public final TextViewHintRegular12 tvFaq1Answer;
    public final TextViewRegular14 tvFaq1Question;
    public final TextViewHintRegular12 tvFaq2Answer;
    public final TextViewRegular14 tvFaq2Question;
    public final TextViewHintRegular12 tvFaq3Answer;
    public final TextViewRegular14 tvFaq3Question;
    public final TextViewHintRegular12 tvFaq4Answer;
    public final TextViewRegular14 tvFaq4Question;
    public final TextViewRegular12 tvMemberSince;
    public final TextViewBold12 tvNextBill;
    public final TextViewRegular12 tvNextBillLabel;
    public final TextViewHintRegular12 tvPremiumInfo;
    public final TextViewBold12 tvPurchaseDate;
    public final TextViewRegular12 tvPurchaseDateLabel;
    public final TextViewBold16 tvToolbarText;
    public final TextViewBold14 tvUserName;

    private FragmentPremiumSettingsBinding(ConstraintLayout rootView, ConstraintLayout clFaq1, ConstraintLayout clFaq2, ConstraintLayout clFaq3, ConstraintLayout clFaq4, ConstraintLayout clPremiumDetails, ConstraintLayout clPremiumUserInfo, ImageView ivBack, ImageView ivExpand, ImageView ivFaq1Expand, ImageView ivFaq2Expand, ImageView ivFaq3Expand, ImageView ivFaq4Expand, ImageView ivProfile, LinearLayout llUserInfo, ProgressBar progressBar, ScrollView scrollContent, ConstraintLayout toolbar, TextViewBold12 tvAmountPaid, TextViewRegular12 tvAmountPaidLabel, TextViewBoldError14 tvCancel, TextViewHintRegular12 tvFaq, TextViewHintRegular12 tvFaq1Answer, TextViewRegular14 tvFaq1Question, TextViewHintRegular12 tvFaq2Answer, TextViewRegular14 tvFaq2Question, TextViewHintRegular12 tvFaq3Answer, TextViewRegular14 tvFaq3Question, TextViewHintRegular12 tvFaq4Answer, TextViewRegular14 tvFaq4Question, TextViewRegular12 tvMemberSince, TextViewBold12 tvNextBill, TextViewRegular12 tvNextBillLabel, TextViewHintRegular12 tvPremiumInfo, TextViewBold12 tvPurchaseDate, TextViewRegular12 tvPurchaseDateLabel, TextViewBold16 tvToolbarText, TextViewBold14 tvUserName) {
        this.rootView = rootView;
        this.clFaq1 = clFaq1;
        this.clFaq2 = clFaq2;
        this.clFaq3 = clFaq3;
        this.clFaq4 = clFaq4;
        this.clPremiumDetails = clPremiumDetails;
        this.clPremiumUserInfo = clPremiumUserInfo;
        this.ivBack = ivBack;
        this.ivExpand = ivExpand;
        this.ivFaq1Expand = ivFaq1Expand;
        this.ivFaq2Expand = ivFaq2Expand;
        this.ivFaq3Expand = ivFaq3Expand;
        this.ivFaq4Expand = ivFaq4Expand;
        this.ivProfile = ivProfile;
        this.llUserInfo = llUserInfo;
        this.progressBar = progressBar;
        this.scrollContent = scrollContent;
        this.toolbar = toolbar;
        this.tvAmountPaid = tvAmountPaid;
        this.tvAmountPaidLabel = tvAmountPaidLabel;
        this.tvCancel = tvCancel;
        this.tvFaq = tvFaq;
        this.tvFaq1Answer = tvFaq1Answer;
        this.tvFaq1Question = tvFaq1Question;
        this.tvFaq2Answer = tvFaq2Answer;
        this.tvFaq2Question = tvFaq2Question;
        this.tvFaq3Answer = tvFaq3Answer;
        this.tvFaq3Question = tvFaq3Question;
        this.tvFaq4Answer = tvFaq4Answer;
        this.tvFaq4Question = tvFaq4Question;
        this.tvMemberSince = tvMemberSince;
        this.tvNextBill = tvNextBill;
        this.tvNextBillLabel = tvNextBillLabel;
        this.tvPremiumInfo = tvPremiumInfo;
        this.tvPurchaseDate = tvPurchaseDate;
        this.tvPurchaseDateLabel = tvPurchaseDateLabel;
        this.tvToolbarText = tvToolbarText;
        this.tvUserName = tvUserName;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentPremiumSettingsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentPremiumSettingsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_premium_settings, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentPremiumSettingsBinding bind(View rootView) {
        int i = C3656R.id.cl_faq_1;
        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
        if (constraintLayout != null) {
            i = C3656R.id.cl_faq_2;
            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout2 != null) {
                i = C3656R.id.cl_faq_3;
                ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout3 != null) {
                    i = C3656R.id.cl_faq_4;
                    ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                    if (constraintLayout4 != null) {
                        i = C3656R.id.cl_premium_details;
                        ConstraintLayout constraintLayout5 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                        if (constraintLayout5 != null) {
                            i = C3656R.id.cl_premium_user_info;
                            ConstraintLayout constraintLayout6 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                            if (constraintLayout6 != null) {
                                i = C3656R.id.iv_back;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                if (imageView != null) {
                                    i = C3656R.id.iv_expand;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                    if (imageView2 != null) {
                                        i = C3656R.id.iv_faq_1_expand;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                        if (imageView3 != null) {
                                            i = C3656R.id.iv_faq_2_expand;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                            if (imageView4 != null) {
                                                i = C3656R.id.iv_faq_3_expand;
                                                ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                                if (imageView5 != null) {
                                                    i = C3656R.id.iv_faq_4_expand;
                                                    ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                                    if (imageView6 != null) {
                                                        i = C3656R.id.iv_profile;
                                                        ImageView imageView7 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                                        if (imageView7 != null) {
                                                            i = C3656R.id.ll_user_info;
                                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                            if (linearLayout != null) {
                                                                i = C3656R.id.progress_bar;
                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                                if (progressBar != null) {
                                                                    i = C3656R.id.scroll_content;
                                                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, i);
                                                                    if (scrollView != null) {
                                                                        i = C3656R.id.toolbar;
                                                                        ConstraintLayout constraintLayout7 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                                                                        if (constraintLayout7 != null) {
                                                                            i = C3656R.id.tv_amount_paid;
                                                                            TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                                            if (textViewBold12 != null) {
                                                                                i = C3656R.id.tv_amount_paid_label;
                                                                                TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                if (textViewRegular12 != null) {
                                                                                    i = C3656R.id.tv_cancel;
                                                                                    TextViewBoldError14 textViewBoldError14 = (TextViewBoldError14) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (textViewBoldError14 != null) {
                                                                                        i = C3656R.id.tv_faq;
                                                                                        TextViewHintRegular12 textViewHintRegular12 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                        if (textViewHintRegular12 != null) {
                                                                                            i = C3656R.id.tv_faq_1_answer;
                                                                                            TextViewHintRegular12 textViewHintRegular122 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                            if (textViewHintRegular122 != null) {
                                                                                                i = C3656R.id.tv_faq_1_question;
                                                                                                TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                                                                                if (textViewRegular14 != null) {
                                                                                                    i = C3656R.id.tv_faq_2_answer;
                                                                                                    TextViewHintRegular12 textViewHintRegular123 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                    if (textViewHintRegular123 != null) {
                                                                                                        i = C3656R.id.tv_faq_2_question;
                                                                                                        TextViewRegular14 textViewRegular142 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                                                                                        if (textViewRegular142 != null) {
                                                                                                            i = C3656R.id.tv_faq_3_answer;
                                                                                                            TextViewHintRegular12 textViewHintRegular124 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                            if (textViewHintRegular124 != null) {
                                                                                                                i = C3656R.id.tv_faq_3_question;
                                                                                                                TextViewRegular14 textViewRegular143 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                                                                                                if (textViewRegular143 != null) {
                                                                                                                    i = C3656R.id.tv_faq_4_answer;
                                                                                                                    TextViewHintRegular12 textViewHintRegular125 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                    if (textViewHintRegular125 != null) {
                                                                                                                        i = C3656R.id.tv_faq_4_question;
                                                                                                                        TextViewRegular14 textViewRegular144 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                                                                                                                        if (textViewRegular144 != null) {
                                                                                                                            i = C3656R.id.tv_member_since;
                                                                                                                            TextViewRegular12 textViewRegular122 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                            if (textViewRegular122 != null) {
                                                                                                                                i = C3656R.id.tv_next_bill;
                                                                                                                                TextViewBold12 textViewBold122 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                if (textViewBold122 != null) {
                                                                                                                                    i = C3656R.id.tv_next_bill_label;
                                                                                                                                    TextViewRegular12 textViewRegular123 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                    if (textViewRegular123 != null) {
                                                                                                                                        i = C3656R.id.tv_premium_info;
                                                                                                                                        TextViewHintRegular12 textViewHintRegular126 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                        if (textViewHintRegular126 != null) {
                                                                                                                                            i = C3656R.id.tv_purchase_date;
                                                                                                                                            TextViewBold12 textViewBold123 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                            if (textViewBold123 != null) {
                                                                                                                                                i = C3656R.id.tv_purchase_date_label;
                                                                                                                                                TextViewRegular12 textViewRegular124 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                if (textViewRegular124 != null) {
                                                                                                                                                    i = C3656R.id.tv_toolbar_text;
                                                                                                                                                    TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                    if (textViewBold16 != null) {
                                                                                                                                                        i = C3656R.id.tv_user_name;
                                                                                                                                                        TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                        if (textViewBold14 != null) {
                                                                                                                                                            return new FragmentPremiumSettingsBinding((ConstraintLayout) rootView, constraintLayout, constraintLayout2, constraintLayout3, constraintLayout4, constraintLayout5, constraintLayout6, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, linearLayout, progressBar, scrollView, constraintLayout7, textViewBold12, textViewRegular12, textViewBoldError14, textViewHintRegular12, textViewHintRegular122, textViewRegular14, textViewHintRegular123, textViewRegular142, textViewHintRegular124, textViewRegular143, textViewHintRegular125, textViewRegular144, textViewRegular122, textViewBold122, textViewRegular123, textViewHintRegular126, textViewBold123, textViewRegular124, textViewBold16, textViewBold14);
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
