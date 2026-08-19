package com.truecaller.android.sdk.legacy.clients;

import android.content.Context;
import android.text.TextUtils;
import com.truecaller.android.sdk.legacy.ITrueCallback;
import com.truecaller.android.sdk.legacy.Utils;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public abstract class TcClient {
    public static final int CLIENT_TYPE_TC_INSTALLED = 1;
    public static final int CLIENT_TYPE_TC_NOT_INSTALLED = 2;
    Context mAppContext;
    ITrueCallback mCallback;
    private Locale mLocale;
    private final String mPartnerKey;
    private String mReqNonce;
    private int mTheme;
    private int mType;

    TcClient(Context context, String str, ITrueCallback iTrueCallback, int i) {
        this.mAppContext = context;
        this.mPartnerKey = str;
        this.mType = i;
        this.mCallback = iTrueCallback;
    }

    public final int getClientType() {
        return this.mType;
    }

    String getPartnerKey() {
        return this.mPartnerKey;
    }

    public void setReqNonce(String str) {
        this.mReqNonce = str;
    }

    public void setLocale(Locale locale) {
        this.mLocale = locale;
    }

    String getRequestNonce() {
        if (TextUtils.isEmpty(this.mReqNonce)) {
            this.mReqNonce = Utils.generateNonce();
        }
        return this.mReqNonce;
    }

    Locale getLocale() {
        return this.mLocale;
    }

    public void updateCallback(ITrueCallback iTrueCallback) {
        this.mCallback = iTrueCallback;
    }

    int getTheme() {
        return this.mTheme;
    }

    public void setTheme(int i) {
        this.mTheme = i;
    }
}
