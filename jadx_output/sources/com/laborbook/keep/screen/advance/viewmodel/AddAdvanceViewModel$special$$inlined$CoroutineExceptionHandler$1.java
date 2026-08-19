package com.laborbook.keep.screen.advance.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.laborbook.base.Logger;
import com.laborbook.keep.screen.advance.uistate.AddAdvanceUiState;
import kotlin.Metadata;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineExceptionHandler;

/* JADX INFO: compiled from: CoroutineExceptionHandler.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u00012\u00020\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t¸\u0006\u0000"}, m2722d2 = {"kotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1", "Lkotlin/coroutines/AbstractCoroutineContextElement;", "Lkotlinx/coroutines/CoroutineExceptionHandler;", "handleException", "", "context", "Lkotlin/coroutines/CoroutineContext;", "exception", "", "kotlinx-coroutines-core"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AddAdvanceViewModel$special$$inlined$CoroutineExceptionHandler$1 extends AbstractCoroutineContextElement implements CoroutineExceptionHandler {
    final /* synthetic */ AddAdvanceViewModel this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AddAdvanceViewModel$special$$inlined$CoroutineExceptionHandler$1(CoroutineExceptionHandler.Companion companion, AddAdvanceViewModel addAdvanceViewModel) {
        super(companion);
        this.this$0 = addAdvanceViewModel;
    }

    @Override // kotlinx.coroutines.CoroutineExceptionHandler
    public void handleException(CoroutineContext context, Throwable exception) {
        Logger.INSTANCE.m2677e("Caught exception: " + exception.getLocalizedMessage());
        MutableLiveData uiState = this.this$0.getUiState();
        String localizedMessage = exception.getLocalizedMessage();
        Intrinsics.checkNotNullExpressionValue(localizedMessage, "getLocalizedMessage(...)");
        uiState.setValue(new AddAdvanceUiState.Error(localizedMessage));
    }
}
