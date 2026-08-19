package com.rebuilt.app.keep.screen.addstaff.fragment;

import com.rebuilt.app.base.BaseFragment;
import com.rebuilt.app.base.analytics.ConstantEventNames;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.databinding.FragmentAddStaffContactsBinding;
import com.rebuilt.app.keep.model.AddStaffUserRequestBody;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.flow.FlowKt;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: AddStaffContactsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.addstaff.fragment.AddStaffContactsFragment$registerOnClickListeners$1$1$1", m2735f = "AddStaffContactsFragment.kt", m2736i = {}, m2737l = {Opcodes.INVOKEVIRTUAL, Opcodes.INVOKEINTERFACE}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class AddStaffContactsFragment$registerOnClickListeners$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    final /* synthetic */ FragmentAddStaffContactsBinding $this_apply;
    Object L$0;
    Object L$1;
    int label;
    final /* synthetic */ AddStaffContactsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    AddStaffContactsFragment$registerOnClickListeners$1$1$1(FragmentAddStaffContactsBinding fragmentAddStaffContactsBinding, AddStaffContactsFragment addStaffContactsFragment, Continuation<? super AddStaffContactsFragment$registerOnClickListeners$1$1$1> continuation) {
        super(2, continuation);
        this.$this_apply = fragmentAddStaffContactsBinding;
        this.this$0 = addStaffContactsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new AddStaffContactsFragment$registerOnClickListeners$1$1$1(this.$this_apply, this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((AddStaffContactsFragment$registerOnClickListeners$1$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        String strTakeLast;
        String str;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            strTakeLast = StringsKt.takeLast(new Regex("[\\s()-]+").replace(StringsKt.trim((CharSequence) this.$this_apply.etStaffMobileNumber.getText().toString()).toString(), ""), 10);
            String string = StringsKt.trim((CharSequence) this.$this_apply.etStaffName.getText().toString()).toString();
            this.L$0 = string;
            this.L$1 = strTakeLast;
            this.label = 1;
            Object objFirst = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_ID(), ""), this);
            if (objFirst == coroutine_suspended) {
                return coroutine_suspended;
            }
            str = string;
            obj = objFirst;
        } else {
            if (i != 1) {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                BaseFragment.recordClickEvent$default(this.this$0, ConstantEventNames.ADD_LABOR_MANUAL, null, 2, null);
                return Unit.INSTANCE;
            }
            strTakeLast = (String) this.L$1;
            str = (String) this.L$0;
            ResultKt.throwOnFailure(obj);
        }
        this.this$0.getViewModel().addStaffUser(new AddStaffUserRequestBody(str, strTakeLast, (String) obj));
        this.L$0 = null;
        this.L$1 = null;
        this.label = 2;
        if (BuildersKt.withContext(Dispatchers.getMain(), new C37071(this.$this_apply, null), this) == coroutine_suspended) {
            return coroutine_suspended;
        }
        BaseFragment.recordClickEvent$default(this.this$0, ConstantEventNames.ADD_LABOR_MANUAL, null, 2, null);
        return Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.rebuilt.app.keep.screen.addstaff.fragment.AddStaffContactsFragment$registerOnClickListeners$1$1$1$1 */
    /* JADX INFO: compiled from: AddStaffContactsFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.addstaff.fragment.AddStaffContactsFragment$registerOnClickListeners$1$1$1$1", m2735f = "AddStaffContactsFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C37071 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
        final /* synthetic */ FragmentAddStaffContactsBinding $this_apply;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C37071(FragmentAddStaffContactsBinding fragmentAddStaffContactsBinding, Continuation<? super C37071> continuation) {
            super(2, continuation);
            this.$this_apply = fragmentAddStaffContactsBinding;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return new C37071(this.$this_apply, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Boolean> continuation) {
            return ((C37071) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            this.$this_apply.etStaffName.getText().clear();
            this.$this_apply.etStaffMobileNumber.getText().clear();
            return Boxing.boxBoolean(this.$this_apply.etStaffName.requestFocus());
        }
    }
}
