.class public final Lcom/laborbook/keep/screen/report/ReportFragment;
.super Lcom/laborbook/base/BaseFragment;
.source "ReportFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/keep/screen/report/ReportFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseFragment<",
        "Lcom/laborbook/keep/databinding/FragmentReportBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 ,2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001,B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\u0016\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u001a\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020 2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0016J\u0008\u0010!\u001a\u00020\u001eH\u0002J\u0008\u0010\"\u001a\u00020\u001eH\u0002J\u0010\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0010H\u0002J\u0010\u0010%\u001a\u00020\u00062\u0006\u0010&\u001a\u00020\u0010H\u0002J\u0008\u0010\'\u001a\u00020\u001eH\u0002J\u0008\u0010(\u001a\u00020\u001eH\u0002J\u0010\u0010)\u001a\u00020\u001e2\u0006\u0010*\u001a\u00020+H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006-"
    }
    d2 = {
        "Lcom/laborbook/keep/screen/report/ReportFragment;",
        "Lcom/laborbook/base/BaseFragment;",
        "Lcom/laborbook/keep/databinding/FragmentReportBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
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
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
        "setupView",
        "populateData",
        "formatCurrency",
        "amount",
        "formatOvertime",
        "overtime",
        "registerOnClickListeners",
        "generateAndSharePdf",
        "sharePdfFile",
        "pdfFile",
        "Ljava/io/File;",
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
.field private static final ARG_ABSENT_COUNT:Ljava/lang/String; = "absent_count"

.field private static final ARG_ADVANCE_AMOUNT:Ljava/lang/String; = "advance_amount"

.field private static final ARG_HALFDAY_COUNT:Ljava/lang/String; = "halfday_count"

.field private static final ARG_MONTH_YEAR:Ljava/lang/String; = "month_year"

.field private static final ARG_OVERTIME_COUNT:Ljava/lang/String; = "overtime_count"

.field private static final ARG_PRESENT_COUNT:Ljava/lang/String; = "present_count"

.field private static final ARG_P_PLUS_HALF:Ljava/lang/String; = "p_plus_half"

.field private static final ARG_P_PLUS_P:Ljava/lang/String; = "p_plus_p"

.field private static final ARG_STAFF_NAME:Ljava/lang/String; = "staff_name"

.field private static final ARG_STAFF_PHONE:Ljava/lang/String; = "staff_phone"

.field private static final ARG_TOTAL_EARNINGS:Ljava/lang/String; = "total_earnings"

.field public static final Companion:Lcom/laborbook/keep/screen/report/ReportFragment$Companion;


# instance fields
.field private absentCount:I

.field private advanceAmount:D

.field private halfdayCount:I

.field private monthYear:Ljava/lang/String;

.field private overtimeCount:D

.field private pPlusHalf:Ljava/lang/String;

.field private pPlusP:Ljava/lang/String;

.field private presentCount:I

.field private staffName:Ljava/lang/String;

.field private staffPhone:Ljava/lang/String;

.field private totalEarnings:D


# direct methods
.method public static synthetic $r8$lambda$4aRoO-U1WeDP-_W2ThoFCpXWkaY(Lcom/laborbook/keep/screen/report/ReportFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->registerOnClickListeners$lambda$4$lambda$3(Lcom/laborbook/keep/screen/report/ReportFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PBsp2A8FC-Y7BTrD7XgARpInCEM(Lcom/laborbook/keep/screen/report/ReportFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->registerOnClickListeners$lambda$4$lambda$2(Lcom/laborbook/keep/screen/report/ReportFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/keep/screen/report/ReportFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/keep/screen/report/ReportFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/keep/screen/report/ReportFragment;->Companion:Lcom/laborbook/keep/screen/report/ReportFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/laborbook/base/BaseFragment;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffName:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffPhone:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->monthYear:Ljava/lang/String;

    .line 37
    const-string v0, "-"

    iput-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusHalf:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusP:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getAbsentCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->absentCount:I

    return p0
.end method

.method public static final synthetic access$getAdvanceAmount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->advanceAmount:D

    return-wide v0
.end method

.method public static final synthetic access$getHalfdayCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->halfdayCount:I

    return p0
.end method

.method public static final synthetic access$getMonthYear$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->monthYear:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getOvertimeCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->overtimeCount:D

    return-wide v0
.end method

.method public static final synthetic access$getPPlusHalf$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusHalf:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPPlusP$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusP:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getPresentCount$p(Lcom/laborbook/keep/screen/report/ReportFragment;)I
    .locals 0

    .line 25
    iget p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->presentCount:I

    return p0
.end method

.method public static final synthetic access$getStaffName$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffName:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getStaffPhone$p(Lcom/laborbook/keep/screen/report/ReportFragment;)Ljava/lang/String;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffPhone:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getTotalEarnings$p(Lcom/laborbook/keep/screen/report/ReportFragment;)D
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->totalEarnings:D

    return-wide v0
.end method

.method public static final synthetic access$sharePdfFile(Lcom/laborbook/keep/screen/report/ReportFragment;Ljava/io/File;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->sharePdfFile(Ljava/io/File;)V

    return-void
.end method

.method private final formatCurrency(D)Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Ljava/util/Locale;

    const-string v1, "en"

    const-string v2, "IN"

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/text/NumberFormat;->getCurrencyInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    const-string p2, "format(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final formatOvertime(D)Ljava/lang/String;
    .locals 6

    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    const/16 v1, 0x6d

    const/16 v2, 0x68

    const/16 v3, 0x3c

    if-ltz v0, :cond_1

    double-to-int v0, p1

    int-to-double v4, v0

    sub-double/2addr p1, v4

    int-to-double v3, v3

    mul-double/2addr p1, v3

    double-to-int p1, p1

    if-lez p1, :cond_0

    .line 154
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 156
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    int-to-double v4, v3

    mul-double/2addr p1, v4

    double-to-int p1, p1

    .line 161
    div-int/lit8 p2, p1, 0x3c

    .line 162
    rem-int/2addr p1, v3

    if-lez p2, :cond_3

    if-lez p1, :cond_2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 167
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 170
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 174
    :cond_4
    const-string p1, "0h"

    :goto_0
    return-object p1
.end method

.method private final generateAndSharePdf()V
    .locals 7

    .line 192
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v0

    check-cast v0, Lkotlin/coroutines/CoroutineContext;

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v0, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/keep/screen/report/ReportFragment$generateAndSharePdf$1;-><init>(Lcom/laborbook/keep/screen/report/ReportFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final populateData()V
    .locals 7

    .line 104
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    const-string v1, "staff_name"

    const-string v2, "N/A"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffName:Ljava/lang/String;

    .line 107
    const-string v1, "staff_phone"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffPhone:Ljava/lang/String;

    .line 108
    const-string v1, "month_year"

    const-string v2, "Monthly Report"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->monthYear:Ljava/lang/String;

    .line 109
    const-string v1, "present_count"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->presentCount:I

    .line 110
    const-string v1, "absent_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->absentCount:I

    .line 111
    const-string v1, "overtime_count"

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v5

    iput-wide v5, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->overtimeCount:D

    .line 112
    const-string v1, "halfday_count"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->halfdayCount:I

    .line 113
    const-string v1, "p_plus_half"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusHalf:Ljava/lang/String;

    .line 114
    const-string v1, "p_plus_p"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusP:Ljava/lang/String;

    .line 115
    const-string v1, "advance_amount"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->advanceAmount:D

    .line 116
    const-string v1, "total_earnings"

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->totalEarnings:D

    .line 118
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz v0, :cond_0

    .line 120
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportNameValue:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffName:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportPhone:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffPhone:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvReportMonth:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->monthYear:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvPresentCount:Landroid/widget/TextView;

    iget v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->presentCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvAbsentCount:Landroid/widget/TextView;

    iget v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->absentCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvOvertimeCount:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->overtimeCount:D

    invoke-direct {p0, v2, v3}, Lcom/laborbook/keep/screen/report/ReportFragment;->formatOvertime(D)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvHalfdayCount:Landroid/widget/TextView;

    iget v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->halfdayCount:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvPPlusHalf:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusHalf:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvPPlusP:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->pPlusP:Ljava/lang/String;

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvAdvanceAmount:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->advanceAmount:D

    invoke-direct {p0, v2, v3}, Lcom/laborbook/keep/screen/report/ReportFragment;->formatCurrency(D)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvTotalEarnings:Landroid/widget/TextView;

    iget-wide v2, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->totalEarnings:D

    invoke-direct {p0, v2, v3}, Lcom/laborbook/keep/screen/report/ReportFragment;->formatCurrency(D)Ljava/lang/String;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-wide v1, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->totalEarnings:D

    iget-wide v3, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->advanceAmount:D

    sub-double/2addr v1, v3

    .line 138
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->tvBalance:Landroid/widget/TextView;

    invoke-direct {p0, v1, v2}, Lcom/laborbook/keep/screen/report/ReportFragment;->formatCurrency(D)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private final registerOnClickListeners()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->ivBack:Landroid/widget/ImageView;

    new-instance v2, Lcom/laborbook/keep/screen/report/ReportFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/laborbook/keep/screen/report/ReportFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/keep/screen/report/ReportFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, v0, Lcom/laborbook/keep/databinding/FragmentReportBinding;->btnSharePdf:Lcom/google/android/material/button/MaterialButton;

    new-instance v1, Lcom/laborbook/keep/screen/report/ReportFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/keep/screen/report/ReportFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/keep/screen/report/ReportFragment;)V

    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private static final registerOnClickListeners$lambda$4$lambda$2(Lcom/laborbook/keep/screen/report/ReportFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->getFragmentNavigator()Lcom/laborbook/base/navigator/FragmentNavigator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/laborbook/base/navigator/FragmentNavigator;->goBack()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$4$lambda$3(Lcom/laborbook/keep/screen/report/ReportFragment;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    move-object p1, p0

    check-cast p1, Lcom/laborbook/base/BaseFragment;

    const/4 v0, 0x0

    const/4 v1, 0x2

    const-string v2, "share_pdf_report"

    invoke-static {p1, v2, v0, v1, v0}, Lcom/laborbook/base/BaseFragment;->recordClickEvent$default(Lcom/laborbook/base/BaseFragment;Ljava/lang/String;Ljava/util/HashMap;ILjava/lang/Object;)V

    .line 186
    invoke-direct {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->generateAndSharePdf()V

    return-void
.end method

.method private final setupView()V
    .locals 0

    return-void
.end method

.method private final sharePdfFile(Ljava/io/File;)V
    .locals 5

    const/4 v0, 0x0

    .line 239
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/laborbook/keep/R$string;->failed_to_share_pdf:I

    const-string v2, "PDF file not found"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    sget v1, Lcom/laborbook/keep/R$string;->failed_to_share_pdf:I

    const-string v2, "Cannot read PDF file"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 250
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    .line 251
    const-string v2, "com.laborbook.provider"

    .line 249
    invoke-static {v1, v2, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 255
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 256
    const-string v2, "application/pdf"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v2, "android.intent.extra.STREAM"

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 258
    const-string p1, "android.intent.extra.SUBJECT"

    sget v2, Lcom/laborbook/keep/R$string;->staff_report_subject:I

    iget-object v3, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffName:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->monthYear:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string p1, "android.intent.extra.TEXT"

    sget v2, Lcom/laborbook/keep/R$string;->staff_report_message:I

    iget-object v3, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->staffName:Ljava/lang/String;

    iget-object v4, p0, Lcom/laborbook/keep/screen/report/ReportFragment;->monthYear:Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 260
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 263
    sget p1, Lcom/laborbook/keep/R$string;->share_pdf_report_title:I

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error sharing PDF: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Ljava/lang/Throwable;

    const-string v3, "ReportFragment"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/laborbook/keep/R$string;->failed_to_share_pdf:I

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lcom/laborbook/keep/screen/report/ReportFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 28
    const-string v0, "Report"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/keep/screen/report/ReportFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentReportBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/keep/databinding/FragmentReportBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 89
    invoke-static {p1, p2, p3}, Lcom/laborbook/keep/databinding/FragmentReportBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/keep/databinding/FragmentReportBinding;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-direct {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->setupView()V

    .line 95
    invoke-direct {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->registerOnClickListeners()V

    .line 96
    invoke-direct {p0}, Lcom/laborbook/keep/screen/report/ReportFragment;->populateData()V

    return-void
.end method
