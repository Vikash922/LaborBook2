package com.laborbook.keep.screen.home.fragment;

import com.itextpdf.kernel.pdf.canvas.wmf.MetaDo;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.datastore.DataStoreManager;
import com.laborbook.keep.screen.premium.PremiumOfferDialogFragment;
import com.laborbook.keep.screen.premium.PremiumSettingsFragment;
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
@DebugMetadata(m2734c = "com.laborbook.keep.screen.home.fragment.StaffListFragment$registerOnClickListeners$1$3$1", m2735f = "StaffListFragment.kt", m2736i = {}, m2737l = {MetaDo.META_RESTOREDC}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class StaffListFragment$registerOnClickListeners$1$3$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    int label;
    final /* synthetic */ StaffListFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    StaffListFragment$registerOnClickListeners$1$3$1(StaffListFragment staffListFragment, Continuation<? super StaffListFragment$registerOnClickListeners$1$3$1> continuation) {
        super(2, continuation);
        this.this$0 = staffListFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new StaffListFragment$registerOnClickListeners$1$3$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((StaffListFragment$registerOnClickListeners$1$3$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            this.label = 1;
            obj = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getPRO_STATUS(), Boxing.boxBoolean(false)), this);
            if (obj == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        if (zBooleanValue) {
            this.this$0.getFragmentNavigator().start(PremiumSettingsFragment.INSTANCE.newInstance());
        } else {
            PremiumOfferDialogFragment.Companion.newInstance$default(PremiumOfferDialogFragment.INSTANCE, false, false, 3, null).show(this.this$0.getParentFragmentManager(), PremiumOfferDialogFragment.TAG);
        }
        this.this$0.recordClickEvent(ConstantEventNames.VIEW_LABORBOOK_PRO, MapsKt.hashMapOf(new Pair("source", "staff_list_pro_tag"), new Pair("is_pro_user", Boxing.boxBoolean(zBooleanValue))));
        return Unit.INSTANCE;
    }
}
