.class public abstract Lorg/objectweb/asm/ModuleVisitor;
.super Ljava/lang/Object;
.source "ModuleVisitor.java"


# instance fields
.field protected final api:I

.field protected mv:Lorg/objectweb/asm/ModuleVisitor;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/ModuleVisitor;-><init>(ILorg/objectweb/asm/ModuleVisitor;)V

    return-void
.end method

.method public constructor <init>(ILorg/objectweb/asm/ModuleVisitor;)V
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
    iput p1, p0, Lorg/objectweb/asm/ModuleVisitor;->api:I

    .line 82
    iput-object p2, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {v0}, Lorg/objectweb/asm/ModuleVisitor;->visitEnd()V

    :cond_0
    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/ModuleVisitor;->visitExport(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/ModuleVisitor;->visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 171
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ModuleVisitor;->visitProvide(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {v0, p1, p2, p3}, Lorg/objectweb/asm/ModuleVisitor;->visitRequire(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/objectweb/asm/ModuleVisitor;->mv:Lorg/objectweb/asm/ModuleVisitor;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
