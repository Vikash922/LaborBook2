package com.boilerplate.uikit;

import androidx.appcompat.app.AppCompatDelegate;
import java.util.Calendar;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0006\u0010\u0004\u001a\u00020\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0002¨\u0006\b"}, m2722d2 = {"Lcom/boilerplate/uikit/ThemeUtils;", "", "<init>", "()V", "applyTheme", "", "isNightTime", "", "uikit_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class ThemeUtils {
    public static final ThemeUtils INSTANCE = new ThemeUtils();

    private ThemeUtils() {
    }

    private final boolean isNightTime() {
        Calendar calendar = Calendar.getInstance();
        int i = calendar.get(11);
        return i >= 18 || i < 5 || (i == 12 && calendar.get(9) == 0);
    }

    public final void applyTheme() {
        isNightTime();
        AppCompatDelegate.setDefaultNightMode(1);
    }
}
