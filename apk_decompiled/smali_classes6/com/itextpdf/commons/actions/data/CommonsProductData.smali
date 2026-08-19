.class public final Lcom/itextpdf/commons/actions/data/CommonsProductData;
.super Ljava/lang/Object;
.source "CommonsProductData.java"


# static fields
.field static final COMMONS_COPYRIGHT_SINCE:I = 0x7d0

.field static final COMMONS_COPYRIGHT_TO:I = 0x7e7

.field private static final COMMONS_PRODUCT_DATA:Lcom/itextpdf/commons/actions/data/ProductData;

.field static final COMMONS_PRODUCT_NAME:Ljava/lang/String; = "commons"

.field static final COMMONS_PUBLIC_PRODUCT_NAME:Ljava/lang/String; = "Commons"

.field static final COMMONS_VERSION:Ljava/lang/String; = "7.2.5"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 35
    new-instance v6, Lcom/itextpdf/commons/actions/data/ProductData;

    const/16 v4, 0x7d0

    const/16 v5, 0x7e7

    const-string v1, "Commons"

    const-string v2, "commons"

    const-string v3, "7.2.5"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/commons/actions/data/ProductData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sput-object v6, Lcom/itextpdf/commons/actions/data/CommonsProductData;->COMMONS_PRODUCT_DATA:Lcom/itextpdf/commons/actions/data/ProductData;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/itextpdf/commons/actions/data/ProductData;
    .locals 1

    .line 48
    sget-object v0, Lcom/itextpdf/commons/actions/data/CommonsProductData;->COMMONS_PRODUCT_DATA:Lcom/itextpdf/commons/actions/data/ProductData;

    return-object v0
.end method
