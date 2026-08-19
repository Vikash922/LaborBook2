package com.truecaller.android.sdk.oAuth.clients;

import android.content.Context;
import com.truecaller.android.sdk.oAuth.TcOAuthCallback;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public abstract class BaseClient {
    public static final int CLIENT_TYPE_TC_INSTALLED = 1;
    public static final int CLIENT_TYPE_TC_NOT_INSTALLED = 2;
    private String codeChallenge;
    final Context mAppContext;
    final TcOAuthCallback mCallback;
    private final String mClientId;
    private Locale mLocale;
    private final int mType;
    private String[] scopes;
    private String state;

    BaseClient(Context context, String str, TcOAuthCallback tcOAuthCallback, int i) {
        this.mAppContext = context;
        this.mClientId = str;
        this.mType = i;
        this.mCallback = tcOAuthCallback;
    }

    public final int getClientType() {
        return this.mType;
    }

    String getClientId() {
        return this.mClientId;
    }

    public void setLocale(Locale locale) {
        this.mLocale = locale;
    }

    Locale getLocale() {
        return this.mLocale;
    }

    public String[] getScopes() {
        return this.scopes;
    }

    public void setScopes(String[] strArr) {
        this.scopes = strArr;
    }

    public String getState() {
        return this.state;
    }

    public void setState(String str) {
        this.state = str;
    }

    public String getCodeChallenge() {
        return this.codeChallenge;
    }

    public void setCodeChallenge(String str) {
        this.codeChallenge = str;
    }
}
