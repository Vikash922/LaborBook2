.class public final Lcom/itextpdf/commons/actions/data/ProductData;
.super Ljava/lang/Object;
.source "ProductData.java"


# instance fields
.field private final minimalCompatibleLicenseKeyVersion:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final publicProductName:Ljava/lang/String;

.field private final sinceCopyrightYear:I

.field private final toCopyrightYear:I

.field private final version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    .line 49
    invoke-direct/range {v0 .. v6}, Lcom/itextpdf/commons/actions/data/ProductData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/itextpdf/commons/actions/data/ProductData;->publicProductName:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->productName:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/itextpdf/commons/actions/data/ProductData;->version:Ljava/lang/String;

    .line 67
    iput-object p4, p0, Lcom/itextpdf/commons/actions/data/ProductData;->minimalCompatibleLicenseKeyVersion:Ljava/lang/String;

    .line 68
    iput p5, p0, Lcom/itextpdf/commons/actions/data/ProductData;->sinceCopyrightYear:I

    .line 69
    iput p6, p0, Lcom/itextpdf/commons/actions/data/ProductData;->toCopyrightYear:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 132
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 136
    :cond_1
    check-cast p1, Lcom/itextpdf/commons/actions/data/ProductData;

    .line 137
    iget-object v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->publicProductName:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/commons/actions/data/ProductData;->publicProductName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->productName:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/commons/actions/data/ProductData;->productName:Ljava/lang/String;

    .line 138
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->version:Ljava/lang/String;

    iget-object v3, p1, Lcom/itextpdf/commons/actions/data/ProductData;->version:Ljava/lang/String;

    .line 139
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->sinceCopyrightYear:I

    iget v3, p1, Lcom/itextpdf/commons/actions/data/ProductData;->sinceCopyrightYear:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->toCopyrightYear:I

    iget p1, p1, Lcom/itextpdf/commons/actions/data/ProductData;->toCopyrightYear:I

    if-ne v2, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getMinCompatibleLicensingModuleVersion()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->minimalCompatibleLicenseKeyVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getProductName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public getPublicProductName()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->publicProductName:Ljava/lang/String;

    return-object v0
.end method

.method public getSinceCopyrightYear()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->sinceCopyrightYear:I

    return v0
.end method

.method public getToCopyrightYear()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->toCopyrightYear:I

    return v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/itextpdf/commons/actions/data/ProductData;->publicProductName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    .line 146
    iget-object v3, p0, Lcom/itextpdf/commons/actions/data/ProductData;->productName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    add-int/2addr v2, v3

    add-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x1f

    .line 147
    iget-object v3, p0, Lcom/itextpdf/commons/actions/data/ProductData;->version:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_2
    add-int/2addr v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    .line 148
    iget v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->sinceCopyrightYear:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    .line 149
    iget v2, p0, Lcom/itextpdf/commons/actions/data/ProductData;->toCopyrightYear:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method
