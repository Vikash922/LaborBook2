.class public final Lcom/amplitude/common/jvm/ConsoleLogger;
.super Ljava/lang/Object;
.source "ConsoleLogger.kt"

# interfaces
.implements Lcom/amplitude/common/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/common/jvm/ConsoleLogger$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0010\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0018\u0010\u000f\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0010\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/amplitude/common/jvm/ConsoleLogger;",
        "Lcom/amplitude/common/Logger;",
        "()V",
        "logMode",
        "Lcom/amplitude/common/Logger$LogMode;",
        "getLogMode",
        "()Lcom/amplitude/common/Logger$LogMode;",
        "setLogMode",
        "(Lcom/amplitude/common/Logger$LogMode;)V",
        "debug",
        "",
        "message",
        "",
        "error",
        "info",
        "log",
        "logLevel",
        "warn",
        "Companion",
        "common-jvm"
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
.field public static final Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

.field private static final logger:Lcom/amplitude/common/jvm/ConsoleLogger;


# instance fields
.field private logMode:Lcom/amplitude/common/Logger$LogMode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/common/jvm/ConsoleLogger$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/common/jvm/ConsoleLogger;->Companion:Lcom/amplitude/common/jvm/ConsoleLogger$Companion;

    .line 34
    new-instance v0, Lcom/amplitude/common/jvm/ConsoleLogger;

    invoke-direct {v0}, Lcom/amplitude/common/jvm/ConsoleLogger;-><init>()V

    sput-object v0, Lcom/amplitude/common/jvm/ConsoleLogger;->logger:Lcom/amplitude/common/jvm/ConsoleLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    sget-object v0, Lcom/amplitude/common/Logger$LogMode;->INFO:Lcom/amplitude/common/Logger$LogMode;

    iput-object v0, p0, Lcom/amplitude/common/jvm/ConsoleLogger;->logMode:Lcom/amplitude/common/Logger$LogMode;

    return-void
.end method

.method public static final synthetic access$getLogger$cp()Lcom/amplitude/common/jvm/ConsoleLogger;
    .locals 1

    .line 8
    sget-object v0, Lcom/amplitude/common/jvm/ConsoleLogger;->logger:Lcom/amplitude/common/jvm/ConsoleLogger;

    return-object v0
.end method

.method private final log(Lcom/amplitude/common/Logger$LogMode;Ljava/lang/String;)V
    .locals 1

    .line 28
    invoke-virtual {p0}, Lcom/amplitude/common/jvm/ConsoleLogger;->getLogMode()Lcom/amplitude/common/Logger$LogMode;

    move-result-object v0

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Lcom/amplitude/common/Logger$LogMode;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-gtz p1, :cond_0

    .line 29
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/amplitude/common/Logger$LogMode;->DEBUG:Lcom/amplitude/common/Logger$LogMode;

    invoke-direct {p0, v0, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->log(Lcom/amplitude/common/Logger$LogMode;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/amplitude/common/Logger$LogMode;->ERROR:Lcom/amplitude/common/Logger$LogMode;

    invoke-direct {p0, v0, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->log(Lcom/amplitude/common/Logger$LogMode;Ljava/lang/String;)V

    return-void
.end method

.method public getLogMode()Lcom/amplitude/common/Logger$LogMode;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/common/jvm/ConsoleLogger;->logMode:Lcom/amplitude/common/Logger$LogMode;

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    sget-object v0, Lcom/amplitude/common/Logger$LogMode;->INFO:Lcom/amplitude/common/Logger$LogMode;

    invoke-direct {p0, v0, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->log(Lcom/amplitude/common/Logger$LogMode;Ljava/lang/String;)V

    return-void
.end method

.method public setLogMode(Lcom/amplitude/common/Logger$LogMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iput-object p1, p0, Lcom/amplitude/common/jvm/ConsoleLogger;->logMode:Lcom/amplitude/common/Logger$LogMode;

    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/amplitude/common/Logger$LogMode;->WARN:Lcom/amplitude/common/Logger$LogMode;

    invoke-direct {p0, v0, p1}, Lcom/amplitude/common/jvm/ConsoleLogger;->log(Lcom/amplitude/common/Logger$LogMode;Ljava/lang/String;)V

    return-void
.end method
