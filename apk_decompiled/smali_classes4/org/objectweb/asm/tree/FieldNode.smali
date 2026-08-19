.class public Lorg/objectweb/asm/tree/FieldNode;
.super Lorg/objectweb/asm/FieldVisitor;
.source "FieldNode.java"


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

.field public desc:Ljava/lang/String;

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

.field public name:Ljava/lang/String;

.field public signature:Ljava/lang/String;

.field public value:Ljava/lang/Object;

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
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lorg/objectweb/asm/FieldVisitor;-><init>(I)V

    .line 131
    iput p2, p0, Lorg/objectweb/asm/tree/FieldNode;->access:I

    .line 132
    iput-object p3, p0, Lorg/objectweb/asm/tree/FieldNode;->name:Ljava/lang/String;

    .line 133
    iput-object p4, p0, Lorg/objectweb/asm/tree/FieldNode;->desc:Ljava/lang/String;

    .line 134
    iput-object p5, p0, Lorg/objectweb/asm/tree/FieldNode;->signature:Ljava/lang/String;

    .line 135
    iput-object p6, p0, Lorg/objectweb/asm/tree/FieldNode;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const/high16 v1, 0x90000

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 102
    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/FieldNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 103
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/objectweb/asm/tree/FieldNode;

    if-ne p1, p2, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .locals 8

    .line 204
    iget v1, p0, Lorg/objectweb/asm/tree/FieldNode;->access:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/FieldNode;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/tree/FieldNode;->desc:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/tree/FieldNode;->signature:Ljava/lang/String;

    iget-object v5, p0, Lorg/objectweb/asm/tree/FieldNode;->value:Ljava/lang/Object;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lorg/objectweb/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/objectweb/asm/FieldVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 211
    iget-object v4, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 212
    iget-object v5, v4, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v1}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_2

    .line 217
    iget-object v4, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/AnnotationNode;

    .line 218
    iget-object v5, v4, Lorg/objectweb/asm/tree/AnnotationNode;->desc:Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Lorg/objectweb/asm/FieldVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/AnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 221
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v3, v2

    :goto_2
    if-ge v3, v0, :cond_3

    .line 223
    iget-object v4, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 224
    iget v5, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v6, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v7, v4, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 225
    invoke-virtual {p1, v5, v6, v7, v1}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v5

    .line 224
    invoke-virtual {v4, v5}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 229
    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_4

    .line 231
    iget-object v3, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    .line 232
    iget v4, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typeRef:I

    iget-object v5, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->typePath:Lorg/objectweb/asm/TypePath;

    iget-object v6, v3, Lorg/objectweb/asm/tree/TypeAnnotationNode;->desc:Ljava/lang/String;

    .line 233
    invoke-virtual {p1, v4, v5, v6, v2}, Lorg/objectweb/asm/FieldVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v4

    .line 232
    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/TypeAnnotationNode;->accept(Lorg/objectweb/asm/AnnotationVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 238
    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 239
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 240
    iget-object v1, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/FieldVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 243
    :cond_5
    invoke-virtual {p1}, Lorg/objectweb/asm/FieldVisitor;->visitEnd()V

    return-void
.end method

.method public check(I)V
    .locals 1

    const/high16 v0, 0x40000

    if-ne p1, v0, :cond_3

    .line 189
    iget-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 190
    :cond_0
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    .line 192
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    new-instance p1, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;

    invoke-direct {p1}, Lorg/objectweb/asm/tree/UnsupportedClassVersionException;-><init>()V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 144
    new-instance v0, Lorg/objectweb/asm/tree/AnnotationNode;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/AnnotationNode;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 146
    iget-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleAnnotations:Ljava/util/List;

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleAnnotations:Ljava/util/List;

    :goto_0
    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    .line 167
    iget-object v0, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    invoke-static {v0, p1}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->attrs:Ljava/util/List;

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 156
    new-instance v0, Lorg/objectweb/asm/tree/TypeAnnotationNode;

    invoke-direct {v0, p1, p2, p3}, Lorg/objectweb/asm/tree/TypeAnnotationNode;-><init>(ILorg/objectweb/asm/TypePath;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 158
    iget-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->visibleTypeAnnotations:Ljava/util/List;

    goto :goto_0

    .line 160
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    invoke-static {p1, v0}, Lorg/objectweb/asm/tree/Util;->add(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/FieldNode;->invisibleTypeAnnotations:Ljava/util/List;

    :goto_0
    return-object v0
.end method
