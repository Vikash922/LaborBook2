.class public final enum Lcom/amplitude/core/platform/WriteQueueMessageType;
.super Ljava/lang/Enum;
.source "EventPipeline.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amplitude/core/platform/WriteQueueMessageType;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0004\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002j\u0002\u0008\u0003j\u0002\u0008\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/amplitude/core/platform/WriteQueueMessageType;",
        "",
        "(Ljava/lang/String;I)V",
        "EVENT",
        "FLUSH",
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
.field private static final synthetic $VALUES:[Lcom/amplitude/core/platform/WriteQueueMessageType;

.field public static final enum EVENT:Lcom/amplitude/core/platform/WriteQueueMessageType;

.field public static final enum FLUSH:Lcom/amplitude/core/platform/WriteQueueMessageType;


# direct methods
.method private static final synthetic $values()[Lcom/amplitude/core/platform/WriteQueueMessageType;
    .locals 2

    sget-object v0, Lcom/amplitude/core/platform/WriteQueueMessageType;->EVENT:Lcom/amplitude/core/platform/WriteQueueMessageType;

    sget-object v1, Lcom/amplitude/core/platform/WriteQueueMessageType;->FLUSH:Lcom/amplitude/core/platform/WriteQueueMessageType;

    filled-new-array {v0, v1}, [Lcom/amplitude/core/platform/WriteQueueMessageType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 189
    new-instance v0, Lcom/amplitude/core/platform/WriteQueueMessageType;

    const-string v1, "EVENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amplitude/core/platform/WriteQueueMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amplitude/core/platform/WriteQueueMessageType;->EVENT:Lcom/amplitude/core/platform/WriteQueueMessageType;

    .line 190
    new-instance v0, Lcom/amplitude/core/platform/WriteQueueMessageType;

    const-string v1, "FLUSH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/amplitude/core/platform/WriteQueueMessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amplitude/core/platform/WriteQueueMessageType;->FLUSH:Lcom/amplitude/core/platform/WriteQueueMessageType;

    invoke-static {}, Lcom/amplitude/core/platform/WriteQueueMessageType;->$values()[Lcom/amplitude/core/platform/WriteQueueMessageType;

    move-result-object v0

    sput-object v0, Lcom/amplitude/core/platform/WriteQueueMessageType;->$VALUES:[Lcom/amplitude/core/platform/WriteQueueMessageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 188
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amplitude/core/platform/WriteQueueMessageType;
    .locals 1

    const-class v0, Lcom/amplitude/core/platform/WriteQueueMessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amplitude/core/platform/WriteQueueMessageType;

    return-object p0
.end method

.method public static values()[Lcom/amplitude/core/platform/WriteQueueMessageType;
    .locals 1

    sget-object v0, Lcom/amplitude/core/platform/WriteQueueMessageType;->$VALUES:[Lcom/amplitude/core/platform/WriteQueueMessageType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amplitude/core/platform/WriteQueueMessageType;

    return-object v0
.end method
