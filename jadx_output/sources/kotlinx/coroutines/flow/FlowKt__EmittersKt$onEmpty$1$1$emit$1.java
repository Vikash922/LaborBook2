package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: Emitters.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2723k = 3, m2724mv = {1, 9, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onEmpty$1$1", m2735f = "Emitters.kt", m2736i = {}, m2737l = {Opcodes.PUTFIELD}, m2738m = "emit", m2739n = {}, m2740s = {})
final class FlowKt__EmittersKt$onEmpty$1$1$emit$1 extends ContinuationImpl {
    int label;
    /* synthetic */ Object result;
    final /* synthetic */ FlowKt__EmittersKt$onEmpty$1$1<T> this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    FlowKt__EmittersKt$onEmpty$1$1$emit$1(FlowKt__EmittersKt$onEmpty$1$1<? super T> flowKt__EmittersKt$onEmpty$1$1, Continuation<? super FlowKt__EmittersKt$onEmpty$1$1$emit$1> continuation) {
        super(continuation);
        this.this$0 = flowKt__EmittersKt$onEmpty$1$1;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return this.this$0.emit(null, this);
    }
}
