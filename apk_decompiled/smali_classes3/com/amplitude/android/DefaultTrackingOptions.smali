.class public Lcom/amplitude/android/DefaultTrackingOptions;
.super Ljava/lang/Object;
.source "DefaultTrackingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/android/DefaultTrackingOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\u0008\u0016\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B/\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0007R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\t\"\u0004\u0008\r\u0010\u000bR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\t\"\u0004\u0008\u000f\u0010\u000bR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\t\"\u0004\u0008\u0011\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/amplitude/android/DefaultTrackingOptions;",
        "",
        "sessions",
        "",
        "appLifecycles",
        "deepLinks",
        "screenViews",
        "(ZZZZ)V",
        "getAppLifecycles",
        "()Z",
        "setAppLifecycles",
        "(Z)V",
        "getDeepLinks",
        "setDeepLinks",
        "getScreenViews",
        "setScreenViews",
        "getSessions",
        "setSessions",
        "Companion",
        "android_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final ALL:Lcom/amplitude/android/DefaultTrackingOptions;

.field public static final Companion:Lcom/amplitude/android/DefaultTrackingOptions$Companion;

.field public static final NONE:Lcom/amplitude/android/DefaultTrackingOptions;


# instance fields
.field private appLifecycles:Z

.field private deepLinks:Z

.field private screenViews:Z

.field private sessions:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/android/DefaultTrackingOptions$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/android/DefaultTrackingOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/android/DefaultTrackingOptions;->Companion:Lcom/amplitude/android/DefaultTrackingOptions$Companion;

    .line 12
    new-instance v0, Lcom/amplitude/android/DefaultTrackingOptions;

    const/4 v1, 0x1

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZ)V

    sput-object v0, Lcom/amplitude/android/DefaultTrackingOptions;->ALL:Lcom/amplitude/android/DefaultTrackingOptions;

    .line 20
    new-instance v0, Lcom/amplitude/android/DefaultTrackingOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZ)V

    sput-object v0, Lcom/amplitude/android/DefaultTrackingOptions;->NONE:Lcom/amplitude/android/DefaultTrackingOptions;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 7

    const/16 v5, 0xe

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 7

    const/16 v5, 0xc

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 7

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Lcom/amplitude/android/DefaultTrackingOptions;->sessions:Z

    .line 5
    iput-boolean p2, p0, Lcom/amplitude/android/DefaultTrackingOptions;->appLifecycles:Z

    .line 6
    iput-boolean p3, p0, Lcom/amplitude/android/DefaultTrackingOptions;->deepLinks:Z

    .line 7
    iput-boolean p4, p0, Lcom/amplitude/android/DefaultTrackingOptions;->screenViews:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move p4, v0

    .line 3
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amplitude/android/DefaultTrackingOptions;-><init>(ZZZZ)V

    return-void
.end method


# virtual methods
.method public final getAppLifecycles()Z
    .locals 1

    .line 5
    iget-boolean v0, p0, Lcom/amplitude/android/DefaultTrackingOptions;->appLifecycles:Z

    return v0
.end method

.method public final getDeepLinks()Z
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/amplitude/android/DefaultTrackingOptions;->deepLinks:Z

    return v0
.end method

.method public final getScreenViews()Z
    .locals 1

    .line 7
    iget-boolean v0, p0, Lcom/amplitude/android/DefaultTrackingOptions;->screenViews:Z

    return v0
.end method

.method public final getSessions()Z
    .locals 1

    .line 4
    iget-boolean v0, p0, Lcom/amplitude/android/DefaultTrackingOptions;->sessions:Z

    return v0
.end method

.method public final setAppLifecycles(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/amplitude/android/DefaultTrackingOptions;->appLifecycles:Z

    return-void
.end method

.method public final setDeepLinks(Z)V
    .locals 0

    .line 6
    iput-boolean p1, p0, Lcom/amplitude/android/DefaultTrackingOptions;->deepLinks:Z

    return-void
.end method

.method public final setScreenViews(Z)V
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/amplitude/android/DefaultTrackingOptions;->screenViews:Z

    return-void
.end method

.method public final setSessions(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/amplitude/android/DefaultTrackingOptions;->sessions:Z

    return-void
.end method
