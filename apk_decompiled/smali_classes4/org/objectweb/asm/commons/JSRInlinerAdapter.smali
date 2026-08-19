.class public Lorg/objectweb/asm/commons/JSRInlinerAdapter;
.super Lorg/objectweb/asm/tree/MethodNode;
.source "JSRInlinerAdapter.java"

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;
    }
.end annotation


# instance fields
.field private final mainSubroutineInsns:Ljava/util/BitSet;

.field final sharedSubroutineInsns:Ljava/util/BitSet;

.field private final subroutinesInsns:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/tree/LabelNode;",
            "Ljava/util/BitSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move v1, p1

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    .line 137
    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/MethodNode;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 65
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mainSubroutineInsns:Ljava/util/BitSet;

    .line 72
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutinesInsns:Ljava/util/Map;

    .line 78
    new-instance p1, Ljava/util/BitSet;

    invoke-direct {p1}, Ljava/util/BitSet;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->sharedSubroutineInsns:Ljava/util/BitSet;

    .line 138
    iput-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8

    const/high16 v1, 0x90000

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 101
    invoke-direct/range {v0 .. v7}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/objectweb/asm/commons/JSRInlinerAdapter;

    if-ne p1, p2, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private emitCode()V
    .locals 10

    .line 302
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 304
    new-instance v0, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mainSubroutineInsns:Ljava/util/BitSet;

    invoke-direct {v0, p0, v1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 307
    new-instance v7, Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {v7}, Lorg/objectweb/asm/tree/InsnList;-><init>()V

    .line 308
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 309
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 310
    :goto_0
    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-object v0, p0

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    .line 312
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->emitInstantiation(Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/objectweb/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V

    goto :goto_0

    .line 315
    :cond_0
    iput-object v7, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    .line 316
    iput-object v8, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    .line 317
    iput-object v9, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    return-void
.end method

.method private emitInstantiation(Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/List;Lorg/objectweb/asm/tree/InsnList;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;",
            ">;",
            "Lorg/objectweb/asm/tree/InsnList;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/TryCatchBlockNode;",
            ">;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/LocalVariableNode;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    .line 340
    :goto_0
    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v3}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    .line 341
    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v3, v1}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v3

    .line 342
    invoke-virtual {v3}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_0

    .line 344
    check-cast v3, Lorg/objectweb/asm/tree/LabelNode;

    .line 345
    invoke-virtual {p1, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    if-eq v3, v2, :cond_6

    .line 347
    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    move-object v2, v3

    goto/16 :goto_2

    .line 350
    :cond_0
    invoke-virtual {p1, v1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->findOwner(I)Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    move-result-object v4

    if-ne v4, p1, :cond_6

    .line 355
    invoke-virtual {v3}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v4

    const/16 v5, 0xa9

    const/16 v6, 0xa7

    if-ne v4, v5, :cond_4

    move-object v3, p1

    move-object v4, v0

    :goto_1
    if-eqz v3, :cond_2

    .line 364
    iget-object v5, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->subroutineInsns:Ljava/util/BitSet;

    invoke-virtual {v5, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 365
    iget-object v4, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    .line 363
    :cond_1
    iget-object v3, v3, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->parent:Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    .line 374
    new-instance v3, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-direct {v3, v6, v4}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    goto :goto_2

    .line 371
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Instruction #"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is a RET not owned by any subroutine"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 375
    :cond_4
    invoke-virtual {v3}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v4

    const/16 v5, 0xa8

    if-ne v4, v5, :cond_5

    .line 376
    check-cast v3, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object v3, v3, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    .line 377
    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutinesInsns:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/BitSet;

    .line 378
    new-instance v5, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;

    invoke-direct {v5, p0, p1, v4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;-><init>(Lorg/objectweb/asm/commons/JSRInlinerAdapter;Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;Ljava/util/BitSet;)V

    .line 379
    invoke-virtual {v5, v3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabelForJumpInsn(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v3

    .line 384
    new-instance v4, Lorg/objectweb/asm/tree/InsnNode;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Lorg/objectweb/asm/tree/InsnNode;-><init>(I)V

    invoke-virtual {p3, v4}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 385
    new-instance v4, Lorg/objectweb/asm/tree/JumpInsnNode;

    invoke-direct {v4, v6, v3}, Lorg/objectweb/asm/tree/JumpInsnNode;-><init>(ILorg/objectweb/asm/tree/LabelNode;)V

    invoke-virtual {p3, v4}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 386
    iget-object v3, v5, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->returnLabel:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 388
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 390
    :cond_5
    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->clone(Ljava/util/Map;)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v3

    invoke-virtual {p3, v3}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    :cond_6
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 396
    :cond_7
    iget-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_8
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 397
    iget-object v0, p3, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v0

    .line 398
    iget-object v1, p3, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v1

    if-eq v0, v1, :cond_8

    .line 400
    iget-object v2, p3, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    .line 401
    invoke-virtual {p1, v2}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabelForJumpInsn(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v2

    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    if-eqz v2, :cond_9

    .line 405
    new-instance v3, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    iget-object p3, p3, Lorg/objectweb/asm/tree/TryCatchBlockNode;->type:Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2, p3}, Lorg/objectweb/asm/tree/TryCatchBlockNode;-><init>(Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;Ljava/lang/String;)V

    invoke-interface {p4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 403
    :cond_9
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Internal error!"

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 410
    :cond_a
    iget-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->localVariables:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_b
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/objectweb/asm/tree/LocalVariableNode;

    .line 411
    iget-object p4, p3, Lorg/objectweb/asm/tree/LocalVariableNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v4

    .line 412
    iget-object p4, p3, Lorg/objectweb/asm/tree/LocalVariableNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {p1, p4}, Lorg/objectweb/asm/commons/JSRInlinerAdapter$Instantiation;->getClonedLabel(Lorg/objectweb/asm/tree/LabelNode;)Lorg/objectweb/asm/tree/LabelNode;

    move-result-object v5

    if-eq v4, v5, :cond_b

    .line 414
    new-instance p4, Lorg/objectweb/asm/tree/LocalVariableNode;

    iget-object v1, p3, Lorg/objectweb/asm/tree/LocalVariableNode;->name:Ljava/lang/String;

    iget-object v2, p3, Lorg/objectweb/asm/tree/LocalVariableNode;->desc:Ljava/lang/String;

    iget-object v3, p3, Lorg/objectweb/asm/tree/LocalVariableNode;->signature:Ljava/lang/String;

    iget v6, p3, Lorg/objectweb/asm/tree/LocalVariableNode;->index:I

    move-object v0, p4

    invoke-direct/range {v0 .. v6}, Lorg/objectweb/asm/tree/LocalVariableNode;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/tree/LabelNode;Lorg/objectweb/asm/tree/LabelNode;I)V

    invoke-interface {p5, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    return-void
.end method

.method private findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V
    .locals 3

    .line 239
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-ge p1, v0, :cond_5

    .line 241
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    .line 247
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->sharedSubroutineInsns:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->set(I)V

    .line 250
    :cond_1
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    .line 252
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    .line 254
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v1

    const/16 v2, 0xa8

    if-eq v1, v2, :cond_2

    .line 256
    check-cast v0, Lorg/objectweb/asm/tree/JumpInsnNode;

    .line 257
    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v1, v0}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v0

    invoke-direct {p0, v0, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_3

    .line 258
    :cond_2
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    .line 259
    check-cast v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;

    .line 260
    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v2, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    .line 261
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    .line 260
    invoke-direct {p0, v1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    .line 262
    iget-object v0, v0, Lorg/objectweb/asm/tree/TableSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/LabelNode;

    .line 263
    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_1

    .line 265
    :cond_3
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getType()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_4

    .line 266
    check-cast v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;

    .line 267
    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v2, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->dflt:Lorg/objectweb/asm/tree/LabelNode;

    .line 268
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    .line 267
    invoke-direct {p0, v1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    .line 269
    iget-object v0, v0, Lorg/objectweb/asm/tree/LookupSwitchInsnNode;->labels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/LabelNode;

    .line 270
    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    invoke-direct {p0, v1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_2

    .line 275
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/InsnList;->get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/AbstractInsnNode;->getOpcode()I

    move-result v0

    const/16 v1, 0xa7

    if-eq v0, v1, :cond_5

    const/16 v1, 0xbf

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_5
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private findSubroutineInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V
    .locals 5

    .line 189
    invoke-direct {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    .line 194
    :cond_0
    iget-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    .line 196
    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v3, v1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->handler:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v2

    .line 197
    invoke-virtual {p2, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 203
    :cond_2
    iget-object v3, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v4, v1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->start:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v3, v4}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v3

    .line 204
    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    iget-object v1, v1, Lorg/objectweb/asm/tree/TryCatchBlockNode;->end:Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v4, v1}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v1

    .line 205
    invoke-virtual {p2, v3}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v4

    if-lt v4, v3, :cond_1

    if-ge v4, v1, :cond_1

    .line 208
    invoke-direct {p0, v2, p2, p3}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findReachableInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    if-nez v0, :cond_0

    return-void
.end method

.method private findSubroutinesInsns()V
    .locals 5

    .line 165
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    const/4 v1, 0x0

    .line 166
    iget-object v2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mainSubroutineInsns:Ljava/util/BitSet;

    invoke-direct {p0, v1, v2, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findSubroutineInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    .line 168
    iget-object v1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutinesInsns:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 169
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/LabelNode;

    .line 170
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/BitSet;

    .line 171
    iget-object v4, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v4, v3}, Lorg/objectweb/asm/tree/InsnList;->indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I

    move-result v3

    invoke-direct {p0, v3, v2, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findSubroutineInsns(ILjava/util/BitSet;Ljava/util/BitSet;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public visitEnd()V
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutinesInsns:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-direct {p0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->findSubroutinesInsns()V

    .line 155
    invoke-direct {p0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->emitCode()V

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :cond_1
    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 1

    .line 143
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/tree/MethodNode;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 144
    iget-object p2, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p2}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p2

    check-cast p2, Lorg/objectweb/asm/tree/JumpInsnNode;

    iget-object p2, p2, Lorg/objectweb/asm/tree/JumpInsnNode;->label:Lorg/objectweb/asm/tree/LabelNode;

    const/16 v0, 0xa8

    if-ne p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutinesInsns:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 146
    iget-object p1, p0, Lorg/objectweb/asm/commons/JSRInlinerAdapter;->subroutinesInsns:Ljava/util/Map;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
