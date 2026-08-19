package androidx.datastore.rxjava3;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import io.reactivex.rxjava3.core.Scheduler;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;

/* JADX INFO: compiled from: RxDataStoreDelegate.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u0014\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00050\u0003BW\b\u0000\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\t\u0012\u000e\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000b\u0012 \b\u0002\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f0\u000e0\r\u0012\u0006\u0010\u0010\u001a\u00020\u0011¢\u0006\u0002\u0010\u0012J#\u0010\u0015\u001a\b\u0012\u0004\u0012\u00028\u00000\u00052\u0006\u0010\u0016\u001a\u00020\u00042\n\u0010\u0017\u001a\u0006\u0012\u0002\b\u00030\u0018H\u0096\u0002R\u001a\u0010\u0013\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u00058\u0002@\u0002X\u0083\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R&\u0010\f\u001a\u001a\u0012\u0004\u0012\u00020\u0004\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000f0\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0019"}, m2722d2 = {"Landroidx/datastore/rxjava3/RxDataStoreSingletonDelegate;", "T", "", "Lkotlin/properties/ReadOnlyProperty;", "Landroid/content/Context;", "Landroidx/datastore/rxjava3/RxDataStore;", "fileName", "", "serializer", "Landroidx/datastore/core/Serializer;", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "produceMigrations", "Lkotlin/Function1;", "", "Landroidx/datastore/core/DataMigration;", "scheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "(Ljava/lang/String;Landroidx/datastore/core/Serializer;Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;Lkotlin/jvm/functions/Function1;Lio/reactivex/rxjava3/core/Scheduler;)V", "INSTANCE", "lock", "getValue", "thisRef", "property", "Lkotlin/reflect/KProperty;", "datastore-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxDataStoreSingletonDelegate<T> implements ReadOnlyProperty<Context, RxDataStore<T>> {
    private volatile RxDataStore<T> INSTANCE;
    private final ReplaceFileCorruptionHandler<T> corruptionHandler;
    private final String fileName;
    private final Object lock;
    private final Function1<Context, List<DataMigration<T>>> produceMigrations;
    private final Scheduler scheduler;
    private final Serializer<T> serializer;

    /* JADX WARN: Multi-variable type inference failed */
    public RxDataStoreSingletonDelegate(String fileName, Serializer<T> serializer, ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler, Function1<? super Context, ? extends List<? extends DataMigration<T>>> produceMigrations, Scheduler scheduler) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Intrinsics.checkNotNullParameter(produceMigrations, "produceMigrations");
        Intrinsics.checkNotNullParameter(scheduler, "scheduler");
        this.fileName = fileName;
        this.serializer = serializer;
        this.corruptionHandler = replaceFileCorruptionHandler;
        this.produceMigrations = produceMigrations;
        this.scheduler = scheduler;
        this.lock = new Object();
    }

    @Override // kotlin.properties.ReadOnlyProperty
    public /* bridge */ /* synthetic */ Object getValue(Context context, KProperty kProperty) {
        return getValue2(context, (KProperty<?>) kProperty);
    }

    public /* synthetic */ RxDataStoreSingletonDelegate(String str, Serializer serializer, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, C05161 c05161, Scheduler scheduler, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, serializer, replaceFileCorruptionHandler, (i & 8) != 0 ? new Function1<Context, List<? extends DataMigration<T>>>() { // from class: androidx.datastore.rxjava3.RxDataStoreSingletonDelegate.1
            @Override // kotlin.jvm.functions.Function1
            public final List<DataMigration<T>> invoke(Context it) {
                Intrinsics.checkNotNullParameter(it, "it");
                return CollectionsKt.emptyList();
            }
        } : c05161, scheduler);
    }

    /* JADX INFO: renamed from: getValue, reason: avoid collision after fix types in other method */
    public RxDataStore<T> getValue2(Context thisRef, KProperty<?> property) {
        RxDataStore<T> rxDataStore;
        Intrinsics.checkNotNullParameter(thisRef, "thisRef");
        Intrinsics.checkNotNullParameter(property, "property");
        RxDataStore<T> rxDataStore2 = this.INSTANCE;
        if (rxDataStore2 != null) {
            return rxDataStore2;
        }
        synchronized (this.lock) {
            if (this.INSTANCE == null) {
                Context applicationContext = thisRef.getApplicationContext();
                Intrinsics.checkNotNullExpressionValue(applicationContext, "applicationContext");
                RxDataStoreBuilder rxDataStoreBuilder = new RxDataStoreBuilder(applicationContext, this.fileName, this.serializer);
                rxDataStoreBuilder.setIoScheduler(this.scheduler);
                Iterator<T> it = this.produceMigrations.invoke(applicationContext).iterator();
                while (it.hasNext()) {
                    rxDataStoreBuilder.addDataMigration((DataMigration) it.next());
                }
                ReplaceFileCorruptionHandler<T> replaceFileCorruptionHandler = this.corruptionHandler;
                if (replaceFileCorruptionHandler != null) {
                    rxDataStoreBuilder.setCorruptionHandler(replaceFileCorruptionHandler);
                }
                this.INSTANCE = rxDataStoreBuilder.build();
            }
            rxDataStore = this.INSTANCE;
            Intrinsics.checkNotNull(rxDataStore);
        }
        return rxDataStore;
    }
}
