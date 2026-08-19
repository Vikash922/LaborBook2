.class public abstract Lorg/objectweb/asm/tree/AbstractInsnNode;
.super Ljava/lang/Object;
.source "AbstractInsnNode.java"


# static fields
.field public static final FIELD_INSN:I = 0x4

.field public static final FRAME:I = 0xe

.field public static final IINC_INSN:I = 0xa

.field public static final INSN:I = 0x0

.field public static final INT_INSN:I = 0x1

.field public static final INVOKE_DYNAMIC_INSN:I = 0x6

.field public static final JUMP_INSN:I = 0x7

.field public static final LABEL:I = 0x8

.field public static final LDC_INSN:I = 0x9

.field public static final LINE:I = 0xf

.field public static final LOOKUPSWITCH_INSN:I = 0xc

.field public static final METHOD_INSN:I = 0x5

.field public static final MULTIANEWARRAY_INSN:I = 0xd

.field public static final TABLESWITCH_INSN:I = 0xb

.field public static final TYPE_INSN:I = 0x3

.field public static final VAR_INSN:I = 0x2


# instance fields
.field index:I

.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field protected opcode:I

.field previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field public visibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->opcode:I

    const/4 p1, -0x1

    .line 128
    iput p1, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void
.end method

.method static clone(Lorg/objectweb/asm/tree/LabelNode;Ljava/util/Map;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;)",
            "Lorg/objectweb/asm/tree/LabelNode;"
        }
    .end annotation

    .line 215
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/objectweb/asm/tree/LabelNode;

    return-object p0
.end method

.method static clone(Ljava/util/List;Ljava/util/Map;)[Lorg/objectweb/asm/tree/LabelNode;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;",
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Lorg/objectweb/asm/tree/LabelNode;",
            ">;)[",
            "Lorg/objectweb/asm/tree/LabelNode;"
        }
    .end annotation

    .line 227
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [Lorg/objectweb/asm/tree/LabelNode;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 229
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/LabelNode;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public abstract accept(Lorg/objectweb/asm/MethodVisitor;)V
.end method

.method protected final acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 8

    .line 180
    iget-object v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 182
    iget-object v3, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 183
    iget v4, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    .line 184
    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 183
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 189
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 190
    iget-object v3, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 191
    iget v4, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 192
    invoke-virtual {p1, v4, v5, v6, v1}, Lorg/objectweb/asm/MethodVisitor;->visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 191
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public abstract clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
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
.end method

.method protected final cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 8

    .line 241
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 243
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 244
    iget-object v3, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 245
    new-instance v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-direct {v4, v5, v6, v7}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    .line 248
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    .line 249
    iget-object v3, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 252
    :cond_0
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 254
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 255
    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 256
    new-instance v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iget v4, v2, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v2, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v2, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2, v3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    .line 260
    iget-object v2, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public getNext()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getOpcode()I
    .locals 1

    .line 137
    iget v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->opcode:I

    return v0
.end method

.method public getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public abstract getType()I
.end method
