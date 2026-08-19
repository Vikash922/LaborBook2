package com.rebuilt.app.keep.screen;

import android.view.View;
import com.boilerplate.uikit.views.ExtentionsKt;
import com.google.android.gms.ads.AdView;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManagerExtensionsKt;
import com.rebuilt.app.keep.databinding.ActivityBookKeepBinding;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: BookKeepActivity.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1", m2735f = "BookKeepActivity.kt", m2736i = {}, m2737l = {703}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ BookKeepActivity this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1(BookKeepActivity bookKeepActivity, Continuation<? super BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1> continuation) {
        super(2, continuation);
        this.this$0 = bookKeepActivity;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((BookKeepActivity$requestGoogleAds$1$1$onAdLoaded$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = DataStoreManagerExtensionsKt.shouldShowHomePageAds(this.this$0.getDataStoreManager(), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        ActivityBookKeepBinding activityBookKeepBinding = null;
        if (((Boolean) obj).booleanValue()) {
            ActivityBookKeepBinding activityBookKeepBinding2 = this.this$0.binding;
            if (activityBookKeepBinding2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityBookKeepBinding2 = null;
            }
            View view = activityBookKeepBinding2.adsShadow;
            if (view != null) {
                ExtentionsKt.show$default(view, 0L, null, 3, null);
            }
            ActivityBookKeepBinding activityBookKeepBinding3 = this.this$0.binding;
            if (activityBookKeepBinding3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding3;
            }
            AdView adView = activityBookKeepBinding.adView;
            if (adView != null) {
                ExtentionsKt.show$default(adView, 0L, null, 3, null);
            }
            this.this$0.triggerSystemEvent(ConstantEventNames.GOOGLE_BANNER_AD, MapsKt.hashMapOf(new Pair("status", "onAdLoaded"), new Pair("source", "Home")));
        } else {
            ActivityBookKeepBinding activityBookKeepBinding4 = this.this$0.binding;
            if (activityBookKeepBinding4 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
                activityBookKeepBinding4 = null;
            }
            View view2 = activityBookKeepBinding4.adsShadow;
            if (view2 != null) {
                ExtentionsKt.hide$default(view2, 0L, null, 3, null);
            }
            ActivityBookKeepBinding activityBookKeepBinding5 = this.this$0.binding;
            if (activityBookKeepBinding5 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("binding");
            } else {
                activityBookKeepBinding = activityBookKeepBinding5;
            }
            AdView adView2 = activityBookKeepBinding.adView;
            if (adView2 != null) {
                ExtentionsKt.hide$default(adView2, 0L, null, 3, null);
            }
        }
        return Unit.INSTANCE;
    }
}
