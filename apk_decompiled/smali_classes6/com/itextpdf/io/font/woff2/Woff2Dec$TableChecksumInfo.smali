.class Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;
.super Ljava/lang/Object;
.source "Woff2Dec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/io/font/woff2/Woff2Dec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TableChecksumInfo"
.end annotation


# instance fields
.field public offset:I

.field public tag:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput p1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->tag:I

    .line 129
    iput p2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->offset:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 140
    :cond_0
    instance-of v1, p1, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 141
    check-cast p1, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;

    .line 142
    iget v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->tag:I

    iget v3, p1, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->tag:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->offset:I

    iget p1, p1, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->offset:I

    if-ne v1, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    return v0

    :cond_2
    return v2
.end method

.method public hashCode()I
    .locals 3

    .line 134
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->tag:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0xd

    new-instance v1, Ljava/lang/Integer;

    iget v2, p0, Lcom/itextpdf/io/font/woff2/Woff2Dec$TableChecksumInfo;->offset:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
