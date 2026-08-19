.class public Lorg/objectweb/asm/commons/LocalVariablesSorter;
.super Lorg/objectweb/asm/MethodVisitor;
.source "LocalVariablesSorter.java"


# static fields
.field private static final OBJECT_TYPE:Lorg/objectweb/asm/Type;


# instance fields
.field protected final firstLocal:I

.field protected nextLocal:I

.field private remappedLocalTypes:[Ljava/lang/Object;

.field private remappedVariableIndices:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-string v0, "java/lang/Object"

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    sput-object v0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    return-void
.end method

.method protected constructor <init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .locals 1

    .line 102
    invoke-direct {p0, p1, p4}, Lorg/objectweb/asm/MethodVisitor;-><init>(ILorg/objectweb/asm/MethodVisitor;)V

    const/16 p1, 0x28

    .line 58
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedVariableIndices:[I

    const/16 p1, 0x14

    .line 64
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    and-int/lit8 p1, p2, 0x8

    const/4 p2, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    .line 103
    :goto_0
    iput p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    .line 104
    invoke-static {p3}, Lorg/objectweb/asm/Type;->getArgumentTypes(Ljava/lang/String;)[Lorg/objectweb/asm/Type;

    move-result-object p1

    array-length p3, p1

    :goto_1
    if-ge p2, p3, :cond_1

    aget-object p4, p1, p2

    .line 105
    iget v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    invoke-virtual {p4}, Lorg/objectweb/asm/Type;->getSize()I

    move-result p4

    add-int/2addr v0, p4

    iput v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 107
    :cond_1
    iget p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    iput p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->firstLocal:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V
    .locals 1

    const/high16 v0, 0x90000

    .line 84
    invoke-direct {p0, v0, p1, p2, p3}, Lorg/objectweb/asm/commons/LocalVariablesSorter;-><init>(IILjava/lang/String;Lorg/objectweb/asm/MethodVisitor;)V

    .line 85
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/objectweb/asm/commons/LocalVariablesSorter;

    if-ne p1, p2, :cond_0

    return-void

    .line 86
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method private remap(ILorg/objectweb/asm/Type;)I
    .locals 4

    .line 326
    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    add-int/2addr v0, p1

    iget v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->firstLocal:I

    if-gt v0, v1, :cond_0

    return p1

    :cond_0
    mul-int/lit8 p1, p1, 0x2

    .line 329
    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSize()I

    move-result v0

    add-int/2addr p1, v0

    add-int/lit8 v0, p1, -0x1

    .line 330
    iget-object v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedVariableIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    mul-int/lit8 v2, v1, 0x2

    .line 332
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [I

    .line 333
    iget-object v2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedVariableIndices:[I

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 334
    iput-object p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedVariableIndices:[I

    .line 336
    :cond_1
    iget-object p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedVariableIndices:[I

    aget p1, p1, v0

    if-nez p1, :cond_2

    .line 338
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocalMapping(Lorg/objectweb/asm/Type;)I

    move-result p1

    .line 339
    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setLocalType(ILorg/objectweb/asm/Type;)V

    .line 340
    iget-object p2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedVariableIndices:[I

    add-int/lit8 v1, p1, 0x1

    aput v1, p2, v0

    goto :goto_0

    :cond_2
    add-int/lit8 p1, p1, -0x1

    :goto_0
    return p1
.end method

.method private setFrameLocal(ILjava/lang/Object;)V
    .locals 4

    .line 316
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, p1, 0x1

    .line 318
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    .line 319
    iget-object v2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iput-object v1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    .line 322
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method


# virtual methods
.method public newLocal(Lorg/objectweb/asm/Type;)I
    .locals 2

    .line 254
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 275
    :pswitch_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getInternalName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 272
    :pswitch_1
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 269
    :pswitch_2
    sget-object v0, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    goto :goto_0

    .line 266
    :pswitch_3
    sget-object v0, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    goto :goto_0

    .line 263
    :pswitch_4
    sget-object v0, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    goto :goto_0

    .line 260
    :pswitch_5
    sget-object v0, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    .line 280
    :goto_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->newLocalMapping(Lorg/objectweb/asm/Type;)I

    move-result v1

    .line 281
    invoke-virtual {p0, v1, p1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setLocalType(ILorg/objectweb/asm/Type;)V

    .line 282
    invoke-direct {p0, v1, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setFrameLocal(ILjava/lang/Object;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected newLocalMapping(Lorg/objectweb/asm/Type;)I
    .locals 1

    .line 348
    iget v0, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    .line 349
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSize()I

    move-result p1

    add-int/2addr p1, v0

    iput p1, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    return v0
.end method

.method protected setLocalType(ILorg/objectweb/asm/Type;)V
    .locals 0

    return-void
.end method

.method protected updateNewLocals([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V
    .locals 12

    move-object v6, p0

    const/4 v0, -0x1

    move v1, p1

    if-ne v1, v0, :cond_d

    .line 194
    iget-object v0, v6, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    array-length v2, v0

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 195
    invoke-static {v0, v3, v7, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    iget-object v0, v6, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->updateNewLocals([Ljava/lang/Object;)V

    move v0, v3

    move v2, v0

    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x1

    move v8, p2

    if-ge v0, v8, :cond_8

    .line 203
    aget-object v9, p3, v0

    .line 204
    sget-object v10, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq v9, v10, :cond_5

    .line 205
    sget-object v10, Lorg/objectweb/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    .line 206
    sget-object v11, Lorg/objectweb/asm/Opcodes;->INTEGER:Ljava/lang/Integer;

    if-ne v9, v11, :cond_0

    .line 207
    sget-object v10, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_1

    .line 208
    :cond_0
    sget-object v11, Lorg/objectweb/asm/Opcodes;->FLOAT:Ljava/lang/Integer;

    if-ne v9, v11, :cond_1

    .line 209
    sget-object v10, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_1

    .line 210
    :cond_1
    sget-object v11, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-ne v9, v11, :cond_2

    .line 211
    sget-object v10, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_1

    .line 212
    :cond_2
    sget-object v11, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v9, v11, :cond_3

    .line 213
    sget-object v10, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_1

    .line 214
    :cond_3
    instance-of v11, v9, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 215
    move-object v10, v9

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v10

    .line 217
    :cond_4
    :goto_1
    invoke-direct {p0, v2, v10}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v10

    invoke-direct {p0, v10, v9}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->setFrameLocal(ILjava/lang/Object;)V

    .line 219
    :cond_5
    sget-object v10, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v9, v10, :cond_7

    sget-object v10, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v9, v10, :cond_6

    goto :goto_2

    :cond_6
    move v4, v5

    :cond_7
    :goto_2
    add-int/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    move v0, v3

    :goto_3
    move v2, v0

    .line 226
    :goto_4
    iget-object v8, v6, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    array-length v9, v8

    if-ge v3, v9, :cond_c

    .line 227
    aget-object v8, v8, v3

    .line 228
    sget-object v9, Lorg/objectweb/asm/Opcodes;->LONG:Ljava/lang/Integer;

    if-eq v8, v9, :cond_a

    sget-object v9, Lorg/objectweb/asm/Opcodes;->DOUBLE:Ljava/lang/Integer;

    if-ne v8, v9, :cond_9

    goto :goto_5

    :cond_9
    move v9, v5

    goto :goto_6

    :cond_a
    :goto_5
    move v9, v4

    :goto_6
    add-int/2addr v3, v9

    if-eqz v8, :cond_b

    .line 229
    sget-object v9, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    if-eq v8, v9, :cond_b

    .line 230
    iget-object v2, v6, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    add-int/lit8 v9, v0, 0x1

    aput-object v8, v2, v0

    move v0, v9

    goto :goto_3

    .line 233
    :cond_b
    iget-object v8, v6, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    add-int/lit8 v9, v0, 0x1

    sget-object v10, Lorg/objectweb/asm/Opcodes;->TOP:Ljava/lang/Integer;

    aput-object v10, v8, v0

    move v0, v9

    goto :goto_4

    :cond_c
    move-object v0, p0

    move v1, p1

    move-object v3, v8

    move/from16 v4, p4

    move-object/from16 v5, p5

    .line 238
    invoke-super/range {v0 .. v5}, Lorg/objectweb/asm/MethodVisitor;->visitFrame(II[Ljava/lang/Object;I[Ljava/lang/Object;)V

    .line 241
    iput-object v7, v6, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remappedLocalTypes:[Ljava/lang/Object;

    return-void

    .line 189
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "LocalVariablesSorter only accepts expanded frames (see ClassReader.EXPAND_FRAMES)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visitIincInsn(II)V
    .locals 1

    .line 143
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    invoke-direct {p0, p1, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result p1

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitIincInsn(II)V

    return-void
.end method

.method public visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V
    .locals 8

    .line 159
    invoke-static {p2}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-direct {p0, p6, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 160
    invoke-super/range {v1 .. v7}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;I)V

    return-void
.end method

.method public visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;
    .locals 12

    move-object/from16 v0, p5

    .line 172
    invoke-static/range {p6 .. p6}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v1

    .line 173
    array-length v2, v0

    new-array v8, v2, [I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 175
    aget v4, v0, v3

    move-object v11, p0

    invoke-direct {p0, v4, v1}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result v4

    aput v4, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move-object v11, p0

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p4

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 177
    invoke-super/range {v3 .. v10}, Lorg/objectweb/asm/MethodVisitor;->visitLocalVariableAnnotation(ILorg/objectweb/asm/TypePath;[Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;[ILjava/lang/String;Z)Lorg/objectweb/asm/AnnotationVisitor;

    move-result-object v0

    return-object v0
.end method

.method public visitMaxs(II)V
    .locals 0

    .line 148
    iget p2, p0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->nextLocal:I

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitMaxs(II)V

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    .line 136
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

    .line 120
    :pswitch_0
    sget-object v0, Lorg/objectweb/asm/Type;->DOUBLE_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_0

    .line 124
    :pswitch_1
    sget-object v0, Lorg/objectweb/asm/Type;->FLOAT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_0

    .line 116
    :pswitch_2
    sget-object v0, Lorg/objectweb/asm/Type;->LONG_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_0

    .line 128
    :pswitch_3
    sget-object v0, Lorg/objectweb/asm/Type;->INT_TYPE:Lorg/objectweb/asm/Type;

    goto :goto_0

    .line 133
    :cond_0
    :pswitch_4
    sget-object v0, Lorg/objectweb/asm/commons/LocalVariablesSorter;->OBJECT_TYPE:Lorg/objectweb/asm/Type;

    .line 138
    :goto_0
    invoke-direct {p0, p2, v0}, Lorg/objectweb/asm/commons/LocalVariablesSorter;->remap(ILorg/objectweb/asm/Type;)I

    move-result p2

    invoke-super {p0, p1, p2}, Lorg/objectweb/asm/MethodVisitor;->visitVarInsn(II)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
