package com.rebuilt.app.keep.screen.home.fragment;

import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.rebuilt.app.base.analytics.ConstantEventAttributes;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment;
import com.rebuilt.app.keep.screen.premium.PremiumSettingsFragment;
import com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag;
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
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$registerOnClickListeners$14$1", m2735f = "SettingsFragment.kt", m2736i = {}, m2737l = {225}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class SettingsFragment$registerOnClickListeners$14$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ SettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingsFragment$registerOnClickListeners$14$1(SettingsFragment settingsFragment, Continuation<? super SettingsFragment$registerOnClickListeners$14$1> continuation) {
        super(2, continuation);
        this.this$0 = settingsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SettingsFragment$registerOnClickListeners$14$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SettingsFragment$registerOnClickListeners$14$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            if (SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE))) {
                this.label = 1;
                obj = this.this$0.getPremiumOfferManager().isPremiumUser(this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                return Unit.INSTANCE;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        if (((Boolean) obj).booleanValue()) {
            this.this$0.getFragmentNavigator().start(PremiumSettingsFragment.INSTANCE.newInstance());
            this.this$0.recordClickEvent(ConstantEventNames.VIEW_LABORBOOK_PRO, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.USER_TYPE, "pro")));
        } else {
            PremiumOfferDialogFragment.Companion.newInstance$default(PremiumOfferDialogFragment.INSTANCE, false, false, 3, null).show(this.this$0.getParentFragmentManager(), PremiumOfferDialogFragment.TAG);
            this.this$0.recordClickEvent(ConstantEventNames.VIEW_LABORBOOK_PRO, MapsKt.hashMapOf(new Pair(ConstantEventAttributes.USER_TYPE, "free")));
        }
        return Unit.INSTANCE;
    }
}
