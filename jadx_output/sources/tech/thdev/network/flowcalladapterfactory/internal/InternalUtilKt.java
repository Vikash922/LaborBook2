package tech.thdev.network.flowcalladapterfactory.internal;

import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuation;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: compiled from: InternalUtil.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000$\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001aM\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u00052'\u0010\u0006\u001a#\u0012\u0019\u0012\u0017\u0012\u0004\u0012\u0002H\u00020\b¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u000b\u0012\u0004\u0012\u00020\u00010\u0007H\u0000\u001a\u001c\u0010\f\u001a\u00020\u0001*\u0006\u0012\u0002\b\u00030\u00032\n\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0005H\u0000¨\u0006\r"}, m2722d2 = {"registerCallback", "", "T", "Lretrofit2/Call;", "continuation", "Lkotlinx/coroutines/CancellableContinuation;", "success", "Lkotlin/Function1;", "Lretrofit2/Response;", "Lkotlin/ParameterName;", "name", "response", "registerOnCancellation", "flow-call-adapter-factory_release"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class InternalUtilKt {
    public static final void registerOnCancellation(final Call<?> call, CancellableContinuation<?> continuation) {
        Intrinsics.checkNotNullParameter(call, "<this>");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        continuation.invokeOnCancellation(new Function1<Throwable, Unit>() { // from class: tech.thdev.network.flowcalladapterfactory.internal.InternalUtilKt.registerOnCancellation.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(Throwable th) {
                try {
                    call.cancel();
                } catch (Exception unused) {
                }
            }
        });
    }

    public static final <T> void registerCallback(Call<T> call, final CancellableContinuation<?> continuation, final Function1<? super Response<T>, Unit> success) {
        Intrinsics.checkNotNullParameter(call, "<this>");
        Intrinsics.checkNotNullParameter(continuation, "continuation");
        Intrinsics.checkNotNullParameter(success, "success");
        call.enqueue(new Callback<T>() { // from class: tech.thdev.network.flowcalladapterfactory.internal.InternalUtilKt.registerCallback.1
            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                success.invoke(response);
            }

            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable t) {
                Intrinsics.checkNotNullParameter(call2, "call");
                Intrinsics.checkNotNullParameter(t, "t");
                CancellableContinuation<?> cancellableContinuation = continuation;
                Result.Companion companion = Result.INSTANCE;
                cancellableContinuation.resumeWith(Result.m3325constructorimpl(ResultKt.createFailure(t)));
            }
        });
    }
}
