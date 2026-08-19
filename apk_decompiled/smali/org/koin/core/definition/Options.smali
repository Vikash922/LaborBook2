.class public final Lorg/koin/core/definition/Options;
.super Ljava/lang/Object;
.source "Options.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0010\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0006J\t\u0010\r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\'\u0010\u0010\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0011\u001a\u00020\u00032\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0014H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0002\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0007\"\u0004\u0008\n\u0010\tR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u0007\"\u0004\u0008\u000c\u0010\t\u00a8\u0006\u0017"
    }
    d2 = {
        "Lorg/koin/core/definition/Options;",
        "",
        "isCreatedAtStart",
        "",
        "override",
        "isExtraDefinition",
        "(ZZZ)V",
        "()Z",
        "setCreatedAtStart",
        "(Z)V",
        "setExtraDefinition",
        "getOverride",
        "setOverride",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "",
        "koin-core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private isCreatedAtStart:Z

.field private isExtraDefinition:Z

.field private override:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v4, 0x7

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/koin/core/definition/Options;-><init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    iput-boolean p2, p0, Lorg/koin/core/definition/Options;->override:Z

    iput-boolean p3, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    return-void
.end method

.method public synthetic constructor <init>(ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p5, p4, 0x1

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move p1, v0

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    move p2, v0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v0

    .line 23
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lorg/koin/core/definition/Options;-><init>(ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lorg/koin/core/definition/Options;ZZZILjava/lang/Object;)Lorg/koin/core/definition/Options;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-boolean p1, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lorg/koin/core/definition/Options;->override:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-boolean p3, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lorg/koin/core/definition/Options;->copy(ZZZ)Lorg/koin/core/definition/Options;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->override:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    return v0
.end method

.method public final copy(ZZZ)Lorg/koin/core/definition/Options;
    .locals 1

    new-instance v0, Lorg/koin/core/definition/Options;

    invoke-direct {v0, p1, p2, p3}, Lorg/koin/core/definition/Options;-><init>(ZZZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/koin/core/definition/Options;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/koin/core/definition/Options;

    iget-boolean v1, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    iget-boolean v3, p1, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lorg/koin/core/definition/Options;->override:Z

    iget-boolean v3, p1, Lorg/koin/core/definition/Options;->override:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    iget-boolean p1, p1, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    if-eq v1, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getOverride()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->override:Z

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/koin/core/definition/Options;->override:Z

    if-eqz v2, :cond_1

    move v2, v1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final isCreatedAtStart()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    return v0
.end method

.method public final isExtraDefinition()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    return v0
.end method

.method public final setCreatedAtStart(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    return-void
.end method

.method public final setExtraDefinition(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    return-void
.end method

.method public final setOverride(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lorg/koin/core/definition/Options;->override:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options(isCreatedAtStart="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lorg/koin/core/definition/Options;->isCreatedAtStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", override="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/koin/core/definition/Options;->override:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isExtraDefinition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lorg/koin/core/definition/Options;->isExtraDefinition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
