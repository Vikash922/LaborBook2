package com.laborbook.auth.screen.login.view;

import com.laborbook.auth.databinding.FragmentOtpBinding;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: OtpFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.auth.screen.login.view.OtpFragment$registerOnClickListeners$1$1$1", m2735f = "OtpFragment.kt", m2736i = {1}, m2737l = {108, 109}, m2738m = "invokeSuspend", m2739n = {"installSource"}, m2740s = {"L$0"})
final class OtpFragment$registerOnClickListeners$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentOtpBinding $this_apply;
    Object L$0;
    int label;
    final /* synthetic */ OtpFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    OtpFragment$registerOnClickListeners$1$1$1(OtpFragment otpFragment, FragmentOtpBinding fragmentOtpBinding, Continuation<? super OtpFragment$registerOnClickListeners$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = otpFragment;
        this.$this_apply = fragmentOtpBinding;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new OtpFragment$registerOnClickListeners$1$1$1(this.this$0, this.$this_apply, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((OtpFragment$registerOnClickListeners$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0088  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00b3  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r12) {
        /*
            r11 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r11.label
            r2 = 2
            java.lang.String r3 = ""
            r4 = 1
            if (r1 == 0) goto L24
            if (r1 == r4) goto L20
            if (r1 != r2) goto L18
            java.lang.Object r0 = r11.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.ResultKt.throwOnFailure(r12)
            goto L65
        L18:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r12.<init>(r0)
            throw r12
        L20:
            kotlin.ResultKt.throwOnFailure(r12)
            goto L43
        L24:
            kotlin.ResultKt.throwOnFailure(r12)
            com.laborbook.auth.screen.login.view.OtpFragment r12 = r11.this$0
            com.laborbook.base.datastore.DataStoreManager r12 = r12.getDataStoreManager()
            com.laborbook.base.datastore.DataStoreManager$Companion r1 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r1 = r1.getINSTALL_SOURCE()
            kotlinx.coroutines.flow.Flow r12 = r12.read(r1, r3)
            r1 = r11
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r11.label = r4
            java.lang.Object r12 = kotlinx.coroutines.flow.FlowKt.first(r12, r1)
            if (r12 != r0) goto L43
            return r0
        L43:
            java.lang.String r12 = (java.lang.String) r12
            com.laborbook.auth.screen.login.view.OtpFragment r1 = r11.this$0
            com.laborbook.base.datastore.DataStoreManager r1 = r1.getDataStoreManager()
            com.laborbook.base.datastore.DataStoreManager$Companion r5 = com.laborbook.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r5 = r5.getINSTALL_REFERRER_RAW()
            kotlinx.coroutines.flow.Flow r1 = r1.read(r5, r3)
            r5 = r11
            kotlin.coroutines.Continuation r5 = (kotlin.coroutines.Continuation) r5
            r11.L$0 = r12
            r11.label = r2
            java.lang.Object r1 = kotlinx.coroutines.flow.FlowKt.first(r1, r5)
            if (r1 != r0) goto L63
            return r0
        L63:
            r0 = r12
            r12 = r1
        L65:
            java.lang.String r12 = (java.lang.String) r12
            com.laborbook.auth.screen.login.view.OtpFragment r1 = r11.this$0
            com.laborbook.auth.screen.login.viewmodel.AuthViewModel r1 = com.laborbook.auth.screen.login.view.OtpFragment.access$getViewModel(r1)
            com.laborbook.auth.screen.login.view.OtpFragment r2 = r11.this$0
            java.lang.String r7 = com.laborbook.auth.screen.login.view.OtpFragment.access$getMobileNumber$p(r2)
            com.laborbook.auth.databinding.FragmentOtpBinding r2 = r11.$this_apply
            com.mukeshsolanki.OtpView r2 = r2.otpView
            android.text.Editable r2 = r2.getText()
            java.lang.String r8 = java.lang.String.valueOf(r2)
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            boolean r2 = kotlin.text.StringsKt.isBlank(r0)
            r5 = 0
            if (r2 == 0) goto L89
            r0 = r5
        L89:
            r9 = r0
            java.lang.String r9 = (java.lang.String) r9
            java.lang.CharSequence r12 = (java.lang.CharSequence) r12
            boolean r0 = kotlin.text.StringsKt.isBlank(r12)
            if (r0 == 0) goto L95
            goto L96
        L95:
            r5 = r12
        L96:
            r10 = r5
            java.lang.String r10 = (java.lang.String) r10
            com.laborbook.auth.model.request.AuthRequestBody r12 = new com.laborbook.auth.model.request.AuthRequestBody
            java.lang.String r6 = "91"
            r5 = r12
            r5.<init>(r6, r7, r8, r9, r10)
            r1.verifyOtp(r12)
            com.laborbook.auth.screen.login.view.OtpFragment r12 = r11.this$0
            kotlin.Pair[] r0 = new kotlin.Pair[r4]
            kotlin.Pair r1 = new kotlin.Pair
            com.laborbook.auth.screen.login.view.OtpFragment r2 = r11.this$0
            java.lang.String r2 = com.laborbook.auth.screen.login.view.OtpFragment.access$getMobileNumber$p(r2)
            if (r2 != 0) goto Lb3
            goto Lb4
        Lb3:
            r3 = r2
        Lb4:
            java.lang.String r2 = "mobile_number"
            r1.<init>(r2, r3)
            r2 = 0
            r0[r2] = r1
            java.util.HashMap r0 = kotlin.collections.MapsKt.hashMapOf(r0)
            java.lang.String r1 = "verify_otp"
            r12.recordClickEvent(r1, r0)
            kotlin.Unit r12 = kotlin.Unit.INSTANCE
            return r12
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.auth.screen.login.view.OtpFragment$registerOnClickListeners$1$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
