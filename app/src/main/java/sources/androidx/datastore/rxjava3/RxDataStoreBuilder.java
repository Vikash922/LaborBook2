package androidx.datastore.rxjava3;

import android.content.Context;
import androidx.datastore.DataStoreFile;
import androidx.datastore.core.DataMigration;
import androidx.datastore.core.DataStore;
import androidx.datastore.core.DataStoreFactory;
import androidx.datastore.core.Serializer;
import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
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

/* JADX INFO: compiled from: RxDataStoreBuilder.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0007\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0002B#\b\u0016\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\bB%\b\u0016\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007¢\u0006\u0002\u0010\rJ\u001a\u0010\u0016\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u0012J\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00028\u00000\u001aJ\f\u0010\u001b\u001a\b\u0012\u0004\u0012\u00028\u00000\u001cJ\u001a\u0010\u001d\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000fJ\u0014\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0013\u001a\u00020\u0014R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00120\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0015\u001a\u0004\u0018\u00010\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0003\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, m2722d2 = {"Landroidx/datastore/rxjava3/RxDataStoreBuilder;", "T", "", "produceFile", "Ljava/util/concurrent/Callable;", "Ljava/io/File;", "serializer", "Landroidx/datastore/core/Serializer;", "(Ljava/util/concurrent/Callable;Landroidx/datastore/core/Serializer;)V", "context", "Landroid/content/Context;", "fileName", "", "(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/core/Serializer;)V", "corruptionHandler", "Landroidx/datastore/core/handlers/ReplaceFileCorruptionHandler;", "dataMigrations", "", "Landroidx/datastore/core/DataMigration;", "ioScheduler", "Lio/reactivex/rxjava3/core/Scheduler;", "name", "addDataMigration", "dataMigration", "addRxDataMigration", "rxDataMigration", "Landroidx/datastore/rxjava3/RxDataMigration;", InAppPurchaseConstants.METHOD_BUILD, "Landroidx/datastore/rxjava3/RxDataStore;", "setCorruptionHandler", "setIoScheduler", "datastore-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxDataStoreBuilder<T> {
    private Context context;
    private ReplaceFileCorruptionHandler<T> corruptionHandler;
    private final List<DataMigration<T>> dataMigrations;
    private Scheduler ioScheduler;
    private String name;
    private Callable<File> produceFile;
    private Serializer<T> serializer;

    public RxDataStoreBuilder(Callable<File> produceFile, Serializer<T> serializer) {
        Intrinsics.checkNotNullParameter(produceFile, "produceFile");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Scheduler schedulerM2718io = Schedulers.m2718io();
        Intrinsics.checkNotNullExpressionValue(schedulerM2718io, "io()");
        this.ioScheduler = schedulerM2718io;
        this.dataMigrations = new ArrayList();
        this.produceFile = produceFile;
        this.serializer = serializer;
    }

    public RxDataStoreBuilder(Context context, String fileName, Serializer<T> serializer) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(serializer, "serializer");
        Scheduler schedulerM2718io = Schedulers.m2718io();
        Intrinsics.checkNotNullExpressionValue(schedulerM2718io, "io()");
        this.ioScheduler = schedulerM2718io;
        this.dataMigrations = new ArrayList();
        this.context = context;
        this.name = fileName;
        this.serializer = serializer;
    }

    public final RxDataStoreBuilder<T> setIoScheduler(Scheduler ioScheduler) {
        Intrinsics.checkNotNullParameter(ioScheduler, "ioScheduler");
        this.ioScheduler = ioScheduler;
        return this;
    }

    public final RxDataStoreBuilder<T> setCorruptionHandler(ReplaceFileCorruptionHandler<T> corruptionHandler) {
        Intrinsics.checkNotNullParameter(corruptionHandler, "corruptionHandler");
        this.corruptionHandler = corruptionHandler;
        return this;
    }

    public final RxDataStoreBuilder<T> addRxDataMigration(RxDataMigration<T> rxDataMigration) {
        Intrinsics.checkNotNullParameter(rxDataMigration, "rxDataMigration");
        this.dataMigrations.add(new DataMigrationFromRxDataMigration(rxDataMigration));
        return this;
    }

    public final RxDataStoreBuilder<T> addDataMigration(DataMigration<T> dataMigration) {
        Intrinsics.checkNotNullParameter(dataMigration, "dataMigration");
        this.dataMigrations.add(dataMigration);
        return this;
    }

    public final RxDataStore<T> build() {
        DataStore<T> dataStoreCreate;
        CoroutineScope CoroutineScope = CoroutineScopeKt.CoroutineScope(RxSchedulerKt.asCoroutineDispatcher(this.ioScheduler).plus(JobKt__JobKt.Job$default((Job) null, 1, (Object) null)));
        if (this.produceFile != null) {
            DataStoreFactory dataStoreFactory = DataStoreFactory.INSTANCE;
            Serializer<T> serializer = this.serializer;
            Intrinsics.checkNotNull(serializer);
            dataStoreCreate = dataStoreFactory.create(serializer, this.corruptionHandler, this.dataMigrations, CoroutineScope, new Function0<File>(this) { // from class: androidx.datastore.rxjava3.RxDataStoreBuilder$build$delegateDs$1
                final /* synthetic */ RxDataStoreBuilder<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final File invoke() throws Exception {
                    Callable callable = ((RxDataStoreBuilder) this.this$0).produceFile;
                    Intrinsics.checkNotNull(callable);
                    Object objCall = callable.call();
                    Intrinsics.checkNotNullExpressionValue(objCall, "produceFile!!.call()");
                    return (File) objCall;
                }
            });
        } else {
            if (this.context == null || this.name == null) {
                throw new IllegalStateException("Either produceFile or context and name must be set. This should never happen.".toString());
            }
            DataStoreFactory dataStoreFactory2 = DataStoreFactory.INSTANCE;
            Serializer<T> serializer2 = this.serializer;
            Intrinsics.checkNotNull(serializer2);
            dataStoreCreate = dataStoreFactory2.create(serializer2, this.corruptionHandler, this.dataMigrations, CoroutineScope, new Function0<File>(this) { // from class: androidx.datastore.rxjava3.RxDataStoreBuilder$build$delegateDs$2
                final /* synthetic */ RxDataStoreBuilder<T> this$0;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                    this.this$0 = this;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // kotlin.jvm.functions.Function0
                public final File invoke() {
                    Context context = ((RxDataStoreBuilder) this.this$0).context;
                    Intrinsics.checkNotNull(context);
                    String str = ((RxDataStoreBuilder) this.this$0).name;
                    Intrinsics.checkNotNull(str);
                    return DataStoreFile.dataStoreFile(context, str);
                }
            });
        }
        return RxDataStore.INSTANCE.create(dataStoreCreate, CoroutineScope);
    }
}
