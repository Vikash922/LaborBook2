.class public final Lcom/laborbook/reminder/AlarmScheduler;
.super Ljava/lang/Object;
.source "AlarmScheduler.kt"

# interfaces
.implements Lorg/koin/core/component/KoinComponent;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAlarmScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AlarmScheduler.kt\ncom/laborbook/reminder/AlarmScheduler\n+ 2 KoinComponent.kt\norg/koin/core/component/KoinComponentKt\n*L\n1#1,68:1\n56#2,6:69\n*S KotlinDebug\n*F\n+ 1 AlarmScheduler.kt\ncom/laborbook/reminder/AlarmScheduler\n*L\n18#1:69,6\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000c\u001a\u00020\rJ?\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u00142(\u0008\u0002\u0010\u0015\u001a\"\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0018\u00010\u0018j\u0010\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u0017\u0018\u0001`\u0016H\u0002\u00a2\u0006\u0002\u0010\u0019R\u001b\u0010\u0004\u001a\u00020\u00058FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/laborbook/reminder/AlarmScheduler;",
        "Lorg/koin/core/component/KoinComponent;",
        "<init>",
        "()V",
        "analytics",
        "Lcom/laborbook/base/analytics/Analytics;",
        "getAnalytics",
        "()Lcom/laborbook/base/analytics/Analytics;",
        "analytics$delegate",
        "Lkotlin/Lazy;",
        "isAlarmSet",
        "",
        "context",
        "Landroid/content/Context;",
        "requestCode",
        "",
        "scheduleDailyAttendanceReminder",
        "",
        "triggerImpressionEvent",
        "eventName",
        "",
        "hashMap",
        "Lkotlin/collections/HashMap;",
        "",
        "Ljava/util/HashMap;",
        "(Ljava/lang/String;Ljava/util/HashMap;)V",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/laborbook/reminder/AlarmScheduler;

.field private static final analytics$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/laborbook/reminder/AlarmScheduler;

    invoke-direct {v0}, Lcom/laborbook/reminder/AlarmScheduler;-><init>()V

    sput-object v0, Lcom/laborbook/reminder/AlarmScheduler;->INSTANCE:Lcom/laborbook/reminder/AlarmScheduler;

    .line 18
    check-cast v0, Lorg/koin/core/component/KoinComponent;

    .line 71
    sget-object v1, Lorg/koin/mp/KoinPlatformTools;->INSTANCE:Lorg/koin/mp/KoinPlatformTools;

    invoke-virtual {v1}, Lorg/koin/mp/KoinPlatformTools;->defaultLazyMode()Lkotlin/LazyThreadSafetyMode;

    move-result-object v1

    .line 74
    new-instance v2, Lcom/laborbook/reminder/AlarmScheduler$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/reminder/AlarmScheduler$special$$inlined$inject$default$1;-><init>(Lorg/koin/core/component/KoinComponent;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/laborbook/reminder/AlarmScheduler;->analytics$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 61
    invoke-virtual {p0}, Lcom/laborbook/reminder/AlarmScheduler;->getAnalytics()Lcom/laborbook/base/analytics/Analytics;

    move-result-object v0

    const/4 v1, 0x2

    .line 64
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Mixpanel"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Firebase"

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 61
    const-string v2, "system"

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/laborbook/base/analytics/Analytics;->logEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic triggerImpressionEvent$default(Lcom/laborbook/reminder/AlarmScheduler;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 60
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/laborbook/reminder/AlarmScheduler;->triggerImpressionEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method


# virtual methods
.method public final getAnalytics()Lcom/laborbook/base/analytics/Analytics;
    .locals 1

    .line 18
    sget-object v0, Lcom/laborbook/reminder/AlarmScheduler;->analytics$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/analytics/Analytics;

    return-object v0
.end method

.method public getKoin()Lorg/koin/core/Koin;
    .locals 1

    .line 16
    invoke-static {p0}, Lorg/koin/core/component/KoinComponent$DefaultImpls;->getKoin(Lorg/koin/core/component/KoinComponent;)Lorg/koin/core/Koin;

    move-result-object v0

    return-object v0
.end method

.method public final isAlarmSet(Landroid/content/Context;I)Z
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/laborbook/receiver/AttendanceReminderReceiver;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x24000000

    .line 22
    invoke-static {p1, p2, v0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final scheduleDailyAttendanceReminder(Landroid/content/Context;)V
    .locals 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, v0}, Lcom/laborbook/reminder/AlarmScheduler;->isAlarmSet(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 31
    const-string v1, "alarm"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Landroid/app/AlarmManager;

    .line 32
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/laborbook/receiver/AttendanceReminderReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0xc000000

    .line 33
    invoke-static {p1, v0, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 38
    const-string p1, "Asia/Kolkata"

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object p1

    const/16 v1, 0xb

    const/16 v2, 0x13

    .line 39
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    const/16 v2, 0x1e

    .line 40
    invoke-virtual {p1, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 41
    invoke-virtual {p1, v1, v0}, Ljava/util/Calendar;->set(II)V

    .line 45
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v0, v0, v4

    if-gtz v0, :cond_0

    const/4 v0, 0x5

    const/4 v1, 0x1

    .line 46
    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 52
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    const-wide/32 v7, 0x5265c00

    const/4 v4, 0x0

    .line 50
    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 56
    const-string p1, "daily_reminder_set"

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0, v1}, Lcom/laborbook/reminder/AlarmScheduler;->triggerImpressionEvent$default(Lcom/laborbook/reminder/AlarmScheduler;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
