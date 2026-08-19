package com.laborbook.keep.screen;

import com.boilerplate.network.model.DataResponse;
import com.laborbook.keep.model.StaffUserResponseModel;
import com.laborbook.keep.network.KeepApi;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import org.objectweb.asm.Opcodes;
import retrofit2.Response;

/* JADX INFO: compiled from: BookKeepActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001*\u00020\u0004H\n"}, m2722d2 = {"<anonymous>", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "Lcom/laborbook/keep/model/StaffUserResponseModel;", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.BookKeepActivity$checkAndShowHardPaywall$1$response$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {Opcodes.IF_ICMPLE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class BookKeepActivity$checkAndShowHardPaywall$1$response$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Response<DataResponse<StaffUserResponseModel>>>, Object> {
    final /* synthetic */ KeepApi $api;
    final /* synthetic */ String $userId;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BookKeepActivity$checkAndShowHardPaywall$1$response$1(KeepApi keepApi, String str, Continuation<? super BookKeepActivity$checkAndShowHardPaywall$1$response$1> continuation) {
        super(2, continuation);
        this.$api = keepApi;
        this.$userId = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BookKeepActivity$checkAndShowHardPaywall$1$response$1(this.$api, this.$userId, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Response<DataResponse<StaffUserResponseModel>>> continuation) {
        return ((BookKeepActivity$checkAndShowHardPaywall$1$response$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = this.$api.getStaffUsers(this.$userId, this);
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
