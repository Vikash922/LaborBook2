package kotlinx.coroutines.rx3;

import io.reactivex.rxjava3.functions.Cancellable;
import java.util.concurrent.CancellationException;
import kotlin.Metadata;
import kotlinx.coroutines.Job;

/* JADX INFO: compiled from: RxCancellable.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0007"}, m2722d2 = {"Lkotlinx/coroutines/rx3/RxCancellable;", "Lio/reactivex/rxjava3/functions/Cancellable;", "job", "Lkotlinx/coroutines/Job;", "(Lkotlinx/coroutines/Job;)V", "cancel", "", "kotlinx-coroutines-rx3"}, m2723k = 1, m2724mv = {1, 9, 0}, m2726xi = 48)
public final class RxCancellable implements Cancellable {
    private final Job job;

    public RxCancellable(Job job) {
        this.job = job;
    }

    @Override // io.reactivex.rxjava3.functions.Cancellable
    public void cancel() {
        Job.DefaultImpls.cancel$default(this.job, (CancellationException) null, 1, (Object) null);
    }
}
