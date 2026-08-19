package androidx.datastore.preferences.rxjava3;

import androidx.datastore.core.DataMigration;
import androidx.datastore.rxjava3.RxDataMigration;
import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxAwaitKt;

/* JADX INFO: compiled from: RxPreferenceDataStoreBuilder.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0013\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004¢\u0006\u0002\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u0007H\u0096@¢\u0006\u0002\u0010\bJ\u0016\u0010\t\u001a\u00028\u00002\u0006\u0010\n\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u000bJ\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\n\u001a\u00028\u0000H\u0096@¢\u0006\u0002\u0010\u000bR\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, m2722d2 = {"Landroidx/datastore/preferences/rxjava3/DataMigrationFromRxDataMigration;", "T", "Landroidx/datastore/core/DataMigration;", "migration", "Landroidx/datastore/rxjava3/RxDataMigration;", "(Landroidx/datastore/rxjava3/RxDataMigration;)V", "cleanUp", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "migrate", "currentData", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "shouldMigrate", "", "datastore-preferences-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class DataMigrationFromRxDataMigration<T> implements DataMigration<T> {
    private final RxDataMigration<T> migration;

    public DataMigrationFromRxDataMigration(RxDataMigration<T> migration) {
        Intrinsics.checkNotNullParameter(migration, "migration");
        this.migration = migration;
    }

    @Override // androidx.datastore.core.DataMigration
    public Object shouldMigrate(T t, Continuation<? super Boolean> continuation) {
        Single<Boolean> singleShouldMigrate = this.migration.shouldMigrate(t);
        Intrinsics.checkNotNullExpressionValue(singleShouldMigrate, "migration.shouldMigrate(currentData)");
        return RxAwaitKt.await(singleShouldMigrate, continuation);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object migrate(T t, Continuation<? super T> continuation) {
        Single<T> singleMigrate = this.migration.migrate(t);
        Intrinsics.checkNotNullExpressionValue(singleMigrate, "migration.migrate(currentData)");
        return RxAwaitKt.await(singleMigrate, continuation);
    }

    @Override // androidx.datastore.core.DataMigration
    public Object cleanUp(Continuation<? super Unit> continuation) {
        Completable completableCleanUp = this.migration.cleanUp();
        Intrinsics.checkNotNullExpressionValue(completableCleanUp, "migration.cleanUp()");
        Object objAwait = RxAwaitKt.await(completableCleanUp, continuation);
        return objAwait == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objAwait : Unit.INSTANCE;
    }
}
