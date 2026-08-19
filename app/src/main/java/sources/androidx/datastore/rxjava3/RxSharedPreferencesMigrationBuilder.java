package androidx.datastore.rxjava3;

import android.content.Context;
import androidx.datastore.core.DataMigration;
import androidx.datastore.migrations.SharedPreferencesMigration;
import androidx.datastore.migrations.SharedPreferencesView;
import com.facebook.appevents.iap.InAppPurchaseConstants;
import com.google.firebase.crashlytics.internal.metadata.UserMetadata;
import java.util.Arrays;
import java.util.Set;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.SetsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.rx3.RxAwaitKt;

/* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u00006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0007\u0018\u0000*\u0004\b\u0000\u0010\u00012\u00020\u0002B#\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\b¢\u0006\u0002\u0010\tJ\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\rJ%\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00060\u0010\"\u00020\u0006¢\u0006\u0002\u0010\u0011R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, m2722d2 = {"Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;", "T", "", "context", "Landroid/content/Context;", "sharedPreferencesName", "", "rxSharedPreferencesMigration", "Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;", "(Landroid/content/Context;Ljava/lang/String;Landroidx/datastore/rxjava3/RxSharedPreferencesMigration;)V", "keysToMigrate", "", InAppPurchaseConstants.METHOD_BUILD, "Landroidx/datastore/core/DataMigration;", "setKeysToMigrate", UserMetadata.KEYDATA_FILENAME, "", "([Ljava/lang/String;)Landroidx/datastore/rxjava3/RxSharedPreferencesMigrationBuilder;", "datastore-rxjava3_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public final class RxSharedPreferencesMigrationBuilder<T> {
    private final Context context;
    private Set<String> keysToMigrate;
    private final RxSharedPreferencesMigration<T> rxSharedPreferencesMigration;
    private final String sharedPreferencesName;

    public RxSharedPreferencesMigrationBuilder(Context context, String sharedPreferencesName, RxSharedPreferencesMigration<T> rxSharedPreferencesMigration) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(sharedPreferencesName, "sharedPreferencesName");
        Intrinsics.checkNotNullParameter(rxSharedPreferencesMigration, "rxSharedPreferencesMigration");
        this.context = context;
        this.sharedPreferencesName = sharedPreferencesName;
        this.rxSharedPreferencesMigration = rxSharedPreferencesMigration;
    }

    public final RxSharedPreferencesMigrationBuilder<T> setKeysToMigrate(String... keys) {
        Intrinsics.checkNotNullParameter(keys, "keys");
        this.keysToMigrate = SetsKt.setOf(Arrays.copyOf(keys, keys.length));
        return this;
    }

    public final DataMigration<T> build() {
        Set<String> set = this.keysToMigrate;
        if (set == null) {
            return new SharedPreferencesMigration(this.context, this.sharedPreferencesName, null, new C05171(this, null), new C05182(this, null), 4, null);
        }
        Context context = this.context;
        String str = this.sharedPreferencesName;
        Intrinsics.checkNotNull(set);
        return new SharedPreferencesMigration(context, str, set, new C05193(this, null), new C05204(this, null));
    }

    /* JADX INFO: renamed from: androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$2 */
    /* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0001H\u008a@"}, m2722d2 = {"<anonymous>", "T", "spView", "Landroidx/datastore/migrations/SharedPreferencesView;", "curData"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$2", m2735f = "RxSharedPreferencesMigration.kt", m2736i = {}, m2737l = {110}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C05182 extends SuspendLambda implements Function3<SharedPreferencesView, T, Continuation<? super T>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;
        final /* synthetic */ RxSharedPreferencesMigrationBuilder<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05182(RxSharedPreferencesMigrationBuilder<T> rxSharedPreferencesMigrationBuilder, Continuation<? super C05182> continuation) {
            super(3, continuation);
            this.this$0 = rxSharedPreferencesMigrationBuilder;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(SharedPreferencesView sharedPreferencesView, T t, Continuation<? super T> continuation) {
            C05182 c05182 = new C05182(this.this$0, continuation);
            c05182.L$0 = sharedPreferencesView;
            c05182.L$1 = t;
            return c05182.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SharedPreferencesView sharedPreferencesView = (SharedPreferencesView) this.L$0;
                Object obj2 = this.L$1;
                this.L$0 = null;
                this.label = 1;
                obj = RxAwaitKt.await(((RxSharedPreferencesMigrationBuilder) this.this$0).rxSharedPreferencesMigration.migrate(sharedPreferencesView, obj2), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$1 */
    /* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "curData"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$1", m2735f = "RxSharedPreferencesMigration.kt", m2736i = {}, m2737l = {113}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C05171 extends SuspendLambda implements Function2<T, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ RxSharedPreferencesMigrationBuilder<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05171(RxSharedPreferencesMigrationBuilder<T> rxSharedPreferencesMigrationBuilder, Continuation<? super C05171> continuation) {
            super(2, continuation);
            this.this$0 = rxSharedPreferencesMigrationBuilder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05171 c05171 = new C05171(this.this$0, continuation);
            c05171.L$0 = obj;
            return c05171;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(T t, Continuation<? super Boolean> continuation) {
            return ((C05171) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                this.label = 1;
                obj = RxAwaitKt.await(((RxSharedPreferencesMigrationBuilder) this.this$0).rxSharedPreferencesMigration.shouldMigrate(obj2), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$4 */
    /* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\u0004\b\u0000\u0010\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u0002H\u0001H\u008a@"}, m2722d2 = {"<anonymous>", "T", "spView", "Landroidx/datastore/migrations/SharedPreferencesView;", "curData"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$4", m2735f = "RxSharedPreferencesMigration.kt", m2736i = {}, m2737l = {121}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C05204 extends SuspendLambda implements Function3<SharedPreferencesView, T, Continuation<? super T>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;
        final /* synthetic */ RxSharedPreferencesMigrationBuilder<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05204(RxSharedPreferencesMigrationBuilder<T> rxSharedPreferencesMigrationBuilder, Continuation<? super C05204> continuation) {
            super(3, continuation);
            this.this$0 = rxSharedPreferencesMigrationBuilder;
        }

        @Override // kotlin.jvm.functions.Function3
        public final Object invoke(SharedPreferencesView sharedPreferencesView, T t, Continuation<? super T> continuation) {
            C05204 c05204 = new C05204(this.this$0, continuation);
            c05204.L$0 = sharedPreferencesView;
            c05204.L$1 = t;
            return c05204.invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                SharedPreferencesView sharedPreferencesView = (SharedPreferencesView) this.L$0;
                Object obj2 = this.L$1;
                this.L$0 = null;
                this.label = 1;
                obj = RxAwaitKt.await(((RxSharedPreferencesMigrationBuilder) this.this$0).rxSharedPreferencesMigration.migrate(sharedPreferencesView, obj2), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }

    /* JADX INFO: renamed from: androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$3 */
    /* JADX INFO: compiled from: RxSharedPreferencesMigration.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u0002H\u0002H\u008a@"}, m2722d2 = {"<anonymous>", "", "T", "curData"}, m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "androidx.datastore.rxjava3.RxSharedPreferencesMigrationBuilder$build$3", m2735f = "RxSharedPreferencesMigration.kt", m2736i = {}, m2737l = {125}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C05193 extends SuspendLambda implements Function2<T, Continuation<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ RxSharedPreferencesMigrationBuilder<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C05193(RxSharedPreferencesMigrationBuilder<T> rxSharedPreferencesMigrationBuilder, Continuation<? super C05193> continuation) {
            super(2, continuation);
            this.this$0 = rxSharedPreferencesMigrationBuilder;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C05193 c05193 = new C05193(this.this$0, continuation);
            c05193.L$0 = obj;
            return c05193;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(T t, Continuation<? super Boolean> continuation) {
            return ((C05193) create(t, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                Object obj2 = this.L$0;
                this.label = 1;
                obj = RxAwaitKt.await(((RxSharedPreferencesMigrationBuilder) this.this$0).rxSharedPreferencesMigration.shouldMigrate(obj2), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            return obj;
        }
    }
}
