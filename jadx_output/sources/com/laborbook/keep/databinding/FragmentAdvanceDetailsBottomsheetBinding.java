package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewBold12;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.boilerplate.uikit.views.textviews.text16.TextViewBoldError16;
import com.boilerplate.uikit.views.textviews.text16.TextViewRegular16;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentAdvanceDetailsBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnOk;
    public final ConstraintLayout clContainer;
    public final ImageView ivClose;
    public final ImageView ivOtTag;
    private final ConstraintLayout rootView;
    public final TextViewBoldError16 tvAdvanceAmount;
    public final TextViewRegular16 tvAdvanceLabel;
    public final ImageView tvAttendance;
    public final TextViewRegular16 tvAttendanceLabel;
    public final TextViewBold12 tvEdit;
    public final TextViewBold20 tvHeaderDate;
    public final TextViewBold16 tvNotes;
    public final TextViewRegular16 tvNotesLabel;
    public final TextViewRegular16 tvOtLabel;
    public final TextViewBold16 tvOtValue;
    public final TextViewRegular16 tvPaymentMethodLabel;
    public final TextViewBold16 tvPaymentMethodValue;

    private FragmentAdvanceDetailsBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnOk, ConstraintLayout clContainer, ImageView ivClose, ImageView ivOtTag, TextViewBoldError16 tvAdvanceAmount, TextViewRegular16 tvAdvanceLabel, ImageView tvAttendance, TextViewRegular16 tvAttendanceLabel, TextViewBold12 tvEdit, TextViewBold20 tvHeaderDate, TextViewBold16 tvNotes, TextViewRegular16 tvNotesLabel, TextViewRegular16 tvOtLabel, TextViewBold16 tvOtValue, TextViewRegular16 tvPaymentMethodLabel, TextViewBold16 tvPaymentMethodValue) {
        this.rootView = rootView;
        this.btnOk = btnOk;
        this.clContainer = clContainer;
        this.ivClose = ivClose;
        this.ivOtTag = ivOtTag;
        this.tvAdvanceAmount = tvAdvanceAmount;
        this.tvAdvanceLabel = tvAdvanceLabel;
        this.tvAttendance = tvAttendance;
        this.tvAttendanceLabel = tvAttendanceLabel;
        this.tvEdit = tvEdit;
        this.tvHeaderDate = tvHeaderDate;
        this.tvNotes = tvNotes;
        this.tvNotesLabel = tvNotesLabel;
        this.tvOtLabel = tvOtLabel;
        this.tvOtValue = tvOtValue;
        this.tvPaymentMethodLabel = tvPaymentMethodLabel;
        this.tvPaymentMethodValue = tvPaymentMethodValue;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAdvanceDetailsBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentAdvanceDetailsBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_advance_details_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentAdvanceDetailsBottomsheetBinding bind(View rootView) {
        int i = C3656R.id.btn_ok;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null) {
                i = C3656R.id.iv_close;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3656R.id.iv_ot_tag;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView2 != null) {
                        i = C3656R.id.tv_advance_amount;
                        TextViewBoldError16 textViewBoldError16 = (TextViewBoldError16) ViewBindings.findChildViewById(rootView, i);
                        if (textViewBoldError16 != null) {
                            i = C3656R.id.tv_advance_label;
                            TextViewRegular16 textViewRegular16 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                            if (textViewRegular16 != null) {
                                i = C3656R.id.tv_attendance;
                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                if (imageView3 != null) {
                                    i = C3656R.id.tv_attendance_label;
                                    TextViewRegular16 textViewRegular162 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewRegular162 != null) {
                                        i = C3656R.id.tv_edit;
                                        TextViewBold12 textViewBold12 = (TextViewBold12) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewBold12 != null) {
                                            i = C3656R.id.tv_header_date;
                                            TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewBold20 != null) {
                                                i = C3656R.id.tv_notes;
                                                TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewBold16 != null) {
                                                    i = C3656R.id.tv_notes_label;
                                                    TextViewRegular16 textViewRegular163 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewRegular163 != null) {
                                                        i = C3656R.id.tv_ot_label;
                                                        TextViewRegular16 textViewRegular164 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewRegular164 != null) {
                                                            i = C3656R.id.tv_ot_value;
                                                            TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold162 != null) {
                                                                i = C3656R.id.tv_payment_method_label;
                                                                TextViewRegular16 textViewRegular165 = (TextViewRegular16) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewRegular165 != null) {
                                                                    i = C3656R.id.tv_payment_method_value;
                                                                    TextViewBold16 textViewBold163 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textViewBold163 != null) {
                                                                        return new FragmentAdvanceDetailsBottomsheetBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, imageView, imageView2, textViewBoldError16, textViewRegular16, imageView3, textViewRegular162, textViewBold12, textViewBold20, textViewBold16, textViewRegular163, textViewRegular164, textViewBold162, textViewRegular165, textViewBold163);
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
