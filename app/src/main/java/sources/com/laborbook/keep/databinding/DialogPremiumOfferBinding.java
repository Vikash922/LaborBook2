package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RatingBar;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.RoundedPrimaryButton;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogPremiumOfferBinding implements ViewBinding {
    public final RoundedPrimaryButton btnStartTrial;
    public final ConstraintLayout clBottomSection;
    public final ConstraintLayout clLoadingOverlay;
    public final ConstraintLayout clUpiSelector;
    public final ConstraintLayout clVerificationOverlay;
    public final ImageView ivClose;
    public final ImageView ivDownloadsReviews;
    public final ImageView ivLanguageSwitch;
    public final ImageView ivSelectedUpiIcon;
    public final LinearLayout llBenefitsCard;
    public final LinearLayout llFeatures;
    public final LinearLayout llHowTrialWorks;
    public final LinearLayout llNoTrialSection;
    public final LinearLayout llOfferTimer;
    public final LinearLayout llPlans;
    public final LinearLayout llPriceDisplay;
    public final LinearLayout llSelectedUpi;
    public final LinearLayout llSocialProofStats;
    public final LinearLayout llTestimonialCard;
    public final LinearLayout llTrialHeadline;
    public final LinearLayout llTrialPlans;
    public final WebView paymentWebview;
    public final ProgressBar pbButtonLoading;
    public final ProgressBar pbLoading;
    public final ProgressBar pbVerification;
    public final RatingBar rbTestimonial;
    private final ConstraintLayout rootView;
    public final RecyclerView rvReviews;
    public final ScrollView scrollContent;
    public final TextView tvFaqs;
    public final TextView tvFreePill;
    public final TextView tvFreeTrialLabel;
    public final TextView tvHappyCustomers;
    public final TextView tvHowTrialHeader;
    public final TextView tvOfferLabel;
    public final TextView tvOfferTimer;
    public final TextView tvOriginalPrice;
    public final TextView tvPerInterval;
    public final TextView tvProStep1Subtitle;
    public final TextView tvProStep1Title;
    public final TextView tvSelectUpiLabel;
    public final TextView tvSelectedPrice;
    public final TextView tvSelectedUpi;
    public final TextView tvSocialProof;
    public final TextView tvStep1Subtitle;
    public final TextView tvStep1Title;
    public final TextView tvStep2Subtitle;
    public final TextView tvStep2Title;
    public final TextView tvStep3Subtitle;
    public final TextView tvStep3Title;
    public final TextView tvTestimonialAuthor;
    public final TextView tvTestimonialText;
    public final TextView tvTrialDays;
    public final TextView tvTrialLabel;
    public final TextView tvTrialRefundNote;
    public final TextView tvVerificationMessage;
    public final VideoView videoSubscriptionExplainer;

    private DialogPremiumOfferBinding(ConstraintLayout rootView, RoundedPrimaryButton btnStartTrial, ConstraintLayout clBottomSection, ConstraintLayout clLoadingOverlay, ConstraintLayout clUpiSelector, ConstraintLayout clVerificationOverlay, ImageView ivClose, ImageView ivDownloadsReviews, ImageView ivLanguageSwitch, ImageView ivSelectedUpiIcon, LinearLayout llBenefitsCard, LinearLayout llFeatures, LinearLayout llHowTrialWorks, LinearLayout llNoTrialSection, LinearLayout llOfferTimer, LinearLayout llPlans, LinearLayout llPriceDisplay, LinearLayout llSelectedUpi, LinearLayout llSocialProofStats, LinearLayout llTestimonialCard, LinearLayout llTrialHeadline, LinearLayout llTrialPlans, WebView paymentWebview, ProgressBar pbButtonLoading, ProgressBar pbLoading, ProgressBar pbVerification, RatingBar rbTestimonial, RecyclerView rvReviews, ScrollView scrollContent, TextView tvFaqs, TextView tvFreePill, TextView tvFreeTrialLabel, TextView tvHappyCustomers, TextView tvHowTrialHeader, TextView tvOfferLabel, TextView tvOfferTimer, TextView tvOriginalPrice, TextView tvPerInterval, TextView tvProStep1Subtitle, TextView tvProStep1Title, TextView tvSelectUpiLabel, TextView tvSelectedPrice, TextView tvSelectedUpi, TextView tvSocialProof, TextView tvStep1Subtitle, TextView tvStep1Title, TextView tvStep2Subtitle, TextView tvStep2Title, TextView tvStep3Subtitle, TextView tvStep3Title, TextView tvTestimonialAuthor, TextView tvTestimonialText, TextView tvTrialDays, TextView tvTrialLabel, TextView tvTrialRefundNote, TextView tvVerificationMessage, VideoView videoSubscriptionExplainer) {
        this.rootView = rootView;
        this.btnStartTrial = btnStartTrial;
        this.clBottomSection = clBottomSection;
        this.clLoadingOverlay = clLoadingOverlay;
        this.clUpiSelector = clUpiSelector;
        this.clVerificationOverlay = clVerificationOverlay;
        this.ivClose = ivClose;
        this.ivDownloadsReviews = ivDownloadsReviews;
        this.ivLanguageSwitch = ivLanguageSwitch;
        this.ivSelectedUpiIcon = ivSelectedUpiIcon;
        this.llBenefitsCard = llBenefitsCard;
        this.llFeatures = llFeatures;
        this.llHowTrialWorks = llHowTrialWorks;
        this.llNoTrialSection = llNoTrialSection;
        this.llOfferTimer = llOfferTimer;
        this.llPlans = llPlans;
        this.llPriceDisplay = llPriceDisplay;
        this.llSelectedUpi = llSelectedUpi;
        this.llSocialProofStats = llSocialProofStats;
        this.llTestimonialCard = llTestimonialCard;
        this.llTrialHeadline = llTrialHeadline;
        this.llTrialPlans = llTrialPlans;
        this.paymentWebview = paymentWebview;
        this.pbButtonLoading = pbButtonLoading;
        this.pbLoading = pbLoading;
        this.pbVerification = pbVerification;
        this.rbTestimonial = rbTestimonial;
        this.rvReviews = rvReviews;
        this.scrollContent = scrollContent;
        this.tvFaqs = tvFaqs;
        this.tvFreePill = tvFreePill;
        this.tvFreeTrialLabel = tvFreeTrialLabel;
        this.tvHappyCustomers = tvHappyCustomers;
        this.tvHowTrialHeader = tvHowTrialHeader;
        this.tvOfferLabel = tvOfferLabel;
        this.tvOfferTimer = tvOfferTimer;
        this.tvOriginalPrice = tvOriginalPrice;
        this.tvPerInterval = tvPerInterval;
        this.tvProStep1Subtitle = tvProStep1Subtitle;
        this.tvProStep1Title = tvProStep1Title;
        this.tvSelectUpiLabel = tvSelectUpiLabel;
        this.tvSelectedPrice = tvSelectedPrice;
        this.tvSelectedUpi = tvSelectedUpi;
        this.tvSocialProof = tvSocialProof;
        this.tvStep1Subtitle = tvStep1Subtitle;
        this.tvStep1Title = tvStep1Title;
        this.tvStep2Subtitle = tvStep2Subtitle;
        this.tvStep2Title = tvStep2Title;
        this.tvStep3Subtitle = tvStep3Subtitle;
        this.tvStep3Title = tvStep3Title;
        this.tvTestimonialAuthor = tvTestimonialAuthor;
        this.tvTestimonialText = tvTestimonialText;
        this.tvTrialDays = tvTrialDays;
        this.tvTrialLabel = tvTrialLabel;
        this.tvTrialRefundNote = tvTrialRefundNote;
        this.tvVerificationMessage = tvVerificationMessage;
        this.videoSubscriptionExplainer = videoSubscriptionExplainer;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogPremiumOfferBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DialogPremiumOfferBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.dialog_premium_offer, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogPremiumOfferBinding bind(View rootView) {
        int i = C3656R.id.btn_start_trial;
        RoundedPrimaryButton roundedPrimaryButton = (RoundedPrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (roundedPrimaryButton != null) {
            i = C3656R.id.cl_bottom_section;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null) {
                i = C3656R.id.cl_loading_overlay;
                ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                if (constraintLayout2 != null) {
                    i = C3656R.id.cl_upi_selector;
                    ConstraintLayout constraintLayout3 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                    if (constraintLayout3 != null) {
                        i = C3656R.id.cl_verification_overlay;
                        ConstraintLayout constraintLayout4 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                        if (constraintLayout4 != null) {
                            i = C3656R.id.iv_close;
                            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                            if (imageView != null) {
                                i = C3656R.id.iv_downloads_reviews;
                                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                if (imageView2 != null) {
                                    i = C3656R.id.iv_language_switch;
                                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                    if (imageView3 != null) {
                                        i = C3656R.id.iv_selected_upi_icon;
                                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                        if (imageView4 != null) {
                                            i = C3656R.id.ll_benefits_card;
                                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                            if (linearLayout != null) {
                                                i = C3656R.id.ll_features;
                                                LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                if (linearLayout2 != null) {
                                                    i = C3656R.id.ll_how_trial_works;
                                                    LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                    if (linearLayout3 != null) {
                                                        i = C3656R.id.ll_no_trial_section;
                                                        LinearLayout linearLayout4 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                        if (linearLayout4 != null) {
                                                            i = C3656R.id.ll_offer_timer;
                                                            LinearLayout linearLayout5 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                            if (linearLayout5 != null) {
                                                                i = C3656R.id.ll_plans;
                                                                LinearLayout linearLayout6 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                if (linearLayout6 != null) {
                                                                    i = C3656R.id.ll_price_display;
                                                                    LinearLayout linearLayout7 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                    if (linearLayout7 != null) {
                                                                        i = C3656R.id.ll_selected_upi;
                                                                        LinearLayout linearLayout8 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                        if (linearLayout8 != null) {
                                                                            i = C3656R.id.ll_social_proof_stats;
                                                                            LinearLayout linearLayout9 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                            if (linearLayout9 != null) {
                                                                                i = C3656R.id.ll_testimonial_card;
                                                                                LinearLayout linearLayout10 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                                if (linearLayout10 != null) {
                                                                                    i = C3656R.id.ll_trial_headline;
                                                                                    LinearLayout linearLayout11 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                                    if (linearLayout11 != null) {
                                                                                        i = C3656R.id.ll_trial_plans;
                                                                                        LinearLayout linearLayout12 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                                                        if (linearLayout12 != null) {
                                                                                            i = C3656R.id.payment_webview;
                                                                                            WebView webView = (WebView) ViewBindings.findChildViewById(rootView, i);
                                                                                            if (webView != null) {
                                                                                                i = C3656R.id.pb_button_loading;
                                                                                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                                                                if (progressBar != null) {
                                                                                                    i = C3656R.id.pb_loading;
                                                                                                    ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                                                                    if (progressBar2 != null) {
                                                                                                        i = C3656R.id.pb_verification;
                                                                                                        ProgressBar progressBar3 = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                                                                        if (progressBar3 != null) {
                                                                                                            i = C3656R.id.rb_testimonial;
                                                                                                            RatingBar ratingBar = (RatingBar) ViewBindings.findChildViewById(rootView, i);
                                                                                                            if (ratingBar != null) {
                                                                                                                i = C3656R.id.rv_reviews;
                                                                                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                if (recyclerView != null) {
                                                                                                                    i = C3656R.id.scroll_content;
                                                                                                                    ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                    if (scrollView != null) {
                                                                                                                        i = C3656R.id.tv_faqs;
                                                                                                                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                        if (textView != null) {
                                                                                                                            i = C3656R.id.tv_free_pill;
                                                                                                                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                            if (textView2 != null) {
                                                                                                                                i = C3656R.id.tv_free_trial_label;
                                                                                                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                if (textView3 != null) {
                                                                                                                                    i = C3656R.id.tv_happy_customers;
                                                                                                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                    if (textView4 != null) {
                                                                                                                                        i = C3656R.id.tv_how_trial_header;
                                                                                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                        if (textView5 != null) {
                                                                                                                                            i = C3656R.id.tv_offer_label;
                                                                                                                                            TextView textView6 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                            if (textView6 != null) {
                                                                                                                                                i = C3656R.id.tv_offer_timer;
                                                                                                                                                TextView textView7 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                if (textView7 != null) {
                                                                                                                                                    i = C3656R.id.tv_original_price;
                                                                                                                                                    TextView textView8 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                    if (textView8 != null) {
                                                                                                                                                        i = C3656R.id.tv_per_interval;
                                                                                                                                                        TextView textView9 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                        if (textView9 != null) {
                                                                                                                                                            i = C3656R.id.tv_pro_step1_subtitle;
                                                                                                                                                            TextView textView10 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                            if (textView10 != null) {
                                                                                                                                                                i = C3656R.id.tv_pro_step1_title;
                                                                                                                                                                TextView textView11 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                if (textView11 != null) {
                                                                                                                                                                    i = C3656R.id.tv_select_upi_label;
                                                                                                                                                                    TextView textView12 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                    if (textView12 != null) {
                                                                                                                                                                        i = C3656R.id.tv_selected_price;
                                                                                                                                                                        TextView textView13 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                        if (textView13 != null) {
                                                                                                                                                                            i = C3656R.id.tv_selected_upi;
                                                                                                                                                                            TextView textView14 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                            if (textView14 != null) {
                                                                                                                                                                                i = C3656R.id.tv_social_proof;
                                                                                                                                                                                TextView textView15 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                if (textView15 != null) {
                                                                                                                                                                                    i = C3656R.id.tv_step1_subtitle;
                                                                                                                                                                                    TextView textView16 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                    if (textView16 != null) {
                                                                                                                                                                                        i = C3656R.id.tv_step1_title;
                                                                                                                                                                                        TextView textView17 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                        if (textView17 != null) {
                                                                                                                                                                                            i = C3656R.id.tv_step2_subtitle;
                                                                                                                                                                                            TextView textView18 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                            if (textView18 != null) {
                                                                                                                                                                                                i = C3656R.id.tv_step2_title;
                                                                                                                                                                                                TextView textView19 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                if (textView19 != null) {
                                                                                                                                                                                                    i = C3656R.id.tv_step3_subtitle;
                                                                                                                                                                                                    TextView textView20 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                    if (textView20 != null) {
                                                                                                                                                                                                        i = C3656R.id.tv_step3_title;
                                                                                                                                                                                                        TextView textView21 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                        if (textView21 != null) {
                                                                                                                                                                                                            i = C3656R.id.tv_testimonial_author;
                                                                                                                                                                                                            TextView textView22 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                            if (textView22 != null) {
                                                                                                                                                                                                                i = C3656R.id.tv_testimonial_text;
                                                                                                                                                                                                                TextView textView23 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                                if (textView23 != null) {
                                                                                                                                                                                                                    i = C3656R.id.tv_trial_days;
                                                                                                                                                                                                                    TextView textView24 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                                    if (textView24 != null) {
                                                                                                                                                                                                                        i = C3656R.id.tv_trial_label;
                                                                                                                                                                                                                        TextView textView25 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                                        if (textView25 != null) {
                                                                                                                                                                                                                            i = C3656R.id.tv_trial_refund_note;
                                                                                                                                                                                                                            TextView textView26 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                                            if (textView26 != null) {
                                                                                                                                                                                                                                i = C3656R.id.tv_verification_message;
                                                                                                                                                                                                                                TextView textView27 = (TextView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                                                if (textView27 != null) {
                                                                                                                                                                                                                                    i = C3656R.id.video_subscription_explainer;
                                                                                                                                                                                                                                    VideoView videoView = (VideoView) ViewBindings.findChildViewById(rootView, i);
                                                                                                                                                                                                                                    if (videoView != null) {
                                                                                                                                                                                                                                        return new DialogPremiumOfferBinding((ConstraintLayout) rootView, roundedPrimaryButton, constraintLayout, constraintLayout2, constraintLayout3, constraintLayout4, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, linearLayout12, webView, progressBar, progressBar2, progressBar3, ratingBar, recyclerView, scrollView, textView, textView2, textView3, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, textView15, textView16, textView17, textView18, textView19, textView20, textView21, textView22, textView23, textView24, textView25, textView26, textView27, videoView);
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
