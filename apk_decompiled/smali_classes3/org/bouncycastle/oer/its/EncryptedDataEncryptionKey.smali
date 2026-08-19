.class public Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;
    }
.end annotation


# static fields
.field public static final eciesBrainpoolP256r1:I = 0x1

.field public static final eciesNistP256:I = 0x0

.field public static final extension:I = 0x2


# instance fields
.field private final choice:I

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown choice "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;->setChoice(I)Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;->setValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey$Builder;->createEncryptedDataEncryptionKey()Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->choice:I

    return v0
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/EncryptedDataEncryptionKey;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
