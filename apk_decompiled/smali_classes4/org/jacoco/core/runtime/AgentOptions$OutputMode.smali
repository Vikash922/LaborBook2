.class public final enum Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
.super Ljava/lang/Enum;
.source "AgentOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/runtime/AgentOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jacoco/core/runtime/AgentOptions$OutputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum file:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum none:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum tcpclient:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

.field public static final enum tcpserver:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 131
    new-instance v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string v1, "file"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    .line 138
    new-instance v1, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string v2, "tcpserver"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpserver:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    .line 145
    new-instance v2, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string v3, "tcpclient"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->tcpclient:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    .line 151
    new-instance v3, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    const-string v4, "none"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->none:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    .line 124
    filled-new-array {v0, v1, v2, v3}, [Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->$VALUES:[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 124
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    .locals 1

    .line 124
    const-class v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-object p0
.end method

.method public static final values()[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    .locals 1

    .line 124
    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->$VALUES:[Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    invoke-virtual {v0}, [Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-object v0
.end method
