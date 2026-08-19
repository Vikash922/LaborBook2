.class public final Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;
.super Ljava/lang/Object;
.source "AttendanceMarkBottomsheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J<\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c2\u0008\u0008\u0002\u0010\r\u001a\u00020\u000cH\u0007\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;",
        "",
        "<init>",
        "()V",
        "newInstance",
        "Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;",
        "userId",
        "",
        "name",
        "date",
        "attendance",
        "otMinutes",
        "",
        "otPerHour",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DDILjava/lang/Object;)Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;
    .locals 12

    and-int/lit8 v0, p9, 0x10

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v8, v1

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p5

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    move-wide v10, v1

    goto :goto_1

    :cond_1
    move-wide/from16 v10, p7

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    .line 214
    invoke-virtual/range {v3 .. v11}, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;
    .locals 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "date"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attendance"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 215
    new-instance v2, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;

    invoke-direct {v2}, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;-><init>()V

    .line 216
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 217
    const-string v4, "user_id"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string p1, "attendance_status"

    invoke-virtual {v3, p1, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string p1, "ot_minutes"

    invoke-virtual {v3, p1, p5, p6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 222
    const-string p1, "ot_per_hour"

    invoke-virtual {v3, p1, p7, p8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 216
    invoke-virtual {v2, v3}, Lcom/laborbook/keep/screen/attendance/AttendanceMarkBottomsheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v2
.end method
