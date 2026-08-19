.class public Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;
.super Ljava/lang/Object;
.source "XMPSerializerRDF.java"


# static fields
.field private static final DEFAULT_PAD:I = 0x800

.field private static final PACKET_HEADER:Ljava/lang/String; = "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

.field private static final PACKET_TRAILER:Ljava/lang/String; = "<?xpacket end=\""

.field private static final PACKET_TRAILER2:Ljava/lang/String; = "\"?>"

.field static final RDF_ATTR_QUALIFIER:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RDF_EMPTY_STRUCT:Ljava/lang/String; = "<rdf:Description/>"

.field private static final RDF_RDF_END:Ljava/lang/String; = "</rdf:RDF>"

.field private static final RDF_RDF_START:Ljava/lang/String; = "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

.field private static final RDF_SCHEMA_END:Ljava/lang/String; = "</rdf:Description>"

.field private static final RDF_SCHEMA_START:Ljava/lang/String; = "<rdf:Description rdf:about="

.field private static final RDF_STRUCT_END:Ljava/lang/String; = "</rdf:Description>"

.field private static final RDF_STRUCT_START:Ljava/lang/String; = "<rdf:Description"

.field private static final RDF_XMPMETA_END:Ljava/lang/String; = "</x:xmpmeta>"

.field private static final RDF_XMPMETA_START:Ljava/lang/String; = "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""


# instance fields
.field private options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

.field private outputStream:Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;

.field private padding:I

.field private unicodeSize:I

.field private writer:Ljava/io/OutputStreamWriter;

.field private xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 91
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "xml:lang"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "rdf:resource"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "rdf:ID"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "rdf:bagID"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "rdf:nodeID"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 105
    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    return-void
.end method

