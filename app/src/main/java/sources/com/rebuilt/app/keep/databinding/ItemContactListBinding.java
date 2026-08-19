package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text14.TextViewBold14;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemContactListBinding implements ViewBinding {
    public final ConstraintLayout itemRoot;
    public final ImageView ivLock;
    public final LinearLayout llContacts;
    private final ConstraintLayout rootView;
    public final TextViewBold14 tvInitial;
    public final TextViewBold14 tvName;
    public final TextViewRegular14 tvNumber;

    private ItemContactListBinding(ConstraintLayout rootView, ConstraintLayout itemRoot, ImageView ivLock, LinearLayout llContacts, TextViewBold14 tvInitial, TextViewBold14 tvName, TextViewRegular14 tvNumber) {
        this.rootView = rootView;
        this.itemRoot = itemRoot;
        this.ivLock = ivLock;
        this.llContacts = llContacts;
        this.tvInitial = tvInitial;
        this.tvName = tvName;
        this.tvNumber = tvNumber;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ItemContactListBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemContactListBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_contact_list, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemContactListBinding bind(View rootView) {
        ConstraintLayout constraintLayout = (ConstraintLayout) rootView;
        int i = C3656R.id.iv_lock;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = C3656R.id.ll_contacts;
            LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
            if (linearLayout != null) {
                i = C3656R.id.tv_initial;
                TextViewBold14 textViewBold14 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                if (textViewBold14 != null) {
                    i = C3656R.id.tv_name;
                    TextViewBold14 textViewBold142 = (TextViewBold14) ViewBindings.findChildViewById(rootView, i);
                    if (textViewBold142 != null) {
                        i = C3656R.id.tv_number;
                        TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
                        if (textViewRegular14 != null) {
                            return new ItemContactListBinding(constraintLayout, constraintLayout, imageView, linearLayout, textViewBold14, textViewBold142, textViewRegular14);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
