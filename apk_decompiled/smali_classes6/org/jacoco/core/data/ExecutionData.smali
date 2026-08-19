.class public final Lorg/jacoco/core/data/ExecutionData;
.super Ljava/lang/Object;
.source "ExecutionData.java"


# instance fields
.field private final id:J

.field private final name:Ljava/lang/String;

.field private final probes:[Z


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-wide p1, p0, Lorg/jacoco/core/data/ExecutionData;->id:J

    .line 63
    iput-object p3, p0, Lorg/jacoco/core/data/ExecutionData;->name:Ljava/lang/String;

    .line 64
    new-array p1, p4, [Z

    iput-object p1, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;[Z)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lorg/jacoco/core/data/ExecutionData;->id:J

    .line 45
    iput-object p3, p0, Lorg/jacoco/core/data/ExecutionData;->name:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    return-void
.end method


# virtual methods
.method public assertCompatibility(JLjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 186
    iget-wide v0, p0, Lorg/jacoco/core/data/ExecutionData;->id:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_2

    .line 191
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    array-length v0, v0

    if-ne v0, p4, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance p4, Ljava/lang/IllegalStateException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Incompatible execution data for class %s with id %016x."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 192
    :cond_1
    new-instance p4, Ljava/lang/IllegalStateException;

    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->name:Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {v0, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Different class names %s and %s for id %016x."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p4

    .line 187
    :cond_2
    new-instance p3, Ljava/lang/IllegalStateException;

    iget-wide v0, p0, Lorg/jacoco/core/data/ExecutionData;->id:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Different ids (%016x and %016x)."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public getId()J
    .locals 2

    .line 74
    iget-wide v0, p0, Lorg/jacoco/core/data/ExecutionData;->id:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProbes()[Z
    .locals 1

    .line 93
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    return-object v0
.end method

.method public hasHits()Z
    .locals 5

    .line 109
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-boolean v4, v0, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public merge(Lorg/jacoco/core/data/ExecutionData;)V
    .locals 1

    const/4 v0, 0x1

    .line 133
    invoke-virtual {p0, p1, v0}, Lorg/jacoco/core/data/ExecutionData;->merge(Lorg/jacoco/core/data/ExecutionData;Z)V

    return-void
.end method

.method public merge(Lorg/jacoco/core/data/ExecutionData;Z)V
    .locals 4

    .line 160
    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getId()J

    move-result-wide v0

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object v3

    array-length v3, v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/jacoco/core/data/ExecutionData;->assertCompatibility(JLjava/lang/String;I)V

    .line 162
    invoke-virtual {p1}, Lorg/jacoco/core/data/ExecutionData;->getProbes()[Z

    move-result-object p1

    const/4 v0, 0x0

    .line 163
    :goto_0
    iget-object v1, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 164
    aget-boolean v2, p1, v0

    if-eqz v2, :cond_0

    .line 165
    aput-boolean p2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->probes:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 205
    iget-object v0, p0, Lorg/jacoco/core/data/ExecutionData;->name:Ljava/lang/String;

    iget-wide v1, p0, Lorg/jacoco/core/data/ExecutionData;->id:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "ExecutionData[name=%s, id=%016x]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
