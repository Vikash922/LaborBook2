package com.rebuilt.app.keep.screen.home.fragment;

import com.google.firebase.ktx.Firebase;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import com.google.firebase.remoteconfig.ktx.RemoteConfigKt;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.screen.addstaff.fragment.AddStaffContactsFragment;
import com.rebuilt.app.keep.screen.premium.PremiumOfferDialogFragment;
import com.rebuilt.app.keep.utils.SubscriptionsFeatureFlag;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: StaffListFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.StaffListFragment$registerOnClickListeners$1$1$1", m2735f = "StaffListFragment.kt", m2736i = {0, 0}, m2737l = {TIFFConstants.TIFFTAG_MAKE}, m2738m = "invokeSuspend", m2739n = {"subscriptionsEnabled", "maxStaffCount"}, m2740s = {"Z$0", "I$0"})
final class StaffListFragment$registerOnClickListeners$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int I$0;
    boolean Z$0;
    int label;
    final /* synthetic */ StaffListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StaffListFragment$registerOnClickListeners$1$1$1(StaffListFragment staffListFragment, Continuation<? super StaffListFragment$registerOnClickListeners$1$1$1> continuation) {
        super(2, continuation);
        this.this$0 = staffListFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StaffListFragment$registerOnClickListeners$1$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((StaffListFragment$registerOnClickListeners$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        boolean zIsSubscriptionsEnabled;
        int i;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i2 = this.label;
        if (i2 == 0) {
            ResultKt.throwOnFailure(obj);
            FirebaseRemoteConfig remoteConfig = RemoteConfigKt.getRemoteConfig(Firebase.INSTANCE);
            zIsSubscriptionsEnabled = SubscriptionsFeatureFlag.INSTANCE.isSubscriptionsEnabled(remoteConfig);
            int freeUserMaxStaffCount = SubscriptionsFeatureFlag.INSTANCE.getFreeUserMaxStaffCount(remoteConfig);
            this.Z$0 = zIsSubscriptionsEnabled;
            this.I$0 = freeUserMaxStaffCount;
            this.label = 1;
            Object objFirst = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(false)), this);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
            i = freeUserMaxStaffCount;
            obj = objFirst;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            i = this.I$0;
            zIsSubscriptionsEnabled = this.Z$0;
            ResultKt.throwOnFailure(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int staffCount = this.this$0.getViewModel().getStaffCount();
        if (zIsSubscriptionsEnabled && !zBooleanValue && staffCount >= i) {
            PremiumOfferDialogFragment.Companion.newInstance$default(PremiumOfferDialogFragment.INSTANCE, false, false, 3, null).show(this.this$0.getParentFragmentManager(), PremiumOfferDialogFragment.TAG);
            this.this$0.recordClickEvent(ConstantEventNames.ADD_LABOR, MapsKt.hashMapOf(new Pair("blocked_by_subscription", Boxing.boxBoolean(true))));
        } else {
            this.this$0.getFragmentNavigator().start(AddStaffContactsFragment.INSTANCE.newInstance());
            BaseFragment.recordClickEvent$default(this.this$0, ConstantEventNames.ADD_LABOR, null, 2, null);
        }
        return Unit.INSTANCE;
    }
}
