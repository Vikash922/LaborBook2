package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewHintRegular12;
import com.boilerplate.uikit.views.textviews.text18.TextViewBold18;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentEditProfileBottomsheetBinding implements ViewBinding {
    public final PrimaryButton btnSave;
    public final ConstraintLayout clEditProfile;
    public final View dividerButton;
    public final EditText etSalaryAmount;
    public final EditText etStaffName;
    public final ImageView ivClose;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3453pb;
    public final RadioButton rbDaily;
    public final RadioButton rbMonthly;
    public final RadioGroup rgSalaryType;
    private final ConstraintLayout rootView;
    public final TextViewHintRegular12 tvSalaryAmountLabel;
    public final TextViewHintRegular12 tvSalaryTypeLabel;
    public final TextViewHintRegular12 tvStaffNameLabel;
    public final TextViewBold18 tvTitle;

    private FragmentEditProfileBottomsheetBinding(ConstraintLayout rootView, PrimaryButton btnSave, ConstraintLayout clEditProfile, View dividerButton, EditText etSalaryAmount, EditText etStaffName, ImageView ivClose, ProgressBar pb, RadioButton rbDaily, RadioButton rbMonthly, RadioGroup rgSalaryType, TextViewHintRegular12 tvSalaryAmountLabel, TextViewHintRegular12 tvSalaryTypeLabel, TextViewHintRegular12 tvStaffNameLabel, TextViewBold18 tvTitle) {
        this.rootView = rootView;
        this.btnSave = btnSave;
        this.clEditProfile = clEditProfile;
        this.dividerButton = dividerButton;
        this.etSalaryAmount = etSalaryAmount;
        this.etStaffName = etStaffName;
        this.ivClose = ivClose;
        this.f3453pb = pb;
        this.rbDaily = rbDaily;
        this.rbMonthly = rbMonthly;
        this.rgSalaryType = rgSalaryType;
        this.tvSalaryAmountLabel = tvSalaryAmountLabel;
        this.tvSalaryTypeLabel = tvSalaryTypeLabel;
        this.tvStaffNameLabel = tvStaffNameLabel;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentEditProfileBottomsheetBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentEditProfileBottomsheetBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_edit_profile_bottomsheet, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentEditProfileBottomsheetBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.btn_save;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_edit_profile;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider_button))) != null) {
                i = C3656R.id.et_salary_amount;
                EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                if (editText != null) {
                    i = C3656R.id.et_staff_name;
                    EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, i);
                    if (editText2 != null) {
                        i = C3656R.id.iv_close;
                        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView != null) {
                            i = C3656R.id.f3440pb;
                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                            if (progressBar != null) {
                                i = C3656R.id.rb_daily;
                                RadioButton radioButton = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                if (radioButton != null) {
                                    i = C3656R.id.rb_monthly;
                                    RadioButton radioButton2 = (RadioButton) ViewBindings.findChildViewById(rootView, i);
                                    if (radioButton2 != null) {
                                        i = C3656R.id.rg_salary_type;
                                        RadioGroup radioGroup = (RadioGroup) ViewBindings.findChildViewById(rootView, i);
                                        if (radioGroup != null) {
                                            i = C3656R.id.tv_salary_amount_label;
                                            TextViewHintRegular12 textViewHintRegular12 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewHintRegular12 != null) {
                                                i = C3656R.id.tv_salary_type_label;
                                                TextViewHintRegular12 textViewHintRegular122 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                if (textViewHintRegular122 != null) {
                                                    i = C3656R.id.tv_staff_name_label;
                                                    TextViewHintRegular12 textViewHintRegular123 = (TextViewHintRegular12) ViewBindings.findChildViewById(rootView, i);
                                                    if (textViewHintRegular123 != null) {
                                                        i = C3656R.id.tv_title;
                                                        TextViewBold18 textViewBold18 = (TextViewBold18) ViewBindings.findChildViewById(rootView, i);
                                                        if (textViewBold18 != null) {
                                                            return new FragmentEditProfileBottomsheetBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, viewFindChildViewById, editText, editText2, imageView, progressBar, radioButton, radioButton2, radioGroup, textViewHintRegular12, textViewHintRegular122, textViewHintRegular123, textViewBold18);
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
