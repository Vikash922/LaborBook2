.class public final Lcom/razorpay/PerformanceUtil;
.super Ljava/lang/Object;
.source "PerformanceUtil.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0002J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/razorpay/PerformanceUtil;",
        "",
        "()V",
        "getPerformanceClass",
        "",
        "context",
        "Landroid/content/Context;",
        "getPerformanceClassFromRAM",
        "isLowEndDevice",
        "",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/razorpay/PerformanceUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/razorpay/PerformanceUtil;

    invoke-direct {v0}, Lcom/razorpay/PerformanceUtil;-><init>()V

    sput-object v0, Lcom/razorpay/PerformanceUtil;->INSTANCE:Lcom/razorpay/PerformanceUtil;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getPerformanceClass(Landroid/content/Context;)I
    .locals 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    .line 37
    sget v0, Landroid/os/Build$VERSION;->MEDIA_PERFORMANCE_CLASS:I

    if-nez v0, :cond_1

    .line 42
    sget-object v0, Lcom/razorpay/PerformanceUtil;->INSTANCE:Lcom/razorpay/PerformanceUtil;

    invoke-direct {v0, p0}, Lcom/razorpay/PerformanceUtil;->l$1_I$l$(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    .line 48
    :cond_0
    sget-object v0, Lcom/razorpay/PerformanceUtil;->INSTANCE:Lcom/razorpay/PerformanceUtil;

    invoke-direct {v0, p0}, Lcom/razorpay/PerformanceUtil;->l$1_I$l$(Landroid/content/Context;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 51
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public static final isLowEndDevice(Landroid/content/Context;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-static {p0}, Lcom/razorpay/PerformanceUtil;->getPerformanceClass(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_1

    const/16 v0, 0x1e

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private final l$1_I$l$(Landroid/content/Context;)I
    .locals 5

    const/4 v0, 0x0

    .line 67
    :try_start_0
    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Landroid/app/ActivityManager;

    .line 68
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 69
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 72
    iget-wide v1, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    long-to-double v1, v1

    const-wide/high16 v3, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/high16 v3, 0x4010000000000000L    # 4.0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_1

    const/16 p1, 0x1e

    :goto_0
    move v0, p1

    goto :goto_1

    :cond_1
    const-wide/high16 v3, 0x4018000000000000L    # 6.0

    cmpg-double p1, v1, v3

    if-gez p1, :cond_2

    const/16 p1, 0x1f

    goto :goto_0

    :cond_2
    const/16 p1, 0x21

    goto :goto_0

    .line 67
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v1, "null cannot be cast to non-null type android.app.ActivityManager"

    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 83
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method
