package com.laborbook.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.laborbook.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentAttendanceMarkBottomsheetBinding implements ViewBinding {
    public final RadioButton absent;
    public final PrimaryButton btnMarkAttendance;
    public final TextView btnRemoveAttendance;
    public final ConstraintLayout clAttendance;
    public final View divider1;
    public final RadioButton doublePresent;
    public final RadioButton halfPresent;
    public final ImageView ivClose;
    public final ImageView ivOtPill;
    public final LinearLayout llMeaning;
    public final RadioButton paidLeave;
    public final RadioButton present;
    public final RadioButton presentHalf;
    public final RadioGroup rgAttendance;
    private final ConstraintLayout rootView;
    public final TextViewBold14 tvDate;
    public final TextViewRegular12 tvMarkAttendance;
    public final TextViewBold20 tvStaffName;

    private FragmentAttendanceMarkBottomsheetBinding(ConstraintLayout rootView, RadioButton absent, PrimaryButton btnMarkAttendance, TextView btnRemoveAttendance, ConstraintLayout clAttendance, View divider1, RadioButton doublePresent, RadioButton halfPresent, ImageView ivClose, ImageView ivOtPill, LinearLayout llMeaning, RadioButton paidLeave, RadioButton present, RadioButton presentHalf, RadioGroup rgAttendance, TextViewBold14 tvDate, TextViewRegular12 tvMarkAttendance, TextViewBold20 tvStaffName) {
        this.rootView = rootView;
        this.absent = absent;
        this.btnMarkAttendance = btnMarkAttendance;
        this.btnRemoveAttendance = btnRemoveAttendance;
        this.clAttendance = clAttendance;
        this.divider1 = divider1;
        this.doublePresent = doublePresent;
        this.halfPresent = halfPresent;
        this.ivClose = ivClose;
        this.ivOtPill = ivOtPill;
        this.llMeaning = llMeaning;
        this.paidLeave = paidLeave;
        this.present = present;
        this.presentHalf = presentHalf;
        this.rgAttendance = rgAttendance;
        this.tvDate = tvDate;
        this.tvMarkAttendance = tvMarkAttendance;
        this.tvStaffName = tvStaffName;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAttendanceMarkBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentAttendanceMarkBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_attendance_mark_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentAttendanceMarkBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.absent;
        RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
        if (radioButton != null) {
            i = C3656R.id.btn_mark_attendance;
            PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
            if (primaryButton != null) {
                i = C3656R.id.btn_remove_attendance;
                TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView != null) {
                    i = C3656R.id.cl_attendance;
                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                    if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_1))) != null) {
                        i = C3656R.id.double_present;
                        RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                        if (radioButton2 != null) {
                            i = C3656R.id.half_present;
                            RadioButton radioButton3 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                            if (radioButton3 != null) {
                                i = C3656R.id.iv_close;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                if (imageView != null) {
                                    i = C3656R.id.iv_ot_pill;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                    if (imageView2 != null) {
                                        i = C3656R.id.ll_meaning;
                                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                        if (linearLayout != null) {
                                            i = C3656R.id.paid_leave;
                                            RadioButton radioButton4 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                            if (radioButton4 != null) {
                                                i = C3656R.id.present;
                                                RadioButton radioButton5 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                                if (radioButton5 != null) {
                                                    i = C3656R.id.present_half;
                                                    RadioButton radioButton6 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                                    if (radioButton6 != null) {
                                                        i = C3656R.id.rg_attendance;
                                                        RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                                                        if (radioGroup != null) {
                                                            i = C3656R.id.tv_date;
                                                            TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                                                            if (textViewBold14 != null) {
                                                                i = C3656R.id.tv_mark_attendance;
                                                                TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                if (textViewRegular12 != null) {
                                                                    i = C3656R.id.tv_staff_name;
                                                                    TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                                                                    if (textViewBold20 != null) {
                                                                        return new FragmentAttendanceMarkBottomsheetBinding((ConstraintLayout) rootView, radioButton, primaryButton, textView, constraintLayout, viewFindChildViewById, radioButton2, radioButton3, imageView, imageView2, linearLayout, radioButton4, radioButton5, radioButton6, radioGroup, textViewBold14, textViewRegular12, textViewBold20);
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
