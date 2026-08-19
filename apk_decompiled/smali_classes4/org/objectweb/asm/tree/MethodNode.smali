.class public Lorg/objectweb/asm/tree/MethodNode;
.super Lorg/objectweb/asm/MethodVisitor;
.source "MethodNode.java"


# instance fields
.field public access:I

.field public annotationDefault:Ljava/lang/Object;

.field public attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public desc:Ljava/lang/String;

.field public exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public instructions:Lorg/objectweb/asm/tree/InsnList;

.field public invisibleAnnotableParameterCount:I

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleLocalVariableAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleParameterAnnotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public localVariables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/LocalVariableNode;",
            ">;"
        }
    .end annotation
.end field

.field public maxLocals:I

.field public maxStack:I

.field public name:Ljava/lang/String;

.field public parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ParameterNode;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;

.field public tryCatchBlocks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TryCatchBlockNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleAnnotableParameterCount:I

.field public visibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleLocalVariableAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleParameterAnnotations:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/AnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field public visibleTypeAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TypeAnnotationNode;",
            ">;"
        }
    .end annotation
.end field

.field private visited:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x90000

    .line 158
    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/MethodNode;-><init>(I)V

    .line 159
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/tree/MethodNode;

    if-ne v0, v1, :cond_0

    return-void

    .line 160
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    .line 173
    new-instance p1, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 222
    invoke-direct {p0, p1}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    .line 223
    iput p2, p0, Lorg/objectweb/asm/tree/MethodNode;->access:I

    .line 224
    iput-object p3, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    .line 225
    iput-object p4, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    .line 226
    iput-object p5, p0, Lorg/objectweb/asm/tree/MethodNode;->signature:Ljava/lang/String;

    .line 227
    invoke-static {p6}, Lorg/objectweb/asm/tree/Util;->asArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    and-int/lit16 p1, p2, 0x400

    if-nez p1, :cond_0

    .line 229
    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x5

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    .line 231
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    .line 232
    new-instance p1, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    const/high16 v1, 0x90000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 195
    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/objectweb/asm/tree/MethodNode;

    if-ne p1, p2, :cond_0

    return-void

    .line 197
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 5

    .line 550
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Object;

    .line 551
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 552
    aget-object v3, p1, v2

    .line 553
    instance-of v4, v3, Lorg/objectweb/asm/Label;

    if-eqz v4, :cond_0

    .line 554
    check-cast v3, Lorg/objectweb/asm/Label;

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    .line 556
    :cond_0
    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;
    .locals 4

    .line 542
    array-length v0, p1

    new-array v0, v0, [Lorg/objectweb/asm/tree/LabelNode;

    .line 543
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 544
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .locals 7

    .line 645
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->exceptions:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_0
    move-object v6, v0

    .line 646
    iget v2, p0, Lorg/objectweb/asm/tree/MethodNode;->access:I

    iget-object v3, p0, Lorg/objectweb/asm/tree/MethodNode;->name:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    iget-object v5, p0, Lorg/objectweb/asm/tree/MethodNode;->signature:Ljava/lang/String;

    move-object v1, p1

    .line 647
    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/ClassVisitor;->visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 649
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :cond_1
    return-void
.end method

.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 9

    .line 660
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 661
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 662
    iget-object v3, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/ParameterNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/ParameterNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 666
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 667
    invoke-virtual {p1}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    const/4 v2, 0x0

    .line 668
    iget-object v3, p0, Lorg/objectweb/asm/tree/MethodNode;->annotationDefault:Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_1

    .line 670
    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    .line 673
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 674
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_2

    .line 675
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 676
    iget-object v5, v4, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 679
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 680
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_3

    .line 681
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 682
    iget-object v5, v4, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 685
    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 686
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_4

    .line 687
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 688
    iget v5, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 689
    invoke-virtual {p1, v5, v6, v7, v2}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    .line 688
    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 693
    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 694
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_4
    if-ge v3, v0, :cond_5

    .line 695
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 696
    iget v5, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 697
    invoke-virtual {p1, v5, v6, v7, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    .line 696
    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 701
    :cond_5
    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotableParameterCount:I

    if-lez v0, :cond_6

    .line 702
    invoke-virtual {p1, v0, v2}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 704
    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-eqz v0, :cond_9

    .line 705
    array-length v0, v0

    move v3, v1

    :goto_5
    if-ge v3, v0, :cond_9

    .line 706
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v4, v3

    if-nez v4, :cond_7

    goto :goto_7

    .line 710
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_6
    if-ge v6, v5, :cond_8

    .line 711
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 712
    iget-object v8, v7, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v8, v2}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_8
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 716
    :cond_9
    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotableParameterCount:I

    if-lez v0, :cond_a

    .line 717
    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitAnnotableParameterCount(IZ)V

    .line 719
    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-eqz v0, :cond_d

    .line 720
    array-length v0, v0

    move v3, v1

    :goto_8
    if-ge v3, v0, :cond_d

    .line 721
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object v4, v4, v3

    if-nez v4, :cond_b

    goto :goto_a

    .line 725
    :cond_b
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v6, v1

    :goto_9
    if-ge v6, v5, :cond_c

    .line 726
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 727
    iget-object v8, v7, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v3, v8, v1}, Lorg/objectweb/asm/MethodVisitor;->visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    :cond_c
    :goto_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 732
    :cond_d
    iget-boolean v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visited:Z

    if-eqz v0, :cond_e

    .line 733
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->resetLabels()V

    .line 735
    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 736
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_b
    if-ge v3, v0, :cond_f

    .line 737
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/MethodVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 741
    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 742
    invoke-virtual {p1}, Lorg/objectweb/asm/MethodVisitor;->visitCode()V

    .line 744
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 745
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_c
    if-ge v3, v0, :cond_10

    .line 746
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v4, v3}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->updateIndex(I)V

    .line 747
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v4, p1}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 751
    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    .line 753
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    if-eqz v0, :cond_11

    .line 754
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_d
    if-ge v3, v0, :cond_11

    .line 755
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/LocalVariableNode;

    invoke-virtual {v4, p1}, Lorg/objectweb/asm/tree/LocalVariableNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 759
    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v0, :cond_12

    .line 760
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_e
    if-ge v3, v0, :cond_12

    .line 761
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v4, p1, v2}, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/objectweb/asm/MethodVisitor;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 764
    :cond_12
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v0, :cond_13

    .line 765
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v1

    :goto_f
    if-ge v3, v0, :cond_13

    .line 766
    iget-object v4, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;

    invoke-virtual {v4, p1, v1}, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;->accept(Lorg/objectweb/asm/MethodVisitor;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 769
    :cond_13
    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->maxStack:I

    iget v1, p0, Lorg/objectweb/asm/tree/MethodNode;->maxLocals:I

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    .line 770
    iput-boolean v2, p0, Lorg/objectweb/asm/tree/MethodNode;->visited:Z

    .line 772
    :cond_14
    invoke-virtual {p1}, Lorg/objectweb/asm/MethodVisitor;->visitEnd()V

    return-void
.end method

.method public check(I)V
    .locals 5

    const/high16 v0, 0x40000

    const/4 v1, 0x1

    if-ne p1, v0, :cond_18

    .line 575
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 576
    :cond_0
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 578
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 579
    :cond_2
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 581
    :cond_3
    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 582
    :cond_4
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 584
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 585
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_a

    .line 586
    iget-object v2, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 587
    iget-object v3, v2, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v3, :cond_7

    iget-object v3, v2, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 588
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_4

    .line 589
    :cond_6
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 591
    :cond_7
    :goto_4
    iget-object v3, v2, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v3, :cond_9

    iget-object v2, v2, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 592
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_5

    .line 593
    :cond_8
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_9
    :goto_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 597
    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_14

    .line 598
    iget-object v2, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v2

    .line 599
    iget-object v3, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v3, :cond_c

    iget-object v3, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_7

    .line 600
    :cond_b
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 602
    :cond_c
    :goto_7
    iget-object v3, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v3, :cond_e

    iget-object v3, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_8

    .line 603
    :cond_d
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 605
    :cond_e
    :goto_8
    instance-of v3, v2, Lorg/objectweb/asm/tree/MethodInsnNode;

    if-eqz v3, :cond_11

    .line 606
    move-object v3, v2

    check-cast v3, Lorg/objectweb/asm/tree/MethodInsnNode;

    iget-boolean v3, v3, Lorg/objectweb/asm/tree/MethodInsnNode;->itf:Z

    .line 607
    iget v2, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->opcode:I

    const/16 v4, 0xb9

    if-ne v2, v4, :cond_f

    move v2, v1

    goto :goto_9

    :cond_f
    const/4 v2, 0x0

    :goto_9
    if-ne v3, v2, :cond_10

    goto :goto_a

    .line 608
    :cond_10
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 610
    :cond_11
    instance-of v3, v2, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v3, :cond_13

    .line 611
    check-cast v2, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v2, v2, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    .line 612
    instance-of v3, v2, Lorg/objectweb/asm/Handle;

    if-nez v3, :cond_12

    instance-of v3, v2, Lorg/objectweb/asm/Type;

    if-eqz v3, :cond_13

    check-cast v2, Lorg/objectweb/asm/Type;

    .line 613
    invoke-virtual {v2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0xb

    if-eq v2, v3, :cond_12

    goto :goto_a

    .line 614
    :cond_12
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_13
    :goto_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 618
    :cond_14
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_b

    .line 619
    :cond_15
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 621
    :cond_16
    :goto_b
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    if-eqz v0, :cond_18

    .line 622
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_c

    .line 623
    :cond_17
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_18
    :goto_c
    const/high16 v0, 0x70000

    if-ge p1, v0, :cond_1b

    .line 627
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_d
    if-ltz p1, :cond_1b

    .line 628
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 629
    instance-of v1, v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    if-eqz v1, :cond_1a

    .line 630
    check-cast v0, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    .line 631
    instance-of v0, v0, Lorg/objectweb/asm/ConstantDynamic;

    if-nez v0, :cond_19

    goto :goto_e

    .line 632
    :cond_19
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_1a
    :goto_e
    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :cond_1b
    return-void
.end method

.method protected getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;
    .locals 1

    .line 535
    iget-object v0, p1, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    instance-of v0, v0, Lorg/objectweb/asm/tree/LabelNode;

    if-nez v0, :cond_0

    .line 536
    new-instance v0, Lorg/objectweb/asm/tree/LabelNode;

    invoke-direct {v0}, Lorg/objectweb/asm/tree/LabelNode;-><init>()V

    iput-object v0, p1, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    .line 538
    :cond_0
    iget-object p1, p1, Lorg/objectweb/asm/Label;->info:Ljava/lang/Object;

    check-cast p1, Lorg/objectweb/asm/tree/LabelNode;

    return-object p1
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 286
    iput p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotableParameterCount:I

    goto :goto_0

    .line 288
    :cond_0
    iput p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotableParameterCount:I

    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 262
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 264
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleAnnotations:Ljava/util/List;

    goto :goto_0

    .line 266
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleAnnotations:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .locals 3

    .line 250
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    new-instance v1, Lorg/objectweb/asm/tree/MethodNode$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/objectweb/asm/tree/MethodNode$1;-><init>(Lorg/objectweb/asm/tree/MethodNode;I)V

    invoke-direct {v0, v1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    .line 317
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->attrs:Ljava/util/List;

    return-void
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 364
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/FieldInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/FieldInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 8

    .line 332
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v7, Lorg/objectweb/asm/tree/FrameNode;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    move-object v4, v1

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v4, p3

    :goto_0
    if-nez p5, :cond_1

    move-object v6, v1

    goto :goto_1

    .line 338
    :cond_1
    invoke-direct {p0, p5}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    move-object v6, p3

    :goto_1
    move-object v1, v7

    move v2, p1

    move v3, p2

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lorg/objectweb/asm/tree/FrameNode;-><init>(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 332
    invoke-virtual {v0, v7}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 2

    .line 412
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/IincInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/IincInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    .line 343
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/InsnNode;

    invoke-direct {v1, p1}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 3

    .line 435
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 436
    :goto_0
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 437
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getPrevious()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    goto :goto_0

    .line 440
    :cond_0
    new-instance v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_1

    .line 442
    iget-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 443
    invoke-static {p1, v1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->visibleTypeAnnotations:Ljava/util/List;

    goto :goto_1

    .line 445
    :cond_1
    iget-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 446
    invoke-static {p1, v1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->invisibleTypeAnnotations:Ljava/util/List;

    :goto_1
    return-object v1
.end method

.method public visitIntInsn(II)V
    .locals 2

    .line 348
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/IntInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/IntInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 2

    .line 390
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/InvokeDynamicInsnNode;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 2

    .line 397
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 1

    .line 402
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/LdcInsnNode;

    invoke-direct {v1, p1}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 2

    .line 512
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/LineNumberNode;

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/LineNumberNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 8

    .line 482
    new-instance v7, Lorg/objectweb/asm/tree/LocalVariableNode;

    .line 484
    invoke-virtual {p0, p4}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    invoke-virtual {p0, p5}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v5

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;I)V

    .line 485
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    invoke-static {p1, v7}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->localVariables:Ljava/util/List;

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 8

    .line 497
    new-instance v7, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;

    .line 499
    invoke-direct {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    invoke-direct {p0, p4}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    move-object v0, v7

    move v1, p1

    move-object v2, p2

    move-object v5, p5

    move-object v6, p6

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/tree/LabelNode;[Lorg/objectweb/asm/tree/LabelNode;[ILjava/lang/String;)V

    if-eqz p7, :cond_0

    .line 501
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    .line 502
    invoke-static {p1, v7}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleLocalVariableAnnotations:Ljava/util/List;

    goto :goto_0

    .line 504
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    .line 505
    invoke-static {p1, v7}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleLocalVariableAnnotations:Ljava/util/List;

    :goto_0
    return-object v7
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 2

    .line 423
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p1

    invoke-direct {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;[I[Lorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 0

    .line 517
    iput p1, p0, Lorg/objectweb/asm/tree/MethodNode;->maxStack:I

    .line 518
    iput p2, p0, Lorg/objectweb/asm/tree/MethodNode;->maxLocals:I

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 374
    iget v0, p0, Lorg/objectweb/asm/tree/MethodNode;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 376
    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/MethodVisitor;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_0
    and-int/lit16 v2, p1, -0x101

    .line 381
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v0, Lorg/objectweb/asm/tree/MethodInsnNode;

    move-object v1, v0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v6}, Lorg/objectweb/asm/tree/MethodInsnNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 2

    .line 428
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/MultiANewArrayInsnNode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    .line 241
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    .line 244
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->parameters:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/ParameterNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/ParameterNode;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 296
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p2}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_1

    .line 298
    iget-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    if-nez p2, :cond_0

    .line 299
    iget-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p2

    array-length p2, p2

    .line 300
    new-array p2, p2, [Ljava/util/List;

    iput-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    .line 302
    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleParameterAnnotations:[Ljava/util/List;

    aget-object p3, p2, p1

    .line 303
    invoke-static {p3, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    aput-object p3, p2, p1

    goto :goto_0

    .line 305
    :cond_1
    iget-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    if-nez p2, :cond_2

    .line 306
    iget-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->desc:Ljava/lang/String;

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p2

    array-length p2, p2

    .line 307
    new-array p2, p2, [Ljava/util/List;

    iput-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    .line 309
    :cond_2
    iget-object p2, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleParameterAnnotations:[Ljava/util/List;

    aget-object p3, p2, p1

    .line 310
    invoke-static {p3, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    aput-object p3, p2, p1

    :goto_0
    return-object v0
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 2

    .line 418
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p3

    invoke-direct {p0, p4}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNodes([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p4

    invoke-direct {v1, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/TableSwitchInsnNode;-><init>(IILorg/objectweb/asm/tree/LabelNode;[Lorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    .line 462
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    const v1, 0xffff00

    and-int/2addr v1, p1

    shr-int/lit8 v1, v1, 0x8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 463
    new-instance v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 465
    iget-object p1, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    .line 466
    invoke-static {p1, v1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->visibleTypeAnnotations:Ljava/util/List;

    goto :goto_0

    .line 468
    :cond_0
    iget-object p1, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    .line 469
    invoke-static {p1, v1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;->invisibleTypeAnnotations:Ljava/util/List;

    :goto_0
    return-object v1
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 1

    .line 454
    new-instance v0, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 455
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p2

    invoke-virtual {p0, p3}, Lorg/objectweb/asm/tree/MethodNode;->getLabelNode(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p3

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/TryCatchBlockNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V

    .line 456
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 274
    new-instance v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 276
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->visibleTypeAnnotations:Ljava/util/List;

    goto :goto_0

    .line 278
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/MethodNode;->invisibleTypeAnnotations:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 2

    .line 358
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/TypeInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/TypeInsnNode;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    .line 353
    iget-object v0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    new-instance v1, Lorg/objectweb/asm/tree/VarInsnNode;

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    return-void
.end method
