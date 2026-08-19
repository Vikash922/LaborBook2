.class public Lorg/objectweb/asm/tree/FrameNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;
.source "FrameNode.java"


# instance fields
.field public local:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public stack:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public type:I


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, -0x1

    .line 73
    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    return-void
.end method

.method public constructor <init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, -0x1

    .line 97
    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 98
    iput p1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_3

    const/4 p4, 0x1

    if-eq p1, p4, :cond_2

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_4

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    .line 114
    invoke-static {p4, p5}, Lorg/objectweb/asm/tree/Util;->asArrayList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    goto :goto_0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 109
    :cond_1
    invoke-static {p2}, Lorg/objectweb/asm/tree/Util;->asArrayList(I)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p2, p3}, Lorg/objectweb/asm/tree/Util;->asArrayList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    goto :goto_0

    .line 102
    :cond_3
    invoke-static {p2, p3}, Lorg/objectweb/asm/tree/Util;->asArrayList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 103
    invoke-static {p4, p5}, Lorg/objectweb/asm/tree/Util;->asArrayList(I[Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    :cond_4
    :goto_0
    return-void
.end method

.method private static asArray(Ljava/util/List;)[Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 178
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 180
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 181
    instance-of v4, v3, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v4, :cond_0

    .line 182
    check-cast v3, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v3}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v3

    .line 184
    :cond_0
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 6

    .line 128
    iget v1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    const/4 v0, -0x1

    if-eq v1, v0, :cond_4

    if-eqz v1, :cond_4

    const/4 v0, 0x1

    if-eq v1, v0, :cond_3

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 v0, 0x3

    if-eq v1, v0, :cond_1

    const/4 v0, 0x4

    if-ne v1, v0, :cond_0

    .line 143
    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 146
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    .line 140
    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 134
    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    iget-object v0, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-static {v0}, Lorg/objectweb/asm/tree/FrameNode;->asArray(Ljava/util/List;)[Ljava/lang/Object;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;)",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;"
        }
    .end annotation

    .line 152
    new-instance v0, Lorg/objectweb/asm/tree/FrameNode;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/FrameNode;-><init>()V

    .line 153
    iget v1, p0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    iput v1, v0, Lorg/objectweb/asm/tree/FrameNode;->type:I

    .line 154
    iget-object v1, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 155
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    .line 156
    iget-object v1, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 157
    iget-object v4, p0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 158
    instance-of v5, v4, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v5, :cond_0

    .line 159
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 161
    :cond_0
    iget-object v5, v0, Lorg/objectweb/asm/tree/FrameNode;->local:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 165
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    .line 166
    iget-object v1, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v2, v1, :cond_3

    .line 167
    iget-object v3, p0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 168
    instance-of v4, v3, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v4, :cond_2

    .line 169
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 171
    :cond_2
    iget-object v4, v0, Lorg/objectweb/asm/tree/FrameNode;->stack:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0xe

    return v0
.end method
