package com.boilerplate.network.auth.callback;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J+\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\b\u0010\u0007\u001a\u0004\u0018\u00010\bH&¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0003H&¨\u0006\u000b"}, m2722d2 = {"Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;", "", "onNewAccessTokenGenerated", "", "accessToken", "", "refreshToken", "expiresIn", "", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V", "onRefreshTokenFailed", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface DefaultAuthenticationCallback {
    void onNewAccessTokenGenerated(String accessToken, String refreshToken, Long expiresIn);

    void onRefreshTokenFailed();
}
