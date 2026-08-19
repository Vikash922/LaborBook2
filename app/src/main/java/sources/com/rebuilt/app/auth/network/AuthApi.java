package com.rebuilt.app.auth.network;

import com.boilerplate.network.model.DataResponse;
import com.rebuilt.app.auth.model.request.AuthRequestBody;
import com.rebuilt.app.auth.model.request.AuthResponse;
import com.rebuilt.app.auth.model.request.TruecallerRequestBody;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import retrofit2.Response;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: compiled from: AuthApi.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u0000 \u00102\u00020\u0001:\u0001\u0010J$\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ$\u0010\t\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ$\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\b\b\u0001\u0010\u0006\u001a\u00020\u0007H§@¢\u0006\u0002\u0010\bJ$\u0010\f\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\u00040\u00032\b\b\u0001\u0010\r\u001a\u00020\u000eH§@¢\u0006\u0002\u0010\u000f¨\u0006\u0011"}, m2722d2 = {"Lcom/laborbook/auth/network/AuthApi;", "", "generateOtp", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "", "authRequestBody", "Lcom/laborbook/auth/model/request/AuthRequestBody;", "(Lcom/laborbook/auth/model/request/AuthRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "resendOtp", "verifyOtp", "Lcom/laborbook/auth/model/request/AuthResponse;", "truecallerLogin", "truecallerRequestBody", "Lcom/laborbook/auth/model/request/TruecallerRequestBody;", "(Lcom/laborbook/auth/model/request/TruecallerRequestBody;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public interface AuthApi {
    public static final String API_VERSION = "api/v1";

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = Companion.$$INSTANCE;
    public static final String GENERATE_OTP = "/create-otp";
    public static final String RESENT_OTP = "/resend-otp";
    public static final String TRUECALLER_LOGIN = "/login/truecaller";
    public static final String VERIFY_OTP = "/verify-otp";

    @POST("api/v1/create-otp")
    Object generateOtp(@Body AuthRequestBody authRequestBody, Continuation<? super Response<DataResponse<Unit>>> continuation);

    @POST("api/v1/resend-otp")
    Object resendOtp(@Body AuthRequestBody authRequestBody, Continuation<? super Response<DataResponse<Unit>>> continuation);

    @POST("api/v1/login/truecaller")
    Object truecallerLogin(@Body TruecallerRequestBody truecallerRequestBody, Continuation<? super Response<DataResponse<AuthResponse>>> continuation);

    @POST("api/v1/verify-otp")
    Object verifyOtp(@Body AuthRequestBody authRequestBody, Continuation<? super Response<DataResponse<AuthResponse>>> continuation);

    /* JADX INFO: compiled from: AuthApi.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\n"}, m2722d2 = {"Lcom/laborbook/auth/network/AuthApi$Companion;", "", "<init>", "()V", "API_VERSION", "", "GENERATE_OTP", "RESENT_OTP", "VERIFY_OTP", "TRUECALLER_LOGIN", "auth_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final String API_VERSION = "api/v1";
        public static final String GENERATE_OTP = "/create-otp";
        public static final String RESENT_OTP = "/resend-otp";
        public static final String TRUECALLER_LOGIN = "/login/truecaller";
        public static final String VERIFY_OTP = "/verify-otp";

        private Companion() {
        }
    }
}
