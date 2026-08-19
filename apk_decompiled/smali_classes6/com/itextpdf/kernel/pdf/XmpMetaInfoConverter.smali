.class Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;
.super Ljava/lang/Object;
.source "XmpMetaInfoConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendArrayItemIfDoesNotExist(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 161
    invoke-interface {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->countArrayItems(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :cond_0
    if-ge v1, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 163
    invoke-interface {p0, p1, p2, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v2

    .line 164
    invoke-interface {v2}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 168
    :cond_1
    new-instance v6, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-direct {v6, p4}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>(I)V

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-interface/range {v3 .. v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->appendArrayItem(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    return-void
.end method

.method static appendDocumentInfoToMetadata(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 116
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 118
    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 121
    :cond_1
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v8, v2

    goto :goto_2

    .line 123
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 128
    :goto_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Title:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 129
    const-string v6, "x-default"

    const-string v7, "x-default"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "title"

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 130
    :cond_3
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Author:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "http://purl.org/dc/elements/1.1/"

    const/4 v4, 0x0

    const-string v5, ",|;"

    if-eqz v2, :cond_5

    .line 131
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_3
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 132
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    .line 133
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x400

    const-string v7, "creator"

    invoke-static {p1, v3, v7, v5, v6}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendArrayItemIfDoesNotExist(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 136
    :cond_5
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Subject:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 137
    const-string v6, "x-default"

    const-string v7, "x-default"

    const-string v4, "http://purl.org/dc/elements/1.1/"

    const-string v5, "description"

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_6
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Keywords:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "http://ns.adobe.com/pdf/1.3/"

    if-eqz v2, :cond_9

    .line 139
    invoke-virtual {v8, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_4
    if-ge v4, v2, :cond_8

    aget-object v5, v1, v4

    .line 140
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_7

    .line 141
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v7, 0x200

    const-string v9, "subject"

    invoke-static {p1, v3, v9, v5, v7}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendArrayItemIfDoesNotExist(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 144
    :cond_8
    const-string v1, "Keywords"

    invoke-interface {p1, v6, v1, v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 145
    :cond_9
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Creator:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "http://ns.adobe.com/xap/1.0/"

    if-eqz v2, :cond_a

    .line 146
    const-string v1, "CreatorTool"

    invoke-interface {p1, v3, v1, v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 147
    :cond_a
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 148
    const-string v1, "Producer"

    invoke-interface {p1, v6, v1, v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 149
    :cond_b
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CreationDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 150
    const-string v1, "CreateDate"

    invoke-static {v8}, Lcom/itextpdf/kernel/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 151
    :cond_c
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 152
    const-string v1, "ModifyDate"

    invoke-static {v8}, Lcom/itextpdf/kernel/pdf/PdfDate;->getW3CDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v3, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 153
    :cond_d
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Trapped:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 154
    const-string v1, "Trapped"

    invoke-interface {p1, v6, v1, v8}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method static appendMetadataToInfo([BLcom/itextpdf/kernel/pdf/PdfDocumentInfo;)V
    .locals 5

    .line 60
    const-string v0, "http://ns.adobe.com/pdf/1.3/"

    const-string v1, "x-default"

    const-string v2, "http://purl.org/dc/elements/1.1/"

    if-eqz p0, :cond_7

    .line 62
    :try_start_0
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p0

    .line 64
    const-string v3, "title"

    invoke-interface {p0, v2, v3, v1, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v3}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setTitle(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 69
    :cond_0
    const-string v3, "creator"

    invoke-static {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->fetchArrayIntoString(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 71
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setAuthor(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 75
    :cond_1
    const-string v3, "Keywords"

    invoke-interface {p0, v0, v3}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 77
    invoke-interface {v3}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setKeywords(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    goto :goto_0

    .line 79
    :cond_2
    const-string v3, "subject"

    invoke-static {p0, v2, v3}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->fetchArrayIntoString(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 81
    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setKeywords(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 85
    :cond_3
    :goto_0
    const-string v3, "description"

    invoke-interface {p0, v2, v3, v1, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getLocalizedText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 87
    invoke-interface {v1}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setSubject(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 90
    :cond_4
    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "CreatorTool"

    invoke-interface {p0, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 92
    invoke-interface {v1}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setCreator(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 95
    :cond_5
    const-string v1, "Producer"

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 97
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Producer:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v1}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v4, "UnicodeBig"

    invoke-direct {v3, v1, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 100
    :cond_6
    const-string v1, "Trapped"

    invoke-interface {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 102
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-interface {p0}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->setTrapped(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    return-void
.end method

.method private static fetchArrayIntoString(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 172
    invoke-interface {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->countArrayItems(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v3, v1

    :goto_0
    if-ge v2, v0, :cond_2

    add-int/lit8 v2, v2, 0x1

    .line 175
    invoke-interface {p0, p1, p2, v2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getArrayItem(Ljava/lang/String;Ljava/lang/String;I)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object v4

    if-nez v3, :cond_0

    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    .line 178
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 179
    const-string v5, "; "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :cond_1
    :goto_1
    invoke-interface {v4}, Lcom/itextpdf/kernel/xmp/properties/XMPProperty;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 183
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    return-object v1
.end method
