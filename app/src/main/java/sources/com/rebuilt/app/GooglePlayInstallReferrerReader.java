package com.rebuilt.app;

import android.content.Context;
import com.android.installreferrer.api.InstallReferrerClient;
import com.android.installreferrer.api.InstallReferrerStateListener;
import com.facebook.AccessToken;
import com.facebook.FacebookSdk;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.rebuilt.app.GooglePlayInstallReferrerReader;
import com.rebuilt.app.base.Logger;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: compiled from: GooglePlayInstallReferrerReader.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\bJ\u0012\u0010\t\u001a\u00020\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¨\u0006\r"}, m2722d2 = {"Lcom/laborbook/GooglePlayInstallReferrerReader;", "", "<init>", "()V", "getInstallReferrer", "Lcom/laborbook/GooglePlayInstallReferrerReader$Result;", "context", "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "parseSource", "", "referrerUrl", "Result", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class GooglePlayInstallReferrerReader {
    public static final GooglePlayInstallReferrerReader INSTANCE = new GooglePlayInstallReferrerReader();

    private GooglePlayInstallReferrerReader() {
    }

    /* JADX INFO: compiled from: GooglePlayInstallReferrerReader.kt */
    @Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\t\u0010\n\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u001f\u0010\f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0010\u001a\u00020\u0011HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\b¨\u0006\u0013"}, m2722d2 = {"Lcom/laborbook/GooglePlayInstallReferrerReader$Result;", "", "source", "", "referrerUrl", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "getSource", "()Ljava/lang/String;", "getReferrerUrl", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", InAppPurchaseConstants.METHOD_TO_STRING, "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final /* data */ class Result {
        private final String referrerUrl;
        private final String source;

        public static /* synthetic */ Result copy$default(Result result, String str, String str2, int i, Object obj) {
            if ((i & 1) != 0) {
                str = result.source;
            }
            if ((i & 2) != 0) {
                str2 = result.referrerUrl;
            }
            return result.copy(str, str2);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final String getSource() {
            return this.source;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final String getReferrerUrl() {
            return this.referrerUrl;
        }

        public final Result copy(String source, String referrerUrl) {
            Intrinsics.checkNotNullParameter(source, "source");
            return new Result(source, referrerUrl);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Result)) {
                return false;
            }
            Result result = (Result) other;
            return Intrinsics.areEqual(this.source, result.source) && Intrinsics.areEqual(this.referrerUrl, result.referrerUrl);
        }

        public int hashCode() {
            int iHashCode = this.source.hashCode() * 31;
            String str = this.referrerUrl;
            return iHashCode + (str == null ? 0 : str.hashCode());
        }

        public String toString() {
            return "Result(source=" + this.source + ", referrerUrl=" + this.referrerUrl + ')';
        }

        public Result(String source, String str) {
            Intrinsics.checkNotNullParameter(source, "source");
            this.source = source;
            this.referrerUrl = str;
        }

        public final String getReferrerUrl() {
            return this.referrerUrl;
        }

        public final String getSource() {
            return this.source;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final String parseSource(String referrerUrl) {
        String str = referrerUrl;
        if (str == null || StringsKt.isBlank(str)) {
            return "organic";
        }
        List listSplit$default = StringsKt.split$default((CharSequence) str, new String[]{"&"}, false, 0, 6, (Object) null);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt.collectionSizeOrDefault(listSplit$default, 10)), 16));
        Iterator it = listSplit$default.iterator();
        while (it.hasNext()) {
            List listSplit$default2 = StringsKt.split$default((CharSequence) it.next(), new String[]{"="}, false, 2, 2, (Object) null);
            Object obj = "";
            String lowerCase = StringsKt.trim((CharSequence) (listSplit$default2.size() > 0 ? listSplit$default2.get(0) : "")).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            if (1 < listSplit$default2.size()) {
                obj = listSplit$default2.get(1);
            }
            String lowerCase2 = StringsKt.trim((CharSequence) obj).toString().toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            Pair pairM2729to = TuplesKt.m2729to(lowerCase, lowerCase2);
            Pair pairM2729to2 = TuplesKt.m2729to((String) pairM2729to.component1(), (String) pairM2729to.component2());
            linkedHashMap.put(pairM2729to2.getFirst(), pairM2729to2.getSecond());
        }
        String str2 = (String) linkedHashMap.get("utm_source");
        if (str2 == null) {
            return "organic";
        }
        String str3 = str2;
        if (StringsKt.contains$default((CharSequence) str3, (CharSequence) AccessToken.DEFAULT_GRAPH_DOMAIN, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str3, (CharSequence) FacebookSdk.INSTAGRAM, false, 2, (Object) null) || StringsKt.contains$default((CharSequence) str3, (CharSequence) "meta", false, 2, (Object) null)) {
            return "meta_ads";
        }
        return str3.length() > 0 ? str2 : "organic";
    }

    public final Object getInstallReferrer(Context context, Continuation<? super Result> continuation) {
        CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(IntrinsicsKt.intercepted(continuation), 1);
        cancellableContinuationImpl.initCancellability();
        final CancellableContinuationImpl cancellableContinuationImpl2 = cancellableContinuationImpl;
        final InstallReferrerClient installReferrerClientBuild = InstallReferrerClient.newBuilder(context).build();
        cancellableContinuationImpl2.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: com.rebuilt.app.GooglePlayInstallReferrerReader$getInstallReferrer$2$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                try {
                    installReferrerClientBuild.endConnection();
                } catch (Exception unused) {
                }
            }
        });
        installReferrerClientBuild.startConnection(new InstallReferrerStateListener() { // from class: com.rebuilt.app.GooglePlayInstallReferrerReader$getInstallReferrer$2$2
            @Override // com.android.installreferrer.api.InstallReferrerStateListener
            public void onInstallReferrerSetupFinished(int responseCode) {
                try {
                    if (responseCode == 0) {
                        String installReferrer = installReferrerClientBuild.getInstallReferrer().getInstallReferrer();
                        installReferrerClientBuild.endConnection();
                        String source = GooglePlayInstallReferrerReader.INSTANCE.parseSource(installReferrer);
                        Logger.INSTANCE.m2676d("GooglePlayInstallReferrerReader: referrer=" + installReferrer + " -> " + source);
                        if (cancellableContinuationImpl2.isActive()) {
                            CancellableContinuation<GooglePlayInstallReferrerReader.Result> cancellableContinuation = cancellableContinuationImpl2;
                            Result.Companion companion = Result.INSTANCE;
                            cancellableContinuation.resumeWith(Result.m3325constructorimpl(new GooglePlayInstallReferrerReader.Result(source, installReferrer)));
                        }
                    } else {
                        installReferrerClientBuild.endConnection();
                        Logger.INSTANCE.m2676d("GooglePlayInstallReferrerReader: response=" + responseCode + " -> organic");
                        if (cancellableContinuationImpl2.isActive()) {
                            CancellableContinuation<GooglePlayInstallReferrerReader.Result> cancellableContinuation2 = cancellableContinuationImpl2;
                            Result.Companion companion2 = Result.INSTANCE;
                            cancellableContinuation2.resumeWith(Result.m3325constructorimpl(new GooglePlayInstallReferrerReader.Result("organic", null)));
                        }
                    }
                } catch (Exception e) {
                    Logger.INSTANCE.m2677e("GooglePlayInstallReferrerReader: error reading referrer: " + e.getMessage());
                    if (cancellableContinuationImpl2.isActive()) {
                        CancellableContinuation<GooglePlayInstallReferrerReader.Result> cancellableContinuation3 = cancellableContinuationImpl2;
                        Result.Companion companion3 = Result.INSTANCE;
                        cancellableContinuation3.resumeWith(Result.m3325constructorimpl(new GooglePlayInstallReferrerReader.Result("organic", null)));
                    }
                }
            }

            @Override // com.android.installreferrer.api.InstallReferrerStateListener
            public void onInstallReferrerServiceDisconnected() {
                Logger.INSTANCE.m2676d("GooglePlayInstallReferrerReader: service disconnected -> organic");
                if (cancellableContinuationImpl2.isActive()) {
                    CancellableContinuation<GooglePlayInstallReferrerReader.Result> cancellableContinuation = cancellableContinuationImpl2;
                    Result.Companion companion = Result.INSTANCE;
                    cancellableContinuation.resumeWith(Result.m3325constructorimpl(new GooglePlayInstallReferrerReader.Result("organic", null)));
                }
            }
        });
        Object result = cancellableContinuationImpl.getResult();
        if (result == IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
            DebugProbesKt.probeCoroutineSuspended(continuation);
        }
        return result;
    }
}
