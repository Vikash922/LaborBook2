package com.rebuilt.app.keep.screen.addstaff.fragment;

import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.model.AddStaffUserRequestBody;
import com.rebuilt.app.keep.model.Staff;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: AddStaffContactsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.addstaff.fragment.AddStaffContactsFragment$setObserver$1$1", m2735f = "AddStaffContactsFragment.kt", m2736i = {}, m2737l = {130}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class AddStaffContactsFragment$setObserver$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ Staff $staff;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ AddStaffContactsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AddStaffContactsFragment$setObserver$1$1(Staff staff, AddStaffContactsFragment addStaffContactsFragment, Continuation<? super AddStaffContactsFragment$setObserver$1$1> continuation) {
        super(2, continuation);
        this.$staff = staff;
        this.this$0 = addStaffContactsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AddStaffContactsFragment$setObserver$1$1(this.$staff, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AddStaffContactsFragment$setObserver$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String name;
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            String strTakeLast = StringsKt.takeLast(new Regex("[\\s()-]+").replace(StringsKt.trim((CharSequence) this.$staff.getMobileNumber()).toString(), ""), 10);
            name = this.$staff.getName();
            this.L$0 = name;
            this.L$1 = strTakeLast;
            this.label = 1;
            Object objFirst = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
            str = strTakeLast;
            obj = objFirst;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            str = (String) this.L$1;
            name = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.getViewModel().addStaffUser(new AddStaffUserRequestBody(name, str, (String) obj));
        BaseFragment.recordClickEvent$default(this.this$0, ConstantEventNames.ADD_LABOR_FROM_CONTACTS, null, 2, null);
        return Unit.INSTANCE;
    }
}
