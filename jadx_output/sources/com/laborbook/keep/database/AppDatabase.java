package com.laborbook.keep.database;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import com.laborbook.keep.screen.calendar.dao.AttendanceUserDao;
import com.laborbook.keep.screen.calendar.dao.CalendarItemDao;
import com.laborbook.keep.screen.home.dao.StaffUserDao;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: AppDatabase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\tH&¨\u0006\u000b"}, m2722d2 = {"Lcom/laborbook/keep/database/AppDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "staffUserDao", "Lcom/laborbook/keep/screen/home/dao/StaffUserDao;", "attendanceUserDao", "Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;", "calendarItemDao", "Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class AppDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile AppDatabase INSTANCE;

    public abstract AttendanceUserDao attendanceUserDao();

    public abstract CalendarItemDao calendarItemDao();

    public abstract StaffUserDao staffUserDao();

    /* JADX INFO: compiled from: AppDatabase.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, m2722d2 = {"Lcom/laborbook/keep/database/AppDatabase$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/laborbook/keep/database/AppDatabase;", "getDatabase", "context", "Landroid/content/Context;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final AppDatabase getDatabase(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            AppDatabase appDatabase = AppDatabase.INSTANCE;
            if (appDatabase == null) {
                synchronized (this) {
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    appDatabase = (AppDatabase) Room.databaseBuilder(applicationContext, AppDatabase.class, "app_database").fallbackToDestructiveMigration().build();
                    Companion companion = AppDatabase.INSTANCE;
                    AppDatabase.INSTANCE = appDatabase;
                }
            }
            return appDatabase;
        }
    }
}
