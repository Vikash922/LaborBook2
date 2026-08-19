.class public Lorg/bouncycastle/oer/its/IdentifiedRegion;
.super Lorg/bouncycastle/asn1/ASN1Object;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;
.implements Lorg/bouncycastle/oer/its/RegionInterface;


# static fields
.field public static final countAndSubregions:I = 0x2

.field public static final countryAndRegions:I = 0x1

.field public static final countryOnly:I = 0x0

.field public static final extension:I = 0x3


# instance fields
.field private choice:I

.field private region:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->choice:I

    iput-object p2, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/IdentifiedRegion;
    .locals 3

    instance-of v0, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    return-object p0

    :cond_0
    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object p0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    invoke-static {p0}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "unknown choice "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    invoke-static {p0}, Lorg/bouncycastle/oer/its/RegionAndSubregions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/RegionAndSubregions;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_3
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    invoke-static {p0}, Lorg/bouncycastle/oer/its/CountryAndRegions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CountryAndRegions;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1

    :cond_4
    new-instance v1, Lorg/bouncycastle/oer/its/IdentifiedRegion;

    invoke-static {p0}, Lorg/bouncycastle/oer/its/CountryOnly;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/CountryOnly;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Lorg/bouncycastle/oer/its/IdentifiedRegion;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v1
.end method


# virtual methods
.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget v1, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->choice:I

    iget-object v2, p0, Lorg/bouncycastle/oer/its/IdentifiedRegion;->region:Lorg/bouncycastle/asn1/ASN1Encodable;

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Object;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method
