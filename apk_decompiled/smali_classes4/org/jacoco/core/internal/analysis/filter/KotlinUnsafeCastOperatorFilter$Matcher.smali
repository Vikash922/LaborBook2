.class Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "KotlinUnsafeCastOperatorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 4

    const/16 v0, 0xc7

    .line 44
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-object p2, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 48
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    .line 49
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 50
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/16 v2, 0x57

    if-ne v1, v2, :cond_1

    .line 53
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->next()V

    :cond_1
    const/16 v1, 0xbb

    .line 55
    invoke-virtual {p0, v1, p1}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->nextIsType(ILjava/lang/String;)V

    const/16 v1, 0x59

    .line 56
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->nextIs(I)V

    const/16 v1, 0x12

    .line 57
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->nextIs(I)V

    .line 58
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v1, :cond_2

    return-void

    .line 61
    :cond_2
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v1, Lorg/objectweb/asm/tree/LdcInsnNode;

    .line 62
    iget-object v2, v1, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v1, v1, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "null cannot be cast to non-null type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 66
    :cond_3
    const-string v1, "<init>"

    const-string v2, "(Ljava/lang/String;)V"

    const/16 v3, 0xb7

    invoke-virtual {p0, v3, p1, v1, v2}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xbf

    .line 68
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->nextIs(I)V

    .line 69
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez p1, :cond_4

    return-void

    .line 72
    :cond_4
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    if-eq p1, v0, :cond_5

    return-void

    .line 76
    :cond_5
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinUnsafeCastOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p3, p2, p1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :cond_6
    :goto_0
    return-void
.end method
