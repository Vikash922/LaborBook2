package com.rebuilt.app.keep.screen.premium;

import com.rebuilt.app.base.datastore.DataStoreManager;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.FlowKt;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: PremiumOfferManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\bJ\u000e\u0010\t\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\bJ\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u000e\u0010\u000f\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\bJ\u000e\u0010\u0010\u001a\u00020\u0007H\u0086@¢\u0006\u0002\u0010\bJ\u000e\u0010\u0011\u001a\u00020\u000bH\u0086@¢\u0006\u0002\u0010\bJ\u0016\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0013\u001a\u00020\u0014H\u0086@¢\u0006\u0002\u0010\u0015J\u0016\u0010\u0016\u001a\u00020\u000b2\u0006\u0010\u0017\u001a\u00020\u0018H\u0082@¢\u0006\u0002\u0010\u0019R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/keep/screen/premium/PremiumOfferManager;", "", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "<init>", "(Lcom/laborbook/base/datastore/DataStoreManager;)V", "shouldShowHardPaywall", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldShowPremiumOffer", "showPremiumOfferDialog", "", "activity", "Landroidx/fragment/app/FragmentActivity;", "(Landroidx/fragment/app/FragmentActivity;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markUserAsPremium", "isPremiumUser", "resetPremiumStatus", "updateSubscriptionStatus", "userSubscription", "Lcom/laborbook/keep/model/subscription/UserSubscription;", "(Lcom/laborbook/keep/model/subscription/UserSubscription;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "cacheSubscriptionData", "subscription", "Lcom/laborbook/keep/model/subscription/SubscriptionDetails;", "(Lcom/laborbook/keep/model/subscription/SubscriptionDetails;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class PremiumOfferManager {
    private static final int MAX_SHOW_COUNT = 100;
    private static final int SHOW_AFTER_DAYS = 0;
    private final DataStoreManager dataStoreManager;

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferManager$cacheSubscriptionData$1 */
    /* JADX INFO: compiled from: PremiumOfferManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferManager", m2735f = "PremiumOfferManager.kt", m2736i = {0, 0, 1, 1, 2, 2}, m2737l = {Opcodes.F2L, Opcodes.D2F, Opcodes.LCMP, Opcodes.DCMPG}, m2738m = "cacheSubscriptionData", m2739n = {"this", "subscription", "this", "subscription", "this", "subscription"}, m2740s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1"})
    static final class C38261 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C38261(Continuation<? super C38261> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferManager.this.cacheSubscriptionData(null, this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferManager$resetPremiumStatus$1 */
    /* JADX INFO: compiled from: PremiumOfferManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferManager", m2735f = "PremiumOfferManager.kt", m2736i = {0, 1}, m2737l = {113, 114, 115}, m2738m = "resetPremiumStatus", m2739n = {"this", "this"}, m2740s = {"L$0", "L$0"})
    static final class C38271 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C38271(Continuation<? super C38271> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferManager.this.resetPremiumStatus(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferManager$shouldShowHardPaywall$1 */
    /* JADX INFO: compiled from: PremiumOfferManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferManager", m2735f = "PremiumOfferManager.kt", m2736i = {0}, m2737l = {38, 41}, m2738m = "shouldShowHardPaywall", m2739n = {"this"}, m2740s = {"L$0"})
    static final class C38281 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C38281(Continuation<? super C38281> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferManager.this.shouldShowHardPaywall(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferManager$shouldShowPremiumOffer$1 */
    /* JADX INFO: compiled from: PremiumOfferManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferManager", m2735f = "PremiumOfferManager.kt", m2736i = {0, 1}, m2737l = {58, 64, 70}, m2738m = "shouldShowPremiumOffer", m2739n = {"this", "this"}, m2740s = {"L$0", "L$0"})
    static final class C38291 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C38291(Continuation<? super C38291> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferManager.this.shouldShowPremiumOffer(this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferManager$showPremiumOfferDialog$1 */
    /* JADX INFO: compiled from: PremiumOfferManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferManager", m2735f = "PremiumOfferManager.kt", m2736i = {0, 0, 1, 1, 2, 2, 3}, m2737l = {81, 86, 87, 88}, m2738m = "showPremiumOfferDialog", m2739n = {"this", "activity", "this", "activity", "this", "activity", "activity"}, m2740s = {"L$0", "L$1", "L$0", "L$1", "L$0", "L$1", "L$0"})
    static final class C38301 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;

        C38301(Continuation<? super C38301> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferManager.this.showPremiumOfferDialog(null, this);
        }
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.premium.PremiumOfferManager$updateSubscriptionStatus$1 */
    /* JADX INFO: compiled from: PremiumOfferManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.premium.PremiumOfferManager", m2735f = "PremiumOfferManager.kt", m2736i = {0, 0, 0}, m2737l = {124, 131}, m2738m = "updateSubscriptionStatus", m2739n = {"this", "userSubscription", "isPro"}, m2740s = {"L$0", "L$1", "Z$0"})
    static final class C38311 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;

        C38311(Continuation<? super C38311> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return PremiumOfferManager.this.updateSubscriptionStatus(null, this);
        }
    }

    public PremiumOfferManager(DataStoreManager dataStoreManager) {
        Intrinsics.checkNotNullParameter(dataStoreManager, "dataStoreManager");
        this.dataStoreManager = dataStoreManager;
    }

    /* JADX WARN: Removed duplicated region for block: B:39:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object shouldShowHardPaywall(kotlin.coroutines.Continuation<? super java.lang.Boolean> r8) {
        /*
            r7 = this;
            boolean r0 = r8 instanceof com.rebuilt.app.keep.screen.premium.PremiumOfferManager.C38281
            if (r0 == 0) goto L14
            r0 = r8
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager$shouldShowHardPaywall$1 r0 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager.C38281) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r8 = r0.label
            int r8 = r8 - r2
            r0.label = r8
            goto L19
        L14:
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager$shouldShowHardPaywall$1 r0 = new com.rebuilt.app.keep.screen.premium.PremiumOfferManager$shouldShowHardPaywall$1
            r0.<init>(r8)
        L19:
            java.lang.Object r8 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            r5 = 0
            if (r2 == 0) goto L3f
            if (r2 == r4) goto L37
            if (r2 != r3) goto L2f
            kotlin.ResultKt.throwOnFailure(r8)
            goto La9
        L2f:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r0)
            throw r8
        L37:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager r2 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager) r2
            kotlin.ResultKt.throwOnFailure(r8)
            goto L80
        L3f:
            kotlin.ResultKt.throwOnFailure(r8)
            com.google.firebase.ktx.Firebase r8 = com.google.firebase.ktx.Firebase.INSTANCE
            com.google.firebase.remoteconfig.FirebaseRemoteConfig r8 = com.google.firebase.remoteconfig.ktx.RemoteConfigKt.getRemoteConfig(r8)
            com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag r2 = com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag.INSTANCE
            boolean r2 = r2.isSubscriptionsEnabled(r8)
            if (r2 != 0) goto L55
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r8
        L55:
            java.lang.String r2 = "hard_paywall_new_users"
            boolean r8 = r8.getBoolean(r2)     // Catch: java.lang.Exception -> L5c
            goto L5d
        L5c:
            r8 = r5
        L5d:
            if (r8 != 0) goto L64
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r8
        L64:
            com.rebuilt.app.base.datastore.DataStoreManager r8 = r7.dataStoreManager
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getIS_EXISTING_USER()
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            kotlinx.coroutines.flow.Flow r8 = r8.read(r2, r6)
            r0.L$0 = r7
            r0.label = r4
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.first(r8, r0)
            if (r8 != r1) goto L7f
            return r1
        L7f:
            r2 = r7
        L80:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto L8d
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r8
        L8d:
            com.rebuilt.app.base.datastore.DataStoreManager r8 = r2.dataStoreManager
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getPRO_STATUS()
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            kotlinx.coroutines.flow.Flow r8 = r8.read(r2, r6)
            r2 = 0
            r0.L$0 = r2
            r0.label = r3
            java.lang.Object r8 = kotlinx.coroutines.flow.FlowKt.first(r8, r0)
            if (r8 != r1) goto La9
            return r1
        La9:
            java.lang.Boolean r8 = (java.lang.Boolean) r8
            boolean r8 = r8.booleanValue()
            if (r8 == 0) goto Lb6
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r8
        Lb6:
            java.lang.Boolean r8 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r4)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferManager.shouldShowHardPaywall(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b3  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object shouldShowPremiumOffer(kotlin.coroutines.Continuation<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instruction units count: 242
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferManager.shouldShowPremiumOffer(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x00be A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00db A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object showPremiumOfferDialog(androidx.fragment.app.FragmentActivity r12, kotlin.coroutines.Continuation<? super kotlin.Unit> r13) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferManager.showPremiumOfferDialog(androidx.fragment.app.FragmentActivity, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object markUserAsPremium(Continuation<? super Unit> continuation) {
        Object objWrite = this.dataStoreManager.write(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(true), continuation);
        return objWrite == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWrite : Unit.INSTANCE;
    }

    public final Object isPremiumUser(Continuation<? super Boolean> continuation) {
        return FlowKt.first(this.dataStoreManager.read(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(false)), continuation);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0090 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object resetPremiumStatus(kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r8 = this;
            boolean r0 = r9 instanceof com.rebuilt.app.keep.screen.premium.PremiumOfferManager.C38271
            if (r0 == 0) goto L14
            r0 = r9
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager$resetPremiumStatus$1 r0 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager.C38271) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager$resetPremiumStatus$1 r0 = new com.rebuilt.app.keep.screen.premium.PremiumOfferManager$resetPremiumStatus$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 0
            r4 = 3
            r5 = 2
            r6 = 1
            if (r2 == 0) goto L49
            if (r2 == r6) goto L41
            if (r2 == r5) goto L39
            if (r2 != r4) goto L31
            kotlin.ResultKt.throwOnFailure(r9)
            goto L91
        L31:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L39:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager r2 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L7b
        L41:
            java.lang.Object r2 = r0.L$0
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager r2 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager) r2
            kotlin.ResultKt.throwOnFailure(r9)
            goto L64
        L49:
            kotlin.ResultKt.throwOnFailure(r9)
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r8.dataStoreManager
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getPRO_STATUS()
            java.lang.Boolean r7 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            r0.L$0 = r8
            r0.label = r6
            java.lang.Object r9 = r9.write(r2, r7, r0)
            if (r9 != r1) goto L63
            return r1
        L63:
            r2 = r8
        L64:
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r2.dataStoreManager
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r6 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r6 = r6.getPREMIUM_OFFER_SHOW_COUNT()
            java.lang.Integer r3 = kotlin.coroutines.jvm.internal.Boxing.boxInt(r3)
            r0.L$0 = r2
            r0.label = r5
            java.lang.Object r9 = r9.write(r6, r3, r0)
            if (r9 != r1) goto L7b
            return r1
        L7b:
            com.rebuilt.app.base.datastore.DataStoreManager r9 = r2.dataStoreManager
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r2 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r2 = r2.getPREMIUM_OFFER_LAST_SHOWN()
            r3 = 0
            r0.L$0 = r3
            r0.label = r4
            java.lang.String r3 = "0"
            java.lang.Object r9 = r9.write(r2, r3, r0)
            if (r9 != r1) goto L91
            return r1
        L91:
            kotlin.Unit r9 = kotlin.Unit.INSTANCE
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferManager.resetPremiumStatus(kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object updateSubscriptionStatus(com.rebuilt.app.keep.model.subscription.UserSubscription r8, kotlin.coroutines.Continuation<? super kotlin.Unit> r9) {
        /*
            r7 = this;
            boolean r0 = r9 instanceof com.rebuilt.app.keep.screen.premium.PremiumOfferManager.C38311
            if (r0 == 0) goto L14
            r0 = r9
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager$updateSubscriptionStatus$1 r0 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager.C38311) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r9 = r0.label
            int r9 = r9 - r2
            r0.label = r9
            goto L19
        L14:
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager$updateSubscriptionStatus$1 r0 = new com.rebuilt.app.keep.screen.premium.PremiumOfferManager$updateSubscriptionStatus$1
            r0.<init>(r9)
        L19:
            java.lang.Object r9 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L46
            if (r2 == r4) goto L36
            if (r2 != r3) goto L2e
            kotlin.ResultKt.throwOnFailure(r9)
            goto La5
        L2e:
            java.lang.IllegalStateException r8 = new java.lang.IllegalStateException
            java.lang.String r9 = "call to 'resume' before 'invoke' with coroutine"
            r8.<init>(r9)
            throw r8
        L36:
            boolean r8 = r0.Z$0
            java.lang.Object r2 = r0.L$1
            com.rebuilt.app.keep.model.subscription.UserSubscription r2 = (com.rebuilt.app.keep.model.subscription.UserSubscription) r2
            java.lang.Object r4 = r0.L$0
            com.rebuilt.app.keep.screen.premium.PremiumOfferManager r4 = (com.rebuilt.app.keep.screen.premium.PremiumOfferManager) r4
            kotlin.ResultKt.throwOnFailure(r9)
            r9 = r8
            r8 = r2
            goto L6f
        L46:
            kotlin.ResultKt.throwOnFailure(r9)
            java.lang.String r9 = r8.getSubscriptionTier()
            java.lang.String r2 = "PRO"
            boolean r9 = kotlin.text.StringsKt.equals(r9, r2, r4)
            com.rebuilt.app.base.datastore.DataStoreManager r2 = r7.dataStoreManager
            com.rebuilt.app.base.datastore.DataStoreManager$Companion r5 = com.rebuilt.app.base.datastore.DataStoreManager.INSTANCE
            androidx.datastore.preferences.core.Preferences$Key r5 = r5.getPRO_STATUS()
            java.lang.Boolean r6 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r9)
            r0.L$0 = r7
            r0.L$1 = r8
            r0.Z$0 = r9
            r0.label = r4
            java.lang.Object r2 = r2.write(r5, r6, r0)
            if (r2 != r1) goto L6e
            return r1
        L6e:
            r4 = r7
        L6f:
            com.rebuilt.app.base.Logger r2 = com.rebuilt.app.base.Logger.INSTANCE
            java.lang.StringBuilder r5 = new java.lang.StringBuilder
            java.lang.String r6 = "Subscription status updated: tier="
            r5.<init>(r6)
            java.lang.String r6 = r8.getSubscriptionTier()
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.String r6 = ", isPro="
            java.lang.StringBuilder r5 = r5.append(r6)
            java.lang.StringBuilder r9 = r5.append(r9)
            java.lang.String r9 = r9.toString()
            r2.m2676d(r9)
            com.rebuilt.app.keep.model.subscription.SubscriptionDetails r8 = r8.getSubscription()
            if (r8 == 0) goto La5
            r9 = 0
            r0.L$0 = r9
            r0.L$1 = r9
            r0.label = r3
            java.lang.Object r8 = r4.cacheSubscriptionData(r8, r0)
            if (r8 != r1) goto La5
            return r1
        La5:
            kotlin.Unit r8 = kotlin.Unit.INSTANCE
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferManager.updateSubscriptionStatus(com.rebuilt.app.keep.model.subscription.UserSubscription, kotlin.coroutines.Continuation):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ae A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00c8 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object cacheSubscriptionData(com.rebuilt.app.keep.model.subscription.SubscriptionDetails r9, kotlin.coroutines.Continuation<? super kotlin.Unit> r10) {
        /*
            Method dump skipped, instruction units count: 204
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.screen.premium.PremiumOfferManager.cacheSubscriptionData(com.rebuilt.app.keep.model.subscription.SubscriptionDetails, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
