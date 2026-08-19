package androidx.datastore.rxjava3;

import io.reactivex.rxjava3.core.Completable;
import io.reactivex.rxjava3.core.Single;

/* JADX INFO: loaded from: classes3.dex */
public interface RxDataMigration<T> {
    Completable cleanUp();

    Single<T> migrate(T t);

    Single<Boolean> shouldMigrate(T t);
}
