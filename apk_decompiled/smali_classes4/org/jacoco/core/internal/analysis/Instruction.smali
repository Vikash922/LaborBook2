.class public Lorg/jacoco/core/internal/analysis/Instruction;
.super Ljava/lang/Object;
.source "Instruction.java"


# instance fields
.field private branches:I

.field private final coveredBranches:Ljava/util/BitSet;

.field private final line:I

.field private predecessor:Lorg/jacoco/core/internal/analysis/Instruction;

.field private predecessorBranch:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput p1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->line:I

    const/4 p1, 0x0

    .line 76
    iput p1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    .line 77
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    return-void
.end method

.method private static propagateExecutedBranch(Lorg/jacoco/core/internal/analysis/Instruction;I)V
    .locals 1

    :goto_0
    if-eqz p0, :cond_1

    .line 126
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object p0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 131
    iget p1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->predecessorBranch:I

    .line 132
    iget-object p0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->predecessor:Lorg/jacoco/core/internal/analysis/Instruction;

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addBranch(Lorg/jacoco/core/internal/analysis/Instruction;I)V
    .locals 1

    .line 95
    iget v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    .line 96
    iput-object p0, p1, Lorg/jacoco/core/internal/analysis/Instruction;->predecessor:Lorg/jacoco/core/internal/analysis/Instruction;

    .line 97
    iput p2, p1, Lorg/jacoco/core/internal/analysis/Instruction;->predecessorBranch:I

    .line 98
    iget-object p1, p1, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/util/BitSet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 99
    invoke-static {p0, p2}, Lorg/jacoco/core/internal/analysis/Instruction;->propagateExecutedBranch(Lorg/jacoco/core/internal/analysis/Instruction;I)V

    :cond_0
    return-void
.end method

.method public addBranch(ZI)V
    .locals 1

    .line 117
    iget v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    if-eqz p1, :cond_0

    .line 119
    invoke-static {p0, p2}, Lorg/jacoco/core/internal/analysis/Instruction;->propagateExecutedBranch(Lorg/jacoco/core/internal/analysis/Instruction;I)V

    :cond_0
    return-void
.end method

.method public getBranchCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 2

    .line 201
    iget v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 202
    sget-object v0, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result v0

    .line 205
    iget v1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    sub-int/2addr v1, v0

    invoke-static {v1, v0}, Lorg/jacoco/core/internal/analysis/CounterImpl;->getInstance(II)Lorg/jacoco/core/internal/analysis/CounterImpl;

    move-result-object v0

    return-object v0
.end method

.method public getInstructionCounter()Lorg/jacoco/core/analysis/ICounter;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_1_0:Lorg/jacoco/core/internal/analysis/CounterImpl;

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/jacoco/core/internal/analysis/CounterImpl;->COUNTER_0_1:Lorg/jacoco/core/internal/analysis/CounterImpl;

    :goto_0
    return-object v0
.end method

.method public getLine()I
    .locals 1

    .line 142
    iget v0, p0, Lorg/jacoco/core/internal/analysis/Instruction;->line:I

    return v0
.end method

.method public merge(Lorg/jacoco/core/internal/analysis/Instruction;)Lorg/jacoco/core/internal/analysis/Instruction;
    .locals 3

    .line 154
    new-instance v0, Lorg/jacoco/core/internal/analysis/Instruction;

    iget v1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->line:I

    invoke-direct {v0, v1}, Lorg/jacoco/core/internal/analysis/Instruction;-><init>(I)V

    .line 155
    iget v1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    iput v1, v0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    .line 156
    iget-object v1, v0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 157
    iget-object v1, v0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    iget-object p1, p1, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    return-object v0
.end method

.method public replaceBranches(Ljava/util/Collection;)Lorg/jacoco/core/internal/analysis/Instruction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/jacoco/core/internal/analysis/Instruction;",
            ">;)",
            "Lorg/jacoco/core/internal/analysis/Instruction;"
        }
    .end annotation

    .line 172
    new-instance v0, Lorg/jacoco/core/internal/analysis/Instruction;

    iget v1, p0, Lorg/jacoco/core/internal/analysis/Instruction;->line:I

    invoke-direct {v0, v1}, Lorg/jacoco/core/internal/analysis/Instruction;-><init>(I)V

    .line 173
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    iput v1, v0, Lorg/jacoco/core/internal/analysis/Instruction;->branches:I

    .line 175
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jacoco/core/internal/analysis/Instruction;

    .line 176
    iget-object v2, v2, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    iget-object v2, v0, Lorg/jacoco/core/internal/analysis/Instruction;->coveredBranches:Ljava/util/BitSet;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    move v1, v3

    goto :goto_0

    :cond_1
    return-object v0
.end method
