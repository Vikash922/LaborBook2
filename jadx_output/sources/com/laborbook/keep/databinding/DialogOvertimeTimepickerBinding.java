package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.NumberPicker;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class DialogOvertimeTimepickerBinding implements ViewBinding {
    public final PrimaryButton btnPickerOk;
    public final ConstraintLayout clContainer;
    public final ImageView ivClosePicker;
    public final LinearLayout llNumbers;
    public final ConstraintLayout llPickerContainer;
    public final NumberPicker npHours;
    public final NumberPicker npMinutes;
    private final ConstraintLayout rootView;
    public final TextViewBold20 tvColon;
    public final TextViewBold20 tvHrsLabel;
    public final TextViewBold20 tvMinsLabel;
    public final TextViewBold18 tvPickerTitle;

    private DialogOvertimeTimepickerBinding(ConstraintLayout rootView, PrimaryButton btnPickerOk, ConstraintLayout clContainer, ImageView ivClosePicker, LinearLayout llNumbers, ConstraintLayout llPickerContainer, NumberPicker npHours, NumberPicker npMinutes, TextViewBold20 tvColon, TextViewBold20 tvHrsLabel, TextViewBold20 tvMinsLabel, TextViewBold18 tvPickerTitle) {
        this.rootView = rootView;
        this.btnPickerOk = btnPickerOk;
        this.clContainer = clContainer;
        this.ivClosePicker = ivClosePicker;
        this.llNumbers = llNumbers;
        this.llPickerContainer = llPickerContainer;
        this.npHours = npHours;
        this.npMinutes = npMinutes;
        this.tvColon = tvColon;
        this.tvHrsLabel = tvHrsLabel;
        this.tvMinsLabel = tvMinsLabel;
        this.tvPickerTitle = tvPickerTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static DialogOvertimeTimepickerBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static DialogOvertimeTimepickerBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.dialog_overtime_timepicker, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static DialogOvertimeTimepickerBinding bind(View rootView) {
        int i = C3656R.id.btn_picker_ok;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_container;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null) {
                i = C3656R.id.iv_close_picker;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3656R.id.ll_numbers;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                    if (linearLayout != null) {
                        i = C3656R.id.ll_picker_container;
                        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                        if (constraintLayout2 != null) {
                            i = C3656R.id.np_hours;
                            NumberPicker numberPicker = (NumberPicker) ViewBindings.findChildViewById(rootView, i);
                            if (numberPicker != null) {
                                i = C3656R.id.np_minutes;
                                NumberPicker numberPicker2 = (NumberPicker) ViewBindings.findChildViewById(rootView, i);
                                if (numberPicker2 != null) {
                                    i = C3656R.id.tv_colon;
                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                    if (textViewBold20 != null) {
                                        i = C3656R.id.tv_hrs_label;
                                        TextViewBold20 textViewBold202 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewBold202 != null) {
                                            i = C3656R.id.tv_mins_label;
                                            TextViewBold20 textViewBold203 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewBold203 != null) {
                                                i = C3656R.id.tv_picker_title;
                                                TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewBold18 != null) {
                                                    return new DialogOvertimeTimepickerBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, imageView, linearLayout, constraintLayout2, numberPicker, numberPicker2, textViewBold20, textViewBold202, textViewBold203, textViewBold18);
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
