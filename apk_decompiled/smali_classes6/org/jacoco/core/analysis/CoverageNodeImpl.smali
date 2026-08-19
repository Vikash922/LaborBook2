.class public Lorg/jacoco/core/analysis/CoverageNodeImpl;
.super Ljava/lang/Object;
.source "CoverageNodeImpl.java"

# interfaces
.implements Lorg/jacoco/core/analysis/ICoverageNode;


# instance fields
.field protected branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field protected classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field protected complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field private final elementType:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

.field protected instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field protected lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field protected methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/jacoco/core/analysis/ICoverageNode$ElementType;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->elementType:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    .line 56
    iput-object p2, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->name:Ljava/lang/String;

    .line 57
    sget-object p1, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 58
    sget-object p1, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 59
    sget-object p1, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 60
    sget-object p1, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 61
    sget-object p1, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 62
    sget-object p1, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-void
.end method


# virtual methods
.method public containsCode()Z
    .locals 1

    .line 148
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v0

    invoke-interface {v0}, Lorg/jacoco/core/analysis/ICounter;->getTotalCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getBranchCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 110
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public getClassCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public getComplexityCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public getCounter(Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;)Lorg/jacoco/core/analysis/ICounter;
    .locals 2

    .line 130
    sget-object v0, Lorg/jacoco/core/analysis/CoverageNodeImpl$1;->$SwitchMap$org$jacoco$core$analysis$ICoverageNode$CounterEntity:[I

    invoke-virtual {p1}, Lorg/jacoco/core/analysis/ICoverageNode$CounterEntity;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 144
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 142
    :pswitch_0
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getClassCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    return-object p1

    .line 140
    :pswitch_1
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getMethodCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    return-object p1

    .line 138
    :pswitch_2
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getComplexityCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    return-object p1

    .line 136
    :pswitch_3
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getLineCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    return-object p1

    .line 134
    :pswitch_4
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getBranchCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    return-object p1

    .line 132
    :pswitch_5
    invoke-virtual {p0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getElementType()Lorg/jacoco/core/analysis/ICoverageNode$ElementType;
    .locals 1

    .line 98
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->elementType:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    return-object v0
.end method

.method public getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public getLineCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public getMethodCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 122
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPlainCopy()Lorg/jacoco/core/analysis/ICoverageNode;
    .locals 3

    .line 152
    new-instance v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;

    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->elementType:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    iget-object v2, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/jacoco/core/analysis/CoverageNodeImpl;-><init>(Lorg/jacoco/core/analysis/ICoverageNode$ElementType;Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 154
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 155
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 156
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 157
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 158
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v1

    iput-object v1, v0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0
.end method

.method public increment(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/jacoco/core/analysis/ICoverageNode;",
            ">;)V"
        }
    .end annotation

    .line 90
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jacoco/core/analysis/ICoverageNode;

    .line 91
    invoke-virtual {p0, v0}, Lorg/jacoco/core/analysis/CoverageNodeImpl;->increment(Lorg/jacoco/core/analysis/ICoverageNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public increment(Lorg/jacoco/core/analysis/ICoverageNode;)V
    .locals 2

    .line 72
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICoverageNode;->getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->instructionCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 74
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICoverageNode;->getBranchCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->branchCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 75
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICoverageNode;->getLineCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->lineCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 76
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICoverageNode;->getComplexityCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->complexityCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 78
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICoverageNode;->getMethodCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->methodCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    .line 79
    iget-object v0, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    invoke-interface {p1}, Lorg/jacoco/core/analysis/ICoverageNode;->getClassCounter()Lorg/jacoco/core/analysis/ICounter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/jacoco/core/internal/analysis/CounterImpl;->increment(Lorg/jacoco/core/analysis/ICounter;)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->classCounter:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    iget-object v1, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jacoco/core/analysis/CoverageNodeImpl;->elementType:Lorg/jacoco/core/analysis/ICoverageNode$ElementType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
