.class Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "KotlinLateinitFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$1;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 4

    const/16 v0, 0xc7

    .line 38
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/16 v0, 0x12

    .line 43
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->nextIs(I)V

    .line 44
    const-string v0, "throwUninitializedPropertyAccessException"

    const-string v1, "(Ljava/lang/String;)V"

    const/16 v2, 0xb8

    const-string v3, "kotlin/jvm/internal/Intrinsics"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-static {v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v1, v1, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->skipNonOpcodes(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    .line 51
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xbf

    .line 52
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->nextIs(I)V

    .line 55
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinLateinitFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, p1, v0}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :cond_2
    return-void
.end method
