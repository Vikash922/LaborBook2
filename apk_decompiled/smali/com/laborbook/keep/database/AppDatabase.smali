.class public abstract Lcom/laborbook/keep/database/AppDatabase;
.super Landroidx/room/RoomDatabase;
.source "AppDatabase.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/database/AppDatabase$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\'\u0018\u0000 \n2\u00020\u0001:\u0001\nB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H&J\u0008\u0010\u0006\u001a\u00020\u0007H&J\u0008\u0010\u0008\u001a\u00020\tH&\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/laborbook/keep/database/AppDatabase;",
        "Landroidx/room/RoomDatabase;",
        "<init>",
        "()V",
        "staffUserDao",
        "Lcom/laborbook/keep/screen/home/dao/StaffUserDao;",
        "attendanceUserDao",
        "Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;",
        "calendarItemDao",
        "Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;",
        "Companion",
        "keep_release"
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
.field public static final Companion:Lcom/laborbook/keep/database/AppDatabase$Companion;

.field private static volatile INSTANCE:Lcom/laborbook/keep/database/AppDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/database/AppDatabase$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/database/AppDatabase$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/database/AppDatabase;->Companion:Lcom/laborbook/keep/database/AppDatabase$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    return-void
.end method

.method public static final synthetic access$getINSTANCE$cp()Lcom/laborbook/keep/database/AppDatabase;
    .locals 1

    .line 14
    sget-object v0, Lcom/laborbook/keep/database/AppDatabase;->INSTANCE:Lcom/laborbook/keep/database/AppDatabase;

    return-object v0
.end method

.method public static final synthetic access$setINSTANCE$cp(Lcom/laborbook/keep/database/AppDatabase;)V
    .locals 0

    .line 14
    sput-object p0, Lcom/laborbook/keep/database/AppDatabase;->INSTANCE:Lcom/laborbook/keep/database/AppDatabase;

    return-void
.end method


# virtual methods
.method public abstract attendanceUserDao()Lcom/laborbook/keep/screen/calendar/dao/AttendanceUserDao;
.end method

.method public abstract calendarItemDao()Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao;
.end method

.method public abstract staffUserDao()Lcom/laborbook/keep/screen/home/dao/StaffUserDao;
.end method
