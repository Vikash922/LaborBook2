package com.razorpay;

import android.app.ActivityManager;
import android.graphics.Bitmap;
import android.os.Build;
import android.support.v4.media.session.PlaybackStateCompat;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.amplitude.android.TrackingOptions;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class RazorpayWebViewClient extends WebViewClient {
    private BaseRazorpay razorpay;

    public RazorpayWebViewClient(BaseRazorpay baseRazorpay) {
        this.razorpay = baseRazorpay;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayWebViewClient", "onPageFinished", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.razorpay.onPageFinished(webView, str);
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayWebViewClient", "onPageFinished", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayWebViewClient", "shouldOverrideUrlLoading(WebView,String)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            boolean zBooleanValue = this.razorpay.shouldOverrideUrlLoading(webView, str).booleanValue();
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayWebViewClient", "shouldOverrideUrlLoading(WebView,String)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            return zBooleanValue;
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        boolean zBooleanValue;
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayWebViewClient", "shouldOverrideUrlLoading(WebView,WebResourceRequest)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            if (webResourceRequest.getUrl() != null) {
                zBooleanValue = this.razorpay.shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString()).booleanValue();
            } else {
                zBooleanValue = this.razorpay.shouldOverrideUrlLoading(webView, webView.getUrl()).booleanValue();
            }
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayWebViewClient", "shouldOverrideUrlLoading(WebView,WebResourceRequest)", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            return zBooleanValue;
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
            return false;
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, WebResourceRequest webResourceRequest) {
        return super.shouldInterceptRequest(webView, webResourceRequest);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayWebViewClient", "onReceivedError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            MonitoringUtil.trackCriticalDependencyFailure(webView == null ? null : webView.getContext(), "webview_render", "load", "custom_ui_webview_network_error", str, true, false, "not_available");
            this.razorpay.onError(2, str);
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayWebViewClient", "onReceivedError", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        try {
            AnalyticsUtil.logCustomUIFunctionEntry("RazorpayWebViewClient", "onPageStarted", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
            this.razorpay.onPageStarted(webView, str);
            AnalyticsUtil.logCustomUIFunctionExit("RazorpayWebViewClient", "onPageStarted", C$sS$$__s$S$.getInstance().isVerboseLoggingEnabled());
        } catch (Exception e) {
            AnalyticsUtil.reportCaughtException(e);
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            trackRendererCrash(webView, renderProcessGoneDetail);
            return true;
        } catch (Exception e) {
            Logger.m2692e("Error in onRenderProcessGone: " + e.getMessage());
            return true;
        }
    }

    private void trackRendererCrash(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        try {
            HashMap map = new HashMap();
            if (Build.VERSION.SDK_INT >= 26 && renderProcessGoneDetail != null) {
                map.put("did_crash", Boolean.valueOf(renderProcessGoneDetail.didCrash()));
                map.put("renderer_priority_at_exit", Integer.valueOf(renderProcessGoneDetail.rendererPriorityAtExit()));
            } else {
                map.put("did_crash", "unknown");
                map.put("renderer_priority_at_exit", "unknown");
            }
            map.put("manufacturer", Build.MANUFACTURER);
            map.put(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
            map.put(TrackingOptions.AMP_TRACKING_OPTION_OS_VERSION, Build.VERSION.RELEASE);
            if (webView != null && webView.getContext() != null) {
                int performanceClass = PerformanceUtil.getPerformanceClass(webView.getContext());
                boolean zIsLowEndDevice = PerformanceUtil.isLowEndDevice(webView.getContext());
                map.put("performance_class", Integer.valueOf(performanceClass));
                map.put("is_low_end_device", Boolean.valueOf(zIsLowEndDevice));
                ActivityManager activityManager = (ActivityManager) webView.getContext().getSystemService("activity");
                if (activityManager != null) {
                    ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
                    activityManager.getMemoryInfo(memoryInfo);
                    map.put("total_ram_mb", Long.valueOf(memoryInfo.totalMem / PlaybackStateCompat.ACTION_SET_CAPTIONING_ENABLED));
                }
            }
            map.put("cpu_cores", Integer.valueOf(Runtime.getRuntime().availableProcessors()));
            map.put("webview_type", "razorpay_webview");
            AnalyticsUtil.trackEvent(AnalyticsEvent.CUSTOMUI_WEBVIEW_RENDERER_CRASHED, AnalyticsUtil.getJSONResponse(map));
            MonitoringUtil.trackCriticalDependencyFailure(webView == null ? null : webView.getContext(), "webview_renderer_process", "render", AnalyticsEvent.CUSTOMUI_WEBVIEW_RENDERER_CRASHED.getEventName(), "WebView renderer process gone", true, false, "not_available");
            Logger.m2690d("Renderer crash analytics tracked");
        } catch (Exception e) {
            Logger.m2692e("Error tracking renderer crash: " + e.getMessage());
        }
    }
}
