package com.laborbook.reminder;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import androidx.core.app.NotificationCompat;
import com.boilerplate.analytics.AnalyticsPlatforms;
import com.laborbook.base.analytics.Analytics;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.receiver.AttendanceReminderReceiver;
import java.util.Calendar;
import java.util.HashMap;
import java.util.TimeZone;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;
import org.shadow.apache.commons.lang3.time.DateUtils;

/* JADX INFO: compiled from: AlarmScheduler.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\rJ?\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142(\b\u0002\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0018j\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0018\u0001`\u0016H\u0002¢\u0006\u0002\u0010\u0019R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001a"}, m2722d2 = {"Lcom/laborbook/reminder/AlarmScheduler;", "Lorg/koin/core/component/KoinComponent;", "<init>", "()V", "analytics", "Lcom/laborbook/base/analytics/Analytics;", "getAnalytics", "()Lcom/laborbook/base/analytics/Analytics;", "analytics$delegate", "Lkotlin/Lazy;", "isAlarmSet", "", "context", "Landroid/content/Context;", "requestCode", "", "scheduleDailyAttendanceReminder", "", "triggerImpressionEvent", "eventName", "", "hashMap", "Lkotlin/collections/HashMap;", "", "Ljava/util/HashMap;", "(Ljava/lang/String;Ljava/util/HashMap;)V", "app_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class AlarmScheduler implements KoinComponent {
    public static final AlarmScheduler INSTANCE;

    /* JADX INFO: renamed from: analytics$delegate, reason: from kotlin metadata */
    private static final Lazy analytics;

    private AlarmScheduler() {
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static {
        AlarmScheduler alarmScheduler = new AlarmScheduler();
        INSTANCE = alarmScheduler;
        final AlarmScheduler alarmScheduler2 = alarmScheduler;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        analytics = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<Analytics>() { // from class: com.laborbook.reminder.AlarmScheduler$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.analytics.Analytics, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final Analytics invoke() {
                Scope rootScope;
                KoinComponent koinComponent = alarmScheduler2;
                Qualifier qualifier2 = qualifier;
                Function0<? extends DefinitionParameters> function0 = objArr;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(Analytics.class), qualifier2, function0);
            }
        });
    }

    public final Analytics getAnalytics() {
        return (Analytics) analytics.getValue();
    }

    public final boolean isAlarmSet(Context context, int requestCode) {
        Intrinsics.checkNotNullParameter(context, "context");
        return PendingIntent.getBroadcast(context, requestCode, new Intent(context, (Class<?>) AttendanceReminderReceiver.class), 603979776) != null;
    }

    public final void scheduleDailyAttendanceReminder(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (isAlarmSet(context, 0)) {
            return;
        }
        Object systemService = context.getSystemService(NotificationCompat.CATEGORY_ALARM);
        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.app.AlarmManager");
        AlarmManager alarmManager = (AlarmManager) systemService;
        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) AttendanceReminderReceiver.class), 201326592);
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("Asia/Kolkata"));
        calendar.set(11, 19);
        calendar.set(12, 30);
        calendar.set(13, 0);
        if (calendar.getTimeInMillis() <= System.currentTimeMillis()) {
            calendar.add(5, 1);
        }
        alarmManager.setRepeating(0, calendar.getTimeInMillis(), DateUtils.MILLIS_PER_DAY, broadcast);
        triggerImpressionEvent$default(this, ConstantEventNames.DAILY_REMINDER_SET, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void triggerImpressionEvent$default(AlarmScheduler alarmScheduler, String str, HashMap map, int i, Object obj) {
        if ((i & 2) != 0) {
            map = null;
        }
        alarmScheduler.triggerImpressionEvent(str, map);
    }

    private final void triggerImpressionEvent(String eventName, HashMap<String, Object> hashMap) {
        getAnalytics().logEvent(eventName, Analytics.SYSTEM, CollectionsKt.listOf((Object[]) new String[]{AnalyticsPlatforms.MIXPANEL, AnalyticsPlatforms.FIREBASE}), hashMap);
    }
}
