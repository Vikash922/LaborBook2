package com.laborbook.keep.screen.addstaff.model;

import android.content.Context;
import androidx.room.Room;
import androidx.room.RoomDatabase;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: ContactDatabase.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\b'\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H&¨\u0006\u0007"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;", "Landroidx/room/RoomDatabase;", "<init>", "()V", "contactDao", "Lcom/laborbook/keep/screen/addstaff/model/ContactDao;", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public abstract class ContactDatabase extends RoomDatabase {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static volatile ContactDatabase INSTANCE;

    public abstract ContactDao contactDao();

    /* JADX INFO: compiled from: ContactDatabase.kt */
    @Metadata(m2721d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bR\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\t"}, m2722d2 = {"Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase$Companion;", "", "<init>", "()V", "INSTANCE", "Lcom/laborbook/keep/screen/addstaff/model/ContactDatabase;", "getDatabase", "context", "Landroid/content/Context;", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final ContactDatabase getDatabase(Context context) {
            Intrinsics.checkNotNullParameter(context, "context");
            ContactDatabase contactDatabase = ContactDatabase.INSTANCE;
            if (contactDatabase == null) {
                synchronized (this) {
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    contactDatabase = (ContactDatabase) Room.databaseBuilder(applicationContext, ContactDatabase.class, "contact_database").build();
                    Companion companion = ContactDatabase.INSTANCE;
                    ContactDatabase.INSTANCE = contactDatabase;
                }
            }
            return contactDatabase;
        }
    }
}
