.class public Lcom/itextpdf/kernel/crypto/AESCipher;
.super Ljava/lang/Object;
.source "AESCipher.java"


# instance fields
.field private bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;


# direct methods
.method public constructor <init>(Z[B[B)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Lorg/bouncycastle/crypto/engines/AESFastEngine;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/engines/AESFastEngine;-><init>()V

    .line 71
    new-instance v1, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/modes/CBCBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    .line 72
    new-instance v0, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    .line 73
    new-instance v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    .line 74
    new-instance p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-direct {p2, v0, p3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    .line 75
    iget-object p3, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {p3, p1, p2}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void
.end method


# virtual methods
.method public doFinal()[B
    .locals 4

    .line 91
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getOutputSize(I)I

    move-result v0

    .line 92
    new-array v2, v0, [B

    .line 95
    :try_start_0
    iget-object v3, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v3, v2, v1}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->doFinal([BI)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v0, :cond_0

    .line 100
    new-array v0, v3, [B

    .line 101
    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :catch_0
    :cond_0
    return-object v2
.end method

.method public update([BII)[B
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->getUpdateOutputSize(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 82
    new-array v0, v0, [B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 84
    new-array v0, v0, [B

    .line 86
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/kernel/crypto/AESCipher;->bp:Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/crypto/paddings/PaddedBufferedBlockCipher;->processBytes([BII[BI)I

    return-object v0
.end method
