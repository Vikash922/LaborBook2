.class public final enum Lcom/itextpdf/signatures/LtvVerification$Level;
.super Ljava/lang/Enum;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/signatures/LtvVerification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Level"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/signatures/LtvVerification$Level;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum OCSP:Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum OCSP_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

.field public static final enum OCSP_OPTIONAL_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 111
    new-instance v0, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v1, "OCSP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 115
    new-instance v1, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v2, "CRL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/signatures/LtvVerification$Level;->CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 119
    new-instance v2, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v3, "OCSP_CRL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 123
    new-instance v3, Lcom/itextpdf/signatures/LtvVerification$Level;

    const-string v4, "OCSP_OPTIONAL_CRL"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/itextpdf/signatures/LtvVerification$Level;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    .line 107
    filled-new-array {v0, v1, v2, v3}, [Lcom/itextpdf/signatures/LtvVerification$Level;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/LtvVerification$Level;->$VALUES:[Lcom/itextpdf/signatures/LtvVerification$Level;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 107
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/signatures/LtvVerification$Level;
    .locals 1

    .line 107
    const-class v0, Lcom/itextpdf/signatures/LtvVerification$Level;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/signatures/LtvVerification$Level;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/signatures/LtvVerification$Level;
    .locals 1

    .line 107
    sget-object v0, Lcom/itextpdf/signatures/LtvVerification$Level;->$VALUES:[Lcom/itextpdf/signatures/LtvVerification$Level;

    invoke-virtual {v0}, [Lcom/itextpdf/signatures/LtvVerification$Level;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/signatures/LtvVerification$Level;

    return-object v0
.end method
