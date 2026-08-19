.class public final Lcom/laborbook/keep/screen/calendar/utils/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/calendar/utils/Constants$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/utils/Constants;",
        "",
        "<init>",
        "()V",
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
.field public static final ATTENDANCE_STATUS_ABSENT:Ljava/lang/String; = "A"

.field public static final ATTENDANCE_STATUS_DOUBLE_PRESENT:Ljava/lang/String; = "P+P"

.field public static final ATTENDANCE_STATUS_HALF_PRESENT:Ljava/lang/String; = "H"

.field public static final ATTENDANCE_STATUS_NULL:Ljava/lang/String; = "null"

.field public static final ATTENDANCE_STATUS_ONE_AND_HALF_PRESENT:Ljava/lang/String; = "P+H"

.field public static final ATTENDANCE_STATUS_OVERTIME:Ljava/lang/String; = "OT"

.field public static final ATTENDANCE_STATUS_PAID_LEAVE:Ljava/lang/String; = "PA"

.field public static final ATTENDANCE_STATUS_PRESENT:Ljava/lang/String; = "P"

.field public static final Companion:Lcom/laborbook/keep/screen/calendar/utils/Constants$Companion;

.field public static final SALARY_TYPE_DAILY:Ljava/lang/String; = "daily"

.field public static final SALARY_TYPE_MONTHLY:Ljava/lang/String; = "monthly"

.field public static final TYPE_ADVANCE:Ljava/lang/String; = "ADVANCE"

.field public static final TYPE_ATTENDANCE:Ljava/lang/String; = "ATTENDANCE"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/calendar/utils/Constants$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/calendar/utils/Constants$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/calendar/utils/Constants;->Companion:Lcom/laborbook/keep/screen/calendar/utils/Constants$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
