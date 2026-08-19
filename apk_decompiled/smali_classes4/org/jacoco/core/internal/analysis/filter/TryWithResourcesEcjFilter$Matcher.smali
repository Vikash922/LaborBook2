.class Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;
.super Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;
.source "TryWithResourcesEcjFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Matcher"
.end annotation


# instance fields
.field private final labels:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;"
        }
    .end annotation
.end field

.field private final output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

.field private final owners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private start:Lorg/objectweb/asm/tree/AbstractInsnNode;


# direct methods
.method constructor <init>(Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/AbstractMatcher;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->owners:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->labels:Ljava/util/Map;

    .line 58
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    return-void
.end method

.method static synthetic access$000(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->start(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method static synthetic access$100(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->matchEcj()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->matchEcjNoFlowOut()Z

    move-result p0

    return p0
.end method

.method private matchEcj()Z
    .locals 8

    const/16 v0, 0x3a

    .line 71
    const-string v1, "primaryExc"

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 72
    const-string v0, "r0"

    invoke-direct {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjCloseAndThrow(Ljava/lang/String;)Z

    .line 77
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v3, 0x1

    const-string v4, "r1"

    move v5, v3

    .line 78
    :goto_0
    invoke-direct {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjClose(Ljava/lang/String;)Z

    move-result v6

    const/16 v7, 0xa7

    if-eqz v6, :cond_0

    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ".end"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v7, v2}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsJump(ILjava/lang/String;)V

    .line 80
    invoke-direct {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjSuppress(Ljava/lang/String;)Z

    .line 81
    invoke-direct {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjCloseAndThrow(Ljava/lang/String;)Z

    add-int/2addr v5, v3

    .line 83
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "r"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 86
    :cond_0
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 87
    const-string v2, "last"

    invoke-direct {p0, v2}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjSuppress(Ljava/lang/String;)Z

    const/16 v2, 0x19

    .line 89
    invoke-virtual {p0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v1, 0xbf

    .line 90
    invoke-virtual {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIs(I)V

    .line 91
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 94
    :cond_1
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 96
    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v4}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v4

    .line 97
    iput-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 98
    :cond_2
    invoke-direct {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjClose(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 99
    invoke-virtual {v4}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v4

    .line 101
    iput-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 102
    iget-object v5, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v5, :cond_2

    return v2

    .line 106
    :cond_3
    invoke-virtual {v4}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->next()V

    .line 109
    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v4}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v4

    if-eq v4, v7, :cond_4

    goto :goto_1

    .line 113
    :cond_4
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v2, v0, v4}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 114
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v0, v2, v1}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return v3

    :cond_5
    :goto_1
    return v2
.end method

.method private matchEcjNoFlowOut()Z
    .locals 8

    const/16 v0, 0x3a

    .line 120
    const-string v1, "primaryExc"

    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, 0x0

    const-string v3, "r0"

    move v5, v2

    move-object v4, v3

    .line 126
    :goto_0
    invoke-direct {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjCloseAndThrow(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "r"

    if-eqz v6, :cond_0

    invoke-direct {p0, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjSuppress(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v5, v5, 0x1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 129
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 131
    :cond_0
    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/16 v0, 0x19

    .line 133
    invoke-virtual {p0, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v0, 0xbf

    .line 134
    invoke-virtual {p0, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIs(I)V

    .line 135
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    return v2

    .line 138
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 140
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    .line 141
    iput-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 142
    :cond_2
    invoke-direct {p0, v3}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjClose(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 143
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    .line 145
    iput-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 146
    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v4, :cond_2

    return v2

    .line 150
    :cond_3
    invoke-virtual {v1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_5

    .line 152
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsEcjClose(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    return v2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 157
    :cond_5
    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    iget-object v4, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v2, v1, v4}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 158
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->output:Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;

    iget-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-interface {v1, v2, v0}, Lorg/jacoco/core/internal/analysis/filter/IFilterOutput;->ignore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return v3
.end method

.method private nextIsClose(Ljava/lang/String;)V
    .locals 4

    const/16 v0, 0x19

    .line 211
    invoke-virtual {p0, v0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->next()V

    .line 213
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xb9

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xb6

    if-eq v0, v1, :cond_1

    .line 218
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    .line 222
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

    .line 226
    :cond_2
    iget-object v0, v0, Lorg/objectweb/asm/tree/MethodInsnNode;->owner:Ljava/lang/String;

    .line 227
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->owners:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_3

    .line 229
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->owners:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 230
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 231
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_4
    :goto_0
    return-void

    .line 223
    :cond_5
    :goto_1
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method private nextIsEcjClose(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x19

    .line 163
    invoke-virtual {p0, v0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".end"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xc6

    invoke-direct {p0, v1, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsJump(ILjava/lang/String;)V

    .line 167
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsClose(Ljava/lang/String;)V

    .line 168
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private nextIsEcjCloseAndThrow(Ljava/lang/String;)Z
    .locals 2

    const/16 v0, 0x19

    .line 172
    invoke-virtual {p0, v0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v1, 0xc6

    .line 174
    invoke-direct {p0, v1, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsJump(ILjava/lang/String;)V

    .line 176
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsClose(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsLabel(Ljava/lang/String;)V

    .line 178
    const-string p1, "primaryExc"

    invoke-virtual {p0, v0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 p1, 0xbf

    .line 179
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIs(I)V

    .line 180
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private nextIsEcjSuppress(Ljava/lang/String;)Z
    .locals 6

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".suppressStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".suppressEnd"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x3a

    .line 187
    invoke-virtual {p0, v2, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v3, 0x19

    .line 190
    const-string v4, "primaryExc"

    invoke-virtual {p0, v3, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v5, 0xc7

    .line 191
    invoke-direct {p0, v5, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsJump(ILjava/lang/String;)V

    .line 193
    invoke-virtual {p0, v3, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 194
    invoke-virtual {p0, v2, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v2, 0xa7

    .line 195
    invoke-direct {p0, v2, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsJump(ILjava/lang/String;)V

    .line 197
    invoke-direct {p0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsLabel(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0, v3, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 199
    invoke-virtual {p0, v3, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    const/16 v1, 0xa5

    .line 200
    invoke-direct {p0, v1, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsJump(ILjava/lang/String;)V

    .line 202
    invoke-virtual {p0, v3, v4}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 203
    invoke-virtual {p0, v3, v0}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsVar(ILjava/lang/String;)V

    .line 204
    const-string v0, "addSuppressed"

    const-string v1, "(Ljava/lang/Throwable;)V"

    const/16 v2, 0xb6

    const-string v3, "java/lang/Throwable"

    invoke-virtual {p0, v2, v3, v0, v1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsInvoke(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIsLabel(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private nextIsJump(ILjava/lang/String;)V
    .locals 1

    .line 236
    invoke-virtual {p0, p1}, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->nextIs(I)V

    .line 237
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez p1, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast p1, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object p1, p1, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    .line 241
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->labels:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    if-nez v0, :cond_1

    .line 243
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->labels:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    .line 245
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_2
    :goto_0
    return-void
.end method

.method private nextIsLabel(Ljava/lang/String;)V
    .locals 3

    .line 250
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 254
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 255
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    check-cast v0, Lorg/objectweb/asm/tree/LabelNode;

    .line 259
    iget-object v1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->labels:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/objectweb/asm/tree/LabelNode;

    if-eq p1, v0, :cond_2

    .line 261
    iput-object v2, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :cond_2
    return-void
.end method

.method private start(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->start:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 63
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->cursor:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 64
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->vars:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 65
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->labels:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 66
    iget-object p1, p0, Lorg/jacoco/core/internal/analysis/filter/TryWithResourcesEcjFilter$Matcher;->owners:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method
