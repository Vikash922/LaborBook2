.class Lorg/jacoco/core/internal/instr/MethodInstrumenter;
.super Lorg/jacoco/core/internal/flow/MethodProbesVisitor;
.source "MethodInstrumenter.java"


# instance fields
.field private final probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;


# direct methods
.method public constructor <init>(Lorg/objectweb/asm/MethodVisitor;Lorg/jacoco/core/internal/instr/IProbeInserter;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/flow/MethodProbesVisitor;-><init>(Lorg/objectweb/asm/MethodVisitor;)V

    .line 41
    iput-object p2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;

    return-void
.end method

.method private createIntermediate(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;
    .locals 2

    .line 149
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->getProbeId(Lorg/objectweb/asm/Label;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 152
    :cond_0
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 153
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->getIntermediateLabel(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object p1

    goto :goto_0

    .line 155
    :cond_1
    new-instance v0, Lorg/objectweb/asm/Label;

    invoke-direct {v0}, Lorg/objectweb/asm/Label;-><init>()V

    .line 156
    invoke-static {p1, v0}, Lorg/jacoco/core/internal/flow/LabelInfo;->setIntermediateLabel(Lorg/objectweb/asm/Label;Lorg/objectweb/asm/Label;)V

    .line 157
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private createIntermediates([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/Label;
    .locals 3

    .line 140
    array-length v0, p1

    new-array v0, v0, [Lorg/objectweb/asm/Label;

    const/4 v1, 0x0

    .line 141
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 142
    aget-object v2, p1, v1

    invoke-direct {p0, v2}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->createIntermediate(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getInverted(I)I
    .locals 2

    const/16 v0, 0xc7

    const/16 v1, 0xc6

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const/16 p1, 0xa5

    return p1

    :pswitch_1
    const/16 p1, 0xa6

    return p1

    :pswitch_2
    const/16 p1, 0xa3

    return p1

    :pswitch_3
    const/16 p1, 0xa4

    return p1

    :pswitch_4
    const/16 p1, 0xa1

    return p1

    :pswitch_5
    const/16 p1, 0xa2

    return p1

    :pswitch_6
    const/16 p1, 0x9f

    return p1

    :pswitch_7
    const/16 p1, 0xa0

    return p1

    :pswitch_8
    const/16 p1, 0x9d

    return p1

    :pswitch_9
    const/16 p1, 0x9e

    return p1

    :pswitch_a
    const/16 p1, 0x9b

    return p1

    :pswitch_b
    const/16 p1, 0x9c

    return p1

    :pswitch_c
    const/16 p1, 0x99

    return p1

    :pswitch_d
    const/16 p1, 0x9a

    return p1

    :cond_0
    return v1

    :cond_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x99
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private insertIntermediateProbe(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    .line 165
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->getProbeId(Lorg/objectweb/asm/Label;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 166
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->isDone(Lorg/objectweb/asm/Label;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    iget-object v1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->getIntermediateLabel(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    .line 168
    iget-object v1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {p2, v1}, Lorg/jacoco/core/internal/flow/IFrame;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    .line 169
    iget-object p2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {p2, v0}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 170
    iget-object p2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    const/16 v0, 0xa7

    invoke-virtual {p2, v0, p1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 171
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->setDone(Lorg/objectweb/asm/Label;)V

    :cond_0
    return-void
.end method

.method private insertIntermediateProbes(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 2

    .line 177
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    .line 178
    invoke-static {p2}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    .line 179
    invoke-direct {p0, p1, p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->insertIntermediateProbe(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    .line 180
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 181
    invoke-direct {p0, v1, p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->insertIntermediateProbe(Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public visitInsnWithProbe(II)V
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p2}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 54
    iget-object p2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p2, p1}, Lorg/objectweb/asm/MethodVisitor;->visitInsn(I)V

    return-void
.end method

.method public visitJumpInsnWithProbe(ILorg/objectweb/asm/Label;ILorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    const/16 v0, 0xa7

    if-ne p1, v0, :cond_0

    .line 61
    iget-object p1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {p1, p3}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 62
    iget-object p1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p1, v0, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    goto :goto_0

    .line 64
    :cond_0
    new-instance v1, Lorg/objectweb/asm/Label;

    invoke-direct {v1}, Lorg/objectweb/asm/Label;-><init>()V

    .line 65
    iget-object v2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->getInverted(I)I

    move-result p1

    invoke-virtual {v2, p1, v1}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 66
    iget-object p1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {p1, p3}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    .line 67
    iget-object p1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p1, v0, p2}, Lorg/objectweb/asm/MethodVisitor;->visitJumpInsn(ILorg/objectweb/asm/Label;)V

    .line 68
    iget-object p1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {p1, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLabel(Lorg/objectweb/asm/Label;)V

    .line 69
    iget-object p1, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-interface {p4, p1}, Lorg/jacoco/core/internal/flow/IFrame;->accept(Lorg/objectweb/asm/MethodVisitor;)V

    :goto_0
    return-void
.end method

.method public visitLookupSwitchInsnWithProbes(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    .line 129
    invoke-static {p1}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    .line 130
    invoke-static {p3}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    .line 131
    invoke-direct {p0, p1}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->createIntermediate(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v0

    .line 132
    invoke-direct {p0, p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->createIntermediates([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/Label;

    move-result-object v1

    .line 133
    iget-object v2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v2, v0, p2, v1}, Lorg/objectweb/asm/MethodVisitor;->visitLookupSwitchInsn(Lorg/objectweb/asm/Label;[I[Lorg/objectweb/asm/Label;)V

    .line 136
    invoke-direct {p0, p1, p3, p4}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->insertIntermediateProbes(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    return-void
.end method

.method public visitProbe(I)V
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->probeInserter:Lorg/jacoco/core/internal/instr/IProbeInserter;

    invoke-interface {v0, p1}, Lorg/jacoco/core/internal/instr/IProbeInserter;->insertProbe(I)V

    return-void
.end method

.method public visitTableSwitchInsnWithProbes(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V
    .locals 3

    .line 115
    invoke-static {p3}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone(Lorg/objectweb/asm/Label;)V

    .line 116
    invoke-static {p4}, Lorg/jacoco/core/internal/flow/LabelInfo;->resetDone([Lorg/objectweb/asm/Label;)V

    .line 117
    invoke-direct {p0, p3}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->createIntermediate(Lorg/objectweb/asm/Label;)Lorg/objectweb/asm/Label;

    move-result-object v0

    .line 118
    invoke-direct {p0, p4}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->createIntermediates([Lorg/objectweb/asm/Label;)[Lorg/objectweb/asm/Label;

    move-result-object v1

    .line 119
    iget-object v2, p0, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->mv:Lorg/objectweb/asm/MethodVisitor;

    invoke-virtual {v2, p1, p2, v0, v1}, Lorg/objectweb/asm/MethodVisitor;->visitTableSwitchInsn(IILorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;)V

    .line 122
    invoke-direct {p0, p3, p4, p5}, Lorg/jacoco/core/internal/instr/MethodInstrumenter;->insertIntermediateProbes(Lorg/objectweb/asm/Label;[Lorg/objectweb/asm/Label;Lorg/jacoco/core/internal/flow/IFrame;)V

    return-void
.end method
