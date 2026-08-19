package androidx.datastore.preferences.rxjava3;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.rxjava3.RxDataStore;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: RxPreferenceDataStoreDelegate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u0014\u0012\u0004\u0012\u00020\u0002\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\u00030\u0001BG\b\u0000\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u000e\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\b\u0012\u001e\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\f0\u000b0\n\u0012\u0006\u0010\r\u001a\u00020\u000e¢\u0006\u0002\u0010\u000fJ#\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u0006\u0010\u0014\u001a\u00020\u00022\n\u0010\u0015\u001a\u0006\u0012\u0002\b\u00030\u0016H\u0096\u0002R\u001a\u0010\u0010\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\t\u001a\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00040\f0\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, m2722d2 = {"Landroidx/datastore/preferences/rxjava3/RxDataStoreSingletonDelegate;", "Lkotlin/properties/ReadOnlyProperty;", "Landroid/content/Context;", "Landroidx/datastore/rxjava3/RxDataStore;", "Landroidx/datastore/preferences/core/Preferences;", "fileName", "", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "produceMigrations", "Lkotlin/Function1;", "", "Landroidx/datastore/core/DataMigration;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "(Ljava/lang/String;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V", "INSTANCE", "lock", "", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "datastore-preferences-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxDataStoreSingletonDelegate implements ReadOnlyProperty<Context, RxDataStore<Preferences>> {
    private volatile RxDataStore<Preferences> INSTANCE;
    private final ReplaceFileCorruptionHandler<Preferences> corruptionHandler;
    private final String fileName;
    private final Object lock;
    private final Function1<Context, List<DataMigration<Preferences>>> produceMigrations;
    private final Scheduler scheduler;

    /* JADX WARN: Multi-variable type inference failed */
    public RxDataStoreSingletonDelegate(String fileName, ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler, Function1<? super Context, ? extends List<? extends DataMigration<Preferences>>> produceMigrations, Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        this.fileName = fileName;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scheduler = scheduler;
        this.lock = new Object();
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public /* bridge */ /* synthetic */ RxDataStore<Preferences> getValue(Context context, KProperty kProperty) {
        return getValue2(context, (KProperty<?>) kProperty);
    }

    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public RxDataStore<Preferences> getValue2(Context thisRef, KProperty<?> property) {
        RxDataStore<Preferences> rxDataStore;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        RxDataStore<Preferences> rxDataStore2 = this.INSTANCE;
        if (rxDataStore2 != null) {
            return rxDataStore2;
        }
        synchronized (this.lock) {
            if (this.INSTANCE == null) {
                Context applicationContext = thisRef.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                RxPreferenceDataStoreBuilder rxPreferenceDataStoreBuilder = new RxPreferenceDataStoreBuilder(applicationContext, this.fileName);
                rxPreferenceDataStoreBuilder.setIoScheduler(this.scheduler);
                Iterator<T> it = this.produceMigrations.invoke(applicationContext).iterator();
                while (it.hasNext()) {
                    rxPreferenceDataStoreBuilder.addDataMigration((DataMigration) it.next());
                }
                ReplaceFileCorruptionHandler<Preferences> replaceFileCorruptionHandler = this.corruptionHandler;
                if (replaceFileCorruptionHandler != null) {
                    rxPreferenceDataStoreBuilder.setCorruptionHandler(replaceFileCorruptionHandler);
                }
                this.INSTANCE = rxPreferenceDataStoreBuilder.build();
            }
            rxDataStore = this.INSTANCE;
            Intrinsics.checkNotNull(rxDataStore);
        }
        return rxDataStore;
    }
}
