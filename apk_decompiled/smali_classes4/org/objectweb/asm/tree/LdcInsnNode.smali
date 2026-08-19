.class public Lorg/objectweb/asm/tree/LdcInsnNode;
.super Lorg/objectweb/asm/tree/AbstractInsnNode;
.source "LdcInsnNode.java"


# instance fields
.field public cst:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    const/16 v0, 0x12

    .line 64
    invoke-direct {p0, v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;-><init>(I)V

    .line 65
    iput-object p1, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/MethodVisitor;->visitLdcInsn(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/LdcInsnNode;->acceptAnnotations(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method public clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1
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

    .line 81
    new-instance p1, Lorg/objectweb/asm/tree/LdcInsnNode;

    iget-object v0, p0, Lorg/objectweb/asm/tree/LdcInsnNode;->cst:Ljava/lang/Object;

    invoke-direct {p1, v0}, Lorg/objectweb/asm/tree/LdcInsnNode;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lorg/objectweb/asm/tree/LdcInsnNode;->cloneAnnotations(Lorg/objectweb/asm/tree/AbstractInsnNode;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    return-object p1
.end method

.method public getType()I
    .locals 1

    const/16 v0, 0x9

    return v0
.end method
