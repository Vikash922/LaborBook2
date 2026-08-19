package androidx.datastore.rxjava3;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;

/* JADX INFO: compiled from: RxDataStoreDelegate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000<\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001av\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u00030\u0001\"\b\b\u0000\u0010\u0004*\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\u00040\t2\u0010\b\u0002\u0010\n\u001a\n\u0012\u0004\u0012\u0002H\u0004\u0018\u00010\u000b2 \b\u0002\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00040\u000f0\u000e0\r2\b\b\u0002\u0010\u0010\u001a\u00020\u0011¨\u0006\u0012"}, m2722d2 = {"rxDataStore", "Lkotlin/properties/ReadOnlyProperty;", "Landroid/content/Context;", "Landroidx/datastore/rxjava3/RxDataStore;", "T", "", "fileName", "", "serializer", "Landroidx/datastore/core/Serializer;", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "produceMigrations", "Lkotlin/Function1;", "", "Landroidx/datastore/core/DataMigration;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "datastore-rxjava3_release"}, m2723k = 2, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxDataStoreDelegateKt {
    public static /* synthetic */ ReadOnlyProperty rxDataStore$default(String str, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 function1, Scheduler scheduler, int i, Object obj) {
        if ((i & 4) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 8) != 0) {
            function1 = new Function1<Context, List<? extends DataMigration<T>>>() { // from class: androidx.datastore.rxjava3.RxDataStoreDelegateKt.rxDataStore.1
                @Override // kotlin.jvm.functions.Function1
                public final List<DataMigration<T>> invoke(Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return CollectionsKt.emptyList();
                }
            };
        }
        if ((i & 16) != 0) {
            scheduler = Schedulers.m2718io();
            Intrinsics.checkNotNullExpressionValue(scheduler, "io()");
        }
        return rxDataStore(str, serializer, replaceFileCorruptionHandler, function1, scheduler);
    }

    public static final <T> ReadOnlyProperty<Context, RxDataStore<T>> rxDataStore(String fileName, Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, Function1<? super Context, ? extends List<? extends DataMigration<T>>> produceMigrations, Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        return new RxDataStoreSingletonDelegate(fileName, serializer, replaceFileCorruptionHandler, produceMigrations, scheduler);
    }
}
