package com.rebuilt.app.base.datastore;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: DataStoreManagerExtensions.kt */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(m2721d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0012\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u0086@¢\u0006\u0002\u0010\u0003\u001a\u0012\u0010\u0004\u001a\u00020\u0001*\u00020\u0002H\u0086@¢\u0006\u0002\u0010\u0003¨\u0006\u0005"}, m2722d2 = {"shouldShowGoogleAds", "", "Lcom/laborbook/base/datastore/DataStoreManager;", "(Lcom/laborbook/base/datastore/DataStoreManager;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldShowHomePageAds", "base_release"}, m2723k = 2, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class DataStoreManagerExtensionsKt {

    /* JADX INFO: renamed from: com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowGoogleAds$1 */
    /* JADX INFO: compiled from: DataStoreManagerExtensions.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt", m2735f = "DataStoreManagerExtensions.kt", m2736i = {0}, m2737l = {22, 32}, m2738m = "shouldShowGoogleAds", m2739n = {"$this$shouldShowGoogleAds"}, m2740s = {"L$0"})
    static final class C35851 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35851(Continuation<? super C35851> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreManagerExtensionsKt.shouldShowGoogleAds(null, this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowHomePageAds$1 */
    /* JADX INFO: compiled from: DataStoreManagerExtensions.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt", m2735f = "DataStoreManagerExtensions.kt", m2736i = {0}, m2737l = {43, 53}, m2738m = "shouldShowHomePageAds", m2739n = {"$this$shouldShowHomePageAds"}, m2740s = {"L$0"})
    static final class C35861 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35861(Continuation<? super C35861> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return DataStoreManagerExtensionsKt.shouldShowHomePageAds(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object shouldShowGoogleAds(com.rebuilt.app.base.datastore.DataStoreManager r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            boolean r0 = r7 instanceof com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt.C35851
            if (r0 == 0) goto L14
            r0 = r7
            com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowGoogleAds$1 r0 = (com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt.C35851) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowGoogleAds$1 r0 = new com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowGoogleAds$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L94
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$0
            com.rebuilt.app.base.datastore.DataStoreManager r6 = (com.rebuilt.app.base.datastore.DataStoreManager) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L59
        L3d:
            kotlin.ResultKt.throwOnFailure(r7)
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r7 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r7 = r7.getGOOGLE_ADS_ENABLED()
            java.lang.Boolean r2 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            kotlinx.coroutines.flow.Flow r7 = r6.read(r7, r2)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r0)
            if (r7 != r1) goto L59
            return r1
        L59:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            r2 = 0
            if (r7 != 0) goto L67
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            return r6
        L67:
            com.google.firebase.ktx.Firebase r7 = com.google.firebase.ktx.Firebase.INSTANCE
            com.google.firebase.remoteconfig.FirebaseRemoteConfig r7 = com.google.firebase.remoteconfig.ktx.RemoteConfigKt.getRemoteConfig(r7)
            com.rebuilt.app.base.utils.SubscriptionsFeatureFlag r5 = com.rebuilt.app.base.utils.SubscriptionsFeatureFlag.INSTANCE
            boolean r7 = r5.isSubscriptionsEnabled(r7)
            if (r7 != 0) goto L7a
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r6
        L7a:
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r7 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r7 = r7.getPRO_STATUS()
            java.lang.Boolean r2 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            kotlinx.coroutines.flow.Flow r6 = r6.read(r7, r2)
            r7 = 0
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r6, r0)
            if (r7 != r1) goto L94
            return r1
        L94:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r6 = r7.booleanValue()
            r6 = r6 ^ r4
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt.shouldShowGoogleAds(com.rebuilt.app.base.datastore.DataStoreManager, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final java.lang.Object shouldShowHomePageAds(com.rebuilt.app.base.datastore.DataStoreManager r6, kotlin.coroutines.Continuation<? super java.lang.Boolean> r7) {
        /*
            boolean r0 = r7 instanceof com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt.C35861
            if (r0 == 0) goto L14
            r0 = r7
            com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowHomePageAds$1 r0 = (com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt.C35861) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r7 = r0.label
            int r7 = r7 - r2
            r0.label = r7
            goto L19
        L14:
            com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowHomePageAds$1 r0 = new com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt$shouldShowHomePageAds$1
            r0.<init>(r7)
        L19:
            java.lang.Object r7 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3d
            if (r2 == r4) goto L35
            if (r2 != r3) goto L2d
            kotlin.ResultKt.throwOnFailure(r7)
            goto L94
        L2d:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L35:
            java.lang.Object r6 = r0.L$0
            com.rebuilt.app.base.datastore.DataStoreManager r6 = (com.rebuilt.app.base.datastore.DataStoreManager) r6
            kotlin.ResultKt.throwOnFailure(r7)
            goto L59
        L3d:
            kotlin.ResultKt.throwOnFailure(r7)
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r7 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r7 = r7.getHOME_PAGE_ADS_ENABLED()
            java.lang.Boolean r2 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            kotlinx.coroutines.flow.Flow r7 = r6.read(r7, r2)
            r0.L$0 = r6
            r0.label = r4
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r7, r0)
            if (r7 != r1) goto L59
            return r1
        L59:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r7 = r7.booleanValue()
            r2 = 0
            if (r7 != 0) goto L67
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            return r6
        L67:
            com.google.firebase.ktx.Firebase r7 = com.google.firebase.ktx.Firebase.INSTANCE
            com.google.firebase.remoteconfig.FirebaseRemoteConfig r7 = com.google.firebase.remoteconfig.ktx.RemoteConfigKt.getRemoteConfig(r7)
            com.rebuilt.app.base.utils.SubscriptionsFeatureFlag r5 = com.rebuilt.app.base.utils.SubscriptionsFeatureFlag.INSTANCE
            boolean r7 = r5.isSubscriptionsEnabled(r7)
            if (r7 != 0) goto L7a
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r6
        L7a:
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r7 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r7 = r7.getPRO_STATUS()
            java.lang.Boolean r2 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r2)
            kotlinx.coroutines.flow.Flow r6 = r6.read(r7, r2)
            r7 = 0
            r0.L$0 = r7
            r0.label = r3
            java.lang.Object r7 = kotlinx.coroutines.flow.FlowKt.first(r6, r0)
            if (r7 != r1) goto L94
            return r1
        L94:
            java.lang.Boolean r7 = (java.lang.Boolean) r7
            boolean r6 = r7.booleanValue()
            r6 = r6 ^ r4
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r6)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt.shouldShowHomePageAds(com.rebuilt.app.base.datastore.DataStoreManager, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
