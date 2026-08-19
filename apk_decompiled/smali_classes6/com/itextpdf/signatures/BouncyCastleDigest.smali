.class public Lcom/itextpdf/signatures/BouncyCastleDigest;
.super Ljava/lang/Object;
.source "BouncyCastleDigest.java"

# interfaces
.implements Lcom/itextpdf/signatures/IExternalDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    invoke-static {p1}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 75
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "1.2.643.2.2.9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v2, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "1.3.14.3.2.26"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v1, "2.16.840.1.101.3.4.2.4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "2.16.840.1.101.3.4.2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_4
    const-string v1, "2.16.840.1.101.3.4.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "2.16.840.1.101.3.4.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_6
    const-string v1, "1.3.36.3.2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_7
    const-string v1, "1.3.36.3.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_8
    const-string v1, "1.3.36.3.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_9
    const-string v1, "1.2.840.113549.2.5"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_a
    const-string v1, "1.2.840.113549.2.2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 110
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :pswitch_0
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/GOST3411$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/GOST3411$Digest;-><init>()V

    return-object p1

    .line 84
    :pswitch_1
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/SHA1$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/SHA1$Digest;-><init>()V

    return-object p1

    .line 87
    :pswitch_2
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/SHA224$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/SHA224$Digest;-><init>()V

    return-object p1

    .line 96
    :pswitch_3
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/SHA512$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/SHA512$Digest;-><init>()V

    return-object p1

    .line 93
    :pswitch_4
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/SHA384$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/SHA384$Digest;-><init>()V

    return-object p1

    .line 90
    :pswitch_5
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/SHA256$Digest;-><init>()V

    return-object p1

    .line 105
    :pswitch_6
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD256$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD256$Digest;-><init>()V

    return-object p1

    .line 99
    :pswitch_7
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD128$Digest;-><init>()V

    return-object p1

    .line 102
    :pswitch_8
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/RIPEMD160$Digest;-><init>()V

    return-object p1

    .line 81
    :pswitch_9
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/MD5$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/MD5$Digest;-><init>()V

    return-object p1

    .line 78
    :pswitch_a
    new-instance p1, Lorg/bouncycastle/jcajce/provider/digest/MD2$Digest;

    invoke-direct {p1}, Lorg/bouncycastle/jcajce/provider/digest/MD2$Digest;-><init>()V

    return-object p1

    .line 73
    :cond_b
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v0, p1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7b77d79e -> :sswitch_a
        -0x7b77d79b -> :sswitch_9
        -0x4b2a08d9 -> :sswitch_8
        -0x4b2a08d8 -> :sswitch_7
        -0x4b2a08d7 -> :sswitch_6
        -0x49128200 -> :sswitch_5
        -0x491281ff -> :sswitch_4
        -0x491281fe -> :sswitch_3
        -0x491281fd -> :sswitch_2
        -0x126249b2 -> :sswitch_1
        0x3e3cb6cf -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
