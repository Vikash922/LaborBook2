.class Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "KotlinWhenStringFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 11

    .line 45
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0x19

    if-eq v1, v0, :cond_0

    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 49
    const-string v0, "hashCode"

    const-string v2, "()I"

    const/16 v3, 0xb6

    const-string v4, "java/lang/String"

    invoke-virtual {p0, v3, v4, v0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->nextIsSwitch()V

    .line 52
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    return-void

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->vars:Ljava/util/Map;

    check-cast p1, Lorg/objectweb/asm/tree/VarInsnNode;

    const-string v2, "s"

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 60
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v5, 0xab

    if-ne v0, v5, :cond_2

    .line 61
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    .line 62
    iget-object v5, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    .line 63
    iget-object v0, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    .line 65
    :cond_2
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    .line 66
    iget-object v5, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    .line 67
    iget-object v0, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-nez v0, :cond_3

    return-void

    .line 74
    :cond_3
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 75
    invoke-static {v5}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    :goto_1
    if-gt v7, v0, :cond_8

    .line 79
    :cond_4
    invoke-virtual {p0, v1, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v8, 0x12

    .line 80
    invoke-virtual {p0, v8}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->nextIs(I)V

    .line 81
    const-string v8, "equals"

    const-string v9, "(Ljava/lang/Object;)Z"

    invoke-virtual {p0, v3, v4, v8, v9}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v8, 0x99

    .line 84
    invoke-virtual {p0, v8}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->nextIs(I)V

    .line 85
    iget-object v8, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v8, Lorg/objectweb/asm/tree/JumpInsnNode;

    .line 86
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->next()V

    .line 87
    iget-object v9, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v9, :cond_5

    return-void

    .line 89
    :cond_5
    iget-object v9, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v9}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v9

    const/16 v10, 0xa7

    if-ne v9, v10, :cond_6

    .line 91
    iget-object v9, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v9, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v9, v9, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v9}, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v8, v8, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    if-ne v8, v5, :cond_4

    goto :goto_2

    :cond_6
    if-ne v7, v0, :cond_7

    .line 97
    iget-object v9, v8, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    if-ne v9, v5, :cond_7

    .line 99
    iget-object v9, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    iput-object v8, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_7
    return-void

    .line 108
    :cond_8
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinWhenStringFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 109
    invoke-interface {p2, p1, v6}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->replaceBranches(Lorg/objectweb/asm/tree/AbstractInsnNode;Ljava/util/Set;)V

    return-void
.end method
