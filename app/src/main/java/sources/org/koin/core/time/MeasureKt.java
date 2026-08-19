package org.koin.core.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.TimeMark;
import kotlin.time.TimeSource;
import kotlin.time.TimedValue;

/* JADX INFO: compiled from: Measure.kt */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(m2721d1 = {"\u0000\u001a\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0014\u0010\u0000\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u001a&\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u0002H\u0007\u0012\u0004\u0012\u00020\u00010\u0006\"\u0004\b\u0000\u0010\u00072\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u0002H\u00070\u0003¨\u0006\b"}, m2722d2 = {"measureDuration", "", "code", "Lkotlin/Function0;", "", "measureDurationForResult", "Lkotlin/Pair;", "T", "koin-core"}, m2723k = 2, m2724mv = {1, 5, 1}, m2726xi = 48)
public final class MeasureKt {
    public static final double measureDuration(Function0<Unit> code) {
        Intrinsics.checkNotNullParameter(code, "code");
        TimeMark timeMarkMarkNow = TimeSource.Monotonic.INSTANCE.markNow();
        code.invoke();
        return Duration.toDouble-impl(timeMarkMarkNow.mo4660elapsedNowUwyO8pc(), TimeUnit.MILLISECONDS);
    }

    public static final <T> Pair<T, Double> measureDurationForResult(Function0<? extends T> code) {
        Intrinsics.checkNotNullParameter(code, "code");
        TimedValue timedValue = new TimedValue(code.invoke(), TimeSource.Monotonic.INSTANCE.markNow().mo4660elapsedNowUwyO8pc(), null);
        return new Pair<>(timedValue.getValue(), Double.valueOf(Duration.toDouble-impl(timedValue.m4801getDurationUwyO8pc(), TimeUnit.MILLISECONDS)));
    }
}
