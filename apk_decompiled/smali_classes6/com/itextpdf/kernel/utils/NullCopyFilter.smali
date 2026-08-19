.class public final Lcom/itextpdf/kernel/utils/NullCopyFilter;
.super Ljava/lang/Object;
.source "NullCopyFilter.java"

# interfaces
.implements Lcom/itextpdf/kernel/utils/ICopyFilter;


# static fields
.field private static final INSTANCE:Lcom/itextpdf/kernel/utils/NullCopyFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/itextpdf/kernel/utils/NullCopyFilter;

    invoke-direct {v0}, Lcom/itextpdf/kernel/utils/NullCopyFilter;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/utils/NullCopyFilter;->INSTANCE:Lcom/itextpdf/kernel/utils/NullCopyFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/itextpdf/kernel/utils/NullCopyFilter;
    .locals 1

    .line 63
    sget-object v0, Lcom/itextpdf/kernel/utils/NullCopyFilter;->INSTANCE:Lcom/itextpdf/kernel/utils/NullCopyFilter;

    return-object v0
.end method


# virtual methods
.method public shouldProcess(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
