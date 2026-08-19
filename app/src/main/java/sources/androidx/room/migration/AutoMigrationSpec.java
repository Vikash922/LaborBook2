package androidx.room.migration;

import androidx.sqlite.p005db.SupportSQLiteDatabase;
import com.facebook.appevents.UserDataStore;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AutoMigrationSpec.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016ø\u0001\u0000\u0082\u0002\u0006\n\u0004\b!0\u0001¨\u0006\u0006À\u0006\u0001"}, m2722d2 = {"Landroidx/room/migration/AutoMigrationSpec;", "", "onPostMigrate", "", UserDataStore.DATE_OF_BIRTH, "Landroidx/sqlite/db/SupportSQLiteDatabase;", "room-runtime_release"}, m2723k = 1, m2724mv = {1, 8, 0}, m2726xi = 48)
public interface AutoMigrationSpec {
    default void onPostMigrate(SupportSQLiteDatabase db) {
        Intrinsics.checkNotNullParameter(db, "db");
    }
}
