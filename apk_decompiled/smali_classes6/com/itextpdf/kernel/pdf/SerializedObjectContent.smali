.class Lcom/itextpdf/kernel/pdf/SerializedObjectContent;
.super Ljava/lang/Object;
.source "SerializedObjectContent.java"


# instance fields
.field private final hash:I

.field private final serializedContent:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->serializedContent:[B

    .line 53
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->calculateHash([B)I

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->hash:I

    return-void
.end method

.method private static calculateHash([B)I
    .locals 4

    .line 70
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    mul-int/lit8 v2, v2, 0x1f

    .line 72
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 58
    instance-of v0, p1, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->serializedContent:[B

    check-cast p1, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->serializedContent:[B

    .line 60
    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 65
    iget v0, p0, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;->hash:I

    return v0
.end method
