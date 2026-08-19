.class public Lorg/objectweb/asm/tree/TryCatchBlockNode;
.super Ljava/lang/Object;
.source "TryCatchBlockNode.java"


# instance fields
.field public end:Lorg/objectweb/asm/tree/LabelNode;

.field public handler:Lorg/objectweb/asm/tree/LabelNode;

.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public start:Lorg/objectweb/asm/tree/LabelNode;

.field public type:Ljava/lang/String;

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
.method public constructor <init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    .line 75
    iput-object p2, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    .line 76
    iput-object p3, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    .line 77
    iput-object p4, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 8

    .line 107
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    .line 108
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    .line 107
    invoke-virtual {p1, v0, v1, v2, v3}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    .line 111
    iget-object v3, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 112
    iget v4, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    const/4 v7, 0x1

    .line 113
    invoke-virtual {p1, v4, v5, v6, v7}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 112
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 117
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 118
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_2

    .line 119
    iget-object v3, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 120
    iget v4, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 121
    invoke-virtual {p1, v4, v5, v6, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 120
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public updateIndex(I)V
    .locals 4

    shl-int/lit8 p1, p1, 0x8

    const/high16 v0, 0x42000000    # 32.0f

    or-int/2addr p1, v0

    .line 89
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 90
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 91
    iget-object v3, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iput p1, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    .line 96
    iget-object v2, p0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    iput p1, v2, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
