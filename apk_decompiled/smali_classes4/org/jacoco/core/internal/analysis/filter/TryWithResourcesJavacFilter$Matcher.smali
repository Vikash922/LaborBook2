.class Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "TryWithResourcesJavacFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Matcher"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;
    }
.end annotation


# instance fields
.field private expectedOwner:Ljava/lang/String;

.field private final output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

.field private start:Lorg/objectweb/asm/tree/AbstractInsnNode;


# direct methods
.method constructor <init>(Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 0

    .line 99
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->start(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;)Z
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->matchJavac(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;)Z

    move-result p0

    return p0
.end method

.method private matchJavac(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;)Z
    .locals 4

    const/16 v0, 0x3a

    .line 135
    const-string v1, "t1"

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v2, 0x19

    .line 137
    invoke-virtual {p0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 138
    const-string v3, "primaryExc"

    invoke-virtual {p0, v0, v3}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 140
    invoke-virtual {p0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v1, 0xbf

    .line 141
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 144
    const-string v3, "t2"

    invoke-virtual {p0, v0, v3}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 145
    const-string v0, "e"

    invoke-direct {p0, p1, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsJavacClose(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;Ljava/lang/String;)Z

    .line 147
    invoke-virtual {p0, v2, v3}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 148
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 149
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 152
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 154
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v2}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v2

    .line 155
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 156
    :cond_1
    const-string v3, "n"

    invoke-direct {p0, p1, v3}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsJavacClose(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 157
    invoke-virtual {v2}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v2

    .line 159
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 160
    iget-object v3, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v3, :cond_1

    return v1

    .line 164
    :cond_2
    invoke-virtual {v2}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    .line 166
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 167
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->next()V

    .line 168
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v2}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v2

    const/16 v3, 0xa7

    if-eq v2, v3, :cond_3

    .line 169
    iput-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 172
    :cond_3
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v1, p1, v2}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 173
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {p1, v1, v0}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    const/4 p1, 0x1

    return p1
.end method

.method private nextIsClose()V
    .locals 4

    const/16 v0, 0x19

    .line 232
    const-string v1, "r"

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->next()V

    .line 234
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    return-void

    .line 237
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xb9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_1

    .line 239
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    .line 243
    const-string v1, "close"

    iget-object v3, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "()V"

    iget-object v3, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 247
    :cond_2
    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    .line 248
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->expectedOwner:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 249
    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->expectedOwner:Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 251
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_4
    :goto_0
    return-void

    .line 244
    :cond_5
    :goto_1
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method private nextIsJavacClose(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;Ljava/lang/String;)Z
    .locals 7

    .line 184
    sget-object v0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$1;->$SwitchMap$org$jacoco$core$internal$analysis$filter$TryWithResourcesJavacFilter$Matcher$JavacPattern:[I

    invoke-virtual {p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xc6

    const-string v2, "r"

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/16 v5, 0x19

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0, v5, v2}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 189
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 191
    :goto_0
    sget-object v0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$1;->$SwitchMap$org$jacoco$core$internal$analysis$filter$TryWithResourcesJavacFilter$Matcher$JavacPattern:[I

    invoke-virtual {p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher$JavacPattern;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const-string v6, "primaryExc"

    if-eq p1, v4, :cond_4

    if-eq p1, v3, :cond_2

    const/4 v3, 0x3

    if-eq p1, v3, :cond_4

    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 227
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 209
    :cond_2
    :goto_1
    invoke-virtual {p0, v5, v6}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 211
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 213
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsClose()V

    const/16 p1, 0xa7

    .line 214
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 216
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x3a

    invoke-virtual {p0, v3, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 218
    invoke-virtual {p0, v5, v6}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v5, p2}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 220
    const-string p2, "addSuppressed"

    const-string v1, "(Ljava/lang/Throwable;)V"

    const/16 v2, 0xb6

    const-string v3, "java/lang/Throwable"

    invoke-virtual {p0, v2, v3, p2, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 224
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsClose()V

    .line 225
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    :goto_2
    return v4

    .line 194
    :cond_4
    invoke-virtual {p0, v5, v6}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 195
    invoke-virtual {p0, v5, v2}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 p1, 0xb8

    .line 196
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->nextIs(I)V

    .line 197
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_6

    .line 198
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast p1, Lorg/objectweb/asm/tree/MethodInsnNode;

    .line 199
    const-string p2, "$closeResource"

    iget-object v1, p1, Lorg/objectweb/asm/tree/MethodInsnNode;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    const-string p2, "(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V"

    iget-object p1, p1, Lorg/objectweb/asm/tree/MethodInsnNode;->desc:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v4

    :cond_5
    const/4 p1, 0x0

    .line 204
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_6
    return v0
.end method

.method private start(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 128
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 129
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->vars:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    const/4 p1, 0x0

    .line 130
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesJavacFilter$Matcher;->expectedOwner:Ljava/lang/String;

    return-void
.end method
