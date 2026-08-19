package com.laborbook.keep.screen;

import com.laborbook.base.datastore.DataStoreManager;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: renamed from: com.laborbook.keep.screen.AppLockActivity$setupBiometricPrompt$1$onAuthenticationSucceeded$1 */
/* JADX INFO: compiled from: AppLockActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.AppLockActivity$setupBiometricPrompt$1$onAuthenticationSucceeded$1", m2735f = "AppLockActivity.kt", m2736i = {}, m2737l = {54}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class C3685x408b8168 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ AppLockActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    C3685x408b8168(AppLockActivity appLockActivity, Continuation<? super C3685x408b8168> continuation) {
        super(2, continuation);
        this.this$0 = appLockActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new C3685x408b8168(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((C3685x408b8168) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            if (this.this$0.getDataStoreManager().write(DataStoreManager.INSTANCE.getLAST_AUTH_TIME(), String.valueOf(System.currentTimeMillis()), this) == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.setResult(-1);
        this.this$0.finish();
        return Unit.INSTANCE;
    }
}
