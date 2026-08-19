package androidx.datastore.preferences.rxjava3;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.rxjava3.RxDataStore;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;

/* JADX INFO: compiled from: RxPreferenceDataStoreDelegate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a^\u0010\u0000\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b2 \b\u0002\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\f0\u000b0\n2\b\b\u0002\u0010\r\u001a\u00020\u000e¨\u0006\u000f"}, m2722d2 = {"rxPreferencesDataStore", "Lkotlin/properties/ReadOnlyProperty;", "Landroid/content/Context;", "Landroidx/datastore/rxjava3/RxDataStore;", "Landroidx/datastore/preferences/core/Preferences;", "name", "", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "produceMigrations", "Lkotlin/Function1;", "", "Landroidx/datastore/core/DataMigration;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "datastore-preferences-rxjava3_release"}, m2723k = 2, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxPreferenceDataStoreDelegateKt {
    public static /* synthetic */ ReadOnlyProperty rxPreferencesDataStore$default(String str, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, Function1 function1, Scheduler scheduler, int i, Object obj) {
        if ((i & 2) != 0) {
            replaceFileCorruptionHandler = null;
        }
        if ((i & 4) != 0) {
            function1 = new Function1<Context, List<? extends DataMigration<Preferences>>>() { // from class: androidx.datastore.preferences.rxjava3.RxPreferenceDataStoreDelegateKt.rxPreferencesDataStore.1
                @Override // kotlin.jvm.functions.Function1
                public final List<DataMigration<Preferences>> invoke(Context it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return CollectionsKt.emptyList();
                }
            };
        }
        if ((i & 8) != 0) {
            scheduler = Schedulers.m2718io();
            Intrinsics.checkNotNullExpressionValue(scheduler, "io()");
        }
        return rxPreferencesDataStore(str, replaceFileCorruptionHandler, function1, scheduler);
    }

    public static final ReadOnlyProperty<Context, RxDataStore<Preferences>> rxPreferencesDataStore(String name, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, Function1<? super Context, ? extends List<? extends DataMigration<Preferences>>> produceMigrations, Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        return new RxDataStoreSingletonDelegate(name, replaceFileCorruptionHandler, produceMigrations, scheduler);
    }
}
