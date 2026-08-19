.class Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;
.super Ljava/lang/Object;
.source "PdfDictionaryEntrySet.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DirectEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Lcom/itextpdf/kernel/pdf/PdfName;",
        "Lcom/itextpdf/kernel/pdf/PdfObject;",
        ">;"
    }
.end annotation


# instance fields
.field entry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->entry:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 136
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 138
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 139
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->getKey()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    .line 140
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 142
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 143
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public getKey()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->getKey()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 107
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 152
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->getKey()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->getValue()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setValue(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    return-object p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 107
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfObject;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionaryEntrySet$DirectEntry;->setValue(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method
