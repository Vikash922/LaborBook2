.class final Lorg/objectweb/asm/MethodWriter;
.super Lorg/objectweb/asm/MethodVisitor;
.source "MethodWriter.java"


# static fields
.field static final COMPUTE_ALL_FRAMES:I = 0x4

.field static final COMPUTE_INSERTED_FRAMES:I = 0x3

.field static final COMPUTE_MAX_STACK_AND_LOCAL:I = 0x1

.field static final COMPUTE_MAX_STACK_AND_LOCAL_FROM_FRAMES:I = 0x2

.field static final COMPUTE_NOTHING:I

.field private static final NA:I

.field private static final STACK_SIZE_DELTA:[I


# instance fields
.field private final accessFlags:I

.field private final code:Lorg/objectweb/asm/ByteVector;

.field private final compute:I

.field private currentBasicBlock:Lorg/objectweb/asm/Label;

.field private currentFrame:[I

.field private currentLocals:I

.field private defaultValue:Lorg/objectweb/asm/ByteVector;

.field private final descriptor:Ljava/lang/String;

.field private final descriptorIndex:I

.field private final exceptionIndexTable:[I

.field private firstAttribute:Lorg/objectweb/asm/Attribute;

.field private firstBasicBlock:Lorg/objectweb/asm/Label;

.field private firstCodeAttribute:Lorg/objectweb/asm/Attribute;

.field private firstHandler:Lorg/objectweb/asm/Handler;

.field private hasAsmInstructions:Z

.field private hasSubroutines:Z

.field private invisibleAnnotableParameterCount:I

.field private lastBasicBlock:Lorg/objectweb/asm/Label;

.field private lastBytecodeOffset:I

.field private lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastHandler:Lorg/objectweb/asm/Handler;

.field private lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

.field private lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

.field private lineNumberTable:Lorg/objectweb/asm/ByteVector;

.field private lineNumberTableLength:I

.field private localVariableTable:Lorg/objectweb/asm/ByteVector;

.field private localVariableTableLength:I

.field private localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

.field private localVariableTypeTableLength:I

.field private maxLocals:I

.field private maxRelativeStackSize:I

.field private maxStack:I

.field private final name:Ljava/lang/String;

.field private final nameIndex:I

.field private final numberOfExceptions:I

.field private parameters:Lorg/objectweb/asm/ByteVector;

.field private parametersCount:I

.field private previousFrame:[I

.field private previousFrameOffset:I

.field private relativeStackSize:I

.field private final signatureIndex:I

.field private sourceLength:I

.field private sourceOffset:I

.field private stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

.field private stackMapTableNumberOfEntries:I

.field private final symbolTable:Lorg/objectweb/asm/SymbolTable;

.field private visibleAnnotableParameterCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xca

    .line 81
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x1
        0x1
        0x1
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        0x0
        -0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x3
        -0x4
        -0x3
        -0x4
        -0x3
        -0x3
        -0x3
        -0x3
        -0x1
        -0x2
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x0
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        -0x2
        0x0
        0x1
        0x0
        0x1
        -0x1
        -0x1
        0x0
        0x0
        0x1
        0x1
        -0x1
        0x0
        -0x1
        0x0
        0x0
        0x0
        -0x3
        -0x1
        -0x1
        -0x3
        -0x3
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        -0x2
        0x0
        0x1
        0x0
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x2
        -0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
        -0x1
        -0x1
        0x0
        0x0
    .end array-data
.end method

.method constructor <init>(Lorg/objectweb/asm/SymbolTable;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 1

    const/high16 v0, 0x90000

    .line 595
    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    .line 320
    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    .line 596
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 597
    const-string v0, "<init>"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    or-int/2addr v0, p2

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    .line 598
    invoke-virtual {p1, p3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->nameIndex:I

    .line 599
    iput-object p3, p0, Lorg/objectweb/asm/MethodWriter;->name:Ljava/lang/String;

    .line 600
    invoke-virtual {p1, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lorg/objectweb/asm/MethodWriter;->descriptorIndex:I

    .line 601
    iput-object p4, p0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    const/4 p3, 0x0

    if-nez p5, :cond_1

    move p5, p3

    goto :goto_1

    .line 602
    :cond_1
    invoke-virtual {p1, p5}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p5

    :goto_1
    iput p5, p0, Lorg/objectweb/asm/MethodWriter;->signatureIndex:I

    if-eqz p6, :cond_2

    .line 603
    array-length p5, p6

    if-lez p5, :cond_2

    .line 604
    array-length p5, p6

    iput p5, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    .line 605
    new-array p5, p5, [I

    iput-object p5, p0, Lorg/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    .line 606
    :goto_2
    iget p5, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-ge p3, p5, :cond_3

    .line 607
    iget-object p5, p0, Lorg/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    aget-object v0, p6, p3

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Symbol;->index:I

    aput v0, p5, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .line 610
    :cond_2
    iput p3, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    const/4 p1, 0x0

    .line 611
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    .line 613
    :cond_3
    iput p7, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    if-eqz p7, :cond_5

    .line 616
    invoke-static {p4}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, -0x1

    .line 620
    :cond_4
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    .line 621
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    .line 623
    new-instance p1, Lorg/objectweb/asm/Label;

    invoke-direct {p1}, Lorg/objectweb/asm/Label;-><init>()V

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    .line 624
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_5
    return-void
.end method

.method private addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V
    .locals 3

    .line 1782
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    new-instance v1, Lorg/objectweb/asm/Edge;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v2, v2, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    invoke-direct {v1, p1, p2, v2}, Lorg/objectweb/asm/Edge;-><init>(ILorg/objectweb/asm/Label;Lorg/objectweb/asm/Edge;)V

    iput-object v1, v0, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    return-void
.end method

.method private computeAllFrames()V
    .locals 11

    .line 1560
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    .line 1561
    :goto_0
    const-string v1, "java/lang/Throwable"

    if-eqz v0, :cond_2

    .line 1563
    iget-object v2, v0, Lorg/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lorg/objectweb/asm/Handler;->catchTypeDescriptor:Ljava/lang/String;

    .line 1564
    :goto_1
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-static {v2, v1}, Lorg/objectweb/asm/Frame;->getAbstractTypeFromInternalName(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;)I

    move-result v1

    .line 1566
    iget-object v2, v0, Lorg/objectweb/asm/Handler;->handlerPc:Lorg/objectweb/asm/Label;

    invoke-virtual {v2}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object v2

    .line 1567
    iget-short v3, v2, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v3, v3, 0x2

    int-to-short v3, v3

    iput-short v3, v2, Lorg/objectweb/asm/Label;->flags:S

    .line 1569
    iget-object v3, v0, Lorg/objectweb/asm/Handler;->startPc:Lorg/objectweb/asm/Label;

    invoke-virtual {v3}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object v3

    .line 1570
    iget-object v4, v0, Lorg/objectweb/asm/Handler;->endPc:Lorg/objectweb/asm/Label;

    invoke-virtual {v4}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object v4

    :goto_2
    if-eq v3, v4, :cond_1

    .line 1572
    new-instance v5, Lorg/objectweb/asm/Edge;

    iget-object v6, v3, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lorg/objectweb/asm/Edge;-><init>(ILorg/objectweb/asm/Label;Lorg/objectweb/asm/Edge;)V

    iput-object v5, v3, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    .line 1574
    iget-object v3, v3, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_2

    .line 1576
    :cond_1
    iget-object v0, v0, Lorg/objectweb/asm/Handler;->nextHandler:Lorg/objectweb/asm/Handler;

    goto :goto_0

    .line 1580
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    .line 1581
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lorg/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 1582
    invoke-virtual {v0, p0}, Lorg/objectweb/asm/Frame;->accept(Lorg/objectweb/asm/MethodWriter;)V

    .line 1590
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    .line 1591
    sget-object v2, Lorg/objectweb/asm/Label;->EMPTY_LIST:Lorg/objectweb/asm/Label;

    iput-object v2, v0, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    const/4 v2, 0x0

    move v3, v2

    .line 1593
    :goto_3
    sget-object v4, Lorg/objectweb/asm/Label;->EMPTY_LIST:Lorg/objectweb/asm/Label;

    if-eq v0, v4, :cond_6

    .line 1596
    iget-object v4, v0, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    const/4 v5, 0x0

    .line 1597
    iput-object v5, v0, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    .line 1599
    iget-short v5, v0, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v5, v5, 0x8

    int-to-short v5, v5

    iput-short v5, v0, Lorg/objectweb/asm/Label;->flags:S

    .line 1601
    iget-object v5, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v5}, Lorg/objectweb/asm/Frame;->getInputStackSize()I

    move-result v5

    iget-short v6, v0, Lorg/objectweb/asm/Label;->outputStackMax:S

    add-int/2addr v5, v6

    if-le v5, v3, :cond_3

    move v3, v5

    .line 1606
    :cond_3
    iget-object v5, v0, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    :goto_4
    if-eqz v5, :cond_5

    .line 1608
    iget-object v6, v5, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    invoke-virtual {v6}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object v6

    .line 1609
    iget-object v7, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v9, v6, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget v10, v5, Lorg/objectweb/asm/Edge;->info:I

    .line 1610
    invoke-virtual {v7, v8, v9, v10}, Lorg/objectweb/asm/Frame;->merge(Lorg/objectweb/asm/SymbolTable;Lorg/objectweb/asm/Frame;I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1611
    iget-object v7, v6, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    if-nez v7, :cond_4

    .line 1614
    iput-object v4, v6, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    move-object v4, v6

    .line 1617
    :cond_4
    iget-object v5, v5, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    goto :goto_4

    :cond_5
    move-object v0, v4

    goto :goto_3

    .line 1624
    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    :goto_5
    if-eqz v0, :cond_b

    .line 1626
    iget-short v4, v0, Lorg/objectweb/asm/Label;->flags:S

    const/16 v5, 0xa

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_7

    .line 1628
    iget-object v4, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v4, p0}, Lorg/objectweb/asm/Frame;->accept(Lorg/objectweb/asm/MethodWriter;)V

    .line 1630
    :cond_7
    iget-short v4, v0, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_a

    .line 1632
    iget-object v4, v0, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    .line 1633
    iget v5, v0, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    if-nez v4, :cond_8

    .line 1634
    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v6, v6, Lorg/objectweb/asm/ByteVector;->length:I

    goto :goto_6

    :cond_8
    iget v6, v4, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    :goto_6
    const/4 v7, 0x1

    sub-int/2addr v6, v7

    if-lt v6, v5, :cond_a

    move v8, v5

    :goto_7
    if-ge v8, v6, :cond_9

    .line 1638
    iget-object v9, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v9, v9, Lorg/objectweb/asm/ByteVector;->data:[B

    aput-byte v2, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    .line 1640
    :cond_9
    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v8, v8, Lorg/objectweb/asm/ByteVector;->data:[B

    const/16 v9, -0x41

    aput-byte v9, v8, v6

    .line 1643
    invoke-virtual {p0, v5, v2, v7}, Lorg/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v5

    .line 1644
    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 1645
    invoke-static {v8, v1}, Lorg/objectweb/asm/Frame;->getAbstractTypeFromInternalName(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v5

    .line 1646
    invoke-virtual {p0}, Lorg/objectweb/asm/MethodWriter;->visitFrameEnd()V

    .line 1648
    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    invoke-static {v5, v0, v4}, Lorg/objectweb/asm/Handler;->removeRange(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Handler;

    move-result-object v4

    iput-object v4, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    .line 1650
    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1653
    :cond_a
    iget-object v0, v0, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_5

    .line 1656
    :cond_b
    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method private computeMaxStackAndLocal()V
    .locals 8

    .line 1662
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    :goto_0
    const v1, 0x7fffffff

    if-eqz v0, :cond_2

    .line 1664
    iget-object v2, v0, Lorg/objectweb/asm/Handler;->handlerPc:Lorg/objectweb/asm/Label;

    .line 1665
    iget-object v3, v0, Lorg/objectweb/asm/Handler;->startPc:Lorg/objectweb/asm/Label;

    .line 1666
    iget-object v4, v0, Lorg/objectweb/asm/Handler;->endPc:Lorg/objectweb/asm/Label;

    :goto_1
    if-eq v3, v4, :cond_1

    .line 1669
    iget-short v5, v3, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_0

    .line 1670
    new-instance v5, Lorg/objectweb/asm/Edge;

    iget-object v6, v3, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    invoke-direct {v5, v1, v2, v6}, Lorg/objectweb/asm/Edge;-><init>(ILorg/objectweb/asm/Label;Lorg/objectweb/asm/Edge;)V

    iput-object v5, v3, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    goto :goto_2

    .line 1676
    :cond_0
    iget-object v5, v3, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    iget-object v5, v5, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    new-instance v6, Lorg/objectweb/asm/Edge;

    iget-object v7, v3, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    iget-object v7, v7, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    iget-object v7, v7, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    invoke-direct {v6, v1, v2, v7}, Lorg/objectweb/asm/Edge;-><init>(ILorg/objectweb/asm/Label;Lorg/objectweb/asm/Edge;)V

    iput-object v6, v5, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    .line 1680
    :goto_2
    iget-object v3, v3, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_1

    .line 1682
    :cond_1
    iget-object v0, v0, Lorg/objectweb/asm/Handler;->nextHandler:Lorg/objectweb/asm/Handler;

    goto :goto_0

    .line 1686
    :cond_2
    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->hasSubroutines:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 1690
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/Label;->markSubroutine(S)V

    move v0, v2

    move v3, v0

    :goto_3
    if-gt v0, v3, :cond_5

    .line 1694
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    :goto_4
    if-eqz v4, :cond_4

    .line 1696
    iget-short v5, v4, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 v5, v5, 0x10

    if-eqz v5, :cond_3

    iget-short v5, v4, Lorg/objectweb/asm/Label;->subroutineId:S

    if-ne v5, v0, :cond_3

    .line 1698
    iget-object v5, v4, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    iget-object v5, v5, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    iget-object v5, v5, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    .line 1699
    iget-short v6, v5, Lorg/objectweb/asm/Label;->subroutineId:S

    if-nez v6, :cond_3

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    .line 1701
    invoke-virtual {v5, v3}, Lorg/objectweb/asm/Label;->markSubroutine(S)V

    .line 1704
    :cond_3
    iget-object v4, v4, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_3

    .line 1710
    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    :goto_5
    if-eqz v0, :cond_7

    .line 1712
    iget-short v3, v0, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_6

    .line 1715
    iget-object v3, v0, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    iget-object v3, v3, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    iget-object v3, v3, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    .line 1716
    invoke-virtual {v3, v0}, Lorg/objectweb/asm/Label;->addSubroutineRetSuccessors(Lorg/objectweb/asm/Label;)V

    .line 1718
    :cond_6
    iget-object v0, v0, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_5

    .line 1726
    :cond_7
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstBasicBlock:Lorg/objectweb/asm/Label;

    .line 1727
    sget-object v3, Lorg/objectweb/asm/Label;->EMPTY_LIST:Lorg/objectweb/asm/Label;

    iput-object v3, v0, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    .line 1728
    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    .line 1729
    :cond_8
    sget-object v4, Lorg/objectweb/asm/Label;->EMPTY_LIST:Lorg/objectweb/asm/Label;

    if-eq v0, v4, :cond_d

    .line 1734
    iget-object v4, v0, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    .line 1736
    iget-short v5, v0, Lorg/objectweb/asm/Label;->inputStackSize:S

    .line 1737
    iget-short v6, v0, Lorg/objectweb/asm/Label;->outputStackMax:S

    add-int/2addr v6, v5

    if-le v6, v3, :cond_9

    move v3, v6

    .line 1744
    :cond_9
    iget-object v6, v0, Lorg/objectweb/asm/Label;->outgoingEdges:Lorg/objectweb/asm/Edge;

    .line 1745
    iget-short v0, v0, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_a

    .line 1750
    iget-object v6, v6, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    :cond_a
    move-object v0, v4

    :goto_6
    if-eqz v6, :cond_8

    .line 1753
    iget-object v4, v6, Lorg/objectweb/asm/Edge;->successor:Lorg/objectweb/asm/Label;

    .line 1754
    iget-object v7, v4, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    if-nez v7, :cond_c

    .line 1756
    iget v7, v6, Lorg/objectweb/asm/Edge;->info:I

    if-ne v7, v1, :cond_b

    move v7, v2

    goto :goto_7

    :cond_b
    iget v7, v6, Lorg/objectweb/asm/Edge;->info:I

    add-int/2addr v7, v5

    :goto_7
    int-to-short v7, v7

    iput-short v7, v4, Lorg/objectweb/asm/Label;->inputStackSize:S

    .line 1757
    iput-object v0, v4, Lorg/objectweb/asm/Label;->nextListElement:Lorg/objectweb/asm/Label;

    move-object v0, v4

    .line 1760
    :cond_c
    iget-object v6, v6, Lorg/objectweb/asm/Edge;->nextEdge:Lorg/objectweb/asm/Edge;

    goto :goto_6

    .line 1763
    :cond_d
    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    return-void
.end method

.method private endCurrentBasicBlockWithNoSuccessor()V
    .locals 4

    .line 1794
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 1795
    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    .line 1796
    new-instance v1, Lorg/objectweb/asm/Frame;

    invoke-direct {v1, v0}, Lorg/objectweb/asm/Frame;-><init>(Lorg/objectweb/asm/Label;)V

    iput-object v1, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    .line 1797
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {v0, v1, v3}, Lorg/objectweb/asm/Label;->resolve([BI)Z

    .line 1798
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    iput-object v0, v1, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    .line 1799
    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    .line 1800
    iput-object v2, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1802
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lorg/objectweb/asm/Label;->outputStackMax:S

    .line 1803
    iput-object v2, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    :cond_1
    :goto_0
    return-void
.end method

.method private putAbstractTypes(II)V
    .locals 3

    :goto_0
    if-ge p1, p2, :cond_0

    .line 1959
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-static {v0, v1, v2}, Lorg/objectweb/asm/Frame;->putAbstractType(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/ByteVector;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private putFrame()V
    .locals 16

    move-object/from16 v0, p0

    .line 1859
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v2, 0x1

    aget v3, v1, v2

    const/4 v4, 0x2

    .line 1860
    aget v1, v1, v4

    .line 1861
    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v4}, Lorg/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v4

    const/16 v5, 0x32

    const/4 v6, 0x0

    const/4 v7, 0x3

    if-ge v4, v5, :cond_0

    .line 1863
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v6

    invoke-virtual {v2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v3, v7

    .line 1864
    invoke-direct {v0, v7, v3}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1865
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v1, v3

    .line 1866
    invoke-direct {v0, v3, v1}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    return-void

    .line 1870
    :cond_0
    iget v4, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-nez v4, :cond_1

    .line 1871
    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v6

    goto :goto_0

    .line 1872
    :cond_1
    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v4, v4, v6

    iget-object v5, v0, Lorg/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v6

    sub-int/2addr v4, v5

    sub-int/2addr v4, v2

    .line 1873
    :goto_0
    iget-object v5, v0, Lorg/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v5, v5, v2

    sub-int v8, v3, v5

    const/16 v9, 0xfc

    const/16 v10, 0xf8

    const/16 v11, 0xf7

    const/16 v12, 0x40

    const/16 v13, 0xff

    const/16 v14, 0xfb

    if-nez v1, :cond_3

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    move v2, v9

    goto :goto_2

    :pswitch_1
    if-ge v4, v12, :cond_2

    move v2, v6

    goto :goto_2

    :cond_2
    move v2, v14

    goto :goto_2

    :pswitch_2
    move v2, v10

    goto :goto_2

    :cond_3
    if-nez v8, :cond_5

    if-ne v1, v2, :cond_5

    const/16 v2, 0x3f

    if-ge v4, v2, :cond_4

    move v2, v12

    goto :goto_2

    :cond_4
    move v2, v11

    goto :goto_2

    :cond_5
    :goto_1
    move v2, v13

    :goto_2
    if-eq v2, v13, :cond_7

    move v15, v7

    :goto_3
    if-ge v6, v5, :cond_7

    if-ge v6, v3, :cond_7

    .line 1905
    iget-object v7, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    aget v7, v7, v15

    iget-object v13, v0, Lorg/objectweb/asm/MethodWriter;->previousFrame:[I

    aget v13, v13, v15

    if-eq v7, v13, :cond_6

    const/16 v2, 0xff

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v6, v6, 0x1

    const/4 v7, 0x3

    const/16 v13, 0xff

    goto :goto_3

    :cond_7
    :goto_4
    if-eqz v2, :cond_d

    if-eq v2, v12, :cond_c

    if-eq v2, v11, :cond_b

    if-eq v2, v10, :cond_a

    if-eq v2, v14, :cond_9

    if-eq v2, v9, :cond_8

    .line 1942
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    const/16 v5, 0xff

    invoke-virtual {v2, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 v2, 0x3

    add-int/2addr v3, v2

    .line 1943
    invoke-direct {v0, v2, v3}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    .line 1944
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v2, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v1, v3

    .line 1945
    invoke-direct {v0, v3, v1}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    :cond_8
    const/4 v2, 0x3

    .line 1935
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v8, v14

    .line 1936
    invoke-virtual {v1, v8}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    .line 1937
    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/2addr v5, v2

    add-int/2addr v3, v2

    .line 1938
    invoke-direct {v0, v5, v3}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    .line 1927
    :cond_9
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v14}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_5

    .line 1930
    :cond_a
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v8, v14

    .line 1931
    invoke-virtual {v1, v8}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    .line 1932
    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_5

    .line 1921
    :cond_b
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    .line 1922
    invoke-virtual {v1, v11}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    .line 1923
    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 1924
    invoke-direct {v0, v1, v3}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    .line 1917
    :cond_c
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v4, v12

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v3, 0x3

    add-int/lit8 v3, v3, 0x4

    .line 1918
    invoke-direct {v0, v1, v3}, Lorg/objectweb/asm/MethodWriter;->putAbstractTypes(II)V

    goto :goto_5

    .line 1914
    :cond_d
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private putFrameType(Ljava/lang/Object;)V
    .locals 2

    .line 1974
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1975
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1976
    :cond_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1977
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    const/4 v1, 0x7

    .line 1978
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    check-cast p1, Ljava/lang/String;

    .line 1979
    invoke-virtual {v1, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    iget p1, p1, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1981
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0x8

    .line 1982
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    check-cast p1, Lorg/objectweb/asm/Label;

    iget p1, p1, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    .line 1983
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    :goto_0
    return-void
.end method

.method private visitSwitchInsn(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 4

    .line 1362
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    .line 1363
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    .line 1364
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/16 v1, 0xab

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2, v2}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    .line 1366
    invoke-direct {p0, v3, p1}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    .line 1367
    invoke-virtual {p1}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object p1

    iget-short v0, p1, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x2

    int-to-short v0, v0

    iput-short v0, p1, Lorg/objectweb/asm/Label;->flags:S

    .line 1368
    array-length p1, p2

    move v0, v3

    :goto_0
    if-ge v0, p1, :cond_1

    aget-object v1, p2, v0

    .line 1369
    invoke-direct {p0, v3, v1}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    .line 1370
    invoke-virtual {v1}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object v1

    iget-short v2, v1, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x2

    int-to-short v2, v2

    iput-short v2, v1, Lorg/objectweb/asm/Label;->flags:S

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne v1, v0, :cond_1

    .line 1374
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1376
    invoke-direct {p0, v1, p1}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    .line 1377
    array-length p1, p2

    :goto_1
    if-ge v3, p1, :cond_1

    aget-object v0, p2, v3

    .line 1378
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v1, v0}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1382
    :cond_1
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_2
    return-void
.end method


# virtual methods
.method canCopyMethodAttributes(Lorg/objectweb/asm/ClassReader;ZZIII)Z
    .locals 2

    .line 2026
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lorg/objectweb/asm/SymbolTable;->getSource()Lorg/objectweb/asm/ClassReader;

    move-result-object v0

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->descriptorIndex:I

    if-ne p4, v0, :cond_7

    iget p4, p0, Lorg/objectweb/asm/MethodWriter;->signatureIndex:I

    if-ne p5, p4, :cond_7

    iget p4, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    const/high16 p5, 0x20000

    and-int/2addr p4, p5

    const/4 p5, 0x1

    if-eqz p4, :cond_0

    move p4, p5

    goto :goto_0

    :cond_0
    move p4, v1

    :goto_0
    if-eq p3, p4, :cond_1

    goto :goto_3

    .line 2032
    :cond_1
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 2033
    invoke-virtual {p3}, Lorg/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result p3

    const/16 p4, 0x31

    if-ge p3, p4, :cond_2

    iget p3, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/lit16 p3, p3, 0x1000

    if-eqz p3, :cond_2

    move p3, p5

    goto :goto_1

    :cond_2
    move p3, v1

    :goto_1
    if-eq p2, p3, :cond_3

    return v1

    :cond_3
    if-nez p6, :cond_4

    .line 2038
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-eqz p1, :cond_6

    return v1

    .line 2041
    :cond_4
    invoke-virtual {p1, p6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p2

    iget p3, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-ne p2, p3, :cond_6

    add-int/lit8 p6, p6, 0x2

    move p2, v1

    .line 2043
    :goto_2
    iget p3, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-ge p2, p3, :cond_6

    .line 2044
    invoke-virtual {p1, p6}, Lorg/objectweb/asm/ClassReader;->readUnsignedShort(I)I

    move-result p3

    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    aget p4, p4, p2

    if-eq p3, p4, :cond_5

    return v1

    :cond_5
    add-int/lit8 p6, p6, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    return p5

    :cond_7
    :goto_3
    return v1
.end method

.method final collectAttributePrototypes(Lorg/objectweb/asm/Attribute$Set;)V
    .locals 1

    .line 2390
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Attribute$Set;->addAttributes(Lorg/objectweb/asm/Attribute;)V

    .line 2391
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Attribute$Set;->addAttributes(Lorg/objectweb/asm/Attribute;)V

    return-void
.end method

.method computeMethodInfoSize()I
    .locals 8

    .line 2077
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->sourceOffset:I

    if-eqz v0, :cond_0

    .line 2079
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->sourceLength:I

    add-int/lit8 v0, v0, 0x6

    return v0

    .line 2084
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    const/16 v1, 0x8

    if-lez v0, :cond_a

    .line 2085
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    const v2, 0xffff

    if-gt v0, v2, :cond_9

    .line 2089
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v2, "Code"

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2092
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    invoke-static {v2}, Lorg/objectweb/asm/Handler;->getExceptionTableSize(Lorg/objectweb/asm/Handler;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/2addr v0, v1

    .line 2093
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_3

    .line 2094
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lorg/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v2

    const/16 v3, 0x32

    if-lt v2, v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 2095
    :goto_0
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    if-eqz v2, :cond_2

    const-string v2, "StackMapTable"

    goto :goto_1

    :cond_2
    const-string v2, "StackMap"

    :goto_1
    invoke-virtual {v3, v2}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2097
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2099
    :cond_3
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_4

    .line 2100
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v3, "LineNumberTable"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2102
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2104
    :cond_4
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_5

    .line 2105
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v3, "LocalVariableTable"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2107
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2109
    :cond_5
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v2, :cond_6

    .line 2110
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v3, "LocalVariableTypeTable"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2112
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2114
    :cond_6
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_7

    .line 2115
    const-string v3, "RuntimeVisibleTypeAnnotations"

    .line 2116
    invoke-virtual {v2, v3}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2119
    :cond_7
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v2, :cond_8

    .line 2120
    const-string v3, "RuntimeInvisibleTypeAnnotations"

    .line 2121
    invoke-virtual {v2, v3}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2124
    :cond_8
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v2, :cond_b

    .line 2125
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v4, v4, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v5, v5, Lorg/objectweb/asm/ByteVector;->length:I

    iget v6, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    iget v7, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    .line 2126
    invoke-virtual/range {v2 .. v7}, Lorg/objectweb/asm/Attribute;->computeAttributesSize(Lorg/objectweb/asm/SymbolTable;[BIII)I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_2

    .line 2086
    :cond_9
    new-instance v0, Lorg/objectweb/asm/MethodTooLargeException;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 2087
    invoke-virtual {v1}, Lorg/objectweb/asm/SymbolTable;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->name:Ljava/lang/String;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/objectweb/asm/MethodTooLargeException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    throw v0

    :cond_a
    move v0, v1

    .line 2130
    :cond_b
    :goto_2
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v2, :cond_c

    .line 2131
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v3, "Exceptions"

    invoke-virtual {v2, v3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2132
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 2134
    :cond_c
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->signatureIndex:I

    invoke-static {v1, v2, v3}, Lorg/objectweb/asm/Attribute;->computeAttributesSize(Lorg/objectweb/asm/SymbolTable;II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2135
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 2136
    invoke-static {v1, v2, v3, v4}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2141
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_e

    .line 2146
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v2, :cond_d

    .line 2147
    array-length v2, v1

    .line 2143
    :cond_d
    const-string v3, "RuntimeVisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lorg/objectweb/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lorg/objectweb/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2150
    :cond_e
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v1, :cond_10

    .line 2155
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v2, :cond_f

    .line 2156
    array-length v2, v1

    .line 2152
    :cond_f
    const-string v3, "RuntimeInvisibleParameterAnnotations"

    invoke-static {v3, v1, v2}, Lorg/objectweb/asm/AnnotationWriter;->computeParameterAnnotationsSize(Ljava/lang/String;[Lorg/objectweb/asm/AnnotationWriter;I)I

    move-result v1

    add-int/2addr v0, v1

    .line 2159
    :cond_10
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_11

    .line 2160
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v2, "AnnotationDefault"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2161
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x6

    add-int/2addr v0, v1

    .line 2163
    :cond_11
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_12

    .line 2164
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v2, "MethodParameters"

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    .line 2166
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    .line 2168
    :cond_12
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v1, :cond_13

    .line 2169
    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/Attribute;->computeAttributesSize(Lorg/objectweb/asm/SymbolTable;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_13
    return v0
.end method

.method hasAsmInstructions()Z
    .locals 1

    .line 633
    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    return v0
.end method

.method hasFrames()Z
    .locals 1

    .line 629
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method putMethodInfo(Lorg/objectweb/asm/ByteVector;)V
    .locals 13

    .line 2181
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lorg/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x31

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    const/16 v1, 0x1000

    goto :goto_1

    :cond_1
    move v1, v2

    .line 2183
    :goto_1
    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    not-int v1, v1

    and-int/2addr v1, v4

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->nameIndex:I

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->descriptorIndex:I

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 2185
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->sourceOffset:I

    if-eqz v1, :cond_2

    .line 2186
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lorg/objectweb/asm/SymbolTable;->getSource()Lorg/objectweb/asm/ClassReader;

    move-result-object v0

    iget-object v0, v0, Lorg/objectweb/asm/ClassReader;->classFileBuffer:[B

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->sourceOffset:I

    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->sourceLength:I

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    return-void

    .line 2191
    :cond_2
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    if-lez v1, :cond_3

    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v2

    .line 2194
    :goto_2
    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v4, :cond_4

    add-int/lit8 v1, v1, 0x1

    .line 2197
    :cond_4
    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    and-int/lit16 v5, v4, 0x1000

    if-eqz v5, :cond_5

    if-eqz v0, :cond_5

    add-int/lit8 v1, v1, 0x1

    .line 2200
    :cond_5
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->signatureIndex:I

    if-eqz v0, :cond_6

    add-int/lit8 v1, v1, 0x1

    :cond_6
    const/high16 v0, 0x20000

    and-int/2addr v0, v4

    if-eqz v0, :cond_7

    add-int/lit8 v1, v1, 0x1

    .line 2206
    :cond_7
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_8

    add-int/lit8 v1, v1, 0x1

    .line 2209
    :cond_8
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_9

    add-int/lit8 v1, v1, 0x1

    .line 2212
    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_a

    add-int/lit8 v1, v1, 0x1

    .line 2215
    :cond_a
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_b

    add-int/lit8 v1, v1, 0x1

    .line 2218
    :cond_b
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_c

    add-int/lit8 v1, v1, 0x1

    .line 2221
    :cond_c
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_d

    add-int/lit8 v1, v1, 0x1

    .line 2224
    :cond_d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_e

    add-int/lit8 v1, v1, 0x1

    .line 2227
    :cond_e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_f

    add-int/lit8 v1, v1, 0x1

    .line 2230
    :cond_f
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_10

    .line 2231
    invoke-virtual {v0}, Lorg/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v0

    add-int/2addr v1, v0

    .line 2234
    :cond_10
    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 2235
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    if-lez v0, :cond_20

    .line 2238
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v0, v0, 0xa

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    invoke-static {v1}, Lorg/objectweb/asm/Handler;->getExceptionTableSize(Lorg/objectweb/asm/Handler;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2240
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    if-eqz v1, :cond_11

    .line 2242
    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    move v1, v3

    goto :goto_3

    :cond_11
    move v1, v2

    .line 2245
    :goto_3
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v4, :cond_12

    .line 2247
    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2250
    :cond_12
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v4, :cond_13

    .line 2252
    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2255
    :cond_13
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v4, :cond_14

    .line 2257
    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v4, v4, 0x8

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2260
    :cond_14
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    const-string v5, "RuntimeVisibleTypeAnnotations"

    if-eqz v4, :cond_15

    .line 2262
    invoke-virtual {v4, v5}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2266
    :cond_15
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    const-string v6, "RuntimeInvisibleTypeAnnotations"

    if-eqz v4, :cond_16

    .line 2268
    invoke-virtual {v4, v6}, Lorg/objectweb/asm/AnnotationWriter;->computeAnnotationsSize(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v1, v1, 0x1

    .line 2272
    :cond_16
    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v7, :cond_17

    .line 2273
    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v9, v4, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v10, v4, Lorg/objectweb/asm/ByteVector;->length:I

    iget v11, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    iget v12, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    .line 2274
    invoke-virtual/range {v7 .. v12}, Lorg/objectweb/asm/Attribute;->computeAttributesSize(Lorg/objectweb/asm/SymbolTable;[BIII)I

    move-result v4

    add-int/2addr v0, v4

    .line 2276
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    invoke-virtual {v4}, Lorg/objectweb/asm/Attribute;->getAttributeCount()I

    move-result v4

    add-int/2addr v1, v4

    .line 2278
    :cond_17
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v7, "Code"

    .line 2279
    invoke-virtual {v4, v7}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v4

    .line 2280
    invoke-virtual {v4, v0}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    .line 2281
    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    .line 2282
    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2283
    invoke-virtual {v0, v4}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v4, v4, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v7, v7, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2284
    invoke-virtual {v0, v4, v2, v7}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2285
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    invoke-static {v0, p1}, Lorg/objectweb/asm/Handler;->putExceptionTable(Lorg/objectweb/asm/Handler;Lorg/objectweb/asm/ByteVector;)V

    .line 2286
    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 2287
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1a

    .line 2288
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0}, Lorg/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_18

    move v0, v3

    goto :goto_4

    :cond_18
    move v0, v2

    .line 2289
    :goto_4
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    if-eqz v0, :cond_19

    .line 2292
    const-string v0, "StackMapTable"

    goto :goto_5

    :cond_19
    const-string v0, "StackMap"

    .line 2291
    :goto_5
    invoke-virtual {v1, v0}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    .line 2290
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    .line 2293
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 2294
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2295
    invoke-virtual {v0, v1, v2, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2297
    :cond_1a
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1b

    .line 2298
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "LineNumberTable"

    .line 2299
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    .line 2300
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    .line 2301
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2302
    invoke-virtual {v0, v1, v2, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2304
    :cond_1b
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1c

    .line 2305
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "LocalVariableTable"

    .line 2306
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    .line 2307
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTableLength:I

    .line 2308
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2309
    invoke-virtual {v0, v1, v2, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2311
    :cond_1c
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_1d

    .line 2312
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "LocalVariableTypeTable"

    .line 2313
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/lit8 v1, v1, 0x2

    .line 2314
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 2315
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2316
    invoke-virtual {v0, v1, v2, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2318
    :cond_1d
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1e

    .line 2319
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 2320
    invoke-virtual {v1, v5}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 2319
    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/AnnotationWriter;->putAnnotations(ILorg/objectweb/asm/ByteVector;)V

    .line 2322
    :cond_1e
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_1f

    .line 2323
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 2324
    invoke-virtual {v1, v6}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v1

    .line 2323
    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/AnnotationWriter;->putAnnotations(ILorg/objectweb/asm/ByteVector;)V

    .line 2326
    :cond_1f
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v4, :cond_20

    .line 2327
    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v6, v0, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v7, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iget v8, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    iget v9, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    move-object v10, p1

    invoke-virtual/range {v4 .. v10}, Lorg/objectweb/asm/Attribute;->putAttributes(Lorg/objectweb/asm/SymbolTable;[BIIILorg/objectweb/asm/ByteVector;)V

    .line 2331
    :cond_20
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    if-lez v0, :cond_21

    .line 2332
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "Exceptions"

    .line 2333
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 2334
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->numberOfExceptions:I

    .line 2335
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 2336
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->exceptionIndexTable:[I

    array-length v1, v0

    move v4, v2

    :goto_6
    if-ge v4, v1, :cond_21

    aget v5, v0, v4

    .line 2337
    invoke-virtual {p1, v5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 2340
    :cond_21
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->signatureIndex:I

    invoke-static {v0, v1, v4, p1}, Lorg/objectweb/asm/Attribute;->putAttributes(Lorg/objectweb/asm/SymbolTable;IILorg/objectweb/asm/ByteVector;)V

    .line 2341
    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v6, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v7, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    iget-object v9, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lorg/objectweb/asm/AnnotationWriter;->putAnnotations(Lorg/objectweb/asm/SymbolTable;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/AnnotationWriter;Lorg/objectweb/asm/ByteVector;)V

    .line 2348
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_23

    .line 2349
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "RuntimeVisibleParameterAnnotations"

    .line 2350
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    .line 2352
    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    if-nez v4, :cond_22

    .line 2353
    array-length v4, v1

    .line 2349
    :cond_22
    invoke-static {v0, v1, v4, p1}, Lorg/objectweb/asm/AnnotationWriter;->putParameterAnnotations(I[Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V

    .line 2357
    :cond_23
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-eqz v0, :cond_25

    .line 2358
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "RuntimeInvisibleParameterAnnotations"

    .line 2359
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    .line 2361
    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    if-nez v4, :cond_24

    .line 2362
    array-length v4, v1

    .line 2358
    :cond_24
    invoke-static {v0, v1, v4, p1}, Lorg/objectweb/asm/AnnotationWriter;->putParameterAnnotations(I[Lorg/objectweb/asm/AnnotationWriter;ILorg/objectweb/asm/ByteVector;)V

    .line 2366
    :cond_25
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_26

    .line 2367
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "AnnotationDefault"

    .line 2368
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2369
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    iget v4, v4, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2370
    invoke-virtual {v0, v1, v2, v4}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2372
    :cond_26
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    if-eqz v0, :cond_27

    .line 2373
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    const-string v1, "MethodParameters"

    .line 2374
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    add-int/2addr v1, v3

    .line 2375
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->parametersCount:I

    .line 2376
    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    iget v3, v3, Lorg/objectweb/asm/ByteVector;->length:I

    .line 2377
    invoke-virtual {v0, v1, v2, v3}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 2379
    :cond_27
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    if-eqz v0, :cond_28

    .line 2380
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/Attribute;->putAttributes(Lorg/objectweb/asm/SymbolTable;Lorg/objectweb/asm/ByteVector;)V

    :cond_28
    return-void
.end method

.method setMethodAttributesSource(II)V
    .locals 0

    add-int/lit8 p1, p1, 0x6

    .line 2065
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->sourceOffset:I

    add-int/lit8 p2, p2, -0x6

    .line 2066
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->sourceLength:I

    return-void
.end method

.method visitAbstractType(II)V
    .locals 1

    .line 1837
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    aput p2, v0, p1

    return-void
.end method

.method public visitAnnotableParameterCount(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 683
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->visibleAnnotableParameterCount:I

    goto :goto_0

    .line 685
    :cond_0
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->invisibleAnnotableParameterCount:I

    :goto_0
    return-void
.end method

.method public visitAnnotation(Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    if-eqz p2, :cond_0

    .line 658
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 659
    invoke-static {p2, p1, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 661
    :cond_0
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 662
    invoke-static {p2, p1, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitAnnotationDefault()Lorg/objectweb/asm/AnnotationVisitor;
    .locals 5

    .line 651
    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    .line 652
    new-instance v0, Lorg/objectweb/asm/AnnotationWriter;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->defaultValue:Lorg/objectweb/asm/ByteVector;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/SymbolTable;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/AnnotationWriter;)V

    return-object v0
.end method

.method public visitAttribute(Lorg/objectweb/asm/Attribute;)V
    .locals 1

    .line 716
    invoke-virtual {p1}, Lorg/objectweb/asm/Attribute;->isCodeAttribute()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 718
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->firstCodeAttribute:Lorg/objectweb/asm/Attribute;

    goto :goto_0

    .line 720
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    iput-object v0, p1, Lorg/objectweb/asm/Attribute;->nextAttribute:Lorg/objectweb/asm/Attribute;

    .line 721
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->firstAttribute:Lorg/objectweb/asm/Attribute;

    :goto_0
    return-void
.end method

.method public visitCode()V
    .locals 0

    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 992
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 994
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantFieldref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p2

    .line 995
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, p2, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {p3, p1, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    .line 997
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz p3, :cond_a

    .line 998
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_3

    .line 1002
    :cond_0
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/4 p3, 0x1

    const/4 p4, -0x2

    const/16 v0, 0x4a

    const/16 v1, 0x44

    packed-switch p1, :pswitch_data_0

    .line 1015
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_7

    if-ne p2, v0, :cond_4

    goto :goto_1

    .line 1011
    :pswitch_0
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_1

    if-ne p2, v0, :cond_2

    :cond_1
    move v2, p3

    :cond_2
    add-int/2addr p1, v2

    goto :goto_2

    .line 1008
    :pswitch_1
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_4

    if-ne p2, v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p4, -0x1

    :cond_4
    :goto_0
    add-int/2addr p1, p4

    goto :goto_2

    .line 1005
    :pswitch_2
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eq p2, v1, :cond_5

    if-ne p2, v0, :cond_6

    :cond_5
    const/4 p3, 0x2

    :cond_6
    add-int/2addr p1, p3

    goto :goto_2

    :cond_7
    :goto_1
    const/4 p4, -0x3

    goto :goto_0

    .line 1018
    :goto_2
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_8

    .line 1019
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1021
    :cond_8
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 999
    :cond_9
    :goto_3
    iget-object p3, p3, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p3, p1, v2, p2, p4}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_a
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0xb2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move v3, p2

    move/from16 v7, p4

    .line 737
    iget v2, v0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v4, 0x4

    if-ne v2, v4, :cond_0

    return-void

    :cond_0
    const/4 v5, -0x1

    const/4 v8, 0x2

    const/4 v6, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-ne v2, v6, :cond_3

    .line 742
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v2, v2, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    if-nez v2, :cond_1

    .line 746
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    new-instance v2, Lorg/objectweb/asm/CurrentFrame;

    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    invoke-direct {v2, v4}, Lorg/objectweb/asm/CurrentFrame;-><init>(Lorg/objectweb/asm/Label;)V

    iput-object v2, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    .line 747
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget v4, v0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v5, v0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v1, v2, v4, v5, p2}, Lorg/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lorg/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 749
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v1, p0}, Lorg/objectweb/asm/Frame;->accept(Lorg/objectweb/asm/MethodWriter;)V

    goto/16 :goto_8

    :cond_1
    if-ne v1, v5, :cond_2

    .line 752
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    move v3, p2

    move-object v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lorg/objectweb/asm/Frame;->setInputFrameFromApiFormat(Lorg/objectweb/asm/SymbolTable;I[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 758
    :cond_2
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v1, v1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v1, p0}, Lorg/objectweb/asm/Frame;->accept(Lorg/objectweb/asm/MethodWriter;)V

    goto/16 :goto_8

    :cond_3
    if-ne v1, v5, :cond_7

    .line 761
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->previousFrame:[I

    if-nez v1, :cond_4

    .line 762
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-static {v1}, Lorg/objectweb/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v1

    shr-int/2addr v1, v8

    .line 763
    new-instance v2, Lorg/objectweb/asm/Frame;

    new-instance v4, Lorg/objectweb/asm/Label;

    invoke-direct {v4}, Lorg/objectweb/asm/Label;-><init>()V

    invoke-direct {v2, v4}, Lorg/objectweb/asm/Frame;-><init>(Lorg/objectweb/asm/Label;)V

    .line 764
    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget v5, v0, Lorg/objectweb/asm/MethodWriter;->accessFlags:I

    iget-object v6, v0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    invoke-virtual {v2, v4, v5, v6, v1}, Lorg/objectweb/asm/Frame;->setInputFrameFromDescriptor(Lorg/objectweb/asm/SymbolTable;ILjava/lang/String;I)V

    .line 766
    invoke-virtual {v2, p0}, Lorg/objectweb/asm/Frame;->accept(Lorg/objectweb/asm/MethodWriter;)V

    .line 768
    :cond_4
    iput v3, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    .line 769
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p0, v1, p2, v7}, Lorg/objectweb/asm/MethodWriter;->visitFrameStart(III)I

    move-result v1

    move v2, v9

    :goto_0
    if-ge v2, v3, :cond_5

    .line 771
    iget-object v4, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v5, v1, 0x1

    iget-object v6, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    aget-object v11, p3, v2

    invoke-static {v6, v11}, Lorg/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lorg/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v6

    aput v6, v4, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_0

    :cond_5
    move v2, v9

    :goto_1
    if-ge v2, v7, :cond_6

    .line 774
    iget-object v3, v0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v5, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    aget-object v6, p5, v2

    invoke-static {v5, v6}, Lorg/objectweb/asm/Frame;->getAbstractTypeFromApiFormat(Lorg/objectweb/asm/SymbolTable;Ljava/lang/Object;)I

    move-result v5

    aput v5, v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_1

    .line 776
    :cond_6
    invoke-virtual {p0}, Lorg/objectweb/asm/MethodWriter;->visitFrameEnd()V

    goto/16 :goto_8

    .line 778
    :cond_7
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v2}, Lorg/objectweb/asm/SymbolTable;->getMajorVersion()I

    move-result v2

    const/16 v5, 0x32

    if-lt v2, v5, :cond_18

    .line 782
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    if-nez v2, :cond_8

    .line 783
    new-instance v2, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v2}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v2, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    .line 784
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    goto :goto_2

    .line 786
    :cond_8
    iget-object v2, v0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    iget v5, v0, Lorg/objectweb/asm/MethodWriter;->previousFrameOffset:I

    sub-int/2addr v2, v5

    sub-int/2addr v2, v10

    if-gez v2, :cond_a

    if-ne v1, v6, :cond_9

    return-void

    .line 791
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    :cond_a
    :goto_2
    if-eqz v1, :cond_11

    if-eq v1, v10, :cond_10

    const/16 v5, 0xfb

    if-eq v1, v8, :cond_f

    const/16 v3, 0x40

    if-eq v1, v6, :cond_d

    if-ne v1, v4, :cond_c

    if-ge v2, v3, :cond_b

    .line 828
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_3

    .line 830
    :cond_b
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    const/16 v3, 0xf7

    .line 831
    invoke-virtual {v1, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    .line 832
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 834
    :goto_3
    aget-object v1, p5, v9

    invoke-direct {p0, v1}, Lorg/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    goto/16 :goto_7

    .line 837
    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_d
    if-ge v2, v3, :cond_e

    .line 821
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_7

    .line 823
    :cond_e
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_7

    .line 816
    :cond_f
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    sub-int/2addr v1, v3

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    .line 817
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    sub-int/2addr v5, v3

    invoke-virtual {v1, v5}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_7

    .line 809
    :cond_10
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    add-int/2addr v1, v3

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    .line 810
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    add-int/lit16 v4, v3, 0xfb

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v1, v9

    :goto_4
    if-ge v1, v3, :cond_13

    .line 812
    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lorg/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 798
    :cond_11
    iput v3, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    .line 799
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    const/16 v4, 0xff

    invoke-virtual {v1, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    invoke-virtual {v1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v1, v9

    :goto_5
    if-ge v1, v3, :cond_12

    .line 801
    aget-object v2, p3, v1

    invoke-direct {p0, v2}, Lorg/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 803
    :cond_12
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v1, v7}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move v1, v9

    :goto_6
    if-ge v1, v7, :cond_13

    .line 805
    aget-object v2, p5, v1

    invoke-direct {p0, v2}, Lorg/objectweb/asm/MethodWriter;->putFrameType(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 840
    :cond_13
    :goto_7
    iget-object v1, v0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->previousFrameOffset:I

    .line 841
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 844
    :goto_8
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->compute:I

    if-ne v1, v8, :cond_17

    .line 845
    iput v7, v0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    :goto_9
    if-ge v9, v7, :cond_16

    .line 847
    aget-object v1, p5, v9

    sget-object v2, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v1, v2, :cond_14

    aget-object v1, p5, v9

    sget-object v2, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v1, v2, :cond_15

    .line 848
    :cond_14
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v1, v10

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    :cond_15
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 851
    :cond_16
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    iget v2, v0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v1, v2, :cond_17

    .line 852
    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 856
    :cond_17
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    .line 857
    iget v1, v0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    iget v2, v0, Lorg/objectweb/asm/MethodWriter;->currentLocals:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    return-void

    .line 779
    :cond_18
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class versions V1_5 or less must use F_NEW frames."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method visitFrameEnd()V
    .locals 1

    .line 1846
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->previousFrame:[I

    if-eqz v0, :cond_1

    .line 1847
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1848
    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableEntries:Lorg/objectweb/asm/ByteVector;

    .line 1850
    :cond_0
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->putFrame()V

    .line 1851
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->stackMapTableNumberOfEntries:I

    .line 1853
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->previousFrame:[I

    const/4 v0, 0x0

    .line 1854
    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    return-void
.end method

.method visitFrameStart(III)I
    .locals 2

    add-int/lit8 v0, p2, 0x3

    add-int/2addr v0, p3

    .line 1821
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    .line 1822
    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    .line 1824
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentFrame:[I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    .line 1825
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 1826
    aput p3, v0, p1

    const/4 p1, 0x3

    return p1
.end method

.method public visitIincInsn(II)V
    .locals 3

    .line 1311
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xff

    const/16 v1, 0x84

    if-gt p1, v0, :cond_1

    const/16 v0, 0x7f

    if-gt p2, v0, :cond_1

    const/16 v0, -0x80

    if-ge p2, v0, :cond_0

    goto :goto_0

    .line 1316
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    .line 1314
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v2, 0xc4

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 1319
    :goto_1
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz p2, :cond_3

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 1321
    :cond_2
    iget-object p2, p2, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/4 v0, 0x0

    invoke-virtual {p2, v1, p1, v0, v0}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    .line 1323
    :cond_3
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    if-eqz p2, :cond_4

    add-int/lit8 p1, p1, 0x1

    .line 1325
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    if-le p1, p2, :cond_4

    .line 1326
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_4
    return-void
.end method

.method public visitInsn(I)V
    .locals 3

    .line 862
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 864
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    .line 866
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_5

    .line 867
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 870
    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v1, Lorg/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v1, v1, p1

    add-int/2addr v0, v1

    .line 871
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v1, :cond_1

    .line 872
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 874
    :cond_1
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 868
    :cond_2
    :goto_0
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2, v2}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :goto_1
    const/16 v0, 0xac

    if-lt p1, v0, :cond_3

    const/16 v0, 0xb1

    if-le p1, v0, :cond_4

    :cond_3
    const/16 v0, 0xbf

    if-ne p1, v0, :cond_5

    .line 877
    :cond_4
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_5
    return-void
.end method

.method public visitInsnAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    const v0, -0xffff01

    if-eqz p4, :cond_0

    .line 1408
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    and-int/2addr p1, v0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 1409
    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 1416
    :cond_0
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    and-int/2addr p1, v0

    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 1417
    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitIntInsn(II)V
    .locals 3

    .line 884
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0x11

    if-ne p1, v0, :cond_0

    .line 887
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    .line 889
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1, p2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    .line 892
    :goto_0
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_4

    .line 893
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    const/16 p2, 0xbc

    if-eq p1, p2, :cond_4

    .line 897
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    .line 898
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_2

    .line 899
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 901
    :cond_2
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_2

    .line 894
    :cond_3
    :goto_1
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 2

    .line 1069
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1071
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 1072
    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantInvokeDynamic(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    .line 1074
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget p3, p1, Lorg/objectweb/asm/Symbol;->index:I

    const/16 p4, 0xba

    invoke-virtual {p2, p4, p3}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    .line 1075
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 1077
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz p2, :cond_3

    .line 1078
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p1

    and-int/lit8 p2, p1, 0x3

    shr-int/lit8 p1, p1, 0x2

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 1083
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p2

    .line 1084
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_1

    .line 1085
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1087
    :cond_1
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1079
    :cond_2
    :goto_0
    iget-object p2, p2, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p4, p3, p1, v0}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 10

    .line 1094
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xc8

    if-lt p1, v0, :cond_0

    add-int/lit8 v1, p1, -0x21

    goto :goto_0

    :cond_0
    move v1, p1

    .line 1100
    :goto_0
    iget-short v2, p2, Lorg/objectweb/asm/Label;->flags:S

    const/4 v3, 0x4

    and-int/2addr v2, v3

    const/16 v4, 0xa8

    const/16 v5, 0xa7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_4

    iget v2, p2, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v8, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v8, v8, Lorg/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v2, v8

    const/16 v8, -0x8000

    if-ge v2, v8, :cond_4

    if-ne v1, v5, :cond_1

    .line 1107
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_1
    if-ne v1, v4, :cond_2

    .line 1109
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v0, 0xc9

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    :goto_1
    move p1, v6

    goto :goto_3

    .line 1114
    :cond_2
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v0, 0xc6

    if-lt v1, v0, :cond_3

    xor-int/lit8 v0, v1, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    xor-int/2addr v0, v7

    sub-int/2addr v0, v7

    :goto_2
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    .line 1115
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 1122
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v0, 0xdc

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    .line 1123
    iput-boolean v7, p0, Lorg/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    move p1, v7

    .line 1127
    :goto_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v2, v0, Lorg/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v2, v7

    invoke-virtual {p2, v0, v2, v7}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    goto :goto_5

    :cond_4
    if-eq v1, p1, :cond_5

    .line 1131
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    .line 1132
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, p1, Lorg/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v7}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    goto :goto_4

    .line 1137
    :cond_5
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    .line 1138
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, p1, Lorg/objectweb/asm/ByteVector;->length:I

    sub-int/2addr v0, v7

    invoke-virtual {p2, p1, v0, v6}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    :goto_4
    move p1, v6

    .line 1142
    :goto_5
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_e

    .line 1144
    iget v2, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v8, 0x2

    const/4 v9, 0x0

    if-ne v2, v3, :cond_6

    .line 1145
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {v0, v1, v6, v9, v9}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    .line 1147
    invoke-virtual {p2}, Lorg/objectweb/asm/Label;->getCanonicalInstance()Lorg/objectweb/asm/Label;

    move-result-object v0

    iget-short v2, v0, Lorg/objectweb/asm/Label;->flags:S

    or-int/2addr v2, v8

    int-to-short v2, v2

    iput-short v2, v0, Lorg/objectweb/asm/Label;->flags:S

    .line 1149
    invoke-direct {p0, v6, p2}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    if-eq v1, v5, :cond_b

    .line 1154
    new-instance v9, Lorg/objectweb/asm/Label;

    invoke-direct {v9}, Lorg/objectweb/asm/Label;-><init>()V

    goto :goto_6

    :cond_6
    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    .line 1157
    iget-object p2, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    invoke-virtual {p2, v1, v6, v9, v9}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    goto :goto_6

    :cond_7
    if-ne v2, v8, :cond_8

    .line 1160
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v0, Lorg/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v0, v0, v1

    add-int/2addr p2, v0

    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_6

    :cond_8
    if-ne v1, v4, :cond_a

    .line 1164
    iget-short v0, p2, Lorg/objectweb/asm/Label;->flags:S

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_9

    .line 1165
    iget-short v0, p2, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x20

    int-to-short v0, v0

    iput-short v0, p2, Lorg/objectweb/asm/Label;->flags:S

    .line 1166
    iput-boolean v7, p0, Lorg/objectweb/asm/MethodWriter;->hasSubroutines:Z

    .line 1168
    :cond_9
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-short v2, v0, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v2, v2, 0x10

    int-to-short v2, v2

    iput-short v2, v0, Lorg/objectweb/asm/Label;->flags:S

    .line 1175
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr v0, v7

    invoke-direct {p0, v0, p2}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    .line 1177
    new-instance v9, Lorg/objectweb/asm/Label;

    invoke-direct {v9}, Lorg/objectweb/asm/Label;-><init>()V

    goto :goto_6

    .line 1180
    :cond_a
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v2, Lorg/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1181
    invoke-direct {p0, v0, p2}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    :cond_b
    :goto_6
    if-eqz v9, :cond_d

    if-eqz p1, :cond_c

    .line 1188
    iget-short p1, v9, Lorg/objectweb/asm/Label;->flags:S

    or-int/2addr p1, v8

    int-to-short p1, p1

    iput-short p1, v9, Lorg/objectweb/asm/Label;->flags:S

    .line 1190
    :cond_c
    invoke-virtual {p0, v9}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_d
    if-ne v1, v5, :cond_e

    .line 1193
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    :cond_e
    return-void
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 5

    .line 1201
    iget-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget-object v1, v1, Lorg/objectweb/asm/ByteVector;->data:[B

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v2, v2, Lorg/objectweb/asm/ByteVector;->length:I

    invoke-virtual {p1, v1, v2}, Lorg/objectweb/asm/Label;->resolve([BI)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/objectweb/asm/MethodWriter;->hasAsmInstructions:Z

    .line 1204
    iget-short v0, p1, Lorg/objectweb/asm/Label;->flags:S

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return-void

    .line 1207
    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v2, :cond_5

    .line 1208
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    .line 1209
    iget v0, p1, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_1

    .line 1214
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-short v1, v0, Lorg/objectweb/asm/Label;->flags:S

    iget-short v2, p1, Lorg/objectweb/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/objectweb/asm/Label;->flags:S

    .line 1218
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    return-void

    .line 1224
    :cond_1
    invoke-direct {p0, v3, p1}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    .line 1227
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_4

    .line 1228
    iget v0, p1, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    iget v1, v1, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    if-ne v0, v1, :cond_3

    .line 1230
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    iget-short v1, v0, Lorg/objectweb/asm/Label;->flags:S

    iget-short v2, p1, Lorg/objectweb/asm/Label;->flags:S

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-short v1, v1

    iput-short v1, v0, Lorg/objectweb/asm/Label;->flags:S

    .line 1232
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    .line 1233
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    return-void

    .line 1236
    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    iput-object p1, v0, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    .line 1238
    :cond_4
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    .line 1240
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    .line 1242
    new-instance v0, Lorg/objectweb/asm/Frame;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/Frame;-><init>(Lorg/objectweb/asm/Label;)V

    iput-object v0, p1, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    goto :goto_0

    :cond_5
    const/4 v2, 0x3

    if-ne v0, v2, :cond_7

    .line 1244
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-nez v0, :cond_6

    .line 1247
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_0

    .line 1250
    :cond_6
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iput-object p1, v0, Lorg/objectweb/asm/Frame;->owner:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_7
    if-ne v0, v1, :cond_a

    .line 1253
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_8

    .line 1255
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    int-to-short v1, v1

    iput-short v1, v0, Lorg/objectweb/asm/Label;->outputStackMax:S

    .line 1256
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/MethodWriter;->addSuccessorToCurrentBasicBlock(ILorg/objectweb/asm/Label;)V

    .line 1259
    :cond_8
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    .line 1260
    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    .line 1261
    iput v3, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1263
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_9

    .line 1264
    iput-object p1, v0, Lorg/objectweb/asm/Label;->nextBasicBlock:Lorg/objectweb/asm/Label;

    .line 1266
    :cond_9
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastBasicBlock:Lorg/objectweb/asm/Label;

    goto :goto_0

    :cond_a
    if-ne v0, v4, :cond_b

    .line 1267
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-nez v0, :cond_b

    .line 1271
    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    :cond_b
    :goto_0
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 7

    .line 1277
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1279
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstant(Ljava/lang/Object;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    .line 1280
    iget v0, p1, Lorg/objectweb/asm/Symbol;->index:I

    .line 1282
    iget v1, p1, Lorg/objectweb/asm/Symbol;->tag:I

    const/4 v2, 0x5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_1

    iget v1, p1, Lorg/objectweb/asm/Symbol;->tag:I

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    iget v1, p1, Lorg/objectweb/asm/Symbol;->tag:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_0

    iget-object v1, p1, Lorg/objectweb/asm/Symbol;->value:Ljava/lang/String;

    .line 1286
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x44

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    const/16 v2, 0x12

    if-eqz v1, :cond_2

    .line 1289
    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v6, 0x14

    invoke-virtual {v5, v6, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    :cond_2
    const/16 v5, 0x100

    if-lt v0, v5, :cond_3

    .line 1291
    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v6, 0x13

    invoke-virtual {v5, v6, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_2

    .line 1293
    :cond_3
    iget-object v5, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v5, v2, v0}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    .line 1296
    :goto_2
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_8

    .line 1297
    iget v5, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    goto :goto_3

    .line 1300
    :cond_4
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    if-eqz v1, :cond_5

    const/4 v3, 0x2

    :cond_5
    add-int/2addr p1, v3

    .line 1301
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, v0, :cond_6

    .line 1302
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1304
    :cond_6
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_4

    .line 1298
    :cond_7
    :goto_3
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v2, v4, p1, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 1

    .line 1535
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 1536
    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    .line 1538
    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTableLength:I

    .line 1539
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    iget p2, p2, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 1540
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->lineNumberTable:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {p2, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p3, :cond_1

    .line 1463
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    if-nez v1, :cond_0

    .line 1464
    new-instance v1, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v1}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    .line 1466
    :cond_0
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTableLength:I

    .line 1467
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTypeTable:Lorg/objectweb/asm/ByteVector;

    iget v2, p4, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    .line 1468
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget v2, p5, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    iget v3, p4, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v2, v3

    .line 1469
    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 1470
    invoke-virtual {v2, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v1

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 1471
    invoke-virtual {v2, p3}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v1, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p3

    .line 1472
    invoke-virtual {p3, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 1474
    :cond_1
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    if-nez p3, :cond_2

    .line 1475
    new-instance p3, Lorg/objectweb/asm/ByteVector;

    invoke-direct {p3}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object p3, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    .line 1477
    :cond_2
    iget p3, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTableLength:I

    add-int/2addr p3, v0

    iput p3, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTableLength:I

    .line 1478
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->localVariableTable:Lorg/objectweb/asm/ByteVector;

    iget v1, p4, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    .line 1479
    invoke-virtual {p3, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p3

    iget p5, p5, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    iget p4, p4, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr p5, p4

    .line 1480
    invoke-virtual {p3, p5}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p3

    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 1481
    invoke-virtual {p4, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p3, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    .line 1482
    invoke-virtual {p3, p2}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    .line 1483
    invoke-virtual {p1, p6}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    .line 1484
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 1485
    invoke-virtual {p2, p1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x4a

    if-eq p1, p2, :cond_3

    const/16 p2, 0x44

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 v0, 0x2

    :cond_4
    add-int/2addr p6, v0

    .line 1487
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    if-le p6, p1, :cond_5

    .line 1488
    iput p6, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_5
    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 5

    .line 1504
    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    ushr-int/lit8 p1, p1, 0x18

    .line 1506
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    array-length v1, p3

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 p1, 0x0

    move v1, p1

    .line 1507
    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    .line 1508
    aget-object v2, p3, v1

    iget v2, v2, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    .line 1509
    invoke-virtual {v0, v2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget-object v3, p4, v1

    iget v3, v3, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    aget-object v4, p3, v1

    iget v4, v4, Lorg/objectweb/asm/Label;->bytecodeOffset:I

    sub-int/2addr v3, v4

    .line 1510
    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v2

    aget v3, p5, v1

    .line 1511
    invoke-virtual {v2, v3}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1513
    :cond_0
    invoke-static {p2, v0}, Lorg/objectweb/asm/TypePath;->put(Lorg/objectweb/asm/TypePath;Lorg/objectweb/asm/ByteVector;)V

    .line 1515
    iget-object p2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p2, p6}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    const/4 p1, 0x1

    if-eqz p7, :cond_1

    .line 1517
    new-instance p2, Lorg/objectweb/asm/AnnotationWriter;

    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    invoke-direct {p2, p3, p1, v0, p4}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/SymbolTable;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/AnnotationWriter;)V

    iput-object p2, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p2

    .line 1524
    :cond_1
    new-instance p2, Lorg/objectweb/asm/AnnotationWriter;

    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    invoke-direct {p2, p3, p1, v0, p4}, Lorg/objectweb/asm/AnnotationWriter;-><init>(Lorg/objectweb/asm/SymbolTable;ZLorg/objectweb/asm/ByteVector;Lorg/objectweb/asm/AnnotationWriter;)V

    iput-object p2, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p2
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 5

    .line 1348
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1350
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xab

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 1351
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    .line 1352
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    array-length v1, p3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    .line 1353
    :goto_0
    array-length v0, p3

    if-ge v3, v0, :cond_0

    .line 1354
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    aget v1, p2, v3

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    .line 1355
    aget-object v0, p3, v3

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {v0, v1, v4, v2}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1358
    :cond_0
    invoke-direct {p0, p1, p3}, Lorg/objectweb/asm/MethodWriter;->visitSwitchInsn(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMaxs(II)V
    .locals 2

    .line 1545
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 1546
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->computeAllFrames()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1548
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->computeMaxStackAndLocal()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1550
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    goto :goto_0

    .line 1552
    :cond_2
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxStack:I

    .line 1553
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    :goto_0
    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1033
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1035
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2, p3, p4, p5}, Lorg/objectweb/asm/SymbolTable;->addConstantMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/objectweb/asm/Symbol;

    move-result-object p2

    const/4 p3, 0x0

    const/16 p4, 0xb9

    if-ne p1, p4, :cond_0

    .line 1037
    iget-object p5, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, p2, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {p5, p4, v0}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object p4

    .line 1038
    invoke-virtual {p2}, Lorg/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p5

    shr-int/lit8 p5, p5, 0x2

    invoke-virtual {p4, p5, p3}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_0

    .line 1040
    :cond_0
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget p5, p2, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {p4, p1, p5}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    .line 1043
    :goto_0
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz p4, :cond_5

    .line 1044
    iget p5, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v0, 0x4

    if-eq p5, v0, :cond_4

    const/4 v0, 0x3

    if-ne p5, v0, :cond_1

    goto :goto_2

    .line 1047
    :cond_1
    invoke-virtual {p2}, Lorg/objectweb/asm/Symbol;->getArgumentsAndReturnSizes()I

    move-result p2

    and-int/lit8 p3, p2, 0x3

    shr-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p2

    const/16 p2, 0xb8

    if-ne p1, p2, :cond_2

    .line 1051
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1053
    :cond_2
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/2addr p1, p3

    .line 1055
    :goto_1
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_3

    .line 1056
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 1058
    :cond_3
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    .line 1045
    :cond_4
    :goto_2
    iget-object p4, p4, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object p5, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {p4, p1, p3, p2, p5}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_5
    :goto_3
    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 4

    .line 1388
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1390
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p1

    .line 1391
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, p1, Lorg/objectweb/asm/Symbol;->index:I

    const/16 v2, 0xc5

    invoke-virtual {v0, v2, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    .line 1393
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_2

    .line 1394
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_0

    .line 1399
    :cond_0
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    rsub-int/lit8 p2, p2, 0x1

    add-int/2addr p1, p2

    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 1395
    :cond_1
    :goto_0
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, v2, p2, p1, v1}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public visitParameter(Ljava/lang/String;I)V
    .locals 2

    .line 642
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    if-nez v0, :cond_0

    .line 643
    new-instance v0, Lorg/objectweb/asm/ByteVector;

    invoke-direct {v0}, Lorg/objectweb/asm/ByteVector;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    .line 645
    :cond_0
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->parametersCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->parametersCount:I

    .line 646
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->parameters:Lorg/objectweb/asm/ByteVector;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v1, p1}, Lorg/objectweb/asm/SymbolTable;->addConstantUtf8(Ljava/lang/String;)I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putShort(I)Lorg/objectweb/asm/ByteVector;

    return-void
.end method

.method public visitParameterAnnotation(ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 2

    if-eqz p3, :cond_1

    .line 693
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-nez p3, :cond_0

    .line 694
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 695
    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lorg/objectweb/asm/AnnotationWriter;

    iput-object p3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    .line 697
    :cond_0
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    aget-object v1, p3, p1

    .line 698
    invoke-static {v0, p2, v1}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p2

    .line 701
    :cond_1
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    if-nez p3, :cond_2

    .line 702
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->descriptor:Ljava/lang/String;

    .line 703
    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p3

    array-length p3, p3

    new-array p3, p3, [Lorg/objectweb/asm/AnnotationWriter;

    iput-object p3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    .line 705
    :cond_2
    iget-object p3, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleParameterAnnotations:[Lorg/objectweb/asm/AnnotationWriter;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    aget-object v1, p3, p1

    .line 706
    invoke-static {v0, p2, v1}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p2

    aput-object p2, p3, p1

    return-object p2
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 4

    .line 1334
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 1336
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v1, 0xaa

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v0

    iget-object v1, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, v1, Lorg/objectweb/asm/ByteVector;->length:I

    rem-int/lit8 v1, v1, 0x4

    rsub-int/lit8 v1, v1, 0x4

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lorg/objectweb/asm/ByteVector;->putByteArray([BII)Lorg/objectweb/asm/ByteVector;

    .line 1337
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    .line 1338
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/objectweb/asm/ByteVector;->putInt(I)Lorg/objectweb/asm/ByteVector;

    .line 1339
    array-length p1, p4

    :goto_0
    if-ge v3, p1, :cond_0

    aget-object p2, p4, v3

    .line 1340
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    invoke-virtual {p2, v0, v1, v2}, Lorg/objectweb/asm/Label;->put(Lorg/objectweb/asm/ByteVector;IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1343
    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/objectweb/asm/MethodWriter;->visitSwitchInsn(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTryCatchAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    .line 1444
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 1445
    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 1448
    :cond_0
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 1449
    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastCodeRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 7

    .line 1429
    new-instance v6, Lorg/objectweb/asm/Handler;

    if-eqz p4, :cond_0

    .line 1431
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p4}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object v0

    iget v0, v0, Lorg/objectweb/asm/Symbol;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/Handler;-><init>(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;ILjava/lang/String;)V

    .line 1432
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    if-nez p1, :cond_1

    .line 1433
    iput-object v6, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    goto :goto_1

    .line 1435
    :cond_1
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastHandler:Lorg/objectweb/asm/Handler;

    iput-object v6, p1, Lorg/objectweb/asm/Handler;->nextHandler:Lorg/objectweb/asm/Handler;

    .line 1437
    :goto_1
    iput-object v6, p0, Lorg/objectweb/asm/MethodWriter;->lastHandler:Lorg/objectweb/asm/Handler;

    return-void
.end method

.method public visitTypeAnnotation(ILorg/objectweb/asm/TypePath;Ljava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 1

    if-eqz p4, :cond_0

    .line 670
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 671
    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeVisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1

    .line 674
    :cond_0
    iget-object p4, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    .line 675
    invoke-static {p4, p1, p2, p3, v0}, Lorg/objectweb/asm/AnnotationWriter;->create(Lorg/objectweb/asm/SymbolTable;ILorg/objectweb/asm/TypePath;Ljava/lang/String;Lorg/objectweb/asm/AnnotationWriter;)Lorg/objectweb/asm/AnnotationWriter;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/MethodWriter;->lastRuntimeInvisibleTypeAnnotation:Lorg/objectweb/asm/AnnotationWriter;

    return-object p1
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 3

    .line 970
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    .line 972
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/SymbolTable;->addConstantClass(Ljava/lang/String;)Lorg/objectweb/asm/Symbol;

    move-result-object p2

    .line 973
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v1, p2, Lorg/objectweb/asm/Symbol;->index:I

    invoke-virtual {v0, p1, v1}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    .line 975
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_3

    .line 976
    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0xbb

    if-ne p1, p2, :cond_3

    .line 980
    iget p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    add-int/lit8 p1, p1, 0x1

    .line 981
    iget p2, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le p1, p2, :cond_1

    .line 982
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 984
    :cond_1
    iput p1, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_1

    .line 977
    :cond_2
    :goto_0
    iget-object v0, v0, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    iget v1, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    iget-object v2, p0, Lorg/objectweb/asm/MethodWriter;->symbolTable:Lorg/objectweb/asm/SymbolTable;

    invoke-virtual {v0, p1, v1, p2, v2}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public visitVarInsn(II)V
    .locals 6

    .line 908
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    iget v0, v0, Lorg/objectweb/asm/ByteVector;->length:I

    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->lastBytecodeOffset:I

    const/16 v0, 0xa9

    const/16 v1, 0x36

    const/4 v2, 0x4

    if-ge p2, v2, :cond_1

    if-eq p1, v0, :cond_1

    if-ge p1, v1, :cond_0

    add-int/lit8 v3, p1, -0x15

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1a

    goto :goto_0

    :cond_0
    add-int/lit8 v3, p1, -0x36

    shl-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x3b

    :goto_0
    add-int/2addr v3, p2

    .line 917
    iget-object v4, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v4, v3}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    :cond_1
    const/16 v3, 0x100

    if-lt p2, v3, :cond_2

    .line 919
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    const/16 v4, 0xc4

    invoke-virtual {v3, v4}, Lorg/objectweb/asm/ByteVector;->putByte(I)Lorg/objectweb/asm/ByteVector;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lorg/objectweb/asm/ByteVector;->put12(II)Lorg/objectweb/asm/ByteVector;

    goto :goto_1

    .line 921
    :cond_2
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->code:Lorg/objectweb/asm/ByteVector;

    invoke-virtual {v3, p1, p2}, Lorg/objectweb/asm/ByteVector;->put11(II)Lorg/objectweb/asm/ByteVector;

    .line 924
    :goto_1
    iget-object v3, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    if-eqz v3, :cond_7

    .line 925
    iget v4, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    if-eq v4, v2, :cond_6

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    if-ne p1, v0, :cond_4

    .line 930
    iget-short v0, v3, Lorg/objectweb/asm/Label;->flags:S

    or-int/lit8 v0, v0, 0x40

    int-to-short v0, v0

    iput-short v0, v3, Lorg/objectweb/asm/Label;->flags:S

    .line 931
    iget-object v0, p0, Lorg/objectweb/asm/MethodWriter;->currentBasicBlock:Lorg/objectweb/asm/Label;

    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    int-to-short v3, v3

    iput-short v3, v0, Lorg/objectweb/asm/Label;->outputStackSize:S

    .line 932
    invoke-direct {p0}, Lorg/objectweb/asm/MethodWriter;->endCurrentBasicBlockWithNoSuccessor()V

    goto :goto_3

    .line 934
    :cond_4
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    sget-object v3, Lorg/objectweb/asm/MethodWriter;->STACK_SIZE_DELTA:[I

    aget v3, v3, p1

    add-int/2addr v0, v3

    .line 935
    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    if-le v0, v3, :cond_5

    .line 936
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->maxRelativeStackSize:I

    .line 938
    :cond_5
    iput v0, p0, Lorg/objectweb/asm/MethodWriter;->relativeStackSize:I

    goto :goto_3

    .line 926
    :cond_6
    :goto_2
    iget-object v0, v3, Lorg/objectweb/asm/Label;->frame:Lorg/objectweb/asm/Frame;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, p2, v3, v3}, Lorg/objectweb/asm/Frame;->execute(IILorg/objectweb/asm/Symbol;Lorg/objectweb/asm/SymbolTable;)V

    .line 942
    :cond_7
    :goto_3
    iget v0, p0, Lorg/objectweb/asm/MethodWriter;->compute:I

    if-eqz v0, :cond_a

    const/16 v3, 0x16

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_9

    const/16 v3, 0x37

    if-eq p1, v3, :cond_9

    const/16 v3, 0x39

    if-ne p1, v3, :cond_8

    goto :goto_4

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    :cond_9
    :goto_4
    add-int/lit8 p2, p2, 0x2

    .line 952
    :goto_5
    iget v3, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    if-le p2, v3, :cond_a

    .line 953
    iput p2, p0, Lorg/objectweb/asm/MethodWriter;->maxLocals:I

    :cond_a
    if-lt p1, v1, :cond_b

    if-ne v0, v2, :cond_b

    .line 956
    iget-object p1, p0, Lorg/objectweb/asm/MethodWriter;->firstHandler:Lorg/objectweb/asm/Handler;

    if-eqz p1, :cond_b

    .line 964
    new-instance p1, Lorg/objectweb/asm/Label;

    invoke-direct {p1}, Lorg/objectweb/asm/Label;-><init>()V

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/MethodWriter;->visitLabel(Lorg/objectweb/asm/Label;)V

    :cond_b
    return-void
.end method
