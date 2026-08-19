package com.google.ads.mediation.inmobi;

import android.content.Context;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.RelativeLayout;
import com.google.ads.mediation.inmobi.ImageDownloaderAsyncTask;
import com.google.ads.mediation.inmobi.renderers.InMobiNativeAd;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class InMobiUnifiedNativeAdMapper extends UnifiedNativeAdMapper {
    private final InMobiNativeAd inMobiNativeAd;
    private final InMobiNativeWrapper inMobiNativeWrapper;
    private final boolean isOnlyURL;
    private final MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback;

    public InMobiUnifiedNativeAdMapper(InMobiNativeWrapper inMobiNativeWrapper, Boolean bool, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback, InMobiNativeAd inMobiNativeAd) {
        this.inMobiNativeWrapper = inMobiNativeWrapper;
        this.isOnlyURL = bool.booleanValue();
        this.mediationAdLoadCallback = mediationAdLoadCallback;
        this.inMobiNativeAd = inMobiNativeAd;
        setOverrideImpressionRecording(true);
    }

    public void mapUnifiedNativeAd(final Context context) {
        if (!InMobiAdapterUtils.isValidNativeAd(this.inMobiNativeWrapper)) {
            AdError adErrorCreateAdapterError = InMobiConstants.createAdapterError(107, "InMobi native ad returned with a missing asset.");
            Log.w(InMobiMediationAdapter.TAG, adErrorCreateAdapterError.toString());
            this.mediationAdLoadCallback.onFailure(adErrorCreateAdapterError);
            return;
        }
        setHeadline(this.inMobiNativeWrapper.getAdTitle());
        setBody(this.inMobiNativeWrapper.getAdDescription());
        setCallToAction(this.inMobiNativeWrapper.getAdCtaText());
        try {
            URL url = new URL(this.inMobiNativeWrapper.getAdIconUrl());
            final Uri uri = Uri.parse(url.toURI().toString());
            HashMap map = new HashMap();
            String adLandingPageUrl = this.inMobiNativeWrapper.getAdLandingPageUrl();
            Bundle bundle = new Bundle();
            bundle.putString(InMobiNetworkValues.LANDING_URL, adLandingPageUrl);
            setExtras(bundle);
            if (!this.isOnlyURL) {
                map.put("icon_key", url);
            } else {
                setIcon(new InMobiNativeMappedImage(null, uri, 1.0d));
                List<NativeAd.Image> arrayList = new ArrayList<>();
                arrayList.add(new InMobiNativeMappedImage(new ColorDrawable(0), null, 1.0d));
                setImages(arrayList);
            }
            if (this.inMobiNativeWrapper.getCustomAdContent() != null) {
                JSONObject customAdContent = this.inMobiNativeWrapper.getCustomAdContent();
                try {
                    if (customAdContent.has(InMobiNetworkValues.RATING)) {
                        setStarRating(Double.valueOf(Double.parseDouble(customAdContent.getString(InMobiNetworkValues.RATING))));
                    }
                    if (customAdContent.has("price")) {
                        setPrice(customAdContent.getString("price"));
                    }
                } catch (JSONException unused) {
                    Log.w(InMobiMediationAdapter.TAG, "InMobi custom native ad content payload could not be parsed. The returned native ad will not have star rating or price values.");
                }
                if (customAdContent.has(InMobiNetworkValues.PACKAGE_NAME)) {
                    setStore("Google Play");
                } else {
                    setStore("Others");
                }
            }
            final ClickInterceptorRelativeLayout clickInterceptorRelativeLayout = new ClickInterceptorRelativeLayout(context);
            clickInterceptorRelativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            clickInterceptorRelativeLayout.setGravity(17);
            clickInterceptorRelativeLayout.post(new Runnable() { // from class: com.google.ads.mediation.inmobi.InMobiUnifiedNativeAdMapper.1
                @Override // java.lang.Runnable
                public void run() {
                    InMobiNativeWrapper inMobiNativeWrapper = InMobiUnifiedNativeAdMapper.this.inMobiNativeWrapper;
                    Context context2 = context;
                    RelativeLayout relativeLayout = clickInterceptorRelativeLayout;
                    View primaryViewOfWidth = inMobiNativeWrapper.getPrimaryViewOfWidth(context2, null, relativeLayout, Integer.valueOf(relativeLayout.getWidth()));
                    if (primaryViewOfWidth == null) {
                        return;
                    }
                    clickInterceptorRelativeLayout.addView(primaryViewOfWidth);
                    int i = primaryViewOfWidth.getLayoutParams().height;
                    if (i > 0) {
                        InMobiUnifiedNativeAdMapper.this.setMediaContentAspectRatio(primaryViewOfWidth.getLayoutParams().width / i);
                    }
                }
            });
            setMediaView(clickInterceptorRelativeLayout);
            setHasVideoContent(this.inMobiNativeWrapper.isVideo() != null ? this.inMobiNativeWrapper.isVideo().booleanValue() : false);
            if (!this.isOnlyURL) {
                new ImageDownloaderAsyncTask(new ImageDownloaderAsyncTask.DrawableDownloadListener() { // from class: com.google.ads.mediation.inmobi.InMobiUnifiedNativeAdMapper.2
                    @Override // com.google.ads.mediation.inmobi.ImageDownloaderAsyncTask.DrawableDownloadListener
                    public void onDownloadSuccess(HashMap<String, Drawable> map2) {
                        Drawable drawable = map2.get("icon_key");
                        InMobiUnifiedNativeAdMapper.this.setIcon(new InMobiNativeMappedImage(drawable, uri, 1.0d));
                        ArrayList arrayList2 = new ArrayList();
                        arrayList2.add(new InMobiNativeMappedImage(new ColorDrawable(0), null, 1.0d));
                        InMobiUnifiedNativeAdMapper.this.setImages(arrayList2);
                        if (drawable != null && InMobiUnifiedNativeAdMapper.this.mediationAdLoadCallback != null) {
                            InMobiUnifiedNativeAdMapper.this.inMobiNativeAd.mediationNativeAdCallback = (MediationNativeAdCallback) InMobiUnifiedNativeAdMapper.this.mediationAdLoadCallback.onSuccess(InMobiUnifiedNativeAdMapper.this);
                        } else {
                            AdError adErrorCreateAdapterError2 = InMobiConstants.createAdapterError(109, "InMobi SDK failed to download native ad image assets.");
                            Log.w(InMobiMediationAdapter.TAG, adErrorCreateAdapterError2.toString());
                            InMobiUnifiedNativeAdMapper.this.mediationAdLoadCallback.onFailure(adErrorCreateAdapterError2);
                        }
                    }

                    @Override // com.google.ads.mediation.inmobi.ImageDownloaderAsyncTask.DrawableDownloadListener
                    public void onDownloadFailure() {
                        AdError adErrorCreateAdapterError2 = InMobiConstants.createAdapterError(109, "InMobi SDK failed to download native ad image assets.");
                        Log.w(InMobiMediationAdapter.TAG, adErrorCreateAdapterError2.toString());
                        InMobiUnifiedNativeAdMapper.this.mediationAdLoadCallback.onFailure(adErrorCreateAdapterError2);
                    }
                }).execute(map);
                return;
            }
            MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback = this.mediationAdLoadCallback;
            if (mediationAdLoadCallback != null) {
                this.inMobiNativeAd.mediationNativeAdCallback = mediationAdLoadCallback.onSuccess(this);
            }
        } catch (MalformedURLException | URISyntaxException e) {
            AdError adErrorCreateAdapterError2 = InMobiConstants.createAdapterError(108, e.getLocalizedMessage());
            Log.w(InMobiMediationAdapter.TAG, adErrorCreateAdapterError2.toString());
            this.mediationAdLoadCallback.onFailure(adErrorCreateAdapterError2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void handleClick(View view) {
        this.inMobiNativeWrapper.reportAdClickAndOpenLandingPage();
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        this.inMobiNativeWrapper.pause();
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
        this.inMobiNativeWrapper.resume();
    }
}
