package androidx.datastore.rxjava3;

import androidx.datastore.migrations.SharedPreferencesView;
import io.reactivex.rxjava3.core.Single;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\bf\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002J#\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00028\u0000H&¢\u0006\u0002\u0010\bJ\u001b\u0010\t\u001a\b\u0012\u0004\u0012\u00020\n0\u00042\u0006\u0010\u0007\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\fÀ\u0006\u0003"}, m2722d2 = {"Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;", "T", "", "migrate", "Lio/reactivex/rxjava3/core/Single;", "sharedPreferencesView", "Landroidx/datastore/migrations/SharedPreferencesView;", "currentData", "(Landroidx/datastore/migrations/SharedPreferencesView;Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;", "shouldMigrate", "", "(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Single;", "datastore-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public interface RxSharedPreferencesMigration<T> {
    Single<T> migrate(SharedPreferencesView sharedPreferencesView, T currentData);

    /* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
    @Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    public static final class DefaultImpls {
        @Deprecated
        public static <T> Single<Boolean> shouldMigrate(RxSharedPreferencesMigration<T> rxSharedPreferencesMigration, T t) {
            return RxSharedPreferencesMigration.super.shouldMigrate(t);
        }
    }

    default Single<Boolean> shouldMigrate(T currentData) {
        Single<Boolean> singleJust = Single.just(true);
        Intrinsics.checkNotNullExpressionValue(singleJust, "just(true)");
        return singleJust;
    }
}
