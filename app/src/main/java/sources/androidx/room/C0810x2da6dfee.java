package androidx.room;

import androidx.sqlite.p005db.SupportSQLiteDatabase;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: androidx.room.AutoClosingRoomOpenHelper$AutoClosingSupportSQLiteDatabase$yieldIfContendedSafely$1 */
/* JADX INFO: compiled from: AutoClosingRoomOpenHelper.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2723k = 3, m2724mv = {1, 8, 0}, m2726xi = 48)
/* synthetic */ class C0810x2da6dfee extends FunctionReferenceImpl implements Function1<SupportSQLiteDatabase, Boolean> {
    public static final C0810x2da6dfee INSTANCE = new C0810x2da6dfee();

    C0810x2da6dfee() {
        super(1, SupportSQLiteDatabase.class, "yieldIfContendedSafely", "yieldIfContendedSafely()Z", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final Boolean invoke(SupportSQLiteDatabase p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return Boolean.valueOf(p0.yieldIfContendedSafely());
    }
}
