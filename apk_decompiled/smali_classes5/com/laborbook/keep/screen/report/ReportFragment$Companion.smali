.class public final Lcom/laborbook/keep/screen/report/ReportFragment$Companion;
.super Ljava/lang/Object;
.source "ReportFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/screen/report/ReportFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003Jf\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00052\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u00192\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u0019R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/report/ReportFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_STAFF_NAME",
        "",
        "ARG_STAFF_PHONE",
        "ARG_MONTH_YEAR",
        "ARG_PRESENT_COUNT",
        "ARG_ABSENT_COUNT",
        "ARG_OVERTIME_COUNT",
        "ARG_HALFDAY_COUNT",
        "ARG_P_PLUS_HALF",
        "ARG_P_PLUS_P",
        "ARG_ADVANCE_AMOUNT",
        "ARG_TOTAL_EARNINGS",
        "newInstance",
        "Lcom/laborbook/keep/screen/report/ReportFragment;",
        "staffName",
        "staffPhone",
        "monthYear",
        "presentCount",
        "",
        "absentCount",
        "overtimeCount",
        "",
        "halfdayCount",
        "pPlusHalf",
        "pPlusP",
        "advanceAmount",
        "totalEarnings",
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

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/laborbook/keep/screen/report/ReportFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/laborbook/keep/screen/report/ReportFragment$Companion;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Ljava/lang/String;DDILjava/lang/Object;)Lcom/laborbook/keep/screen/report/ReportFragment;
    .locals 18

    move/from16 v0, p15

    and-int/lit16 v1, v0, 0x80

    .line 55
    const-string v2, "-"

    if-eqz v1, :cond_0

    move-object v12, v2

    goto :goto_0

    :cond_0
    move-object/from16 v12, p9

    :goto_0
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_1

    move-object v13, v2

    goto :goto_1

    :cond_1
    move-object/from16 v13, p10

    :goto_1
    and-int/lit16 v1, v0, 0x200

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_2

    move-wide v14, v2

    goto :goto_2

    :cond_2
    move-wide/from16 v14, p11

    :goto_2
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_3

    move-wide/from16 v16, v2

    goto :goto_3

    :cond_3
    move-wide/from16 v16, p13

    :goto_3
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    invoke-virtual/range {v3 .. v17}, Lcom/laborbook/keep/screen/report/ReportFragment$Companion;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/report/ReportFragment;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIDILjava/lang/String;Ljava/lang/String;DD)Lcom/laborbook/keep/screen/report/ReportFragment;
    .locals 8

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    const-string v5, "staffName"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "staffPhone"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "monthYear"

    invoke-static {p3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "pPlusHalf"

    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "pPlusP"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    new-instance v5, Lcom/laborbook/keep/screen/report/ReportFragment;

    invoke-direct {v5}, Lcom/laborbook/keep/screen/report/ReportFragment;-><init>()V

    .line 68
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v7, "staff_name"

    invoke-virtual {v6, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v0, "staff_phone"

    invoke-virtual {v6, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v0, "month_year"

    invoke-virtual {v6, v0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "present_count"

    move v1, p4

    invoke-virtual {v6, v0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 73
    const-string v0, "absent_count"

    move v1, p5

    invoke-virtual {v6, v0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string v0, "overtime_count"

    move-wide v1, p6

    invoke-virtual {v6, v0, p6, p7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 75
    const-string v0, "halfday_count"

    move/from16 v1, p8

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 76
    const-string v0, "p_plus_half"

    invoke-virtual {v6, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string v0, "p_plus_p"

    invoke-virtual {v6, v0, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    const-string v0, "advance_amount"

    move-wide/from16 v1, p11

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 79
    const-string v0, "total_earnings"

    move-wide/from16 v1, p13

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 68
    invoke-virtual {v5, v6}, Lcom/laborbook/keep/screen/report/ReportFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v5
.end method
