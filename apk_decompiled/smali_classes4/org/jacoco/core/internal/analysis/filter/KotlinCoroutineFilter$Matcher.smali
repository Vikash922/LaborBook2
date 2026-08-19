.class Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "KotlinCoroutineFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;Lorg/objectweb/asm/tree/MethodNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->match(Lorg/objectweb/asm/tree/MethodNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V

    return-void
.end method

.method static synthetic access$200(Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;Lorg/objectweb/asm/tree/MethodNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->matchOptimizedTailCall(Lorg/objectweb/asm/tree/MethodNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V

    return-void
.end method

.method private match(Lorg/objectweb/asm/tree/MethodNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 8

    .line 75
    iget-object v0, p1, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 76
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const-string v1, "()Ljava/lang/Object;"

    const-string v2, "getCOROUTINE_SUSPENDED"

    const-string v3, "kotlin/coroutines/intrinsics/IntrinsicsKt"

    const/16 v4, 0xb8

    const/4 v5, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    if-eq v0, v4, :cond_0

    goto :goto_0

    .line 79
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    .line 80
    iget-object v6, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->name:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 83
    :cond_1
    iput-object v5, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1

    .line 77
    :cond_2
    :goto_0
    iput-object v5, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 87
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p1, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 90
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsCreateStateInstance()V

    .line 92
    invoke-virtual {p0, v4, v3, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const/16 v0, 0x3a

    .line 97
    const-string v1, "COROUTINE_SUSPENDED"

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 98
    const-string v0, "this"

    const/16 v2, 0x19

    invoke-virtual {p0, v2, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v0, 0xb4

    .line 99
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xaa

    .line 100
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 101
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_5

    return-void

    .line 104
    :cond_5
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    .line 105
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 108
    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 109
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsThrowOnFailure()V

    .line 111
    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v4, :cond_6

    return-void

    .line 114
    :cond_6
    iget-object p1, p1, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v4, 0x1

    :goto_2
    if-eqz p1, :cond_b

    .line 119
    iget-object v5, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_b

    .line 120
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 121
    invoke-virtual {p0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v5, 0xa6

    .line 122
    invoke-virtual {p0, v5}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 123
    iget-object v5, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v5, :cond_7

    goto :goto_4

    .line 126
    :cond_7
    iget-object v5, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v5, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v5, v5, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v5}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v5

    .line 128
    invoke-virtual {p0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v6, 0xb0

    .line 129
    invoke-virtual {p0, v6}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 130
    iget-object v6, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v6}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v6

    invoke-static {v6}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v6

    iget-object v7, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-static {v7}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v7

    if-eq v6, v7, :cond_8

    goto :goto_4

    :cond_8
    move-object v6, p1

    :goto_3
    if-eqz v6, :cond_a

    .line 137
    iput-object v6, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 138
    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 139
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsThrowOnFailure()V

    .line 141
    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 142
    iget-object v7, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v7}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v7

    invoke-static {v7}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v7

    if-ne v7, v5, :cond_9

    .line 144
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v5, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 136
    :cond_9
    invoke-virtual {v6}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v6

    goto :goto_3

    .line 119
    :cond_a
    :goto_4
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    goto :goto_2

    .line 152
    :cond_b
    iget-object p1, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/16 p1, 0xbb

    .line 153
    const-string v1, "java/lang/IllegalStateException"

    invoke-virtual {p0, p1, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsType(ILjava/lang/String;)V

    const/16 p1, 0x59

    .line 154
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 p1, 0x12

    .line 155
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 156
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez p1, :cond_c

    return-void

    .line 159
    :cond_c
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast p1, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object p1, p1, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    return-void

    .line 163
    :cond_d
    const-string p1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    const/16 v4, 0xb7

    invoke-virtual {p0, v4, v1, p1, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    .line 166
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 167
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez p1, :cond_e

    return-void

    .line 171
    :cond_e
    iget-object p1, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, p1, v0}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    const/4 p1, 0x0

    .line 172
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_f

    .line 173
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AbstractInsnNode;

    add-int/lit8 v1, p1, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    add-int/lit8 p1, p1, 0x2

    goto :goto_5

    :cond_f
    return-void
.end method

.method private matchOptimizedTailCall(Lorg/objectweb/asm/tree/MethodNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 5

    .line 58
    iget-object p1, p1, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 59
    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/16 v1, 0x59

    .line 60
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 61
    const-string v1, "getCOROUTINE_SUSPENDED"

    const-string v2, "()Ljava/lang/Object;"

    const/16 v3, 0xb8

    const-string v4, "kotlin/coroutines/intrinsics/IntrinsicsKt"

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa6

    .line 64
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v1, 0xb0

    .line 65
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v1, 0x57

    .line 66
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 67
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private nextIsCreateStateInstance()V
    .locals 7

    const/16 v0, 0xc1

    .line 197
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0x99

    .line 199
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 200
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v1, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v1, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v1, v1, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    const/16 v2, 0x19

    .line 206
    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v3, 0xc0

    .line 207
    invoke-virtual {p0, v3}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v3, 0x3a

    .line 208
    invoke-virtual {p0, v3}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 210
    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v4, 0xb4

    .line 211
    invoke-virtual {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v5, 0x12

    .line 213
    invoke-virtual {p0, v5}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v6, 0x7e

    .line 214
    invoke-virtual {p0, v6}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 215
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 216
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    invoke-virtual {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0x59

    .line 222
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 223
    invoke-virtual {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 225
    invoke-virtual {p0, v5}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0x64

    .line 226
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xb5

    .line 227
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xa7

    .line 229
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 230
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_2

    return-void

    .line 233
    :cond_2
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v2}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v2

    invoke-static {v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v2

    if-eq v2, v1, :cond_3

    return-void

    .line 240
    :cond_3
    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 241
    invoke-virtual {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    .line 242
    invoke-virtual {p0, v3}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method private nextIsThrowOnFailure()V
    .locals 5

    .line 178
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 179
    const-string v1, "throwOnFailure"

    const-string v2, "(Ljava/lang/Object;)V"

    const/16 v3, 0xb8

    const-string v4, "kotlin/ResultKt"

    invoke-virtual {p0, v3, v4, v1, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v1, :cond_0

    .line 182
    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/16 v0, 0x59

    .line 186
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xc1

    .line 187
    const-string v1, "kotlin/Result$Failure"

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsType(ILjava/lang/String;)V

    const/16 v0, 0x99

    .line 188
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xc0

    .line 189
    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIsType(ILjava/lang/String;)V

    const/16 v0, 0xb4

    .line 190
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xbf

    .line 191
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    const/16 v0, 0x57

    .line 192
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinCoroutineFilter$Matcher;->nextIs(I)V

    :cond_0
    return-void
.end method
