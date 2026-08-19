.class public final Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;
.super Ljava/lang/Object;
.source "OvertimeBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J,\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000fH\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "DATE",
        "USER_ID",
        "OT_MINUTES",
        "OT_PER_HOUR",
        "newInstance",
        "Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;",
        "userId",
        "date",
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

    .line 381
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;Ljava/lang/String;Ljava/lang/String;DDILjava/lang/Object;)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;
    .locals 10

    and-int/lit8 v0, p7, 0x4

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    move-wide v6, v1

    goto :goto_0

    :cond_0
    move-wide v6, p3

    :goto_0
    and-int/lit8 v0, p7, 0x8

    if-eqz v0, :cond_1

    move-wide v8, v1

    goto :goto_1

    :cond_1
    move-wide v8, p5

    :goto_1
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 388
    invoke-virtual/range {v3 .. v9}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;
    .locals 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "userId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "date"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    new-instance v0, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;-><init>()V

    .line 390
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 391
    const-string v2, "DATE"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string p2, "user_id"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string p1, "ot_minutes"

    invoke-virtual {v1, p1, p3, p4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 394
    const-string p1, "ot_per_hour"

    invoke-virtual {v1, p1, p5, p6}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 390
    invoke-virtual {v0, v1}, Lcom/laborbook/keep/screen/calendar/fragment/OvertimeBottomSheetFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
