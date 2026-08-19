.class public final Lorg/jacoco/core/runtime/AgentOptions;
.super Ljava/lang/Object;
.source "AgentOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final APPEND:Ljava/lang/String; = "append"

.field public static final CLASSDUMPDIR:Ljava/lang/String; = "classdumpdir"

.field public static final DEFAULT_ADDRESS:Ljava/lang/String;

.field public static final DEFAULT_DESTFILE:Ljava/lang/String; = "jacoco.exec"

.field public static final DEFAULT_PORT:I = 0x189c

.field public static final DESTFILE:Ljava/lang/String; = "destfile"

.field public static final DUMPONEXIT:Ljava/lang/String; = "dumponexit"

.field public static final EXCLCLASSLOADER:Ljava/lang/String; = "exclclassloader"

.field public static final EXCLUDES:Ljava/lang/String; = "excludes"

.field public static final INCLBOOTSTRAPCLASSES:Ljava/lang/String; = "inclbootstrapclasses"

.field public static final INCLNOLOCATIONCLASSES:Ljava/lang/String; = "inclnolocationclasses"

.field public static final INCLUDES:Ljava/lang/String; = "includes"

.field public static final JMX:Ljava/lang/String; = "jmx"

.field private static final OPTION_SPLIT:Ljava/util/regex/Pattern;

.field public static final OUTPUT:Ljava/lang/String; = "output"

.field public static final PORT:Ljava/lang/String; = "port"

.field public static final SESSIONID:Ljava/lang/String; = "sessionid"

.field private static final VALID_OPTIONS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final options:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 118
    const-string v0, ",(?=[a-zA-Z0-9_\\-]+=)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions;->OPTION_SPLIT:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 164
    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions;->DEFAULT_ADDRESS:Ljava/lang/String;

    const/16 v0, 0xe

    .line 192
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "destfile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "append"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "includes"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "excludes"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "exclclassloader"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "inclbootstrapclasses"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "inclnolocationclasses"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "sessionid"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dumponexit"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "output"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "address"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "port"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "classdumpdir"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "jmx"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jacoco/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    .line 213
    invoke-direct {p0}, Lorg/jacoco/core/runtime/AgentOptions;-><init>()V

    if-eqz p1, :cond_3

    .line 214
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 215
    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions;->OPTION_SPLIT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    const/16 v5, 0x3d

    .line 216
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    .line 221
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 222
    sget-object v7, Lorg/jacoco/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v7, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 227
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 228
    invoke-direct {p0, v6, v4}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 223
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown agent option \"%s\"."

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 218
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid agent option syntax \"%s\"."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_2
    invoke-direct {p0}, Lorg/jacoco/core/runtime/AgentOptions;->validateAll()V

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 3

    .line 242
    invoke-direct {p0}, Lorg/jacoco/core/runtime/AgentOptions;-><init>()V

    .line 243
    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 246
    invoke-direct {p0, v1, v2}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getOption(Ljava/lang/String;I)I
    .locals 1

    .line 583
    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    :goto_0
    return p2
.end method

.method private getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 573
    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method private getOption(Ljava/lang/String;Z)Z
    .locals 1

    .line 578
    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p2

    :goto_0
    return p2
.end method

.method private setOption(Ljava/lang/String;I)V
    .locals 0

    .line 561
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 569
    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOption(Ljava/lang/String;Z)V
    .locals 0

    .line 565
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private validateAll()V
    .locals 1

    .line 252
    invoke-virtual {p0}, Lorg/jacoco/core/runtime/AgentOptions;->getPort()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jacoco/core/runtime/AgentOptions;->validatePort(I)V

    .line 253
    invoke-virtual {p0}, Lorg/jacoco/core/runtime/AgentOptions;->getOutput()Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    return-void
.end method

