package androidx.datastore.preferences.rxjava3;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import androidx.datastore.preferences.PreferenceDataStoreFile;
import androidx.datastore.preferences.core.PreferenceDataStoreFactory;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.rxjava3.RxDataMigration;
import androidx.datastore.rxjava3.RxDataStore;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.rx3.RxSchedulerKt;

/* JADX INFO: compiled from: RxPreferenceDataStoreBuilder.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0015\b\u0016\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005B\u0017\b\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\u0014\u0010\u0013\u001a\u00020\u00002\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\r0\u0010J\u0014\u0010\u0015\u001a\u00020\u00002\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\r0\u0017J\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\r0\u0019J\u0014\u0010\u001a\u001a\u00020\u00002\f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\r0\fJ\u000e\u0010\u001b\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u0012R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\r\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u000e\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\u00100\u000fX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001c"}, m2722d2 = {"Landroidx/datastore/preferences/rxjava3/RxPreferenceDataStoreBuilder;", "", "produceFile", "Ljava/util/concurrent/Callable;", "Ljava/io/File;", "(Ljava/util/concurrent/Callable;)V", "context", "Landroid/content/Context;", "name", "", "(Landroid/content/Context;Ljava/lang/String;)V", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "Landroidx/datastore/preferences/core/Preferences;", "dataMigrations", "", "Landroidx/datastore/core/DataMigration;", "ioScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "addDataMigration", "dataMigration", "addRxDataMigration", "rxDataMigration", "Landroidx/datastore/rxjava3/RxDataMigration;", InAppPurchaseConstants.METHOD_BUILD, "Landroidx/datastore/rxjava3/RxDataStore;", "setCorruptionHandler", "setIoScheduler", "datastore-preferences-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxPreferenceDataStoreBuilder {
    private Context context;
    private ReplaceFileCorruptionHandler<Preferences> corruptionHandler;
    private final List<DataMigration<Preferences>> dataMigrations;
    private Scheduler ioScheduler;
    private String name;
    private Callable<File> produceFile;

    public RxPreferenceDataStoreBuilder(Callable<File> produceFile) {
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        Scheduler schedulerM2718io = Schedulers.m2718io();
        Intrinsics.checkNotNullExpressionValue(schedulerM2718io, "io()");
        this.ioScheduler = schedulerM2718io;
        this.dataMigrations = new ArrayList();
        this.produceFile = produceFile;
    }

    public RxPreferenceDataStoreBuilder(Context context, String name) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(name, "name");
        Scheduler schedulerM2718io = Schedulers.m2718io();
        Intrinsics.checkNotNullExpressionValue(schedulerM2718io, "io()");
        this.ioScheduler = schedulerM2718io;
        this.dataMigrations = new ArrayList();
        this.context = context;
        this.name = name;
    }

    public final RxPreferenceDataStoreBuilder setIoScheduler(Scheduler ioScheduler) {
        Intrinsics.checkNotNullParameter(ioScheduler, "ioScheduler");
        this.ioScheduler = ioScheduler;
        return this;
    }

    public final RxPreferenceDataStoreBuilder setCorruptionHandler(ReplaceFileCorruptionHandler<Preferences> corruptionHandler) {
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        this.corruptionHandler = corruptionHandler;
        return this;
    }

    public final RxPreferenceDataStoreBuilder addRxDataMigration(RxDataMigration<Preferences> rxDataMigration) {
        Intrinsics.checkNotNullParameter(rxDataMigration, "rxDataMigration");
        this.dataMigrations.add(new DataMigrationFromRxDataMigration(rxDataMigration));
        return this;
    }

    public final RxPreferenceDataStoreBuilder addDataMigration(DataMigration<Preferences> dataMigration) {
        Intrinsics.checkNotNullParameter(dataMigration, "dataMigration");
        this.dataMigrations.add(dataMigration);
        return this;
    }

    public final RxDataStore<Preferences> build() {
        DataStore<Preferences> dataStoreCreate;
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(RxSchedulerKt.asCoroutineDispatcher(this.ioScheduler).plus(JobKt__JobKt.Job$default((Job) null, 1, (Object) null)));
        final Callable<File> callable = this.produceFile;
        final Context context = this.context;
        final String str = this.name;
        if (callable != null) {
            dataStoreCreate = PreferenceDataStoreFactory.INSTANCE.create(this.corruptionHandler, this.dataMigrations, CoroutineScope, new Function0<File>() { // from class: androidx.datastore.preferences.rxjava3.RxPreferenceDataStoreBuilder$build$delegate$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final File invoke() throws Exception {
                    File fileCall = callable.call();
                    Intrinsics.checkNotNullExpressionValue(fileCall, "produceFile.call()");
                    return fileCall;
                }
            });
        } else {
            if (context == null || str == null) {
                throw new IllegalStateException("Either produceFile or context and name must be set. This should never happen.".toString());
            }
            dataStoreCreate = PreferenceDataStoreFactory.INSTANCE.create(this.corruptionHandler, this.dataMigrations, CoroutineScope, new Function0<File>() { // from class: androidx.datastore.preferences.rxjava3.RxPreferenceDataStoreBuilder$build$delegate$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final File invoke() {
                    return PreferenceDataStoreFile.preferencesDataStoreFile(context, str);
                }
            });
        }
        return RxDataStore.INSTANCE.create(dataStoreCreate, CoroutineScope);
    }
}
