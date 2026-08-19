.class public Lorg/objectweb/asm/tree/VarInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;
.source "VarInsnNode.java"


# instance fields
.field public var:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 54
    iput p2, p0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 2

    .line 74
    iget v0, p0, Lorg/objectweb/asm/tree/VarInsnNode;->opcode:I

    iget v1, p0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    .line 75
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/VarInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 2
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

    .line 80
    new-instance p1, Lorg/objectweb/asm/tree/VarInsnNode;

    iget v0, p0, Lorg/objectweb/asm/tree/VarInsnNode;->opcode:I

    iget v1, p0, Lorg/objectweb/asm/tree/VarInsnNode;->var:I

    invoke-direct {p1, v0, v1}, Lorg/objectweb/asm/tree/VarInsnNode;-><init>(II)V

    invoke-virtual {p1, p0}, Lorg/objectweb/asm/tree/VarInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public setOpcode(I)V
    .locals 0

    .line 64
    iput p1, p0, Lorg/objectweb/asm/tree/VarInsnNode;->opcode:I

    return-void
.end method
