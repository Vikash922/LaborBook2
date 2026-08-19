package com.laborbook;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Base64;
import android.util.Log;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;

/* JADX INFO: compiled from: AppSignatureHelper.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u0000 \f2\u00020\u0001:\u0001\fB\u0011\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0004\u0010\u0005R!\u0010\u0006\u001a\u0012\u0012\u0004\u0012\u00020\b0\tj\b\u0012\u0004\u0012\u00020\b`\u00078F¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/AppSignatureHelper;", "Landroid/content/ContextWrapper;", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "appSignatures", "Lkotlin/collections/ArrayList;", "", "Ljava/util/ArrayList;", "getAppSignatures", "()Ljava/util/ArrayList;", "Companion", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AppSignatureHelper extends ContextWrapper {
    private static final String HASH_TYPE = "SHA-256";
    public static final int NUM_BASE64_CHAR = 11;
    public static final int NUM_HASHED_BYTES = 9;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "AppSignatureHelper";

    public AppSignatureHelper(Context context) {
        super(context);
    }

    public final ArrayList<String> getAppSignatures() {
        ArrayList<String> arrayList = new ArrayList<>();
        try {
            String packageName = getPackageName();
            Signature[] signatureArr = getPackageManager().getPackageInfo(packageName, 64).signatures;
            if (signatureArr != null) {
                Iterator it = ArrayIteratorKt.iterator(signatureArr);
                while (it.hasNext()) {
                    Signature signature = (Signature) it.next();
                    Companion companion = INSTANCE;
                    Intrinsics.checkNotNull(packageName);
                    String charsString = signature.toCharsString();
                    Intrinsics.checkNotNullExpressionValue(charsString, "toCharsString(...)");
                    String strHash = companion.hash(packageName, charsString);
                    if (strHash != null) {
                        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                        String str = String.format("%s", Arrays.copyOf(new Object[]{strHash}, 1));
                        Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                        arrayList.add(str);
                    }
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return arrayList;
    }

    /* JADX INFO: compiled from: AppSignatureHelper.kt */
    @Metadata(m2721d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001a\u0010\u000e\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u0005H\u0002R\u001b\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\n\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\fX\u0086T¢\u0006\u0002\n\u0000¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/AppSignatureHelper$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getTAG", "()Ljava/lang/String;", "Ljava/lang/String;", "HASH_TYPE", "NUM_HASHED_BYTES", "", "NUM_BASE64_CHAR", "hash", "packageName", "signature", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getTAG() {
            return AppSignatureHelper.TAG;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String hash(String packageName, String signature) {
            String str = packageName + ' ' + signature;
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                Charset UTF_8 = StandardCharsets.UTF_8;
                Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
                byte[] bytes = str.getBytes(UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                messageDigest.update(bytes);
                String strEncodeToString = Base64.encodeToString(Arrays.copyOfRange(messageDigest.digest(), 0, 9), 3);
                Intrinsics.checkNotNull(strEncodeToString);
                String strSubstring = strEncodeToString.substring(0, 11);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                Log.i(getTAG(), strSubstring);
                return strSubstring;
            } catch (NoSuchAlgorithmException unused) {
                return null;
            }
        }
    }
}
