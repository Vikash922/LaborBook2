package com.rebuilt.app.auth.network;

import com.boilerplate.network.NetworkHandler;
import com.boilerplate.network.model.DataResponse;
import com.boilerplate.network.model.NetworkResult;
import com.rebuilt.app.auth.model.request.AuthRequestBody;
import com.rebuilt.app.auth.model.request.AuthResponse;
import com.rebuilt.app.auth.model.request.TruecallerRequestBody;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;

/* JADX INFO: compiled from: AuthNetworkModule.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0016\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u000e\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@¢\u0006\u0002\u0010\u0014J$\u0010\u0015\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00110\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@¢\u0006\u0002\u0010\u0014J$\u0010\u0016\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00100\u000f2\u0006\u0010\u0012\u001a\u00020\u0013H\u0086@¢\u0006\u0002\u0010\u0014J$\u0010\u0018\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u00100\u000f2\u0006\u0010\u0019\u001a\u00020\u001aH\u0086@¢\u0006\u0002\u0010\u001bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m2722d2 = {"Lcom/laborbook/auth/network/AuthNetworkModule;", "", "<init>", "()V", "baseUrl", "", "networkHandler", "Lcom/boilerplate/network/NetworkHandler;", "getNetworkHandler", "()Lcom/boilerplate/network/NetworkHandler;", "setNetworkHandler", "(Lcom/boilerplate/network/NetworkHandler;)V", "api", "Lcom/laborbook/auth/network/AuthApi;", "generateOtp", "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "", "authRequestBody", "Lcom/laborbook/auth/model/request/AuthRequestBody;", "(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resendOtp", "verifyOtp", "Lcom/laborbook/auth/model/request/AuthResponse;", "truecallerLogin", "truecallerRequestBody", "Lcom/laborbook/auth/model/request/TruecallerRequestBody;", "(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public class AuthNetworkModule {
    private final AuthApi api;
    private final String baseUrl = "https://api.laborbook.app/";
    private NetworkHandler networkHandler;

    public AuthNetworkModule() {
        NetworkHandler companion = NetworkHandler.INSTANCE.getInstance();
        this.networkHandler = companion;
        this.api = (AuthApi) new Retrofit.Builder().baseUrl("https://api.laborbook.app/").client(companion.getOkHttpClient()).addConverterFactory(GsonConverterFactory.create()).build().create(AuthApi.class);
    }

    public final NetworkHandler getNetworkHandler() {
        return this.networkHandler;
    }

    public final void setNetworkHandler(NetworkHandler networkHandler) {
        Intrinsics.checkNotNullParameter(networkHandler, "<set-?>");
        this.networkHandler = networkHandler;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.auth.network.AuthNetworkModule$generateOtp$2 */
    /* JADX INFO: compiled from: AuthNetworkModule.kt */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.auth.network.AuthNetworkModule$generateOtp$2", m2735f = "AuthNetworkModule.kt", m2736i = {}, m2737l = {20}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35552 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<Unit>>>, Object> {
        final /* synthetic */ AuthRequestBody $authRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35552(AuthRequestBody authRequestBody, Continuation<? super C35552> continuation) {
            super(1, continuation);
            this.$authRequestBody = authRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AuthNetworkModule.this.new C35552(this.$authRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<Unit>>> continuation) {
            return ((C35552) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthNetworkModule.this.api.generateOtp(this.$authRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object generateOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<Unit>>> continuation) {
        return this.networkHandler.getData(new C35552(authRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.auth.network.AuthNetworkModule$resendOtp$2 */
    /* JADX INFO: compiled from: AuthNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", ""}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.auth.network.AuthNetworkModule$resendOtp$2", m2735f = "AuthNetworkModule.kt", m2736i = {}, m2737l = {26}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35562 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<Unit>>>, Object> {
        final /* synthetic */ AuthRequestBody $authRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35562(AuthRequestBody authRequestBody, Continuation<? super C35562> continuation) {
            super(1, continuation);
            this.$authRequestBody = authRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AuthNetworkModule.this.new C35562(this.$authRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<Unit>>> continuation) {
            return ((C35562) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthNetworkModule.this.api.resendOtp(this.$authRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object resendOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<Unit>>> continuation) {
        return this.networkHandler.getData(new C35562(authRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.auth.network.AuthNetworkModule$verifyOtp$2 */
    /* JADX INFO: compiled from: AuthNetworkModule.kt */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/auth/model/request/AuthResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.auth.network.AuthNetworkModule$verifyOtp$2", m2735f = "AuthNetworkModule.kt", m2736i = {}, m2737l = {32}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35582 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<AuthResponse>>>, Object> {
        final /* synthetic */ AuthRequestBody $authRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35582(AuthRequestBody authRequestBody, Continuation<? super C35582> continuation) {
            super(1, continuation);
            this.$authRequestBody = authRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AuthNetworkModule.this.new C35582(this.$authRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<AuthResponse>>> continuation) {
            return ((C35582) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthNetworkModule.this.api.verifyOtp(this.$authRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object verifyOtp(AuthRequestBody authRequestBody, Continuation<? super Flow<NetworkResult<AuthResponse>>> continuation) {
        return this.networkHandler.getData(new C35582(authRequestBody, null), continuation);
    }

    /* JADX INFO: renamed from: com.rebuilt.app.auth.network.AuthNetworkModule$truecallerLogin$2 */
    /* JADX INFO: compiled from: AuthNetworkModule.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u0002\u0018\u00010\u0001H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/auth/model/request/AuthResponse;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.auth.network.AuthNetworkModule$truecallerLogin$2", m2735f = "AuthNetworkModule.kt", m2736i = {}, m2737l = {38}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35572 extends SuspendLambda implements Function1<Continuation<? super Response<DataResponse<AuthResponse>>>, Object> {
        final /* synthetic */ TruecallerRequestBody $truecallerRequestBody;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35572(TruecallerRequestBody truecallerRequestBody, Continuation<? super C35572> continuation) {
            super(1, continuation);
            this.$truecallerRequestBody = truecallerRequestBody;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Continuation<?> continuation) {
            return AuthNetworkModule.this.new C35572(this.$truecallerRequestBody, continuation);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object invoke(Continuation<? super Response<DataResponse<AuthResponse>>> continuation) {
            return ((C35572) create(continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = AuthNetworkModule.this.api.truecallerLogin(this.$truecallerRequestBody, this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    public final Object truecallerLogin(TruecallerRequestBody truecallerRequestBody, Continuation<? super Flow<NetworkResult<AuthResponse>>> continuation) {
        return this.networkHandler.getData(new C35572(truecallerRequestBody, null), continuation);
    }
}
