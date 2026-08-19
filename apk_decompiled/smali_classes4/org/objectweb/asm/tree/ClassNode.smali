.class public Lorg/objectweb/asm/tree/ClassNode;
.super Lorg/objectweb/asm/ClassVisitor;
.source "ClassNode.java"


# instance fields
.field public access:I

.field public attrs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field public fields:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/FieldNode;",
            ">;"
        }
    .end annotation
.end field

.field public innerClasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/InnerClassNode;",
            ">;"
        }
    .end annotation
.end field

.field public interfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public invisibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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

.field public methods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/MethodNode;",
            ">;"
        }
    .end annotation
.end field

.field public module:Lorg/objectweb/asm/tree/ModuleNode;

.field public name:Ljava/lang/String;

.field public nestHostClass:Ljava/lang/String;

.field public nestMembers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public outerClass:Ljava/lang/String;

.field public outerMethod:Ljava/lang/String;

.field public outerMethodDesc:Ljava/lang/String;

.field public permittedSubclasses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public recordComponents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/RecordComponentNode;",
            ">;"
        }
    .end annotation
.end field

.field public signature:Ljava/lang/String;

.field public sourceDebug:Ljava/lang/String;

.field public sourceFile:Ljava/lang/String;

.field public superName:Ljava/lang/String;

.field public version:I

.field public visibleAnnotations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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


