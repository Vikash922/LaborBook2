.class final Lorg/objectweb/asm/tree/InsnList$InsnListIterator;
.super Ljava/lang/Object;
.source "InsnList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/objectweb/asm/tree/InsnList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InsnListIterator"
.end annotation


# instance fields
.field nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field final synthetic this$0:Lorg/objectweb/asm/tree/InsnList;


# direct methods
.method constructor <init>(Lorg/objectweb/asm/tree/InsnList;I)V
    .locals 1

    .line 489
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_2

    .line 490
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 492
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 493
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 494
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1

    .line 496
    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/InsnList;->getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    .line 498
    iget-object p1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 501
    :cond_1
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 502
    iget-object p1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_1
    return-void

    .line 491
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .locals 3

    .line 579
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 580
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    move-object v2, p1

    check-cast v2, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v0, v2}, Lorg/objectweb/asm/tree/InsnList;->insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 582
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    move-object v2, p1

    check-cast v2, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v0, v2}, Lorg/objectweb/asm/tree/InsnList;->insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    goto :goto_0

    .line 584
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    move-object v1, p1

    check-cast v1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 586
    :goto_0
    check-cast p1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 587
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public hasNext()Z
    .locals 1

    .line 508
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPrevious()Z
    .locals 1

    .line 540
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 513
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 517
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 518
    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 519
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0

    .line 514
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public nextIndex()I
    .locals 2

    .line 557
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 558
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->size()I

    move-result v0

    return v0

    .line 560
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 561
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 563
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .locals 2

    .line 545
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 549
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 550
    iget-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 551
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0

    .line 546
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .locals 2

    .line 568
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 571
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v0, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {v0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v1

    iput-object v1, v0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 574
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return v0
.end method

.method public remove()V
    .locals 2

    .line 525
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 526
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 529
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 531
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/tree/InsnList;->remove(Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    const/4 v0, 0x0

    .line 532
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void

    .line 534
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2

    .line 592
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 593
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->this$0:Lorg/objectweb/asm/tree/InsnList;

    check-cast p1, Lorg/objectweb/asm/tree/AbstractInsnNode;

    invoke-virtual {v1, v0, p1}, Lorg/objectweb/asm/tree/InsnList;->set(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V

    .line 594
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->remove:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-ne v0, v1, :cond_0

    .line 595
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 597
    :cond_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    return-void

    .line 600
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
