package com.rebuilt.app.keep.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.Barrier;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.gms.ads.nativead.MediaView;
import com.google.android.gms.ads.nativead.NativeAdView;
import com.rebuilt.app.keep.C3656R;

/* JADX INFO: loaded from: classes3.dex */
public final class ItemNativeAdBinding implements ViewBinding {
    public final TextView adBody;
    public final Button adCallToAction;
    public final TextView adHeadline;
    public final ImageView adIcon;
    public final Barrier adImageBarrier;
    public final TextView adLabel;
    public final MediaView adMedia;
    public final LinearLayout adTextContainer;
    public final View divider;
    private final NativeAdView rootView;

    private ItemNativeAdBinding(NativeAdView rootView, TextView adBody, Button adCallToAction, TextView adHeadline, ImageView adIcon, Barrier adImageBarrier, TextView adLabel, MediaView adMedia, LinearLayout adTextContainer, View divider) {
        this.rootView = rootView;
        this.adBody = adBody;
        this.adCallToAction = adCallToAction;
        this.adHeadline = adHeadline;
        this.adIcon = adIcon;
        this.adImageBarrier = adImageBarrier;
        this.adLabel = adLabel;
        this.adMedia = adMedia;
        this.adTextContainer = adTextContainer;
        this.divider = divider;
    }

    @Override // androidx.viewbinding.ViewBinding
    public NativeAdView getRoot() {
        return this.rootView;
    }

    public static ItemNativeAdBinding inflate(LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    public static ItemNativeAdBinding inflate(LayoutInflater inflater, ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(C3656R.layout.item_native_ad, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }

    public static ItemNativeAdBinding bind(View rootView) {
        View viewFindChildViewById;
        int i = C3656R.id.ad_body;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, i);
        if (textView != null) {
            i = C3656R.id.ad_call_to_action;
            Button button = (Button) ViewBindings.findChildViewById(rootView, i);
            if (button != null) {
                i = C3656R.id.ad_headline;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, i);
                if (textView2 != null) {
                    i = C3656R.id.ad_icon;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, i);
                    if (imageView != null) {
                        i = C3656R.id.ad_image_barrier;
                        Barrier barrier = (Barrier) ViewBindings.findChildViewById(rootView, i);
                        if (barrier != null) {
                            i = C3656R.id.ad_label;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, i);
                            if (textView3 != null) {
                                i = C3656R.id.ad_media;
                                MediaView mediaView = (MediaView) ViewBindings.findChildViewById(rootView, i);
                                if (mediaView != null) {
                                    i = C3656R.id.ad_text_container;
                                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, i);
                                    if (linearLayout != null && (viewFindChildViewById = ViewBindings.findChildViewById(rootView, (i = C3656R.id.divider))) != null) {
                                        return new ItemNativeAdBinding((NativeAdView) rootView, textView, button, textView2, imageView, barrier, textView3, mediaView, linearLayout, viewFindChildViewById);
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