# direct methods
.method public constructor <init>()V
    .locals 2

    const/high16 v0, 0x90000

    .line 149
    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/ClassNode;-><init>(I)V

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/tree/ClassNode;

    if-ne v0, v1, :cond_0

    return-void

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 163
    invoke-direct {p0, p1}, Lorg/objectweb/asm/ClassVisitor;-><init>(I)V

    .line 164
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    .line 165
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    .line 166
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    .line 167
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .locals 8

    .line 370
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v7, v0, [Ljava/lang/String;

    .line 371
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 372
    iget v2, p0, Lorg/objectweb/asm/tree/ClassNode;->version:I

    iget v3, p0, Lorg/objectweb/asm/tree/ClassNode;->access:I

    iget-object v4, p0, Lorg/objectweb/asm/tree/ClassNode;->name:Ljava/lang/String;

    iget-object v5, p0, Lorg/objectweb/asm/tree/ClassNode;->signature:Ljava/lang/String;

    iget-object v6, p0, Lorg/objectweb/asm/tree/ClassNode;->superName:Ljava/lang/String;

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lorg/objectweb/asm/ClassVisitor;->visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceFile:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 375
    :cond_0
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/ClassVisitor;->visitSource(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->module:Lorg/objectweb/asm/tree/ModuleNode;

    if-eqz v0, :cond_2

    .line 379
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/ModuleNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    .line 382
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->nestHostClass:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 383
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ClassVisitor;->visitNestHost(Ljava/lang/String;)V

    .line 386
    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->outerClass:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 387
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethod:Ljava/lang/String;

    iget-object v2, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_5

    .line 392
    iget-object v4, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 393
    iget-object v5, v4, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 396
    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 397
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_6

    .line 398
    iget-object v4, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 399
    iget-object v5, v4, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Lorg/objectweb/asm/ClassVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 402
    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 403
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_7

    .line 404
    iget-object v4, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 405
    iget v5, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 406
    invoke-virtual {p1, v5, v6, v7, v1}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    .line 405
    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 410
    :cond_7
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 411
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_8

    .line 412
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 413
    iget v4, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 414
    invoke-virtual {p1, v4, v5, v6, v2}, Lorg/objectweb/asm/ClassVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 413
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 419
    :cond_8
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 420
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_4
    if-ge v1, v0, :cond_9

    .line 421
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ClassVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 425
    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->nestMembers:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 426
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_5
    if-ge v1, v0, :cond_a

    .line 427
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->nestMembers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ClassVisitor;->visitNestMember(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 431
    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->permittedSubclasses:Ljava/util/List;

    if-eqz v0, :cond_b

    .line 432
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_6
    if-ge v1, v0, :cond_b

    .line 433
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->permittedSubclasses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ClassVisitor;->visitPermittedSubclass(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 437
    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_7
    if-ge v1, v0, :cond_c

    .line 438
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/InnerClassNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/InnerClassNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 441
    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 442
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_8
    if-ge v1, v0, :cond_d

    .line 443
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/RecordComponentNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/RecordComponentNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 447
    :cond_d
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_9
    if-ge v1, v0, :cond_e

    .line 448
    iget-object v3, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/FieldNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/FieldNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 451
    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    if-ge v2, v0, :cond_f

    .line 452
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/MethodNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/MethodNode;->accept(Lorg/objectweb/asm/ClassVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 454
    :cond_f
    invoke-virtual {p1}, Lorg/objectweb/asm/ClassVisitor;->visitEnd()V

    return-void
.end method

.method public check(I)V
    .locals 2

    const/high16 v0, 0x90000

    if-ge p1, v0, :cond_1

    .line 309
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->permittedSubclasses:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_1
    :goto_0
    const/high16 v0, 0x80000

    if-ge p1, v0, :cond_3

    .line 312
    iget v0, p0, Lorg/objectweb/asm/tree/ClassNode;->access:I

    const/high16 v1, 0x10000

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_1

    .line 313
    :cond_2
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    const/high16 v0, 0x70000

    if-ge p1, v0, :cond_5

    .line 315
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->nestHostClass:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->nestMembers:Ljava/util/List;

    if-nez v0, :cond_4

    goto :goto_2

    .line 316
    :cond_4
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_5
    :goto_2
    const/high16 v0, 0x60000

    if-ge p1, v0, :cond_7

    .line 318
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->module:Lorg/objectweb/asm/tree/ModuleNode;

    if-nez v0, :cond_6

    goto :goto_3

    .line 319
    :cond_6
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_7
    :goto_3
    const/high16 v0, 0x50000

    if-ge p1, v0, :cond_b

    .line 322
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_9

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_4

    .line 323
    :cond_8
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 325
    :cond_9
    :goto_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_5

    .line 326
    :cond_a
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 330
    :cond_b
    :goto_5
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 331
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_c

    .line 332
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/AnnotationNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 335
    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 336
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_7
    if-ltz v0, :cond_d

    .line 337
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/AnnotationNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_7

    .line 340
    :cond_d
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 341
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_e

    .line 342
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 345
    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_f

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_9
    if-ltz v0, :cond_f

    .line 347
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    .line 350
    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    if-eqz v0, :cond_10

    .line 351
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_10

    .line 352
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/RecordComponentNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/RecordComponentNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 355
    :cond_10
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_11

    .line 356
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/FieldNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/FieldNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    .line 358
    :cond_11
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_c
    if-ltz v0, :cond_12

    .line 359
    iget-object v1, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/MethodNode;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/tree/MethodNode;->check(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_c

    :cond_12
    return-void
.end method

.method public visit(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 182
    iput p1, p0, Lorg/objectweb/asm/tree/ClassNode;->version:I

    .line 183
    iput p2, p0, Lorg/objectweb/asm/tree/ClassNode;->access:I

    .line 184
    iput-object p3, p0, Lorg/objectweb/asm/tree/ClassNode;->name:Ljava/lang/String;

    .line 185
    iput-object p4, p0, Lorg/objectweb/asm/tree/ClassNode;->signature:Ljava/lang/String;

    .line 186
    iput-object p5, p0, Lorg/objectweb/asm/tree/ClassNode;->superName:Ljava/lang/String;

    .line 187
    invoke-static {p6}, Lorg/objectweb/asm/tree/Util;->asArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->interfaces:Ljava/util/List;

    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 216
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 218
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleAnnotations:Ljava/util/List;

    goto :goto_0

    .line 220
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleAnnotations:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->attrs:Ljava/util/List;

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;
    .locals 7

    .line 274
    new-instance v6, Lorg/objectweb/asm/tree/FieldNode;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/FieldNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 275
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->fields:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public visitInnerClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 255
    new-instance v0, Lorg/objectweb/asm/tree/InnerClassNode;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/tree/InnerClassNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 256
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->innerClasses:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMethod(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lorg/objectweb/asm/MethodVisitor;
    .locals 7

    .line 286
    new-instance v6, Lorg/objectweb/asm/tree/MethodNode;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/MethodNode;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->methods:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6
.end method

.method public visitModule(Ljava/lang/String;ILjava/lang/String;)Lorg/objectweb/asm/ModuleVisitor;
    .locals 1

    .line 198
    new-instance v0, Lorg/objectweb/asm/tree/ModuleNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/ModuleNode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->module:Lorg/objectweb/asm/tree/ModuleNode;

    return-object v0
.end method

.method public visitNestHost(Ljava/lang/String;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->nestHostClass:Ljava/lang/String;

    return-void
.end method

.method public visitNestMember(Ljava/lang/String;)V
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->nestMembers:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->nestMembers:Ljava/util/List;

    return-void
.end method

.method public visitOuterClass(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->outerClass:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethod:Ljava/lang/String;

    .line 211
    iput-object p3, p0, Lorg/objectweb/asm/tree/ClassNode;->outerMethodDesc:Ljava/lang/String;

    return-void
.end method

.method public visitPermittedSubclass(Ljava/lang/String;)V
    .locals 1

    .line 249
    iget-object v0, p0, Lorg/objectweb/asm/tree/ClassNode;->permittedSubclasses:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->permittedSubclasses:Ljava/util/List;

    return-void
.end method

.method public visitRecordComponent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/RecordComponentVisitor;
    .locals 1

    .line 262
    new-instance v0, Lorg/objectweb/asm/tree/RecordComponentNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/RecordComponentNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->recordComponents:Ljava/util/List;

    return-object v0
.end method

.method public visitSource(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceFile:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lorg/objectweb/asm/tree/ClassNode;->sourceDebug:Ljava/lang/String;

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 228
    new-instance v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 230
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->visibleTypeAnnotations:Ljava/util/List;

    goto :goto_0

    .line 232
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/ClassNode;->invisibleTypeAnnotations:Ljava/util/List;

    :goto_0
    return-object v0
.end method
