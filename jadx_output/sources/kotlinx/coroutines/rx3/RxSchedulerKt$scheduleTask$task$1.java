package kotlinx.coroutines.rx3;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: compiled from: RxScheduler.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "kotlinx.coroutines.rx3.RxSchedulerKt", m2735f = "RxScheduler.kt", m2736i = {0}, m2737l = {122}, m2738m = "scheduleTask$task", m2739n = {"ctx"}, m2740s = {"L$0"})
final class RxSchedulerKt$scheduleTask$task$1 extends ContinuationImpl {
    Object L$0;
    int label;
    /* synthetic */ Object result;

    RxSchedulerKt$scheduleTask$task$1(Continuation<? super RxSchedulerKt$scheduleTask$task$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return RxSchedulerKt.scheduleTask$task(null, null, null, this);
    }
}
