package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.PrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegularPrimaryColor14;
import com.boilerplate.uikit.views.textviews.text16.TextViewBold16;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class FragmentAddStaffContactsBinding implements ViewBinding {
    public final PrimaryButton btnAddStaff;
    public final ConstraintLayout clAddStaff;
    public final TextViewBold16 etNoResultFound;
    public final EditText etSearchContacts;
    public final EditText etStaffMobileNumber;
    public final EditText etStaffName;
    public final ImageView ivAddStaff;
    public final ImageView ivBack;
    public final ImageView ivChevron;
    public final ImageView ivRefreshContacts;
    public final LinearLayout llAddStaff;
    public final LinearLayout llAddStaffToolTip;
    public final LinearLayout llContacts;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3450pb;
    private final ConstraintLayout rootView;
    public final RecyclerView rvContacts;
    public final ConstraintLayout toolbar;
    public final TextViewRegularPrimaryColor14 tvAddStaffManually;
    public final TextViewRegular12 tvStaffs;
    public final TextViewBold16 tvToolbarText;

    private FragmentAddStaffContactsBinding(ConstraintLayout rootView, PrimaryButton btnAddStaff, ConstraintLayout clAddStaff, TextViewBold16 etNoResultFound, EditText etSearchContacts, EditText etStaffMobileNumber, EditText etStaffName, ImageView ivAddStaff, ImageView ivBack, ImageView ivChevron, ImageView ivRefreshContacts, LinearLayout llAddStaff, LinearLayout llAddStaffToolTip, LinearLayout llContacts, ProgressBar pb, RecyclerView rvContacts, ConstraintLayout toolbar, TextViewRegularPrimaryColor14 tvAddStaffManually, TextViewRegular12 tvStaffs, TextViewBold16 tvToolbarText) {
        this.rootView = rootView;
        this.btnAddStaff = btnAddStaff;
        this.clAddStaff = clAddStaff;
        this.etNoResultFound = etNoResultFound;
        this.etSearchContacts = etSearchContacts;
        this.etStaffMobileNumber = etStaffMobileNumber;
        this.etStaffName = etStaffName;
        this.ivAddStaff = ivAddStaff;
        this.ivBack = ivBack;
        this.ivChevron = ivChevron;
        this.ivRefreshContacts = ivRefreshContacts;
        this.llAddStaff = llAddStaff;
        this.llAddStaffToolTip = llAddStaffToolTip;
        this.llContacts = llContacts;
        this.f3450pb = pb;
        this.rvContacts = rvContacts;
        this.toolbar = toolbar;
        this.tvAddStaffManually = tvAddStaffManually;
        this.tvStaffs = tvStaffs;
        this.tvToolbarText = tvToolbarText;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentAddStaffContactsBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentAddStaffContactsBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_add_staff_contacts, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentAddStaffContactsBinding bind(View rootView) {
        int i = C3656R.id.btn_add_staff;
        PrimaryButton primaryButton = (PrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (primaryButton != null) {
            i = C3656R.id.cl_add_staff;
            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
            if (constraintLayout != null) {
                i = C3656R.id.et_no_result_found;
                TextViewBold16 textViewBold16 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                if (textViewBold16 != null) {
                    i = C3656R.id.et_search_contacts;
                    EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
                    if (editText != null) {
                        i = C3656R.id.et_staff_mobile_number;
                        EditText editText2 = (EditText) ViewBindings.findChildViewById(rootView, i);
                        if (editText2 != null) {
                            i = C3656R.id.et_staff_name;
                            EditText editText3 = (EditText) ViewBindings.findChildViewById(rootView, i);
                            if (editText3 != null) {
                                i = C3656R.id.iv_add_staff;
                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                if (imageView != null) {
                                    i = C3656R.id.iv_back;
                                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                    if (imageView2 != null) {
                                        i = C3656R.id.iv_chevron;
                                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                        if (imageView3 != null) {
                                            i = C3656R.id.iv_refresh_contacts;
                                            ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                            if (imageView4 != null) {
                                                i = C3656R.id.ll_add_staff;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                if (linearLayout != null) {
                                                    i = C3656R.id.ll_add_staff_tool_tip;
                                                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                    if (linearLayout2 != null) {
                                                        i = C3656R.id.ll_contacts;
                                                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                                        if (linearLayout3 != null) {
                                                            i = C3656R.id.f3440pb;
                                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                                            if (progressBar != null) {
                                                                i = C3656R.id.rv_contacts;
                                                                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                                                if (recyclerView != null) {
                                                                    i = C3656R.id.toolbar;
                                                                    ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(rootView, i);
                                                                    if (constraintLayout2 != null) {
                                                                        i = C3656R.id.tv_add_staff_manually;
                                                                        TextViewRegularPrimaryColor14 textViewRegularPrimaryColor14 = (TextViewRegularPrimaryColor14) ViewBindings.findChildViewById(rootView, i);
                                                                        if (textViewRegularPrimaryColor14 != null) {
                                                                            i = C3656R.id.tv_staffs;
                                                                            TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                                                            if (textViewRegular12 != null) {
                                                                                i = C3656R.id.tv_toolbar_text;
                                                                                TextViewBold16 textViewBold162 = (TextViewBold16) ViewBindings.findChildViewById(rootView, i);
                                                                                if (textViewBold162 != null) {
                                                                                    return new FragmentAddStaffContactsBinding((ConstraintLayout) rootView, primaryButton, constraintLayout, textViewBold16, editText, editText2, editText3, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, linearLayout3, progressBar, recyclerView, constraintLayout2, textViewRegularPrimaryColor14, textViewRegular12, textViewBold162);
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
