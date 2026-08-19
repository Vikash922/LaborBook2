package com.truecaller.android.sdk.oAuth;

import android.util.Base64;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.shadow.apache.commons.lang3.CharEncoding;

/* JADX INFO: compiled from: CodeVerifierUtil.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil;", "", "()V", "Companion", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class CodeVerifierUtil {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final int DEFAULT_CODE_VERIFIER_ENTROPY = 64;
    private static final int PKCE_BASE64_ENCODE_SETTINGS = 11;

    /* JADX INFO: compiled from: CodeVerifierUtil.kt */
    @Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0006\u001a\u00020\u0007J\u0010\u0010\b\u001a\u0004\u0018\u00010\u00072\u0006\u0010\t\u001a\u00020\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/truecaller/android/sdk/oAuth/CodeVerifierUtil$Companion;", "", "()V", "DEFAULT_CODE_VERIFIER_ENTROPY", "", "PKCE_BASE64_ENCODE_SETTINGS", "generateRandomCodeVerifier", "", "getCodeChallenge", "codeVerifier", "sdk-external_googlePlayOAuthReleasePartner"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String generateRandomCodeVerifier() {
            byte[] bArr = new byte[64];
            new SecureRandom().nextBytes(bArr);
            String strEncodeToString = Base64.encodeToString(bArr, 11);
            Intrinsics.checkNotNullExpressionValue(strEncodeToString, "encodeToString(...)");
            return strEncodeToString;
        }

        public final String getCodeChallenge(String codeVerifier) {
            Intrinsics.checkNotNullParameter(codeVerifier, "codeVerifier");
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                Charset charsetForName = Charset.forName(CharEncoding.US_ASCII);
                Intrinsics.checkNotNullExpressionValue(charsetForName, "forName(...)");
                byte[] bytes = codeVerifier.getBytes(charsetForName);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                return Base64.encodeToString(messageDigest.digest(), 11);
            } catch (UnsupportedEncodingException | NoSuchAlgorithmException unused) {
                return null;
            }
        }
    }
}
