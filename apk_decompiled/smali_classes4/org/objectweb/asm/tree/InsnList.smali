.class public Lorg/objectweb/asm/tree/InsnList;
.super Ljava/lang/Object;
.source "InsnList.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/objectweb/asm/tree/InsnList$InsnListIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/objectweb/asm/tree/AbstractInsnNode;",
        ">;"
    }
.end annotation


# instance fields
.field cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

.field private size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/MethodVisitor;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/tree/AbstractInsnNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    .line 145
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public add(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 226
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 227
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 228
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 229
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 231
    :cond_0
    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 232
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 234
    :goto_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    .line 235
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    .line 236
    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void
.end method

.method public add(Lorg/objectweb/asm/tree/InsnList;)V
    .locals 2

    .line 246
    iget v0, p1, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    iget v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 250
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 251
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 252
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 254
    :cond_1
    iget-object v1, p1, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 255
    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 256
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 257
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    .line 260
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 462
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public contains(Lorg/objectweb/asm/tree/AbstractInsnNode;)Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 113
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method public get(I)Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    if-ltz p1, :cond_1

    .line 93
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-ge p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 99
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    aget-object p1, v0, p1

    return-object p1

    .line 94
    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public getFirst()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    .line 70
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public getLast()Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 1

    .line 79
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-object v0
.end method

.method public indexOf(Lorg/objectweb/asm/tree/AbstractInsnNode;)I
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-result-object v0

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 133
    :cond_0
    iget p1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return p1
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 269
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 270
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 271
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 272
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 274
    :cond_0
    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 275
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 277
    :goto_0
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    .line 279
    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 314
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 315
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 317
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 319
    :cond_0
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 321
    :goto_0
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 322
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 323
    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 324
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 325
    iput p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void
.end method

.method public insert(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/InsnList;)V
    .locals 3

    .line 337
    iget v0, p2, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 341
    iget-object v0, p2, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 342
    iget-object v1, p2, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 343
    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v2, :cond_1

    .line 345
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 347
    :cond_1
    iput-object v1, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 349
    :goto_0
    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 350
    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 351
    iput-object p1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 352
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 353
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public insert(Lorg/objectweb/asm/tree/InsnList;)V
    .locals 2

    .line 289
    iget v0, p1, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 292
    :cond_0
    iget v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 293
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_1

    .line 294
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 295
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 297
    :cond_1
    iget-object v1, p1, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 298
    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 299
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 300
    iget-object v0, p1, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    const/4 v0, 0x0

    .line 302
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, 0x0

    .line 303
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 1

    .line 364
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 365
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v0, :cond_0

    .line 367
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 369
    :cond_0
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 371
    :goto_0
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 372
    iput-object p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 373
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 374
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 375
    iput p1, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    return-void
.end method

.method public insertBefore(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/InsnList;)V
    .locals 3

    .line 387
    iget v0, p2, Lorg/objectweb/asm/tree/InsnList;->size:I

    if-nez v0, :cond_0

    return-void

    .line 390
    :cond_0
    iget v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 391
    iget-object v0, p2, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 392
    iget-object v1, p2, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 393
    iget-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-nez v2, :cond_1

    .line 395
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 397
    :cond_1
    iput-object v0, v2, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 399
    :goto_0
    iput-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 400
    iput-object p1, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 401
    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 402
    iput-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 p1, 0x0

    .line 403
    invoke-virtual {p2, p1}, Lorg/objectweb/asm/tree/InsnList;->removeAll(Z)V

    return-void
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/objectweb/asm/tree/InsnList;->iterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->iterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public iterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Lorg/objectweb/asm/tree/AbstractInsnNode;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;

    invoke-direct {v0, p0, p1}, Lorg/objectweb/asm/tree/InsnList$InsnListIterator;-><init>(Lorg/objectweb/asm/tree/InsnList;I)V

    return-object v0
.end method

.method public remove(Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 3

    .line 412
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 413
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 414
    iget-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-nez v1, :cond_0

    .line 417
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 418
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 420
    :cond_0
    iput-object v2, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 421
    iput-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 425
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 426
    iput-object v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 428
    :cond_2
    iput-object v0, v1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 429
    iput-object v1, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 432
    :goto_0
    iput-object v2, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v0, -0x1

    .line 433
    iput v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    .line 434
    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 435
    iput-object v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method removeAll(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz p1, :cond_0

    .line 447
    iget-object v1, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, -0x1

    .line 448
    iput v2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    .line 449
    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 450
    iput-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move-object p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 454
    iput p1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    .line 455
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 456
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 457
    iput-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public resetLabels()V
    .locals 2

    .line 470
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    :goto_0
    if-eqz v0, :cond_1

    .line 472
    instance-of v1, v0, Lorg/objectweb/asm/tree/LabelNode;

    if-eqz v1, :cond_0

    .line 473
    move-object v1, v0

    check-cast v1, Lorg/objectweb/asm/tree/LabelNode;

    invoke-virtual {v1}, Lorg/objectweb/asm/tree/LabelNode;->resetLabel()V

    .line 475
    :cond_0
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public set(Lorg/objectweb/asm/tree/AbstractInsnNode;Lorg/objectweb/asm/tree/AbstractInsnNode;)V
    .locals 2

    .line 194
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 195
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_0

    .line 197
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_0

    .line 199
    :cond_0
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->lastInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 201
    :goto_0
    iget-object v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 202
    iput-object v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_1

    .line 204
    iput-object p2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    goto :goto_1

    .line 206
    :cond_1
    iput-object p2, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 208
    :goto_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    if-eqz v0, :cond_2

    .line 209
    iget v0, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    .line 210
    iget-object v1, p0, Lorg/objectweb/asm/tree/InsnList;->cache:[Lorg/objectweb/asm/tree/AbstractInsnNode;

    aput-object p2, v1, v0

    .line 211
    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 213
    iput v0, p2, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    :goto_2
    const/4 p2, -0x1

    .line 215
    iput p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    const/4 p2, 0x0

    .line 216
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->previousInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 217
    iput-object p2, p1, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    return-void
.end method

.method public size()I
    .locals 1

    .line 61
    iget v0, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    return v0
.end method

.method public toArray()[Lorg/objectweb/asm/tree/AbstractInsnNode;
    .locals 4

    .line 177
    iget-object v0, p0, Lorg/objectweb/asm/tree/InsnList;->firstInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    .line 178
    iget v1, p0, Lorg/objectweb/asm/tree/InsnList;->size:I

    new-array v1, v1, [Lorg/objectweb/asm/tree/AbstractInsnNode;

    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_0

    .line 180
    aput-object v0, v1, v2

    add-int/lit8 v3, v2, 0x1

    .line 181
    iput v2, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->index:I

    .line 182
    iget-object v0, v0, Lorg/objectweb/asm/tree/AbstractInsnNode;->nextInsn:Lorg/objectweb/asm/tree/AbstractInsnNode;

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method
