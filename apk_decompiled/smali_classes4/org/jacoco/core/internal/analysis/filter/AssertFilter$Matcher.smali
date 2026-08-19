.class Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "AssertFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/AssertFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/AssertFilter$1;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matchGet(Ljava/lang/String;Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 2

    .line 56
    iput-object p2, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 57
    const-string p2, "$assertionsDisabled"

    const-string v0, "Z"

    const/16 v1, 0xb2

    invoke-virtual {p0, v1, p1, p2, v0}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIsField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x9a

    .line 59
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIs(I)V

    .line 60
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object p2, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p3, p1, p2}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :cond_0
    return-void
.end method

.method public matchSet(Ljava/lang/String;Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 4

    .line 40
    iput-object p2, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 41
    const-string v0, "desiredAssertionStatus"

    const-string v1, "()Z"

    const/16 v2, 0xb6

    const-string v3, "java/lang/Class"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9a

    .line 43
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIs(I)V

    const/4 v0, 0x4

    .line 44
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIs(I)V

    const/16 v0, 0xa7

    .line 45
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIs(I)V

    const/4 v0, 0x3

    .line 46
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIs(I)V

    .line 47
    const-string v0, "$assertionsDisabled"

    const-string v1, "Z"

    const/16 v2, 0xb3

    invoke-virtual {p0, v2, p1, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->nextIsField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_0

    .line 50
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/AssertFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p3, p2, p1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :cond_0
    return-void
.end method
