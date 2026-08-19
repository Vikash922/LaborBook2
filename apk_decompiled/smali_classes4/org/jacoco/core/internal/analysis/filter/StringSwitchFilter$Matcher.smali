.class Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "StringSwitchFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 10

    .line 46
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0x3a

    const/16 v2, 0x19

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    if-eq v0, v2, :cond_0

    return-void

    .line 50
    :cond_0
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 51
    const-string v0, "hashCode"

    const-string v1, "()I"

    const/16 v3, 0xb6

    const-string v4, "java/lang/String"

    invoke-virtual {p0, v3, v4, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIsSwitch()V

    .line 54
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->vars:Ljava/util/Map;

    check-cast p1, Lorg/objectweb/asm/tree/VarInsnNode;

    const-string v1, "s"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 62
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v5, 0xab

    if-ne v0, v5, :cond_2

    .line 63
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    .line 64
    iget-object v5, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    .line 65
    iget-object v0, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 67
    :cond_2
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    .line 68
    iget-object v5, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    .line 69
    iget-object v0, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 76
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 77
    invoke-static {v5}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v0, :cond_7

    .line 81
    :cond_4
    invoke-virtual {p0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v8, 0x12

    .line 82
    invoke-virtual {p0, v8}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIs(I)V

    .line 83
    const-string v8, "equals"

    const-string v9, "(Ljava/lang/Object;)Z"

    invoke-virtual {p0, v3, v4, v8, v9}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x9a

    .line 86
    invoke-virtual {p0, v8}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIs(I)V

    .line 87
    iget-object v8, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v8, :cond_5

    return-void

    .line 91
    :cond_5
    iget-object v8, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v8, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v8, v8, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v8}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v8, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v8}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v8

    const/16 v9, 0xa7

    if-ne v8, v9, :cond_6

    .line 97
    invoke-virtual {p0, v9}, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->nextIs(I)V

    goto :goto_2

    .line 99
    :cond_6
    iget-object v8, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v8}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v8

    if-ne v8, v5, :cond_4

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 105
    :cond_7
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/StringSwitchFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 106
    invoke-interface {p2, p1, v6}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->replaceBranches(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/Set;)V

    return-void
.end method
