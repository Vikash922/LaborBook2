.class public abstract Lorg/objectweb/asm/commons/AdviceAdapter;
.super Lorg/objectweb/asm/commons/GeneratorAdapter;
.source "AdviceAdapter.java"

# interfaces
.implements Lorg/objectweb/asm/Opcodes;


# static fields
.field private static final INVALID_OPCODE:Ljava/lang/String; = "Invalid opcode "

.field private static final OTHER:Ljava/lang/Object;

.field private static final UNINITIALIZED_THIS:Ljava/lang/Object;


# instance fields
.field private forwardJumpStackFrames:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/objectweb/asm/Label;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private final isConstructor:Z

.field protected methodAccess:I

.field protected methodDesc:Ljava/lang/String;

.field private stackFrame:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private superClassConstructorCalled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->UNINITIALIZED_THIS:Ljava/lang/Object;

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct/range {p0 .. p5}, Lorg/objectweb/asm/commons/GeneratorAdapter;-><init>(ILorg/objectweb/asm/MethodVisitor;ILjava/lang/String;Ljava/lang/String;)V

    .line 115
    iput p3, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->methodAccess:I

    .line 116
    iput-object p5, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->methodDesc:Ljava/lang/String;

    .line 117
    const-string p1, "<init>"

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    return-void
.end method

