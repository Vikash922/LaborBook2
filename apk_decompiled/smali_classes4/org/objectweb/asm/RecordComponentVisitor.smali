.class public abstract Lorg/objectweb/asm/RecordComponentVisitor;
.super Ljava/lang/Object;
.source "RecordComponentVisitor.java"


# instance fields
.field protected final api:I

.field delegate:Lorg/objectweb/asm/RecordComponentVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/RecordComponentVisitor;-><init>(ILorg/objectweb/asm/RecordComponentVisitor;)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/RecordComponentVisitor;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x90000

    const/high16 v1, 0x10a0000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x80000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x70000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x60000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x50000

    if-eq p1, v0, :cond_1

    const/high16 v0, 0x40000

    if-eq p1, v0, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 76
    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported api "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_2

    .line 79
    invoke-static {p0}, Lorg/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 81
    :cond_2
    iput p1, p0, Lorg/objectweb/asm/RecordComponentVisitor;->api:I

    .line 82
    iput-object p2, p0, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    return-void
.end method


# virtual methods
.method public getDelegate()Lorg/objectweb/asm/RecordComponentVisitor;
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    return-object v0
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/RecordComponentVisitor;->visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/RecordComponentVisitor;->visitAttribute(Lorg/objectweb/asm/Attribute;)V

    :cond_0
    return-void
.end method

.method public visitEnd()V
    .locals 1

    .line 148
    iget-object v0, p0, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v0}, Lorg/objectweb/asm/RecordComponentVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 126
    iget-object v0, p0, Lorg/objectweb/asm/RecordComponentVisitor;->delegate:Lorg/objectweb/asm/RecordComponentVisitor;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/RecordComponentVisitor;->visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
