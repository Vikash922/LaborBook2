.class Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;
.super Ljava/lang/Object;
.source "SmartModePdfObjectsSerializer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private md5:Ljava/security/MessageDigest;

.field private serializedContentToObj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/itextpdf/kernel/pdf/SerializedObjectContent;",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serializedContentToObj:Ljava/util/HashMap;

    .line 59
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->md5:Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 61
    new-instance v1, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private isKeyRefersBack(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 1

    .line 185
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 186
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private serArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfArray;",
            "Lcom/itextpdf/io/source/ByteBuffer;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException;
        }
    .end annotation

    .line 173
    const-string v0, "$A"

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    if-gtz p3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 176
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 177
    invoke-virtual {p1, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-direct {p0, v2, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_1
    const-string p1, "$\\A"

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    return-void
.end method

.method private serDic(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/io/source/ByteBuffer;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException;
        }
    .end annotation

    .line 157
    const-string v0, "$D"

    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    if-gtz p3, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 161
    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->isKeyRefersBack(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 164
    :cond_1
    invoke-direct {p0, v1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V

    const/4 v2, 0x0

    .line 165
    invoke-virtual {p1, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V

    goto :goto_0

    .line 168
    :cond_2
    const-string p1, "$\\D"

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    return-void
.end method

.method private serObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            "Lcom/itextpdf/io/source/ByteBuffer;",
            "I",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "[B>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException;
        }
    .end annotation

    if-gtz p3, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 103
    const-string p1, "$Lnull"

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    return-void

    .line 109
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 110
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 111
    invoke-interface {p4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_2

    .line 113
    invoke-virtual {p2, v0}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    return-void

    .line 117
    :cond_2
    invoke-interface {p4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 121
    invoke-interface {p4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    .line 125
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    move-object v5, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, p2

    move-object p2, v5

    goto :goto_0

    .line 119
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException;

    invoke-direct {p1, v1}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException;-><init>(Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$1;)V

    throw p1

    :cond_4
    move-object v0, v1

    .line 129
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 130
    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    add-int/lit8 v4, p3, -0x1

    invoke-direct {p0, v2, p2, v4, p4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serDic(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V

    .line 131
    const-string v2, "$B"

    invoke-virtual {p2, v2}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    if-lez p3, :cond_a

    .line 133
    iget-object p3, p0, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->md5:Ljava/security/MessageDigest;

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {p1, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append([B)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 135
    :cond_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 136
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serDic(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V

    goto :goto_1

    .line 137
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 138
    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfArray;

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serArray(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V

    goto :goto_1

    .line 139
    :cond_7
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result p3

    if-eqz p3, :cond_8

    .line 141
    const-string p3, "$S"

    invoke-virtual {p2, p3}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 142
    :cond_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result p3

    if-eqz p3, :cond_9

    .line 143
    const-string p3, "$N"

    invoke-virtual {p2, p3}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    goto :goto_1

    .line 146
    :cond_9
    const-string p3, "$L"

    invoke-virtual {p2, p3}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    move-result-object p3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/itextpdf/io/source/ByteBuffer;->append(Ljava/lang/String;)Lcom/itextpdf/io/source/ByteBuffer;

    :cond_a
    :goto_1
    if-eqz v1, :cond_b

    .line 150
    invoke-virtual {p2}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object p1

    invoke-interface {p4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {p2}, Lcom/itextpdf/io/source/ByteBuffer;->getInternalBuffer()[B

    move-result-object p1

    invoke-virtual {p2}, Lcom/itextpdf/io/source/ByteBuffer;->size()I

    move-result p2

    invoke-virtual {v1, p1, v3, p2}, Lcom/itextpdf/io/source/ByteBuffer;->append([BII)Lcom/itextpdf/io/source/ByteBuffer;

    :cond_b
    return-void
.end method


# virtual methods
.method public getSavedSerializedObject(Lcom/itextpdf/kernel/pdf/SerializedObjectContent;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    if-eqz p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serializedContentToObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public saveSerializedObject(Lcom/itextpdf/kernel/pdf/SerializedObjectContent;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serializedContentToObj:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public serializeObject(Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/SerializedObjectContent;
    .locals 4

    .line 77
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v0

    if-nez v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 84
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_1

    .line 86
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    const/16 v3, 0x64

    .line 89
    :try_start_0
    invoke-direct {p0, p1, v0, v3, v2}, Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer;->serObject(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/io/source/ByteBuffer;ILjava/util/Map;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/pdf/SmartModePdfObjectsSerializer$SelfReferenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v0

    goto :goto_0

    :catch_0
    return-object v1

    .line 95
    :cond_1
    :goto_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/pdf/SerializedObjectContent;-><init>([B)V

    return-object p1
.end method
