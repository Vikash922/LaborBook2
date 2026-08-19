.class Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "EnumEmptyConstructorFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Matcher"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$1;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;Lorg/objectweb/asm/tree/MethodNode;)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->match(Lorg/objectweb/asm/tree/MethodNode;)Z

    move-result p0

    return p0
.end method

.method private match(Lorg/objectweb/asm/tree/MethodNode;)Z
    .locals 3

    .line 52
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->firstIsALoad0(Lorg/objectweb/asm/tree/MethodNode;)V

    const/16 p1, 0x19

    .line 53
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->nextIs(I)V

    const/16 p1, 0x15

    .line 54
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->nextIs(I)V

    .line 55
    const-string p1, "<init>"

    const-string v0, "(Ljava/lang/String;I)V"

    const/16 v1, 0xb7

    const-string v2, "java/lang/Enum"

    invoke-virtual {p0, v1, v2, p1, v0}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xb1

    .line 57
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->nextIs(I)V

    .line 58
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/EnumEmptyConstructorFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
