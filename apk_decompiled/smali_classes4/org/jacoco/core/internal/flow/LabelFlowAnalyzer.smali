.class public final Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;
.super Lorg/objectweb/asm/MethodVisitor;
.source "LabelFlowAnalyzer.java"


# instance fields
.field first:Z

.field lineStart:Lorg/objectweb/asm/Label;

.field successor:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x90000

    .line 66
    invoke-direct {p0, v0}, Lorg/objectweb/asm/MethodVisitor;-><init>(I)V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/objectweb/asm/Label;

    return-void
.end method

.method public static markLabels(Lorg/objectweb/asm/tree/MethodNode;)V
    .locals 3

    .line 38
    new-instance v0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;

    invoke-direct {v0}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;-><init>()V

    .line 39
    iget-object v1, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    .line 40
    iget-object v2, p0, Lorg/objectweb/asm/tree/MethodNode;->tryCatchBlocks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/TryCatchBlockNode;

    invoke-virtual {v2, v0}, Lorg/objectweb/asm/tree/TryCatchBlockNode;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    goto :goto_0

    .line 42
    :cond_0
    iget-object p0, p0, Lorg/objectweb/asm/tree/MethodNode;->instructions:Lorg/objectweb/asm/tree/InsnList;

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/InsnList;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    return-void
.end method

.method private markMethodInvocationLine()V
    .locals 1

    .line 200
    iget-object v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/objectweb/asm/Label;

    if-eqz v0, :cond_0

    .line 201
    invoke-static {v0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setMethodInvocationLine(Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method private static setTargetIfNotDone(Lorg/objectweb/asm/Label;)V
    .locals 1

    .line 131
    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    .line 133
    invoke-static {p0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method private visitSwitchInsn(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 3

    .line 120
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    .line 121
    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    .line 122
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->setTargetIfNotDone(Lorg/objectweb/asm/Label;)V

    .line 123
    array-length p1, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    aget-object v2, p2, v1

    .line 124
    invoke-static {v2}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->setTargetIfNotDone(Lorg/objectweb/asm/Label;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_0
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 127
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method


# virtual methods
.method public visitFieldInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 180
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public visitIincInsn(II)V
    .locals 0

    const/4 p1, 0x1

    .line 213
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 214
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public visitInsn(I)V
    .locals 2

    const/16 v0, 0xa9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbf

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x1

    .line 152
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    goto :goto_0

    .line 149
    :cond_0
    :pswitch_0
    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 155
    :goto_0
    iput-boolean v1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void

    .line 141
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Subroutines not supported."

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0xac
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public visitIntInsn(II)V
    .locals 0

    const/4 p1, 0x1

    .line 160
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 161
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public varargs visitInvokeDynamicInsn(Ljava/lang/String;Ljava/lang/String;Lorg/objectweb/asm/Handle;[Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 194
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 195
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 196
    invoke-direct {p0}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->markMethodInvocationLine()V

    return-void
.end method

.method public visitJumpInsn(ILorg/objectweb/asm/Label;)V
    .locals 1

    .line 84
    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    const/16 p2, 0xa8

    if-eq p1, p2, :cond_1

    const/16 p2, 0xa7

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 88
    :goto_0
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    .line 89
    iput-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void

    .line 86
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Subroutines not supported."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method

.method public visitLabel(Lorg/objectweb/asm/Label;)V
    .locals 1

    .line 94
    iget-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    if-eqz v0, :cond_0

    .line 95
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    .line 97
    :cond_0
    iget-boolean v0, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    if-eqz v0, :cond_1

    .line 98
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setSuccessor(Lorg/objectweb/asm/Label;)V

    :cond_1
    return-void
.end method

.method public visitLdcInsn(Ljava/lang/Object;)V
    .locals 0

    const/4 p1, 0x1

    .line 207
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 208
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public visitLineNumber(ILorg/objectweb/asm/Label;)V
    .locals 0

    .line 104
    iput-object p2, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->lineStart:Lorg/objectweb/asm/Label;

    return-void
.end method

.method public visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p3}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->visitSwitchInsn(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitMethodInsn(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    const/4 p1, 0x1

    .line 186
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 187
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    .line 188
    invoke-direct {p0}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->markMethodInvocationLine()V

    return-void
.end method

.method public visitMultiANewArrayInsn(Ljava/lang/String;I)V
    .locals 0

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 220
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public varargs visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V
    .locals 0

    .line 110
    invoke-direct {p0, p3, p4}, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->visitSwitchInsn(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTryCatchBlock(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;Ljava/lang/String;)V
    .locals 0

    .line 76
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    .line 79
    invoke-static {p3}, Lorg/jacoco/core/internal/flow/LabelInfo;->setTarget(Lorg/objectweb/asm/Label;)V

    return-void
.end method

.method public visitTypeInsn(ILjava/lang/String;)V
    .locals 0

    const/4 p1, 0x1

    .line 172
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 173
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method

.method public visitVarInsn(II)V
    .locals 0

    const/4 p1, 0x1

    .line 166
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->successor:Z

    const/4 p1, 0x0

    .line 167
    iput-boolean p1, p0, Lorg/jacoco/core/internal/flow/LabelFlowAnalyzer;->first:Z

    return-void
.end method
