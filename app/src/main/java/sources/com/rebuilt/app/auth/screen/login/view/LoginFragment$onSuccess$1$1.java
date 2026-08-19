package com.rebuilt.app.auth.screen.login.view;

import com.truecaller.android.sdk.oAuth.TcOAuthData;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: LoginFragment.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.auth.screen.login.view.LoginFragment$onSuccess$1$1", m2735f = "LoginFragment.kt", m2736i = {1}, m2737l = {356, 357}, m2738m = "invokeSuspend", m2739n = {"installSource"}, m2740s = {"L$0"})
final class LoginFragment$onSuccess$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ TcOAuthData $tcOAuthData;
    final /* synthetic */ String $verifier;
    Object L$0;
    int label;
    final /* synthetic */ LoginFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginFragment$onSuccess$1$1(LoginFragment loginFragment, TcOAuthData tcOAuthData, String str, Continuation<? super LoginFragment$onSuccess$1$1> continuation) {
        super(2, continuation);
        this.this$0 = loginFragment;
        this.$tcOAuthData = tcOAuthData;
        this.$verifier = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new LoginFragment$onSuccess$1$1(this.this$0, this.$tcOAuthData, this.$verifier, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((LoginFragment$onSuccess$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x007e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x008a  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invokeSuspend(java.lang.Object r7) {
        /*
            r6 = this;
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r6.label
            java.lang.String r2 = ""
            r3 = 2
            r4 = 1
            if (r1 == 0) goto L24
            if (r1 == r4) goto L20
            if (r1 != r3) goto L18
            java.lang.Object r0 = r6.L$0
            java.lang.String r0 = (java.lang.String) r0
            kotlin.ResultKt.throwOnFailure(r7)
            goto L65
        L18:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L20:
            kotlin.ResultKt.throwOnFailure(r7)
            goto L43
        L24:
            kotlin.ResultKt.throwOnFailure(r7)
            com.rebuilt.app.auth.screen.login.view.LoginFragment r7 = r6.this$0
            com.rebuilt.app.base.datastore.DataStoreManager r7 = r7.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r1 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r1 = r1.getINSTALL_SOURCE()
            kotlinx.coroutines.flow.Flow r7 = r7.read(r1, r2)
            r1 = r6
            kotlin.coroutines.Continuation r1 = (kotlin.coroutines.Continuation) r1
            r6.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r1)
            if (r7 != r0) goto L43
            return r0
        L43:
            java.lang.String r7 = (java.lang.String) r7
            com.rebuilt.app.auth.screen.login.view.LoginFragment r1 = r6.this$0
            com.rebuilt.app.base.datastore.DataStoreManager r1 = r1.getDataStoreManager()
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r4 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r4 = r4.getINSTALL_REFERRER_RAW()
            kotlinx.coroutines.flow.Flow r1 = r1.read(r4, r2)
            r2 = r6
            kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
            r6.L$0 = r7
            r6.label = r3
            java.lang.Object r1 = kotlinx.coroutines.flow.FlowKt.first(r1, r2)
            if (r1 != r0) goto L63
            return r0
        L63:
            r0 = r7
            r7 = r1
        L65:
            java.lang.String r7 = (java.lang.String) r7
            com.rebuilt.app.auth.screen.login.view.LoginFragment r1 = r6.this$0
            com.rebuilt.app.auth.screen.login.viewmodel.AuthViewModel r1 = com.rebuilt.app.auth.screen.login.view.LoginFragment.access$getViewModel(r1)
            com.truecaller.android.sdk.oAuth.TcOAuthData r2 = r6.$tcOAuthData
            java.lang.String r2 = r2.getAuthorizationCode()
            java.lang.String r3 = r6.$verifier
            java.lang.CharSequence r0 = (java.lang.CharSequence) r0
            boolean r4 = kotlin.text.StringsKt.isBlank(r0)
            r5 = 0
            if (r4 == 0) goto L7f
            r0 = r5
        L7f:
            java.lang.String r0 = (java.lang.String) r0
            java.lang.CharSequence r7 = (java.lang.CharSequence) r7
            boolean r4 = kotlin.text.StringsKt.isBlank(r7)
            if (r4 == 0) goto L8a
            goto L8b
        L8a:
            r5 = r7
        L8b:
            java.lang.String r5 = (java.lang.String) r5
            com.rebuilt.app.auth.model.request.TruecallerRequestBody r7 = new com.rebuilt.app.auth.model.request.TruecallerRequestBody
            r7.<init>(r2, r3, r0, r5)
            r1.truecallerLogin(r7)
            kotlin.Unit r7 = kotlin.Unit.INSTANCE
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.auth.screen.login.view.LoginFragment$onSuccess$1$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
