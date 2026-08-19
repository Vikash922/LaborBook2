.class public Lorg/bouncycastle/oer/its/GeographicRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final circularRegion:I = 0x0

.field public static final extension:I = 0x4

.field public static final identifiedRegion:I = 0x3

.field public static final polygonalRegion:I = 0x2

.field public static final rectangularRegion:I = 0x1


# instance fields
.field private choice:I

.field private region:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/GeographicRegion;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/GeographicRegion;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/GeographicRegion;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown region choice "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfIdentifiedRegion;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_3
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/PolygonalRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/PolygonalRegion;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_4
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/SequenceOfRectangularRegion;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_5
    new-instance v1, Lorg/bouncycastle/oer/its/GeographicRegion;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/oer/its/CircularRegion;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CircularRegion;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/GeographicRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method


# virtual methods
.method public getChoice()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->choice:I

    return v0
.end method

.method public getRegion()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/GeographicRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
