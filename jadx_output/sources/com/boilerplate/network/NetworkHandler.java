package com.boilerplate.network;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.amplitude.android.plugins.AndroidContextPlugin;
import com.boilerplate.network.auth.callback.DefaultAuthenticationCallback;
import com.boilerplate.network.model.APIHeaders;
import com.boilerplate.network.model.DataResponse;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.utils.CurlLoggerInterceptor;
import com.boilerplate.network.utils.NetworkConstants;
import com.boilerplate.network.utils.NetworkHandlerException;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.laborbook.base.Headers;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000l\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 >2\u00020\u0001:\u0001>B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tJ\u000e\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\tJ\u000e\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\tJ\u000e\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u0007J¶\u0001\u0010\u0017\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u001a0\u00190\u0018\"\u0004\b\u0000\u0010\u001a2*\u0010\u001b\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001a0\u001f\u0018\u00010\u001e0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2$\u0010 \u001a \b\u0001\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u0002H\u001a\u0018\u00010!0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001c2\"\u0010\"\u001a\u001e\b\u0001\u0012\u0004\u0012\u0002H\u001a\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010#2\u001c\u0010$\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@¢\u0006\u0002\u0010%JN\u0010&\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001H\u001a0\u00190\u0018\"\u0004\b\u0000\u0010\u001a2*\u0010\u001b\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001a0\u001f\u0018\u00010\u001e0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@¢\u0006\u0002\u0010'JH\u0010(\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u001a0\u0019\"\u0004\b\u0000\u0010\u001a2*\u0010\u001b\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u001a0\u001f\u0018\u00010\u001e0\u001d\u0012\u0006\u0012\u0004\u0018\u00010\u00010\u001cH\u0086@¢\u0006\u0002\u0010'J\u001e\u0010)\u001a\u0002H*\"\u0006\b\u0000\u0010*\u0018\u00012\u0006\u0010+\u001a\u00020\tH\u0086\b¢\u0006\u0002\u0010,J\u0016\u0010-\u001a\u0002H*\"\u0006\b\u0000\u0010*\u0018\u0001H\u0086\b¢\u0006\u0002\u0010.J\u0006\u0010/\u001a\u000200J\b\u00101\u001a\u00020\rH\u0002J\u0006\u00102\u001a\u00020\u0005J\u0016\u00103\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u00104\u001a\u00020\r2\u0006\u0010\b\u001a\u00020\tJ\u0006\u0010\u0006\u001a\u00020\u0007J\u000f\u00105\u001a\u0004\u0018\u00010\u000bH\u0000¢\u0006\u0002\b6J\u000f\u00107\u001a\u0004\u0018\u00010\tH\u0000¢\u0006\u0002\b8J/\u00109\u001a\u00020\r2\"\u0010:\u001a\u001e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0<j\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t`;¢\u0006\u0002\u0010=R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006?"}, m2722d2 = {"Lcom/boilerplate/network/NetworkHandler;", "", "<init>", "()V", "headers", "Lcom/boilerplate/network/model/APIHeaders;", "isDebug", "", "refreshToken", "", "defaultAuthenticationCallback", "Lcom/boilerplate/network/auth/callback/DefaultAuthenticationCallback;", "initialize", "", "deviceId", "systemId", RemoteConfigConstants.RequestFieldKey.APP_VERSION, "setAccessToken", "accessToken", "setUserId", "userId", "enableDebugMode", TypedValues.Custom.S_BOOLEAN, "getCachedData", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "Output", "remoteFetch", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "localFetch", "", "localStore", "Lkotlin/Function2;", "localDelete", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getData", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getDataResult", "getApiClient", "ApiInterface", "baseUrl", "(Ljava/lang/String;)Ljava/lang/Object;", "getDefaultApiClient", "()Ljava/lang/Object;", "getOkHttpClient", "Lokhttp3/OkHttpClient;", "checkIfInitialized", "getHeaders", "addAuthentication", "setRefreshToken", "getDefaultAuthCallback", "getDefaultAuthCallback$network_release", "getRefreshToken", "getRefreshToken$network_release", "setAdditionalHeaders", "additionHeaders", "Lkotlin/collections/HashMap;", "Ljava/util/HashMap;", "(Ljava/util/HashMap;)V", "Companion", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class NetworkHandler {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static NetworkHandler networkHandler;
    private DefaultAuthenticationCallback defaultAuthenticationCallback;
    private APIHeaders headers;
    private boolean isDebug;
    private String refreshToken;

    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0005R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m2722d2 = {"Lcom/boilerplate/network/NetworkHandler$Companion;", "", "<init>", "()V", "networkHandler", "Lcom/boilerplate/network/NetworkHandler;", "getInstance", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        private Companion() {
        }

        public final NetworkHandler getInstance() {
            NetworkHandler networkHandler = NetworkHandler.networkHandler;
            if (networkHandler == null) {
                synchronized (this) {
                    networkHandler = NetworkHandler.networkHandler;
                    if (networkHandler == null) {
                        networkHandler = new NetworkHandler();
                        NetworkHandler.networkHandler = networkHandler;
                    }
                }
            }
            return networkHandler;
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    private final void checkIfInitialized() throws NetworkHandlerException {
        if (networkHandler == null) {
            throw new NetworkHandlerException("Network Handler not initialized");
        }
    }

    public final void addAuthentication(String refreshToken, DefaultAuthenticationCallback defaultAuthenticationCallback) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        Intrinsics.checkNotNullParameter(defaultAuthenticationCallback, "defaultAuthenticationCallback");
        this.refreshToken = refreshToken;
        this.defaultAuthenticationCallback = defaultAuthenticationCallback;
    }

    public final void enableDebugMode(boolean z) throws NetworkHandlerException {
        checkIfInitialized();
        this.isDebug = z;
    }

    public final /* synthetic */ <ApiInterface> ApiInterface getApiClient(String baseUrl) {
        Intrinsics.checkNotNullParameter(baseUrl, "baseUrl");
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(baseUrl).client(getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.reifiedOperationMarker(4, "ApiInterface");
        return (ApiInterface) retrofitBuild.create(Object.class);
    }

    public final <Output> Object getCachedData(Function1<? super Continuation<? super Response<DataResponse<Output>>>, ? extends Object> function1, Function1<? super Continuation<? super List<? extends Output>>, ? extends Object> function12, Function2<? super Output, ? super Continuation<? super Unit>, ? extends Object> function2, Function1<? super Continuation<? super Unit>, ? extends Object> function13, Continuation<? super Flow<? extends NetworkResult<? extends Output>>> continuation) throws NetworkHandlerException {
        checkIfInitialized();
        return NetworkResource.query$default(new NetworkResource(function1, function12, function2, function13, null, 16, null), false, continuation, 1, null);
    }

    public final <Output> Object getData(Function1<? super Continuation<? super Response<DataResponse<Output>>>, ? extends Object> function1, Continuation<? super Flow<? extends NetworkResult<? extends Output>>> continuation) throws NetworkHandlerException {
        checkIfInitialized();
        return new NetworkResource(function1, null, 2, null).query(true, continuation);
    }

    public final <Output> Object getDataResult(Function1<? super Continuation<? super Response<DataResponse<Output>>>, ? extends Object> function1, Continuation<? super NetworkResult<? extends Output>> continuation) throws NetworkHandlerException {
        checkIfInitialized();
        return new NetworkResource(function1, null, 2, null).queryWithoutFlow(continuation);
    }

    public final /* synthetic */ <ApiInterface> ApiInterface getDefaultApiClient() {
        Retrofit retrofitBuild = new Retrofit.Builder().baseUrl(getIsDebug() ? NetworkConstants.BASE_URL_DEBUG : NetworkConstants.BASE_URL).client(getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build();
        Intrinsics.reifiedOperationMarker(4, "ApiInterface");
        return (ApiInterface) retrofitBuild.create(Object.class);
    }

    /* JADX INFO: renamed from: getDefaultAuthCallback$network_release, reason: from getter */
    public final DefaultAuthenticationCallback getDefaultAuthenticationCallback() {
        return this.defaultAuthenticationCallback;
    }

    public final APIHeaders getHeaders() {
        APIHeaders aPIHeaders = this.headers;
        if (aPIHeaders != null) {
            return aPIHeaders;
        }
        Intrinsics.throwUninitializedPropertyAccessException("headers");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final OkHttpClient getOkHttpClient() {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(null, 1, 0 == true ? 1 : 0);
        httpLoggingInterceptor.level(this.isDebug ? HttpLoggingInterceptor.Level.BODY : HttpLoggingInterceptor.Level.NONE);
        OkHttpClient.Builder builderAddInterceptor = new OkHttpClient.Builder().addInterceptor(new Interceptor() { // from class: com.boilerplate.network.NetworkHandler$getOkHttpClient$$inlined$-addInterceptor$1
            @Override // okhttp3.Interceptor
            public final okhttp3.Response intercept(Interceptor.Chain chain) {
                Intrinsics.checkNotNullParameter(chain, "chain");
                Request request = chain.request();
                Request.Builder builderNewBuilder = request.newBuilder();
                StringBuilder sb = new StringBuilder("Bearer ");
                APIHeaders aPIHeaders = this.this$0.headers;
                if (aPIHeaders == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headers");
                    aPIHeaders = null;
                }
                Request.Builder builderHeader = builderNewBuilder.header("Authorization", sb.append(aPIHeaders.getAccessToken()).toString());
                APIHeaders aPIHeaders2 = this.this$0.headers;
                if (aPIHeaders2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headers");
                    aPIHeaders2 = null;
                }
                Request.Builder builderHeader2 = builderHeader.header("Device-ID", aPIHeaders2.getDeviceId());
                APIHeaders aPIHeaders3 = this.this$0.headers;
                if (aPIHeaders3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headers");
                    aPIHeaders3 = null;
                }
                Request.Builder builderHeader3 = builderHeader2.header("System-ID", aPIHeaders3.getSystemId());
                APIHeaders aPIHeaders4 = this.this$0.headers;
                if (aPIHeaders4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headers");
                    aPIHeaders4 = null;
                }
                Request.Builder builderHeader4 = builderHeader3.header("App-Version", aPIHeaders4.getAppVersion()).header("App-Type", AndroidContextPlugin.PLATFORM);
                APIHeaders aPIHeaders5 = this.this$0.headers;
                if (aPIHeaders5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headers");
                    aPIHeaders5 = null;
                }
                Request.Builder builderMethod = builderHeader4.header(Headers.GENERIC_USER_ID, aPIHeaders5.getUserId()).method(request.method(), request.body());
                APIHeaders aPIHeaders6 = this.this$0.headers;
                if (aPIHeaders6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("headers");
                    aPIHeaders6 = null;
                }
                for (String str : aPIHeaders6.getAdditionalHeaders().keySet()) {
                    Intrinsics.checkNotNullExpressionValue(str, "next(...)");
                    String str2 = str;
                    APIHeaders aPIHeaders7 = this.this$0.headers;
                    if (aPIHeaders7 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("headers");
                        aPIHeaders7 = null;
                    }
                    String str3 = aPIHeaders7.getAdditionalHeaders().get(str2);
                    if (str3 == null) {
                        str3 = "";
                    }
                    builderMethod.header(str2, str3);
                }
                return chain.proceed(builderMethod.build());
            }
        }).addInterceptor(httpLoggingInterceptor);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        OkHttpClient.Builder builderConnectTimeout = builderAddInterceptor.readTimeout(30L, timeUnit).writeTimeout(30L, timeUnit).connectTimeout(30L, timeUnit).connectTimeout(30L, timeUnit);
        if (this.isDebug) {
            builderConnectTimeout.addInterceptor(new CurlLoggerInterceptor("CURL"));
        }
        return builderConnectTimeout.build();
    }

    /* JADX INFO: renamed from: getRefreshToken$network_release, reason: from getter */
    public final String getRefreshToken() {
        return this.refreshToken;
    }

    public final void initialize(String deviceId, String systemId, String appVersion) throws NetworkHandlerException {
        Intrinsics.checkNotNullParameter(deviceId, "deviceId");
        Intrinsics.checkNotNullParameter(systemId, "systemId");
        Intrinsics.checkNotNullParameter(appVersion, "appVersion");
        if (networkHandler == null) {
            throw new NetworkHandlerException("Already Initialized");
        }
        this.headers = new APIHeaders(deviceId, systemId, appVersion, null, null, null, 56, null);
    }

    /* JADX INFO: renamed from: isDebug, reason: from getter */
    public final boolean getIsDebug() {
        return this.isDebug;
    }

    public final void setAccessToken(String accessToken) {
        Intrinsics.checkNotNullParameter(accessToken, "accessToken");
        checkIfInitialized();
        APIHeaders aPIHeaders = this.headers;
        if (aPIHeaders == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headers");
            aPIHeaders = null;
        }
        aPIHeaders.setAccessToken(accessToken);
    }

    public final void setAdditionalHeaders(HashMap<String, String> additionHeaders) {
        Intrinsics.checkNotNullParameter(additionHeaders, "additionHeaders");
        APIHeaders aPIHeaders = this.headers;
        if (aPIHeaders == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headers");
            aPIHeaders = null;
        }
        aPIHeaders.setAdditionalHeaders(additionHeaders);
    }

    public final void setRefreshToken(String refreshToken) {
        Intrinsics.checkNotNullParameter(refreshToken, "refreshToken");
        this.refreshToken = refreshToken;
    }

    public final void setUserId(String userId) throws NetworkHandlerException {
        Intrinsics.checkNotNullParameter(userId, "userId");
        checkIfInitialized();
        APIHeaders aPIHeaders = this.headers;
        if (aPIHeaders == null) {
            Intrinsics.throwUninitializedPropertyAccessException("headers");
            aPIHeaders = null;
        }
        aPIHeaders.setUserId(userId);
    }
}
