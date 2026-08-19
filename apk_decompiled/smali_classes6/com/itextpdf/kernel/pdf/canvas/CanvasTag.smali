.class public Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
.super Ljava/lang/Object;
.source "CanvasTag.java"


# instance fields
.field protected properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected role:Lcom/itextpdf/kernel/pdf/PdfName;


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfName;I)V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 93
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;)V
    .locals 1

    .line 103
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getRole()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfMcr;->getMcid()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;I)V

    return-void
.end method

.method private ensurePropertiesInit()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    :cond_0
    return-void
.end method

.method private getPropertyAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 218
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method


# virtual methods
.method public addProperty(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 1

    .line 159
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->ensurePropertiesInit()V

    .line 160
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p0
.end method

.method public getActualText()Ljava/lang/String;
    .locals 1

    .line 204
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->ActualText:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getPropertyAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpansionText()Ljava/lang/String;
    .locals 1

    .line 208
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->E:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->getPropertyAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMcid()I
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 124
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsInt(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eq v0, v1, :cond_1

    return v0

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "CanvasTag has no MCID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getProperties()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getProperty(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public getRole()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->role:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public hasMcid()Z
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MCID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeProperty(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-object p0
.end method

.method public setProperties(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/canvas/CanvasTag;->properties:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object p0
.end method
