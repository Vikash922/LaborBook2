.class public Lorg/jacoco/core/internal/analysis/SourceNodeImpl;
.super Lorg/jacoco/core/analysis/CoverageNodeImpl;
.source "SourceNodeImpl.java"

# interfaces
.implements Lorg/jacoco/core/analysis/ISourceNode;


# instance fields
.field private lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

.field private offset:I


# direct methods
.method public constructor <init>(Lorg/jacoco/core/analysis/ICoverageNode$ElementType;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lorg/jacoco/core/analysis/CoverageNodeImpl;-><init>(Lorg/jacoco/core/analysis/ICoverageNode$ElementType;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    const/4 p1, -0x1

    .line 41
    iput p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    return-void
.end method

.method private incrementLine(Lorg/jacoco/core/analysis/ICounter;Lorg/jacoco/core/analysis/ICounter;I)V
    .locals 5

    .line 126
    invoke-virtual {p0, p3, p3}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->ensureCapacity(II)V

    .line 127
    invoke-virtual {p0, p3}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->getLine(I)Lorg/jacoco/core/internal/analysis/LineImpl;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lorg/jacoco/core/internal/analysis/LineImpl;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-interface {v1}, Lorg/jacoco/core/analysis/ICounter;->getTotalCount()I

    move-result v1

    .line 129
    invoke-virtual {v0}, Lorg/jacoco/core/internal/analysis/LineImpl;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v2

    invoke-interface {v2}, Lorg/jacoco/core/analysis/ICounter;->getCoveredCount()I

    move-result v2

    .line 130
    iget-object v3, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    iget v4, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    sub-int/2addr p3, v4

    invoke-virtual {v0, p1, p2}, Lorg/jacoco/core/internal/analysis/LineImpl;->increment(Lorg/jacoco/core/analysis/ICounter;Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/LineImpl;

    move-result-object p2

    aput-object p2, v3, p3

    .line 133
    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICounter;->getTotalCount()I

    move-result p2

    if-lez p2, :cond_2

    .line 134
    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICounter;->getCoveredCount()I

    move-result p1

    if-nez p1, :cond_0

    if-nez v1, :cond_2

    .line 136
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    sget-object p2, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_1_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-virtual {p1, p2}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 141
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    sget-object p2, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_1:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-virtual {p1, p2}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    .line 145
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    const/4 p2, -0x1

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(II)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public ensureCapacity(II)V
    .locals 4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    if-nez v0, :cond_1

    .line 59
    iput p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 60
    new-array p1, p2, [Lorg/jacoco/core/internal/analysis/LineImpl;

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    goto :goto_0

    .line 62
    :cond_1
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->getFirstLine()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 63
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->getLastLine()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 65
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    array-length v1, v0

    if-le p2, v1, :cond_2

    .line 66
    new-array p2, p2, [Lorg/jacoco/core/internal/analysis/LineImpl;

    .line 67
    iget v1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    sub-int/2addr v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iput p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    .line 70
    iput-object p2, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    :cond_2
    :goto_0
    return-void
.end method

.method public getFirstLine()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    return v0
.end method

.method public getLastLine()I
    .locals 2

    .line 159
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    array-length v0, v0

    add-int/2addr v1, v0

    add-int/lit8 v0, v1, -0x1

    :goto_0
    return v0
.end method

.method public bridge synthetic getLine(I)Lorg/jacoco/core/analysis/ILine;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->getLine(I)Lorg/jacoco/core/internal/analysis/LineImpl;

    move-result-object p1

    return-object p1
.end method

.method public getLine(I)Lorg/jacoco/core/internal/analysis/LineImpl;
    .locals 2

    .line 163
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->getFirstLine()I

    move-result v0

    if-lt p1, v0, :cond_2

    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->getLastLine()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->lines:[Lorg/jacoco/core/internal/analysis/LineImpl;

    iget v1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->offset:I

    sub-int/2addr p1, v1

    aget-object p1, v0, p1

    if-nez p1, :cond_1

    .line 167
    sget-object p1, Lorg/jacoco/core/internal/analysis/LineImpl;->EMPTY:Lorg/jacoco/core/internal/analysis/LineImpl;

    :cond_1
    return-object p1

    .line 164
    :cond_2
    :goto_0
    sget-object p1, Lorg/jacoco/core/internal/analysis/LineImpl;->EMPTY:Lorg/jacoco/core/internal/analysis/LineImpl;

    return-object p1
.end method

.method public increment(Lorg/jacoco/core/analysis/ICounter;Lorg/jacoco/core/analysis/ICounter;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->incrementLine(Lorg/jacoco/core/analysis/ICounter;Lorg/jacoco/core/analysis/ICounter;I)V

    .line 120
    :cond_0
    iget-object p3, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-virtual {p3, p1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 121
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-virtual {p1, p2}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-void
.end method

.method public increment(Lorg/jacoco/core/analysis/ISourceNode;)V
    .locals 4

    .line 84
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 86
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getBranchCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 87
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getComplexityCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 89
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getMethodCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 90
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getClassCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 91
    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getFirstLine()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 93
    invoke-interface {p1}, Lorg/jacoco/core/analysis/ISourceNode;->getLastLine()I

    move-result v1

    .line 94
    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->ensureCapacity(II)V

    :goto_0
    if-gt v0, v1, :cond_0

    .line 96
    invoke-interface {p1, v0}, Lorg/jacoco/core/analysis/ISourceNode;->getLine(I)Lorg/jacoco/core/analysis/ILine;

    move-result-object v2

    .line 97
    invoke-interface {v2}, Lorg/jacoco/core/analysis/ILine;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v3

    invoke-interface {v2}, Lorg/jacoco/core/analysis/ILine;->getBranchCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v2

    invoke-direct {p0, v3, v2, v0}, Lorg/jacoco/core/internal/analysis/SourceNodeImpl;->incrementLine(Lorg/jacoco/core/analysis/ICounter;Lorg/jacoco/core/analysis/ICounter;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
