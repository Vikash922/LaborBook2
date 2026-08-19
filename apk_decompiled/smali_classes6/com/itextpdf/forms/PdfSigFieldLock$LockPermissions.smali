.class public final enum Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;
.super Ljava/lang/Enum;
.source "PdfSigFieldLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/forms/PdfSigFieldLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LockPermissions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

.field public static final enum FORM_FILLING:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

.field public static final enum FORM_FILLING_AND_ANNOTATION:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

.field public static final enum NO_CHANGES_ALLOWED:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 161
    new-instance v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    const-string v1, "NO_CHANGES_ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->NO_CHANGES_ALLOWED:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    new-instance v1, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    const-string v2, "FORM_FILLING"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->FORM_FILLING:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    new-instance v2, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    const-string v3, "FORM_FILLING_AND_ANNOTATION"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->FORM_FILLING_AND_ANNOTATION:Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    .line 160
    filled-new-array {v0, v1, v2}, [Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->$VALUES:[Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;
    .locals 1

    .line 160
    const-class v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    return-object p0
.end method

.method public static values()[Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;
    .locals 1

    .line 160
    sget-object v0, Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->$VALUES:[Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    invoke-virtual {v0}, [Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/itextpdf/forms/PdfSigFieldLock$LockPermissions;

    return-object v0
.end method
