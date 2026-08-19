package com.rebuilt.app.keep.screen.home.fragment;

import com.boilerplate.uikit.views.textviews.text14.TextViewRegular14;
import com.itextpdf.p017io.codec.TIFFConstants;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.databinding.FragmentSettingsBinding;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.rebuilt.app.keep.screen.home.fragment.SettingsFragment$viewModelObserver$1$1", m2735f = "SettingsFragment.kt", m2736i = {}, m2737l = {TIFFConstants.TIFFTAG_CELLLENGTH}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class SettingsFragment$viewModelObserver$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    Object L$0;
    int label;
    final /* synthetic */ SettingsFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SettingsFragment$viewModelObserver$1$1(SettingsFragment settingsFragment, Continuation<? super SettingsFragment$viewModelObserver$1$1> continuation) {
        super(2, continuation);
        this.this$0 = settingsFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new SettingsFragment$viewModelObserver$1$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
        return ((SettingsFragment$viewModelObserver$1$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        TextViewRegular14 textViewRegular14;
        TextViewRegular14 textViewRegular142;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i = this.label;
        if (i == 0) {
            ResultKt.throwOnFailure(obj);
            FragmentSettingsBinding binding = this.this$0.getBinding();
            if (binding != null && (textViewRegular14 = binding.tvName) != null) {
                this.L$0 = textViewRegular14;
                this.label = 1;
                Object objFirst = FlowKt.first(this.this$0.getDataStoreManager().read(DataStoreManager.INSTANCE.getUSER_NAME(), ""), this);
                if (objFirst == coroutine_suspended) {
                    return coroutine_suspended;
                }
                textViewRegular142 = textViewRegular14;
                obj = objFirst;
            }
            return Unit.INSTANCE;
        }
        if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        textViewRegular142 = (TextViewRegular14) this.L$0;
        ResultKt.throwOnFailure(obj);
        textViewRegular142.setText((CharSequence) obj);
        return Unit.INSTANCE;
    }
}
