.class public Lorg/objectweb/asm/tree/JumpInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;
.source "JumpInsnNode.java"


# instance fields
.field public label:Lorg/objectweb/asm/tree/LabelNode;


# direct methods
.method public constructor <init>(ILorg/objectweb/asm/tree/LabelNode;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 58
    iput-object p2, p0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 2

    .line 79
    iget v0, p0, Lorg/objectweb/asm/tree/JumpInsnNode;->opcode:I

    iget-object v1, p0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/LabelNode;->getLabel()Lorg/objectweb/asm/Label;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 80
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/JumpInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 3
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

    .line 85
    new-instance v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget v1, p0, Lorg/objectweb/asm/tree/JumpInsnNode;->opcode:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-static {v2, p1}, Lorg/objectweb/asm/tree/JumpInsnNode;->clone(Lorg/objectweb/asm/tree/LabelNode;Ljava/util/Map;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {v0, p0}, Lorg/objectweb/asm/tree/JumpInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public setOpcode(I)V
    .locals 0

    .line 69
    iput p1, p0, Lorg/objectweb/asm/tree/JumpInsnNode;->opcode:I

    return-void
.end method