.method private validatePort(I)V
    .locals 1

    if-ltz p1, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "port must be positive"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 2

    .line 476
    const-string v0, "address"

    sget-object v1, Lorg/jacoco/core/runtime/AgentOptions;->DEFAULT_ADDRESS:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppend()Z
    .locals 2

    .line 287
    const-string v0, "append"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getClassDumpDir()Ljava/lang/String;
    .locals 2

    .line 528
    const-string v0, "classdumpdir"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDestfile()Ljava/lang/String;
    .locals 2

    .line 268
    const-string v0, "destfile"

    const-string v1, "jacoco.exec"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDumpOnExit()Z
    .locals 2

    .line 431
    const-string v0, "dumponexit"

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getExclClassloader()Ljava/lang/String;
    .locals 2

    .line 349
    const-string v0, "exclclassloader"

    const-string v1, "sun.reflect.DelegatingClassLoader"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExcludes()Ljava/lang/String;
    .locals 2

    .line 328
    const-string v0, "excludes"

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInclBootstrapClasses()Z
    .locals 2

    .line 371
    const-string v0, "inclbootstrapclasses"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getInclNoLocationClasses()Z
    .locals 2

    .line 392
    const-string v0, "inclnolocationclasses"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getIncludes()Ljava/lang/String;
    .locals 2

    .line 307
    const-string v0, "includes"

    const-string v1, "*"

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJmx()Z
    .locals 2

    .line 547
    const-string v0, "jmx"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getOutput()Lorg/jacoco/core/runtime/AgentOptions$OutputMode;
    .locals 2

    .line 497
    iget-object v0, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    const-string v1, "output"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    .line 498
    sget-object v0, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->file:Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPort()I
    .locals 2

    .line 453
    const-string v0, "port"

    const/16 v1, 0x189c

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getQuotedVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 608
    invoke-virtual {p0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jacoco/core/runtime/CommandLineSupport;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 2

    .line 412
    const-string v0, "sessionid"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/jacoco/core/runtime/AgentOptions;->getOption(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVMArgument(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    .line 596
    const-string v0, "-javaagent:%s=%s"

    filled-new-array {p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public prependVMArguments(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 3

    .line 625
    invoke-static {p1}, Lorg/jacoco/core/runtime/CommandLineSupport;->split(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 626
    const-string v0, "-javaagent:%s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 627
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 628
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 629
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 632
    invoke-virtual {p0, p2}, Lorg/jacoco/core/runtime/AgentOptions;->getVMArgument(Ljava/io/File;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 633
    invoke-static {p1}, Lorg/jacoco/core/runtime/CommandLineSupport;->quote(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1

    .line 488
    const-string v0, "address"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAppend(Z)V
    .locals 1

    .line 297
    const-string v0, "append"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    return-void
.end method

.method public setClassDumpDir(Ljava/lang/String;)V
    .locals 1

    .line 538
    const-string v0, "classdumpdir"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDestfile(Ljava/lang/String;)V
    .locals 1

    .line 278
    const-string v0, "destfile"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDumpOnExit(Z)V
    .locals 1

    .line 442
    const-string v0, "dumponexit"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    return-void
.end method

.method public setExclClassloader(Ljava/lang/String;)V
    .locals 1

    .line 360
    const-string v0, "exclclassloader"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setExcludes(Ljava/lang/String;)V
    .locals 1

    .line 339
    const-string v0, "excludes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setInclBootstrapClasses(Z)V
    .locals 1

    .line 382
    const-string v0, "inclbootstrapclasses"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    return-void
.end method

.method public setInclNoLocationClasses(Z)V
    .locals 1

    .line 403
    const-string v0, "inclnolocationclasses"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    return-void
.end method

.method public setIncludes(Ljava/lang/String;)V
    .locals 1

    .line 318
    const-string v0, "includes"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setJmx(Z)V
    .locals 1

    .line 557
    const-string v0, "jmx"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Z)V

    return-void
.end method

.method public setOutput(Ljava/lang/String;)V
    .locals 0

    .line 508
    invoke-static {p1}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->valueOf(Ljava/lang/String;)Lorg/jacoco/core/runtime/AgentOptions$OutputMode;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOutput(Lorg/jacoco/core/runtime/AgentOptions$OutputMode;)V

    return-void
.end method

.method public setOutput(Lorg/jacoco/core/runtime/AgentOptions$OutputMode;)V
    .locals 1

    .line 518
    const-string v0, "output"

    invoke-virtual {p1}, Lorg/jacoco/core/runtime/AgentOptions$OutputMode;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPort(I)V
    .locals 1

    .line 464
    invoke-direct {p0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->validatePort(I)V

    .line 465
    const-string v0, "port"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;I)V

    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .locals 1

    .line 422
    const-string v0, "sessionid"

    invoke-direct {p0, v0, p1}, Lorg/jacoco/core/runtime/AgentOptions;->setOption(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    sget-object v1, Lorg/jacoco/core/runtime/AgentOptions;->VALID_OPTIONS:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    iget-object v3, p0, Lorg/jacoco/core/runtime/AgentOptions;->options:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 646
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_1

    const/16 v4, 0x2c

    .line 647
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 649
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v4, 0x3d

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 652
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
