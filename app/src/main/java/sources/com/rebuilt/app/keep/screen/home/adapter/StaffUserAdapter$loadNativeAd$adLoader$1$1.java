package com.rebuilt.app.keep.screen.home.adapter;

import android.os.Handler;
import com.google.android.gms.ads.nativead.NativeAd;
import com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt;
import com.rebuilt.app.keep.model.StaffUser;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: StaffUserAdapter.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$loadNativeAd$adLoader$1$1", m2735f = "StaffUserAdapter.kt", m2736i = {}, m2737l = {311}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class StaffUserAdapter$loadNativeAd$adLoader$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ String $adKey;
    final /* synthetic */ NativeAd $nativeAd;
    final /* synthetic */ int $originalIndex;
    final /* synthetic */ StaffUser $targetStaff;
    int label;
    final /* synthetic */ StaffUserAdapter this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StaffUserAdapter$loadNativeAd$adLoader$1$1(StaffUserAdapter staffUserAdapter, NativeAd nativeAd, String str, int i, StaffUser staffUser, Continuation<? super StaffUserAdapter$loadNativeAd$adLoader$1$1> continuation) {
        super(2, continuation);
        this.this$0 = staffUserAdapter;
        this.$nativeAd = nativeAd;
        this.$adKey = str;
        this.$originalIndex = i;
        this.$targetStaff = staffUser;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StaffUserAdapter$loadNativeAd$adLoader$1$1(this.this$0, this.$nativeAd, this.$adKey, this.$originalIndex, this.$targetStaff, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((StaffUserAdapter$loadNativeAd$adLoader$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = DataStoreManagerExtensionsKt.shouldShowGoogleAds(this.this$0.getDataStoreManager(), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.this$0.nativeAds.put(this.$adKey, this.$nativeAd);
            this.this$0.adRetryCount.remove(this.$adKey);
            Handler handler = this.this$0.mainHandler;
            final StaffUserAdapter staffUserAdapter = this.this$0;
            final int i2 = this.$originalIndex;
            final StaffUser staffUser = this.$targetStaff;
            final NativeAd nativeAd = this.$nativeAd;
            handler.post(new Runnable() { // from class: com.rebuilt.app.keep.screen.home.adapter.StaffUserAdapter$loadNativeAd$adLoader$1$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    StaffUserAdapter$loadNativeAd$adLoader$1$1.invokeSuspend$lambda$0(staffUserAdapter, i2, staffUser, nativeAd);
                }
            });
            return Unit.INSTANCE;
        }
        this.$nativeAd.destroy();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invokeSuspend$lambda$0(StaffUserAdapter staffUserAdapter, int i, StaffUser staffUser, NativeAd nativeAd) {
        Intrinsics.checkNotNull(nativeAd);
        staffUserAdapter.insertAdIntoList(i, staffUser, nativeAd);
    }
}
