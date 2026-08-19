.class public Lorg/jacoco/core/internal/data/CompactDataInput;
.super Ljava/io/DataInputStream;
.source "CompactDataInput.java"


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public readBooleanArray()[Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readVarInt()I

    move-result v0

    new-array v1, v0, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_2

    .line 63
    rem-int/lit8 v5, v3, 0x8

    if-nez v5, :cond_0

    .line 64
    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readByte()B

    move-result v4

    :cond_0
    and-int/lit8 v5, v4, 0x1

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    .line 66
    :goto_1
    aput-boolean v5, v1, v3

    ushr-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public readVarInt()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readByte()B

    move-result v0

    and-int/lit16 v1, v0, 0xff

    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_0

    return v1

    :cond_0
    and-int/lit8 v0, v0, 0x7f

    .line 49
    invoke-virtual {p0}, Lorg/jacoco/core/internal/data/CompactDataInput;->readVarInt()I

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    return v0
.end method
