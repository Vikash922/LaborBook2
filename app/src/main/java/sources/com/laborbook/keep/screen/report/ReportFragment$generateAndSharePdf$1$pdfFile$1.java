package com.laborbook.keep.screen.report;

import android.content.Context;
import com.laborbook.base.utils.PdfGenerator;
import java.io.File;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: ReportFragment.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0004\u0018\u00010\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "Ljava/io/File;", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
@DebugMetadata(m2734c = "com.laborbook.keep.screen.report.ReportFragment$generateAndSharePdf$1$pdfFile$1", m2735f = "ReportFragment.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
final class ReportFragment$generateAndSharePdf$1$pdfFile$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super File>, Object> {
    int label;
    final /* synthetic */ ReportFragment this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    ReportFragment$generateAndSharePdf$1$pdfFile$1(ReportFragment reportFragment, Continuation<? super ReportFragment$generateAndSharePdf$1$pdfFile$1> continuation) {
        super(2, continuation);
        this.this$0 = reportFragment;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
        return new ReportFragment$generateAndSharePdf$1$pdfFile$1(this.this$0, continuation);
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(CoroutineScope coroutineScope, Continuation<? super File> continuation) {
        return ((ReportFragment$generateAndSharePdf$1$pdfFile$1) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        if (this.label != 0) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        }
        ResultKt.throwOnFailure(obj);
        PdfGenerator.Companion companion = PdfGenerator.INSTANCE;
        Context contextRequireContext = this.this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(contextRequireContext, "requireContext(...)");
        return companion.generateStaffReport(contextRequireContext, this.this$0.staffName, this.this$0.staffPhone, this.this$0.monthYear, this.this$0.presentCount, this.this$0.absentCount, this.this$0.overtimeCount, this.this$0.halfdayCount, this.this$0.pPlusHalf, this.this$0.pPlusP, this.this$0.advanceAmount, this.this$0.totalEarnings);
    }
}