.method private addForwardJump(Lorg/objectweb/asm/Label;)V
    .locals 3

    .line 595
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 598
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private addForwardJumps(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 2

    .line 588
    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->addForwardJump(Lorg/objectweb/asm/Label;)V

    .line 589
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 590
    invoke-direct {p0, v1}, Lorg/objectweb/asm/commons/AdviceAdapter;->addForwardJump(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 463
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez v0, :cond_5

    .line 464
    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x2

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 465
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 466
    invoke-virtual {v4}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 467
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0xb6

    if-eq p1, v0, :cond_3

    const/16 v0, 0xb7

    if-eq p1, v0, :cond_2

    const/16 p2, 0xb9

    if-eq p1, p2, :cond_3

    goto :goto_1

    .line 476
    :cond_2
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    move-result-object p1

    .line 477
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->UNINITIALIZED_THIS:Ljava/lang/Object;

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p1, :cond_4

    const-string p1, "<init>"

    .line 479
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 480
    iput-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    .line 481
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodEnter()V

    goto :goto_1

    .line 473
    :cond_3
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 488
    :cond_4
    :goto_1
    invoke-static {p3}, Lorg/objectweb/asm/Type;->getReturnType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    .line 489
    sget-object p2, Lorg/objectweb/asm/Type;->VOID_TYPE:Lorg/objectweb/asm/Type;

    if-eq p1, p2, :cond_5

    .line 490
    sget-object p2, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 491
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result p1

    if-ne p1, v3, :cond_5

    .line 492
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method private endConstructorBasicBlockWithoutSuccessor()V
    .locals 1

    const/4 v0, 0x1

    .line 611
    iput-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    return-void
.end method

.method private peekValue()Ljava/lang/Object;
    .locals 2

    .line 619
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private popValue()Ljava/lang/Object;
    .locals 2

    .line 615
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private pushValue(Ljava/lang/Object;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected onMethodEnter()V
    .locals 0

    return-void
.end method

.method protected onMethodExit(I)V
    .locals 0

    return-void
.end method

.method public visitCode()V
    .locals 1

    .line 122
    invoke-super {p0}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitCode()V

    .line 123
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz v0, :cond_0

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodEnter()V

    :goto_0
    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 368
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p2, :cond_2

    const/4 p2, 0x0

    .line 370
    invoke-virtual {p4, p2}, Ljava/lang/String;->charAt(I)C

    move-result p3

    const/16 p4, 0x4a

    if-eq p3, p4, :cond_0

    const/16 p4, 0x44

    if-ne p3, p4, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    packed-switch p1, :pswitch_data_0

    .line 398
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Invalid opcode "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 386
    :pswitch_0
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 387
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 389
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    if-eqz p2, :cond_2

    .line 394
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 380
    :pswitch_2
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 382
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 374
    :pswitch_3
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    if-eqz p2, :cond_2

    .line 376
    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitInsn(I)V
    .locals 4

    .line 146
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    const/16 v1, 0xbf

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez v0, :cond_2

    const/16 v0, 0xbe

    if-eq p1, v0, :cond_4

    if-eq p1, v1, :cond_1

    const/16 v0, 0xc2

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc3

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    packed-switch p1, :pswitch_data_4

    .line 309
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid opcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :pswitch_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    .line 157
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->endConstructorBasicBlockWithoutSuccessor()V

    goto/16 :goto_0

    .line 154
    :pswitch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid return in constructor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 304
    :pswitch_2
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 305
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v3, v0, -0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 306
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 299
    :pswitch_3
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 300
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x4

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 301
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 294
    :pswitch_4
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 295
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 296
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 289
    :pswitch_5
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 290
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 291
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 285
    :pswitch_6
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 286
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x3

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 281
    :pswitch_7
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 282
    iget-object v1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 278
    :pswitch_8
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->peekValue()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 254
    :pswitch_9
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 255
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 272
    :pswitch_a
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 273
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 274
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 275
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 266
    :pswitch_b
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 267
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 268
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 201
    :pswitch_c
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 202
    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 195
    :pswitch_d
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 238
    :cond_0
    :pswitch_e
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_1
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 161
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    .line 162
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->endConstructorBasicBlockWithoutSuccessor()V

    goto :goto_0

    :cond_2
    if-eq p1, v1, :cond_3

    packed-switch p1, :pswitch_data_5

    goto :goto_0

    .line 320
    :cond_3
    :pswitch_f
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->onMethodExit(I)V

    .line 326
    :cond_4
    :goto_0
    :pswitch_10
    invoke-super {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitInsn(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_c
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2e
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_e
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
        :pswitch_e
        :pswitch_9
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x85
        :pswitch_d
        :pswitch_10
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_d
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_e
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_b
        :pswitch_e
        :pswitch_e
        :pswitch_b
        :pswitch_b
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xac
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0xac
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public visitIntInsn(II)V
    .locals 0

    .line 405
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitIntInsn(II)V

    .line 406
    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p2, :cond_0

    const/16 p2, 0xbc

    if-eq p1, p2, :cond_0

    .line 407
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 0

    .line 504
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V

    const/16 p3, 0xba

    .line 505
    invoke-direct {p0, p3, p1, p2}, Lorg/objectweb/asm/commons/AdviceAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 1

    .line 510
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 511
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez v0, :cond_1

    const/16 v0, 0xc6

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc7

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 535
    :pswitch_0
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 538
    :pswitch_1
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->endConstructorBasicBlockWithoutSuccessor()V

    goto :goto_0

    .line 531
    :pswitch_2
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 532
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_0

    .line 521
    :cond_0
    :pswitch_3
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 543
    :goto_0
    invoke-direct {p0, p2}, Lorg/objectweb/asm/commons/AdviceAdapter;->addForwardJump(Lorg/objectweb/asm/Label;)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 1

    .line 133
    invoke-super {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitLabel(Lorg/objectweb/asm/Label;)V

    .line 134
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 137
    iput-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->stackFrame:Ljava/util/List;

    const/4 v0, 0x0

    .line 138
    iput-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    .line 139
    iget-object v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 2

    .line 413
    invoke-super {p0, p1}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitLdcInsn(Ljava/lang/Object;)V

    .line 414
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez v0, :cond_1

    .line 415
    sget-object v0, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 416
    instance-of v1, p1, Ljava/lang/Double;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/Long;

    if-nez v1, :cond_0

    instance-of v1, p1, Lorg/objectweb/asm/ConstantDynamic;

    if-eqz v1, :cond_1

    check-cast p1, Lorg/objectweb/asm/ConstantDynamic;

    .line 418
    invoke-virtual {p1}, Lorg/objectweb/asm/ConstantDynamic;->getSize()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 419
    :cond_0
    invoke-direct {p0, v0}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 0

    .line 549
    invoke-super {p0, p1, p2, p3}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    .line 550
    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p2, :cond_0

    .line 551
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 552
    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/commons/AdviceAdapter;->addForwardJumps(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    .line 553
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->endConstructorBasicBlockWithoutSuccessor()V

    :cond_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    .line 451
    iget v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->api:I

    const/high16 v1, 0x50000

    if-ge v0, v1, :cond_0

    and-int/lit16 v0, p1, 0x100

    if-nez v0, :cond_0

    .line 453
    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 456
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    and-int/lit16 p1, p1, -0x101

    .line 459
    invoke-direct {p0, p1, p3, p4}, Lorg/objectweb/asm/commons/AdviceAdapter;->doVisitMethodInsn(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0

    .line 426
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitMultiANewArrayInsn(Ljava/lang/String;I)V

    .line 427
    iget-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p1, :cond_1

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_0

    .line 429
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 431
    :cond_0
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 0

    .line 560
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    .line 561
    iget-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p1, :cond_0

    .line 562
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 563
    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/commons/AdviceAdapter;->addForwardJumps(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    .line 564
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->endConstructorBasicBlockWithoutSuccessor()V

    :cond_0
    return-void
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 0

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V

    .line 580
    iget-boolean p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    invoke-interface {p1, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 581
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 582
    sget-object p2, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 583
    iget-object p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->forwardJumpStackFrames:Ljava/util/Map;

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 0

    .line 437
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitTypeInsn(ILjava/lang/String;)V

    .line 439
    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez p2, :cond_0

    const/16 p2, 0xbb

    if-ne p1, p2, :cond_0

    .line 440
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    .line 331
    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/commons/GeneratorAdapter;->visitVarInsn(II)V

    .line 332
    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->isConstructor:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lorg/objectweb/asm/commons/AdviceAdapter;->superClassConstructorCalled:Z

    if-nez v0, :cond_2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 360
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid opcode "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 353
    :pswitch_0
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    .line 354
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_1

    .line 349
    :pswitch_1
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->popValue()Ljava/lang/Object;

    goto :goto_1

    :pswitch_2
    if-nez p2, :cond_0

    .line 344
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->UNINITIALIZED_THIS:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    :goto_0
    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 340
    :pswitch_3
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    .line 341
    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 336
    :pswitch_4
    sget-object p1, Lorg/objectweb/asm/commons/AdviceAdapter;->OTHER:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lorg/objectweb/asm/commons/AdviceAdapter;->pushValue(Ljava/lang/Object;)V

    goto :goto_1

    .line 357
    :cond_1
    invoke-direct {p0}, Lorg/objectweb/asm/commons/AdviceAdapter;->endConstructorBasicBlockWithoutSuccessor()V

    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
