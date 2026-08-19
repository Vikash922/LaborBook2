.class public final enum Lcom/amplitude/core/Storage$Constants;
.super Ljava/lang/Enum;
.source "Storage.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/core/Storage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Constants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amplitude/core/Storage$Constants;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\r\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/amplitude/core/Storage$Constants;",
        "",
        "rawVal",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getRawVal",
        "()Ljava/lang/String;",
        "LAST_EVENT_ID",
        "PREVIOUS_SESSION_ID",
        "LAST_EVENT_TIME",
        "OPT_OUT",
        "Events",
        "APP_VERSION",
        "APP_BUILD",
        "core"
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
.field private static final synthetic $VALUES:[Lcom/amplitude/core/Storage$Constants;

.field public static final enum APP_BUILD:Lcom/amplitude/core/Storage$Constants;

.field public static final enum APP_VERSION:Lcom/amplitude/core/Storage$Constants;

.field public static final enum Events:Lcom/amplitude/core/Storage$Constants;

.field public static final enum LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

.field public static final enum LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

.field public static final enum OPT_OUT:Lcom/amplitude/core/Storage$Constants;

.field public static final enum PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;


# instance fields
.field private final rawVal:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/amplitude/core/Storage$Constants;
    .locals 7

    sget-object v0, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

    sget-object v1, Lcom/amplitude/core/Storage$Constants;->PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;

    sget-object v2, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    sget-object v3, Lcom/amplitude/core/Storage$Constants;->OPT_OUT:Lcom/amplitude/core/Storage$Constants;

    sget-object v4, Lcom/amplitude/core/Storage$Constants;->Events:Lcom/amplitude/core/Storage$Constants;

    sget-object v5, Lcom/amplitude/core/Storage$Constants;->APP_VERSION:Lcom/amplitude/core/Storage$Constants;

    sget-object v6, Lcom/amplitude/core/Storage$Constants;->APP_BUILD:Lcom/amplitude/core/Storage$Constants;

    filled-new-array/range {v0 .. v6}, [Lcom/amplitude/core/Storage$Constants;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x0

    const-string v2, "last_event_id"

    const-string v3, "LAST_EVENT_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_ID:Lcom/amplitude/core/Storage$Constants;

    .line 12
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x1

    const-string v2, "previous_session_id"

    const-string v3, "PREVIOUS_SESSION_ID"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->PREVIOUS_SESSION_ID:Lcom/amplitude/core/Storage$Constants;

    .line 13
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x2

    const-string v2, "last_event_time"

    const-string v3, "LAST_EVENT_TIME"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->LAST_EVENT_TIME:Lcom/amplitude/core/Storage$Constants;

    .line 14
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x3

    const-string v2, "opt_out"

    const-string v3, "OPT_OUT"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->OPT_OUT:Lcom/amplitude/core/Storage$Constants;

    .line 15
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x4

    const-string v2, "events"

    const-string v3, "Events"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->Events:Lcom/amplitude/core/Storage$Constants;

    .line 16
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x5

    const-string v2, "app_version"

    const-string v3, "APP_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->APP_VERSION:Lcom/amplitude/core/Storage$Constants;

    .line 17
    new-instance v0, Lcom/amplitude/core/Storage$Constants;

    const/4 v1, 0x6

    const-string v2, "app_build"

    const-string v3, "APP_BUILD"

    invoke-direct {v0, v3, v1, v2}, Lcom/amplitude/core/Storage$Constants;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->APP_BUILD:Lcom/amplitude/core/Storage$Constants;

    invoke-static {}, Lcom/amplitude/core/Storage$Constants;->$values()[Lcom/amplitude/core/Storage$Constants;

    move-result-object v0

    sput-object v0, Lcom/amplitude/core/Storage$Constants;->$VALUES:[Lcom/amplitude/core/Storage$Constants;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amplitude/core/Storage$Constants;->rawVal:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amplitude/core/Storage$Constants;
    .locals 1

    const-class v0, Lcom/amplitude/core/Storage$Constants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amplitude/core/Storage$Constants;

    return-object p0
.end method

.method public static values()[Lcom/amplitude/core/Storage$Constants;
    .locals 1

    sget-object v0, Lcom/amplitude/core/Storage$Constants;->$VALUES:[Lcom/amplitude/core/Storage$Constants;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amplitude/core/Storage$Constants;

    return-object v0
.end method


# virtual methods
.method public final getRawVal()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/core/Storage$Constants;->rawVal:Ljava/lang/String;

    return-object v0
.end method