.method private addPadding(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getExactPacketLength()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;->getBytesWritten()I

    move-result v0

    iget v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 167
    iget p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    if-gt v0, p1, :cond_0

    sub-int/2addr p1, v0

    .line 172
    iput p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    .line 169
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Can\'t fit into specified packet size"

    const/16 v1, 0x6b

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 176
    :cond_1
    :goto_0
    iget p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    div-int/2addr p1, v0

    iput p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    .line 178
    iget-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getNewline()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 179
    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    const/16 v1, 0x20

    if-lt v0, p1, :cond_3

    sub-int/2addr v0, p1

    .line 181
    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    .line 182
    :goto_1
    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    const/16 v2, 0x64

    add-int/lit8 v3, p1, 0x64

    if-lt v0, v3, :cond_2

    .line 184
    invoke-direct {p0, v2, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    .line 185
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 186
    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_1

    .line 188
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    .line 189
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_2

    .line 193
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeChars(IC)V

    :goto_2
    return-void
.end method

.method private appendNodeValue(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1314
    const-string p1, ""

    :cond_0
    const/4 v0, 0x1

    .line 1316
    invoke-static {p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/Utils;->escapeXML(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    return-void
.end method

.method private canBeRDFAttrProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z
    .locals 2

    .line 1335
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasQualifier()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1336
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isURI()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1337
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1338
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->containsOneOf(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "[]"

    .line 1339
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_1

    .line 898
    new-instance p2, Lcom/itextpdf/kernel/xmp/impl/QName;

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/xmp/impl/QName;-><init>(Ljava/lang/String;)V

    .line 899
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/QName;->hasPrefix()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 901
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/QName;->getPrefix()Ljava/lang/String;

    move-result-object p1

    .line 903
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/itextpdf/kernel/xmp/XMPSchemaRegistry;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 905
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    :cond_0
    return-void

    .line 912
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 915
    :cond_2
    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 917
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 918
    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 919
    const-string p4, "xmlns:"

    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 920
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 921
    const-string p4, "=\""

    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 922
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 p2, 0x22

    .line 923
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 924
    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method private declareUsedNamespaces(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/util/Set;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/xmp/impl/XMPNode;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 854
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isSchemaNode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 858
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_1

    .line 860
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isStruct()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 862
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 864
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 865
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    goto :goto_0

    .line 869
    :cond_1
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 871
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 872
    invoke-direct {p0, v2, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_2

    .line 875
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 877
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 878
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;I)V

    .line 879
    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_3

    :cond_3
    return-void
.end method

.method private emitRDFArrayTag(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 1267
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1269
    :cond_0
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    if-eqz p2, :cond_1

    .line 1270
    const-string p3, "<rdf:"

    goto :goto_0

    :cond_1
    const-string p3, "</rdf:"

    :goto_0
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 1274
    const-string p3, "Alt"

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1276
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 1278
    const-string p3, "Seq"

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 1282
    :cond_3
    const-string p3, "Bag"

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    :goto_1
    if-eqz p2, :cond_4

    .line 1285
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1287
    const-string p1, "/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1291
    :cond_4
    const-string p1, ">"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1294
    :goto_2
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_5
    return-void
.end method

.method private endOuterRDFDescription(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 p1, p1, 0x1

    .line 957
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 958
    const-string p1, "</rdf:Description>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 959
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    return-void
.end method

.method private serializeAsRDF()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 269
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 271
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 272
    const-string v0, "<?xpacket begin=\"\ufeff\" id=\"W5M0MpCehiHzreSzNTczkc9d\"?>"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 273
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitXmpMetaElement()Z

    move-result v0

    if-nez v0, :cond_2

    .line 279
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 280
    const-string v0, "<x:xmpmeta xmlns:x=\"adobe:ns:meta/\" x:xmptk=\""

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 282
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitVersionAttribute()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->getVersionInfo()Lcom/itextpdf/kernel/xmp/XMPVersionInfo;

    move-result-object v0

    invoke-interface {v0}, Lcom/itextpdf/kernel/xmp/XMPVersionInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 286
    :cond_1
    const-string v0, "\">"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 287
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v1, 0x1

    .line 292
    :cond_2
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 293
    const-string v0, "<rdf:RDF xmlns:rdf=\"http://www.w3.org/1999/02/22-rdf-syntax-ns#\">"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 294
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 297
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getUseCanonicalFormat()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFSchemas(I)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFSchemas(I)V

    .line 307
    :goto_0
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 308
    const-string v0, "</rdf:RDF>"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 312
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitXmpMetaElement()Z

    move-result v0

    if-nez v0, :cond_4

    add-int/lit8 v1, v1, -0x1

    .line 315
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 316
    const-string v0, "</x:xmpmeta>"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 317
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 321
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_7

    .line 323
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getBaseIndent()I

    move-result v0

    :goto_1
    if-lez v0, :cond_5

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getIndent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 328
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<?xpacket end=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getReadOnlyPacket()Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x72

    goto :goto_2

    :cond_6
    const/16 v1, 0x77

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method private serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p4

    .line 1022
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v4

    if-eqz p3, :cond_0

    .line 1025
    const-string v4, "rdf:value"

    goto :goto_0

    .line 1027
    :cond_0
    const-string v5, "[]"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1029
    const-string v4, "rdf:li"

    .line 1032
    :cond_1
    :goto_0
    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v5, 0x3c

    .line 1033
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1034
    invoke-direct {v0, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1039
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/16 v10, 0x22

    const-string v11, "=\""

    const/16 v12, 0x20

    const/4 v13, 0x1

    if-eqz v9, :cond_4

    .line 1041
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 1042
    sget-object v14, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    move v7, v13

    goto :goto_1

    .line 1048
    :cond_3
    const-string v8, "rdf:resource"

    invoke-virtual {v9}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez p3, :cond_2

    .line 1051
    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1052
    invoke-virtual {v9}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1053
    invoke-direct {v0, v11}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1054
    invoke-virtual {v9}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9, v13}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 1055
    invoke-direct {v0, v10}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_1

    .line 1062
    :cond_4
    const-string v5, "</rdf:Description>"

    const-string v9, "<rdf:Description"

    const-string v14, " rdf:parseType=\"Resource\">"

    const/16 v15, 0xca

    const/16 v10, 0x3e

    const-string v12, ">"

    if-eqz v7, :cond_9

    if-nez p3, :cond_9

    if-nez v8, :cond_8

    if-eqz v2, :cond_5

    .line 1079
    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1080
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v3, v3, 0x1

    .line 1083
    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1084
    invoke-direct {v0, v9}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1085
    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_2

    .line 1089
    :cond_5
    invoke-direct {v0, v14}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1091
    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v7, v3, 0x1

    .line 1093
    invoke-direct {v0, v1, v2, v13, v7}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    .line 1095
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1097
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 1098
    sget-object v9, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 1100
    invoke-direct {v0, v8, v2, v6, v7}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_10

    .line 1106
    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1107
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1108
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto/16 :goto_7

    .line 1071
    :cond_8
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v2, "Can\'t mix rdf:resource and general qualifiers"

    invoke-direct {v1, v2, v15}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1116
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v7

    const-string v15, "/>"

    if-nez v7, :cond_d

    .line 1120
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isURI()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1122
    const-string v2, " rdf:resource=\""

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1123
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 1124
    const-string v1, "\"/>"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1125
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_c

    .line 1128
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_c

    const-string v2, ""

    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_5

    .line 1136
    :cond_b
    invoke-direct {v0, v10}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    move/from16 v16, v13

    move v13, v6

    move/from16 v6, v16

    goto/16 :goto_c

    .line 1130
    :cond_c
    :goto_5
    invoke-direct {v0, v15}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1131
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_c

    .line 1141
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1144
    invoke-direct {v0, v10}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1145
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v5, v3, 0x1

    .line 1146
    invoke-direct {v0, v1, v13, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZI)V

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1149
    invoke-static/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    .line 1151
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v7

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 1153
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    add-int/lit8 v9, v3, 0x2

    .line 1154
    invoke-direct {v0, v8, v2, v6, v9}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    goto :goto_6

    .line 1156
    :cond_f
    invoke-direct {v0, v1, v6, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZI)V

    :cond_10
    :goto_7
    move v6, v13

    goto/16 :goto_c

    :cond_11
    if-nez v8, :cond_16

    .line 1163
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_13

    if-eqz v2, :cond_12

    .line 1169
    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1170
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v1, v3, 0x1

    .line 1171
    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1172
    const-string v1, "<rdf:Description/>"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    move v6, v13

    goto :goto_8

    .line 1176
    :cond_12
    const-string v1, " rdf:parseType=\"Resource\"/>"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1179
    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_c

    :cond_13
    if-eqz v2, :cond_14

    .line 1187
    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1188
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v3, v3, 0x1

    .line 1190
    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1191
    invoke-direct {v0, v9}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1192
    invoke-direct {v0, v12}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    goto :goto_9

    .line 1196
    :cond_14
    invoke-direct {v0, v14}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1198
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 1200
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 1202
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    add-int/lit8 v8, v3, 0x1

    .line 1203
    invoke-direct {v0, v7, v2, v6, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    goto :goto_a

    :cond_15
    if-eqz v2, :cond_10

    .line 1208
    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1209
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1210
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_4

    .line 1219
    :cond_16
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 1221
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 1222
    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v5

    if-eqz v5, :cond_17

    .line 1227
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v5, v3, 0x1

    .line 1228
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v5, 0x20

    .line 1229
    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1230
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1231
    invoke-direct {v0, v11}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1232
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v13}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v2, 0x22

    .line 1233
    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_b

    .line 1224
    :cond_17
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v2, "Can\'t mix rdf:resource and complex fields"

    const/16 v3, 0xca

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v1

    .line 1235
    :cond_18
    invoke-direct {v0, v15}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1236
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_c
    if-eqz v6, :cond_1a

    if-eqz v13, :cond_19

    .line 1246
    invoke-direct {v0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 1248
    :cond_19
    const-string v1, "</"

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1249
    invoke-direct {v0, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 1250
    invoke-direct {v0, v10}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 1251
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :cond_1a
    return-void
.end method

.method private serializeCanonicalRDFSchema(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 835
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 838
    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getUseCanonicalFormat()Z

    move-result v1

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private serializeCanonicalRDFSchemas(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getChildrenLength()I

    move-result v0

    if-lez v0, :cond_1

    .line 347
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->startOuterRDFDescription(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    .line 349
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 352
    invoke-direct {p0, v1, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFSchema(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    goto :goto_0

    .line 355
    :cond_0
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->endOuterRDFDescription(I)V

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 359
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 360
    const-string p1, "<rdf:Description rdf:about="

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    .line 362
    const-string p1, "/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 363
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_1
    return-void
.end method

.method private serializeCompactRDFArrayProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/16 v0, 0x3e

    .line 668
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 669
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    .line 670
    invoke-direct {p0, p1, v1, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZI)V

    .line 672
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    invoke-static {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNodeUtils;->normalizeLangArray(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    :cond_0
    add-int/lit8 p2, p2, 0x2

    .line 677
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    const/4 p2, 0x0

    .line 679
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->emitRDFArrayTag(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZI)V

    return-void
.end method

.method private serializeCompactRDFAttrProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 459
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 462
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 463
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 464
    const-string v3, "=\""

    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v2, 0x22

    .line 466
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    return v1
.end method

.method private serializeCompactRDFElementProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 529
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 531
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 532
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 543
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    .line 544
    const-string v2, "[]"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 546
    const-string v1, "rdf:li"

    .line 549
    :cond_2
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    const/16 v2, 0x3c

    .line 550
    invoke-direct {p0, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 551
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 556
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_4

    .line 558
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 559
    sget-object v8, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->RDF_ATTR_QUALIFIER:Ljava/util/Set;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    move v4, v7

    goto :goto_1

    .line 565
    :cond_3
    const-string v5, "rdf:resource"

    invoke-virtual {v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v8, 0x20

    .line 566
    invoke-direct {p0, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 567
    invoke-virtual {v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 568
    const-string v8, "=\""

    invoke-direct {p0, v8}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 569
    invoke-virtual {v6}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v7}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    const/16 v6, 0x22

    .line 570
    invoke-direct {p0, v6}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 578
    invoke-direct {p0, p2, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFGeneralQualifier(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V

    goto :goto_2

    .line 583
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isCompositeProperty()Z

    move-result v2

    if-nez v2, :cond_6

    .line 585
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFSimpleProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)[Z

    move-result-object v0

    .line 586
    aget-boolean v2, v0, v3

    .line 587
    aget-boolean v7, v0, v7

    move v0, v7

    move v7, v2

    goto :goto_3

    .line 589
    :cond_6
    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 591
    invoke-direct {p0, v0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFArrayProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    :goto_2
    move v0, v7

    goto :goto_3

    .line 595
    :cond_7
    invoke-direct {p0, v0, p2, v5}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFStructProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;IZ)Z

    move-result v0

    move v10, v7

    move v7, v0

    move v0, v10

    :goto_3
    if-eqz v7, :cond_0

    if-eqz v0, :cond_8

    .line 606
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 608
    :cond_8
    const-string v0, "</"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 609
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    const/16 v0, 0x3e

    .line 610
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 611
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto/16 :goto_0

    :cond_9
    return-void
.end method

.method private serializeCompactRDFGeneralQualifier(ILcom/itextpdf/kernel/xmp/impl/XMPNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 790
    const-string v0, " rdf:parseType=\"Resource\">"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 791
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    const/4 v0, 0x1

    add-int/2addr p1, v0

    const/4 v1, 0x0

    .line 793
    invoke-direct {p0, p2, v1, v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    .line 795
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateQualifier()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 798
    invoke-direct {p0, v0, v1, v1, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCanonicalRDFProperty(Lcom/itextpdf/kernel/xmp/impl/XMPNode;ZZI)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private serializeCompactRDFSchemas(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    add-int/lit8 v0, p1, 0x1

    .line 392
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 393
    const-string v1, "<rdf:Description rdf:about="

    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 394
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    .line 397
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 398
    const-string v2, "xml"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 399
    const-string v2, "rdf"

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    iget-object v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 403
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    add-int/lit8 v4, p1, 0x3

    .line 404
    invoke-direct {p0, v3, v1, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/util/Set;I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 411
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    add-int/lit8 v4, p1, 0x2

    .line 412
    invoke-direct {p0, v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)Z

    move-result v3

    and-int/2addr v2, v3

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    const/16 v1, 0x3e

    .line 417
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 418
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 428
    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 430
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    add-int/lit8 v3, p1, 0x2

    .line 431
    invoke-direct {p0, v2, v3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    goto :goto_2

    .line 435
    :cond_2
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 436
    const-string p1, "</rdf:Description>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    return-void

    .line 422
    :cond_3
    const-string p1, "/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    return-void
.end method

.method private serializeCompactRDFSimpleProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)[Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 631
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isURI()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 633
    const-string v0, " rdf:resource=\""

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 634
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 635
    const-string p1, "\"/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_0
    move p1, v1

    move v0, v2

    goto :goto_2

    .line 639
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x3e

    .line 647
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 648
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    move v0, v1

    move p1, v2

    goto :goto_2

    .line 641
    :cond_2
    :goto_1
    const-string p1, "/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 642
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_0

    :goto_2
    const/4 v3, 0x2

    .line 652
    new-array v3, v3, [Z

    aput-boolean p1, v3, v1

    aput-boolean v0, v3, v2

    return-object v3
.end method

.method private serializeCompactRDFStructProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;IZ)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 701
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->iterateChildren()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    .line 703
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    .line 704
    invoke-direct {p0, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->canBeRDFAttrProp(Lcom/itextpdf/kernel/xmp/impl/XMPNode;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    :cond_2
    if-eqz p3, :cond_4

    if-nez v3, :cond_3

    goto :goto_1

    .line 721
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Can\'t mix rdf:resource qualifier and element fields"

    const/16 p3, 0xca

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    .line 726
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->hasChildren()Z

    move-result p3

    if-nez p3, :cond_5

    .line 732
    const-string p1, " rdf:parseType=\"Resource\"/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 733
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_3

    :cond_5
    if-nez v3, :cond_6

    add-int/2addr p2, v5

    .line 741
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)Z

    .line 742
    const-string p1, "/>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 743
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    goto :goto_3

    :cond_6
    if-nez v2, :cond_7

    .line 751
    const-string p3, " rdf:parseType=\"Resource\">"

    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 752
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/2addr p2, v5

    .line 753
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    goto :goto_2

    :cond_7
    const/16 p3, 0x3e

    .line 759
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 760
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    add-int/lit8 p3, p2, 0x1

    .line 761
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 762
    const-string v0, "<rdf:Description"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x2

    .line 763
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFAttrProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)Z

    .line 764
    const-string p2, ">"

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 765
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    .line 766
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeCompactRDFElementProps(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V

    .line 767
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 768
    const-string p1, "</rdf:Description>"

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 769
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    :goto_2
    move v1, v5

    :goto_3
    return v1
.end method

.method private startOuterRDFDescription(Lcom/itextpdf/kernel/xmp/impl/XMPNode;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int/lit8 v0, p2, 0x1

    .line 937
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeIndent(I)V

    .line 938
    const-string v0, "<rdf:Description rdf:about="

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 939
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeTreeName()V

    .line 941
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 942
    const-string v1, "xml"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    const-string v1, "rdf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x3

    .line 945
    invoke-direct {p0, p1, v0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->declareUsedNamespaces(Lcom/itextpdf/kernel/xmp/impl/XMPNode;Ljava/util/Set;I)V

    const/16 p1, 0x3e

    .line 947
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 948
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writeNewline()V

    return-void
.end method

.method private write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1364
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(I)V

    return-void
.end method

.method private write(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeChars(IC)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {v0, p2}, Ljava/io/OutputStreamWriter;->write(I)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeIndent(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1350
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getBaseIndent()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    if-lez v0, :cond_0

    .line 1352
    iget-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getIndent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private writeNewline()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1400
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getNewline()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    return-void
.end method

.method private writeTreeName()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x22

    .line 373
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    .line 374
    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->getRoot()Lcom/itextpdf/kernel/xmp/impl/XMPNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/impl/XMPNode;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 377
    invoke-direct {p0, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->appendNodeValue(Ljava/lang/String;Z)V

    .line 379
    :cond_0
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(I)V

    return-void
.end method


# virtual methods
.method protected checkOptionsConsistence()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 204
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getEncodeUTF16BE()Z

    move-result v0

    iget-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getEncodeUTF16LE()Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 206
    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getExactPacketLength()Z

    move-result v0

    const/16 v1, 0x67

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v2

    or-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getPadding()I

    move-result v0

    iget v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v0, v2

    if-nez v0, :cond_1

    goto/16 :goto_0

    .line 218
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v2, "Exact size must be a multiple of the Unicode element"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 213
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v2, "Inconsistent options for exact size serialize"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getReadOnlyPacket()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 224
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    iget-object v3, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v3

    or-int/2addr v0, v3

    if-nez v0, :cond_4

    .line 229
    iput v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    .line 226
    :cond_4
    new-instance v0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v2, "Inconsistent options for read-only packet"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getOmitPacketWrapper()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 233
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-nez v0, :cond_6

    .line 238
    iput v2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    goto :goto_0

    .line 235
    :cond_6
    new-instance v0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v2, "Inconsistent options for non-packet serialize"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw v0

    .line 242
    :cond_7
    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    if-nez v0, :cond_8

    .line 244
    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v0, v0, 0x800

    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    .line 247
    :cond_8
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getIncludeThumbnailPad()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 249
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    const-string v1, "http://ns.adobe.com/xap/1.0/"

    const-string v2, "Thumbnails"

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 251
    iget v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    iget v1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->unicodeSize:I

    mul-int/lit16 v1, v1, 0x2710

    add-int/2addr v0, v1

    iput v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    :cond_9
    :goto_0
    return-void
.end method

.method public serialize(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 125
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;

    .line 126
    check-cast p1, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->xmp:Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    .line 127
    iput-object p3, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->options:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 128
    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getPadding()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->padding:I

    .line 130
    new-instance p1, Ljava/io/OutputStreamWriter;

    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;

    invoke-virtual {p3}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    .line 132
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->checkOptionsConsistence()V

    .line 136
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serializeAsRDF()Ljava/lang/String;

    move-result-object p1

    .line 137
    iget-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p2}, Ljava/io/OutputStreamWriter;->flush()V

    .line 140
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->addPadding(I)V

    .line 143
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->write(Ljava/lang/String;)V

    .line 144
    iget-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->writer:Ljava/io/OutputStreamWriter;

    invoke-virtual {p1}, Ljava/io/OutputStreamWriter;->flush()V

    .line 146
    iget-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->outputStream:Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/impl/CountOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 150
    :catch_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string p2, "Error writing to the OutputStream"

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method
