.class public Lorg/bouncycastle/oer/OEROutputStream;
.super Ljava/lang/Object;


# static fields
.field private static final bits:[I


# instance fields
.field protected debugOutput:Ljava/io/PrintWriter;

.field private final out:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        0x40
        0x80
    .end array-data
.end method

.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    iput-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public static byteLength(J)I
    .locals 6

    const/16 v0, 0x8

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const-wide/high16 v2, -0x100000000000000L

    and-long/2addr v2, p0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    shl-long/2addr p0, v0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static create(Ljava/io/OutputStream;)Lorg/bouncycastle/oer/OEROutputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/OEROutputStream;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OEROutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method private encodeLength(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x7f

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_0
    return-void
.end method

.method private encodeQuantity(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    array-length v0, p1

    invoke-virtual {p2, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object p2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method protected debugPrint(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v0, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    :goto_0
    array-length v4, v0

    if-eq v3, v4, :cond_2

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "debugPrint"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v1

    goto :goto_1

    :cond_0
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OERInput"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-lez v2, :cond_3

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    :cond_4
    return-void
.end method

.method public write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {p1}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    return-void

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    sget-object v0, Lorg/bouncycastle/oer/OEROutputStream$1;->$SwitchMap$org$bouncycastle$oer$OERDefinition$BaseType:[I

    iget-object v1, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0xff

    const/4 v2, 0x6

    const-string v3, ""

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_17

    :pswitch_1
    iget-object p2, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->label:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Boolean;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Boolean;->isTrue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :cond_2
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v5}, Ljava/io/OutputStream;->write(I)V

    goto :goto_3

    :pswitch_2
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :pswitch_3
    invoke-static {p1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isFixedLength()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result p1

    array-length v1, v0

    add-int/2addr v1, v4

    int-to-long v1, v1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_1
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_4
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1UTF8String;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1UTF8String;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object p1

    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p2, v3}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto/16 :goto_17

    :pswitch_5
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isFixedLength()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    :goto_4
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    :goto_5
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_6
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->intBytesForRange()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(ILjava/math/BigInteger;)[B

    move-result-object p1

    if-eq v0, v4, :cond_7

    const/4 v1, 0x2

    if-eq v0, v1, :cond_7

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x8

    if-ne v0, v1, :cond_6

    goto :goto_6

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "unknown uint length "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_6
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_5

    :cond_8
    if-gez v0, :cond_d

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    const/4 v1, -0x8

    if-eq v0, v1, :cond_c

    const/4 v1, -0x4

    if-eq v0, v1, :cond_b

    const/4 v1, -0x2

    if-eq v0, v1, :cond_a

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    new-array v0, v4, [B

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->byteValueExact(Ljava/math/BigInteger;)B

    move-result p1

    aput-byte p1, v0, v5

    goto :goto_7

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string/jumbo p2, "unknown twos compliment length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->shortValueExact(Ljava/math/BigInteger;)S

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v0

    goto :goto_7

    :cond_b
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->intValueExact(Ljava/math/BigInteger;)I

    move-result p1

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    goto :goto_7

    :cond_c
    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->longValueExact(Ljava/math/BigInteger;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v0

    :goto_7
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5

    :cond_d
    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->isLowerRangeZero()Z

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    if-eqz v0, :cond_e

    invoke-static {p1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object p1

    goto :goto_8

    :cond_e
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    :goto_8
    array-length v0, p1

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->encodeLength(J)V

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto/16 :goto_5

    :pswitch_7
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v0, :cond_f

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    goto :goto_9

    :cond_f
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getValue()Ljava/math/BigInteger;

    move-result-object p1

    :goto_9
    iget-object v0, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Element;

    iget-object v2, v2, Lorg/bouncycastle/oer/OERDefinition$Element;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    const-wide/16 v2, 0x7f

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-lez v0, :cond_11

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    array-length v0, p1

    and-int/2addr v0, v1

    or-int/lit16 v0, v0, 0x80

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_a

    :cond_11
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x7f

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_a
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->rangeExpression()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    return-void

    :cond_12
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enum value "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object p1

    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " no in defined child list"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_8
    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    new-instance v0, Lorg/bouncycastle/oer/BitBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/BitBuilder;-><init>()V

    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v1, :cond_13

    check-cast p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getApplicationTag()I

    move-result v1

    invoke-virtual {v0, v5}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;->getEnclosedObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    goto :goto_b

    :cond_13
    instance-of v1, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_17

    check-cast p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v1

    and-int/lit16 v3, v1, 0x80

    invoke-virtual {v0, v3}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v3

    and-int/lit8 v1, v1, 0x40

    invoke-virtual {v3, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object p1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Object;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p1

    :goto_b
    const/16 v3, 0x3f

    if-gt v1, v3, :cond_14

    int-to-long v3, v1

    invoke-virtual {v0, v3, v4, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    goto :goto_c

    :cond_14
    const-wide/16 v3, 0xff

    invoke-virtual {v0, v3, v4, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/BitBuilder;->write7BitBytes(I)V

    :goto_c
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->debugOutput:Ljava/io/PrintWriter;

    if-eqz v2, :cond_16

    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1ApplicationSpecific;

    if-eqz v2, :cond_15

    const-string v2, "AS"

    :goto_d
    invoke-virtual {p2, v2}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    goto :goto_e

    :cond_15
    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_16

    const-string v2, "CS"

    goto :goto_d

    :cond_16
    :goto_e
    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/oer/BitBuilder;->writeAndClear(Ljava/io/OutputStream;)I

    iget-object p2, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$Element;

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    goto/16 :goto_3

    :cond_17
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only support tagged objects"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_9
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_18

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result p1

    :goto_f
    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/oer/OEROutputStream;->encodeQuantity(J)V

    goto :goto_10

    :cond_18
    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_1a

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result p1

    goto :goto_f

    :goto_10
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->getFirstChid()Lorg/bouncycastle/oer/OERDefinition$Element;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    goto :goto_10

    :cond_19
    iget-object p1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p2, v3}, Lorg/bouncycastle/oer/OERDefinition$Element;->appendLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OEROutputStream;->debugPrint(Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "encodable at for SEQ_OF is not a container"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_a
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object p1

    iget-boolean v0, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->extensionsInDefinition:Z

    const/4 v1, 0x7

    if-eqz v0, :cond_1b

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$Element;->hasPopulatedExtension()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v0, v0, v1

    goto :goto_11

    :cond_1b
    move v2, v1

    :cond_1c
    move v0, v5

    :goto_11
    move v4, v5

    :goto_12
    iget-object v6, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_24

    iget-object v6, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/oer/OERDefinition$Element;

    if-gez v2, :cond_1d

    iget-object v2, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    move v2, v1

    move v0, v5

    :cond_1d
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    iget-boolean v8, v6, Lorg/bouncycastle/oer/OERDefinition$Element;->explicit:Z

    if-eqz v8, :cond_1f

    instance-of v8, v7, Lorg/bouncycastle/oer/OEROptional;

    if-nez v8, :cond_1e

    goto :goto_13

    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "absent sequence element that is required by oer definition"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1f
    :goto_13
    iget-boolean v8, v6, Lorg/bouncycastle/oer/OERDefinition$Element;->explicit:Z

    if-nez v8, :cond_23

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    if-eqz v9, :cond_21

    instance-of v7, v8, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v7, :cond_20

    check-cast v8, Lorg/bouncycastle/oer/OEROptional;

    invoke-virtual {v8}, Lorg/bouncycastle/oer/OEROptional;->isDefined()Z

    move-result v7

    if-eqz v7, :cond_22

    invoke-virtual {v8}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    iget-object v6, v6, Lorg/bouncycastle/oer/OERDefinition$Element;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v7, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v6, v6, v2

    goto :goto_14

    :cond_20
    invoke-virtual {v6}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_22

    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v6, v6, v2

    goto :goto_14

    :cond_21
    sget-object v6, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    if-eq v7, v6, :cond_22

    sget-object v6, Lorg/bouncycastle/oer/OEROutputStream;->bits:[I

    aget v6, v6, v2

    :goto_14
    or-int/2addr v0, v6

    :cond_22
    add-int/lit8 v2, v2, -0x1

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_12

    :cond_24
    if-eq v2, v1, :cond_25

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_25
    :goto_15
    iget-object v0, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_19

    invoke-virtual {p1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    iget-object v1, p2, Lorg/bouncycastle/oer/OERDefinition$Element;->children:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/oer/OERDefinition$Element;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    if-eqz v2, :cond_26

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Element;->getDefaultValue()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_16

    :cond_26
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/oer/OEROutputStream;->write(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/OERDefinition$Element;)V

    :goto_16
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :goto_17
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
