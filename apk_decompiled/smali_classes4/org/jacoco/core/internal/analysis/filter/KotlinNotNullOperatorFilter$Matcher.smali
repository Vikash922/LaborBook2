.class Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "KotlinNotNullOperatorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$1;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$Matcher;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 4

    const/16 v0, 0xc7

    .line 36
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 39
    :cond_0
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 40
    const-string v0, "throwNpe"

    const-string v1, "()V"

    const/16 v2, 0xb8

    const-string v3, "kotlin/jvm/internal/Intrinsics"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    return-void

    .line 45
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/KotlinNotNullOperatorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p2, p1, v0}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method
