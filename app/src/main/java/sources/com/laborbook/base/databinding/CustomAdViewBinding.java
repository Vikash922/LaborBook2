package com.laborbook.base.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.viewbinding.ViewBinding;
import com.laborbook.base.C3577R;

/* JADX INFO: loaded from: classes6.dex */
public final class CustomAdViewBinding implements ViewBinding {
    public final ImageView ivCustomAdImage;
    private final ImageView rootView;

    private CustomAdViewBinding(ImageView imageView, ImageView imageView2) {
        this.rootView = imageView;
        this.ivCustomAdImage = imageView2;
    }

    @Override // androidx.viewbinding.ViewBinding
    public ImageView getRoot() {
        return this.rootView;
    }

    public static CustomAdViewBinding inflate(LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    public static CustomAdViewBinding inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z) {
        View viewInflate = layoutInflater.inflate(C3577R.layout.custom_ad_view, viewGroup, false);
        if (z) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static CustomAdViewBinding bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        ImageView imageView = (ImageView) view;
        return new CustomAdViewBinding(imageView, imageView);
    }
}
