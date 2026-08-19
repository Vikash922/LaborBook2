.class public abstract Lorg/objectweb/asm/AnnotationVisitor;
.super Ljava/lang/Object;
.source "AnnotationVisitor.java"


# instance fields
.field protected final api:I

.field protected av:Lorg/objectweb/asm/AnnotationVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/AnnotationVisitor;-><init>(ILorg/objectweb/asm/AnnotationVisitor;)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/AnnotationVisitor;)V
    .locals 2

    .line 70
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

    .line 78
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

    .line 81
    invoke-static {p0}, Lorg/objectweb/asm/Constants;->checkAsmExperimental(Ljava/lang/Object;)V

    .line 83
    :cond_2
    iput p1, p0, Lorg/objectweb/asm/AnnotationVisitor;->api:I

    .line 84
    iput-object p2, p0, Lorg/objectweb/asm/AnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    return-void
.end method


# virtual methods
.method public visit(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visit(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 127
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/AnnotationVisitor;->visitAnnotation(Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    .line 145
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/AnnotationVisitor;->visitArray(Ljava/lang/String;)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public visitEnd()V
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/objectweb/asm/AnnotationVisitor;->av:Lorg/objectweb/asm/AnnotationVisitor;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/AnnotationVisitor;->visitEnum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
