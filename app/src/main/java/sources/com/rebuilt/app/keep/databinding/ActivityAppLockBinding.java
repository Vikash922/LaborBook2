package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.boilerplate.uikit.views.textviews.text20.TextViewBold20;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ActivityAppLockBinding implements ViewBinding {
    public final ImageView ivLockIcon;
    private final ConstraintLayout rootView;
    public final TextViewRegular14 tvLockMessage;
    public final TextViewBold20 tvLockTitle;

    private ActivityAppLockBinding(ConstraintLayout rootView, ImageView ivLockIcon, TextViewRegular14 tvLockMessage, TextViewBold20 tvLockTitle) {
        this.rootView = rootView;
        this.ivLockIcon = ivLockIcon;
        this.tvLockMessage = tvLockMessage;
        this.tvLockTitle = tvLockTitle;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ConstraintLayout getRoot() {
        return this.rootView;
    }

    public static ActivityAppLockBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ActivityAppLockBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.activity_app_lock, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ActivityAppLockBinding bind(View rootView) {
        int i = C3656R.id.iv_lock_icon;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
        if (imageView != null) {
            i = C3656R.id.tv_lock_message;
            TextViewRegular14 textViewRegular14 = (TextViewRegular14) ViewBindings.findChildViewById(rootView, i);
            if (textViewRegular14 != null) {
                i = C3656R.id.tv_lock_title;
                TextViewBold20 textViewBold20 = (TextViewBold20) ViewBindings.findChildViewById(rootView, i);
                if (textViewBold20 != null) {
                    return new ActivityAppLockBinding((ConstraintLayout) rootView, imageView, textViewRegular14, textViewBold20);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i)));
    }
}
