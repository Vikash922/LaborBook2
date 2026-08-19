.class public Lorg/objectweb/asm/signature/SignatureWriter;
.super Lorg/objectweb/asm/signature/SignatureVisitor;
.source "SignatureWriter.java"


# instance fields
.field private argumentStack:I

.field private hasFormals:Z

.field private hasParameters:Z

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/high16 v0, 0x90000

    .line 73
    invoke-direct {p0, v0}, Lorg/objectweb/asm/signature/SignatureVisitor;-><init>(I)V

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    return-void
.end method

.method private endArguments()V
    .locals 2

    .line 235
    iget v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 236
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 238
    :cond_0
    iget v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method private endFormals()V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    .line 226
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public visitArrayType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 2

    .line 152
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitBaseType(C)V
    .locals 1

    .line 140
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitClassBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitClassType(Ljava/lang/String;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 159
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget p1, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method public visitEnd()V
    .locals 2

    .line 204
    invoke-direct {p0}, Lorg/objectweb/asm/signature/SignatureWriter;->endArguments()V

    .line 205
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitExceptionType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 2

    .line 134
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x5e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitFormalTypeParameter(Ljava/lang/String;)V
    .locals 2

    .line 82
    iget-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasFormals:Z

    .line 84
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 86
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget-object p1, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitInnerClassType(Ljava/lang/String;)V
    .locals 2

    .line 167
    invoke-direct {p0}, Lorg/objectweb/asm/signature/SignatureWriter;->endArguments()V

    .line 168
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 169
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    iget p1, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    return-void
.end method

.method public visitInterface()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 0

    return-object p0
.end method

.method public visitInterfaceBound()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 2

    .line 97
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitParameterType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 2

    .line 114
    invoke-direct {p0}, Lorg/objectweb/asm/signature/SignatureWriter;->endFormals()V

    .line 115
    iget-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasParameters:Z

    .line 117
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-object p0
.end method

.method public visitReturnType()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 2

    .line 124
    invoke-direct {p0}, Lorg/objectweb/asm/signature/SignatureWriter;->endFormals()V

    .line 125
    iget-boolean v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->hasParameters:Z

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public visitSuperclass()Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 0

    .line 103
    invoke-direct {p0}, Lorg/objectweb/asm/signature/SignatureWriter;->endFormals()V

    return-object p0
.end method

.method public visitTypeArgument(C)Lorg/objectweb/asm/signature/SignatureVisitor;
    .locals 2

    .line 192
    iget v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 193
    iput v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    .line 194
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/16 v0, 0x3d

    if-eq p1, v0, :cond_1

    .line 197
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_1
    return-object p0
.end method

.method public visitTypeArgument()V
    .locals 2

    .line 180
    iget v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    .line 181
    iput v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->argumentStack:I

    .line 182
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method public visitTypeVariable(Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v1, 0x54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 146
    iget-object v0, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-object p1, p0, Lorg/objectweb/asm/signature/SignatureWriter;->stringBuilder:Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
