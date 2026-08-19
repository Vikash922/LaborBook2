package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.buttons.RoundedPrimaryButton;
import com.boilerplate.uikit.views.textviews.text12.TextViewHyperLinkBold12;
import com.boilerplate.uikit.views.textviews.text12.TextViewRegular12;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes.dex */
public final class FragmentStaffListBinding implements ViewBinding {
    public final RoundedPrimaryButton btnAddStaff;
    public final EditText etSearchStaffs;
    public final ImageView ivDownChevron;
    public final TextView ivProTag;
    public final ImageView llAddStaffToolTip;
    public final LinearLayout llLogoContainer;

    /* JADX INFO: renamed from: pb */
    public final ProgressBar f3458pb;
    private final ConstraintLayout rootView;
    public final RecyclerView rvStaffs;
    public final TextViewHyperLinkBold12 tvShare;
    public final TextViewRegular12 tvStaffs;
    public final ImageView tvTitle;

    private FragmentStaffListBinding(ConstraintLayout rootView, RoundedPrimaryButton btnAddStaff, EditText etSearchStaffs, ImageView ivDownChevron, TextView ivProTag, ImageView llAddStaffToolTip, LinearLayout llLogoContainer, ProgressBar pb, RecyclerView rvStaffs, TextViewHyperLinkBold12 tvShare, TextViewRegular12 tvStaffs, ImageView tvTitle) {
        this.rootView = rootView;
        this.btnAddStaff = btnAddStaff;
        this.etSearchStaffs = etSearchStaffs;
        this.ivDownChevron = ivDownChevron;
        this.ivProTag = ivProTag;
        this.llAddStaffToolTip = llAddStaffToolTip;
        this.llLogoContainer = llLogoContainer;
        this.f3458pb = pb;
        this.rvStaffs = rvStaffs;
        this.tvShare = tvShare;
        this.tvStaffs = tvStaffs;
        this.tvTitle = tvTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static FragmentStaffListBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static FragmentStaffListBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.fragment_staff_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static FragmentStaffListBinding bind(View rootView) {
        int i = C3656R.id.btn_add_staff;
        RoundedPrimaryButton roundedPrimaryButton = (RoundedPrimaryButton) ViewBindings.findChildViewById(rootView, i);
        if (roundedPrimaryButton != null) {
            i = C3656R.id.et_search_staffs;
            EditText editText = (EditText) ViewBindings.findChildViewById(rootView, i);
            if (editText != null) {
                i = C3656R.id.iv_down_chevron;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                if (imageView != null) {
                    i = C3656R.id.iv_pro_tag;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
                    if (textView != null) {
                        i = C3656R.id.ll_add_staff_tool_tip;
                        ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                        if (imageView2 != null) {
                            i = C3656R.id.ll_logo_container;
                            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                            if (linearLayout != null) {
                                i = C3656R.id.f3440pb;
                                ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(rootView, i);
                                if (progressBar != null) {
                                    i = C3656R.id.rv_staffs;
                                    RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(rootView, i);
                                    if (recyclerView != null) {
                                        i = C3656R.id.tv_share;
                                        TextViewHyperLinkBold12 textViewHyperLinkBold12 = (TextViewHyperLinkBold12) ViewBindings.findChildViewById(rootView, i);
                                        if (textViewHyperLinkBold12 != null) {
                                            i = C3656R.id.tv_staffs;
                                            TextViewRegular12 textViewRegular12 = (TextViewRegular12) ViewBindings.findChildViewById(rootView, i);
                                            if (textViewRegular12 != null) {
                                                i = C3656R.id.tv_title;
                                                ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(rootView, i);
                                                if (imageView3 != null) {
                                                    return new FragmentStaffListBinding((ConstraintLayout) rootView, roundedPrimaryButton, editText, imageView, textView, imageView2, linearLayout, progressBar, recyclerView, textViewHyperLinkBold12, textViewRegular12, imageView3);
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
