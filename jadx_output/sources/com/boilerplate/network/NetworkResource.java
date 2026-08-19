package com.boilerplate.network;

import com.boilerplate.network.RefreshControl;
import com.boilerplate.network.model.DataResponse;
import com.boilerplate.network.model.NetworkResult;
import com.boilerplate.network.utils.NetworkUtils;
import com.google.android.gms.actions.SearchIntents;
import java.util.Date;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
import org.jacoco.core.runtime.AgentOptions;
import retrofit2.Response;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0018\u0000*\u0006\b\u0000\u0010\u0001 \u00012\u00020\u00022\u00020\u0003B=\u0012*\u0010\u0004\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\rBI\b\u0010\u0012*\u0010\u0004\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0004\b\f\u0010\u0010B§\u0001\b\u0016\u0012*\u0010\u0004\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012$\u0010\u0011\u001a \b\u0001\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00120\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\"\u0010\u0013\u001a\u001e\b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0014\u0012\u001c\u0010\u0016\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b¢\u0006\u0004\b\f\u0010\u0017J&\u0010\u001d\u001a\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001f0\u001e2\b\b\u0002\u0010 \u001a\u00020\u000fH\u0086@¢\u0006\u0002\u0010!J\u0017\u0010\"\u001a\u00020\u000f2\b\u0010#\u001a\u0004\u0018\u00018\u0000H\u0002¢\u0006\u0002\u0010$J\u000e\u0010%\u001a\u00020\u0015H\u0096@¢\u0006\u0002\u0010&J\u0010\u0010'\u001a\u0004\u0018\u00010\u0015H\u0082@¢\u0006\u0002\u0010&J\u0010\u0010(\u001a\u0004\u0018\u00018\u0000H\u0082@¢\u0006\u0002\u0010&J\u0016\u0010)\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001fH\u0082@¢\u0006\u0002\u0010&J,\u0010*\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001f2\u0014\u0010+\u001a\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0018\u00010\u0007H\u0082@¢\u0006\u0002\u0010,J\u0016\u0010-\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u001fH\u0086@¢\u0006\u0002\u0010&J\u000e\u0010.\u001a\u00020\u000fH\u0082@¢\u0006\u0002\u0010&J\u0016\u0010/\u001a\u00020\u00152\u0006\u0010%\u001a\u00020\u000fH\u0096A¢\u0006\u0002\u0010!R4\u0010\u0004\u001a&\b\u0001\u0012\u0018\u0012\u0016\u0012\u0012\u0012\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\b\u0018\u00010\u00070\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0005X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R0\u0010\u0011\u001a\"\b\u0001\u0012\u0012\u0012\u0010\u0012\f\u0012\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00120\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R.\u0010\u0013\u001a \b\u0001\u0012\u0004\u0012\u00028\u0000\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0019R(\u0010\u0016\u001a\u001a\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00150\u0006\u0012\u0006\u0012\u0004\u0018\u00010\t\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0018R\u0012\u0010\u001a\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u001bR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000b\u00100\u001a\u0004\u0018\u000101X\u0096\u0005R\t\u00102\u001a\u000203X\u0096\u000f¨\u00064"}, m2722d2 = {"Lcom/boilerplate/network/NetworkResource;", "Output", "Lcom/boilerplate/network/RefreshControl$Listener;", "Lcom/boilerplate/network/ITimeLimitedResource;", "remoteFetch", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "Lretrofit2/Response;", "Lcom/boilerplate/network/model/DataResponse;", "", "refreshControl", "Lcom/boilerplate/network/RefreshControl;", "<init>", "(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V", "isCallingGenerateAccessToken", "", "(Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;Z)V", "localFetch", "", "localStore", "Lkotlin/Function2;", "", "localDelete", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lcom/boilerplate/network/RefreshControl;)V", "Lkotlin/jvm/functions/Function1;", "Lkotlin/jvm/functions/Function2;", "localData", "Ljava/lang/Object;", "isAccessTokenAPICalled", SearchIntents.EXTRA_QUERY, "Lkotlinx/coroutines/flow/Flow;", "Lcom/boilerplate/network/model/NetworkResult;", "force", "(ZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isSameAsCached", AgentOptions.OUTPUT, "(Ljava/lang/Object;)Z", "cleanup", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "deleteLocal", "fetchFromLocal", "fetchFromRemote", "getDataFromResponse", "response", "(Lretrofit2/Response;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "queryWithoutFlow", "generateAccessToken", "evict", "lastUpdate", "Ljava/util/Date;", "refreshRate", "", "network_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class NetworkResource<Output> implements RefreshControl.Listener, ITimeLimitedResource {
    private boolean isAccessTokenAPICalled;
    private boolean isCallingGenerateAccessToken;
    private Output localData;
    private Function1<? super Continuation<? super Unit>, ? extends Object> localDelete;
    private Function1<? super Continuation<? super List<? extends Output>>, ? extends Object> localFetch;
    private Function2<? super Output, ? super Continuation<? super Unit>, ? extends Object> localStore;
    private final RefreshControl refreshControl;
    private final Function1<Continuation<? super Response<DataResponse<Output>>>, Object> remoteFetch;

    /* JADX WARN: Multi-variable type inference failed */
    public NetworkResource(Function1<? super Continuation<? super Response<DataResponse<Output>>>, ? extends Object> remoteFetch, RefreshControl refreshControl) {
        Intrinsics.checkNotNullParameter(remoteFetch, "remoteFetch");
        Intrinsics.checkNotNullParameter(refreshControl, "refreshControl");
        this.remoteFetch = remoteFetch;
        this.refreshControl = refreshControl;
        refreshControl.addListener(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object deleteLocal(kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.boilerplate.network.C1098a
            if (r0 == 0) goto L13
            r0 = r6
            com.boilerplate.network.a r0 = (com.boilerplate.network.C1098a) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.boilerplate.network.a r0 = new com.boilerplate.network.a
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L50
            goto L49
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L50
            kotlinx.coroutines.CoroutineDispatcher r6 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L50
            com.boilerplate.network.b r2 = new com.boilerplate.network.b     // Catch: java.lang.Throwable -> L50
            r2.<init>(r5, r3)     // Catch: java.lang.Throwable -> L50
            r0.label = r4     // Catch: java.lang.Throwable -> L50
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)     // Catch: java.lang.Throwable -> L50
            if (r6 != r1) goto L49
            return r1
        L49:
            kotlin.Unit r6 = (kotlin.Unit) r6     // Catch: java.lang.Throwable -> L50
            java.lang.Object r6 = kotlin.Result.m3325constructorimpl(r6)     // Catch: java.lang.Throwable -> L50
            goto L5b
        L50:
            r6 = move-exception
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = kotlin.Result.m3325constructorimpl(r6)
        L5b:
            boolean r0 = kotlin.Result.m3331isFailureimpl(r6)
            if (r0 == 0) goto L62
            goto L63
        L62:
            r3 = r6
        L63:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.NetworkResource.deleteLocal(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchFromLocal(kotlin.coroutines.Continuation<? super Output> r6) {
        /*
            r5 = this;
            boolean r0 = r6 instanceof com.boilerplate.network.C1101c
            if (r0 == 0) goto L13
            r0 = r6
            com.boilerplate.network.c r0 = (com.boilerplate.network.C1101c) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.boilerplate.network.c r0 = new com.boilerplate.network.c
            r0.<init>(r5, r6)
        L18:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 1
            if (r2 == 0) goto L32
            if (r2 != r4) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)     // Catch: java.lang.Throwable -> L4e
            goto L49
        L2a:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlin.Result$Companion r6 = kotlin.Result.INSTANCE     // Catch: java.lang.Throwable -> L4e
            kotlinx.coroutines.CoroutineDispatcher r6 = kotlinx.coroutines.Dispatchers.getIO()     // Catch: java.lang.Throwable -> L4e
            com.boilerplate.network.d r2 = new com.boilerplate.network.d     // Catch: java.lang.Throwable -> L4e
            r2.<init>(r5, r3)     // Catch: java.lang.Throwable -> L4e
            r0.label = r4     // Catch: java.lang.Throwable -> L4e
            java.lang.Object r6 = kotlinx.coroutines.BuildersKt.withContext(r6, r2, r0)     // Catch: java.lang.Throwable -> L4e
            if (r6 != r1) goto L49
            return r1
        L49:
            java.lang.Object r6 = kotlin.Result.m3325constructorimpl(r6)     // Catch: java.lang.Throwable -> L4e
            goto L59
        L4e:
            r6 = move-exception
            kotlin.Result$Companion r0 = kotlin.Result.INSTANCE
            java.lang.Object r6 = kotlin.ResultKt.createFailure(r6)
            java.lang.Object r6 = kotlin.Result.m3325constructorimpl(r6)
        L59:
            boolean r0 = kotlin.Result.m3331isFailureimpl(r6)
            if (r0 == 0) goto L60
            goto L61
        L60:
            r3 = r6
        L61:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.NetworkResource.fetchFromLocal(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object fetchFromRemote(kotlin.coroutines.Continuation<? super com.boilerplate.network.model.NetworkResult<? extends Output>> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.boilerplate.network.C1103e
            if (r0 == 0) goto L13
            r0 = r9
            com.boilerplate.network.e r0 = (com.boilerplate.network.C1103e) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.label = r1
            goto L18
        L13:
            com.boilerplate.network.e r0 = new com.boilerplate.network.e
            r0.<init>(r8, r9)
        L18:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L39
            if (r2 != r3) goto L31
            java.lang.Object r1 = r0.L$1
            kotlin.jvm.internal.Ref$ObjectRef r1 = (kotlin.jvm.internal.Ref.ObjectRef) r1
            java.lang.Object r0 = r0.L$0
            com.boilerplate.network.NetworkResource r0 = (com.boilerplate.network.NetworkResource) r0
            kotlin.ResultKt.throwOnFailure(r9)
            goto L5f
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            kotlin.ResultKt.throwOnFailure(r9)
            kotlin.jvm.internal.Ref$ObjectRef r9 = new kotlin.jvm.internal.Ref$ObjectRef
            r9.<init>()
            kotlin.jvm.internal.Ref$ObjectRef r2 = new kotlin.jvm.internal.Ref$ObjectRef
            r2.<init>()
            kotlinx.coroutines.CoroutineDispatcher r4 = kotlinx.coroutines.Dispatchers.getIO()
            com.boilerplate.network.f r5 = new com.boilerplate.network.f
            r6 = 0
            r5.<init>(r9, r8, r2, r6)
            r0.L$0 = r8
            r0.L$1 = r2
            r0.label = r3
            java.lang.Object r9 = kotlinx.coroutines.BuildersKt.withContext(r4, r5, r0)
            if (r9 != r1) goto L5d
            return r1
        L5d:
            r0 = r8
            r1 = r2
        L5f:
            T r9 = r1.element
            com.boilerplate.network.model.NetworkResult r9 = (com.boilerplate.network.model.NetworkResult) r9
            if (r9 != 0) goto L78
            com.boilerplate.network.model.NetworkResult$Companion r1 = com.boilerplate.network.model.NetworkResult.INSTANCE
            Output r2 = r0.localData
            r9 = 2
            java.lang.Integer r4 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r9)
            r6 = 8
            r7 = 0
            java.lang.String r3 = ""
            r5 = 0
            com.boilerplate.network.model.NetworkResult r9 = com.boilerplate.network.model.NetworkResult.Companion.error$default(r1, r2, r3, r4, r5, r6, r7)
        L78:
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.NetworkResource.fetchFromRemote(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object generateAccessToken(kotlin.coroutines.Continuation<? super java.lang.Boolean> r12) {
        /*
            Method dump skipped, instruction units count: 277
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.NetworkResource.generateAccessToken(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ac  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00b9 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object getDataFromResponse(retrofit2.Response<com.boilerplate.network.model.DataResponse<Output>> r14, kotlin.coroutines.Continuation<? super com.boilerplate.network.model.NetworkResult<? extends Output>> r15) {
        /*
            Method dump skipped, instruction units count: 265
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.boilerplate.network.NetworkResource.getDataFromResponse(retrofit2.Response, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isSameAsCached(Output output) {
        Output output2;
        return (output == null || (output2 = this.localData) == null || !NetworkUtils.INSTANCE.deepEquals(output, output2)) ? false : true;
    }

    public static /* synthetic */ Object query$default(NetworkResource networkResource, boolean z, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        return networkResource.query(z, continuation);
    }

    @Override // com.boilerplate.network.RefreshControl.Listener
    public Object cleanup(Continuation<? super Unit> continuation) {
        return deleteLocal(continuation);
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    public Object evict(boolean z, Continuation<? super Unit> continuation) {
        return this.refreshControl.evict(z, continuation);
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    /* JADX INFO: renamed from: getLastUpdate */
    public Date getLastUpdateDate() {
        return this.refreshControl.getLastUpdateDate();
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    public long getRefreshRate() {
        return this.refreshControl.getRefreshRate();
    }

    public final Object query(boolean z, Continuation<? super Flow<? extends NetworkResult<? extends Output>>> continuation) {
        return FlowKt.flow(new C1108j(z, this, null));
    }

    public final Object queryWithoutFlow(Continuation<? super NetworkResult<? extends Output>> continuation) {
        return fetchFromRemote(continuation);
    }

    @Override // com.boilerplate.network.ITimeLimitedResource
    public void setRefreshRate(long j) {
        this.refreshControl.setRefreshRate(j);
    }

    public /* synthetic */ NetworkResource(Function1 function1, RefreshControl refreshControl, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i & 2) != 0 ? new RefreshControl(0L, null, 3, null) : refreshControl);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetworkResource(Function1<? super Continuation<? super Response<DataResponse<Output>>>, ? extends Object> remoteFetch, RefreshControl refreshControl, boolean z) {
        this(remoteFetch, refreshControl);
        Intrinsics.checkNotNullParameter(remoteFetch, "remoteFetch");
        Intrinsics.checkNotNullParameter(refreshControl, "refreshControl");
        this.isCallingGenerateAccessToken = z;
    }

    public /* synthetic */ NetworkResource(Function1 function1, RefreshControl refreshControl, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, (i & 2) != 0 ? new RefreshControl(0L, null, 3, null) : refreshControl, (i & 4) != 0 ? false : z);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NetworkResource(Function1<? super Continuation<? super Response<DataResponse<Output>>>, ? extends Object> remoteFetch, Function1<? super Continuation<? super List<? extends Output>>, ? extends Object> localFetch, Function2<? super Output, ? super Continuation<? super Unit>, ? extends Object> localStore, Function1<? super Continuation<? super Unit>, ? extends Object> localDelete, RefreshControl refreshControl) {
        this(remoteFetch, refreshControl);
        Intrinsics.checkNotNullParameter(remoteFetch, "remoteFetch");
        Intrinsics.checkNotNullParameter(localFetch, "localFetch");
        Intrinsics.checkNotNullParameter(localStore, "localStore");
        Intrinsics.checkNotNullParameter(localDelete, "localDelete");
        Intrinsics.checkNotNullParameter(refreshControl, "refreshControl");
        this.localFetch = localFetch;
        this.localStore = localStore;
        this.localDelete = localDelete;
    }

    public /* synthetic */ NetworkResource(Function1 function1, Function1 function12, Function2 function2, Function1 function13, RefreshControl refreshControl, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(function1, function12, function2, (Function1<? super Continuation<? super Unit>, ? extends Object>) function13, (i & 16) != 0 ? new RefreshControl(0L, null, 3, null) : refreshControl);
    }
}
