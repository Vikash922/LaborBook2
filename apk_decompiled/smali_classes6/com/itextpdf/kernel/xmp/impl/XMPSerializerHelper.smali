.class public Lcom/itextpdf/kernel/xmp/impl/XMPSerializerHelper;
.super Ljava/lang/Object;
.source "XMPSerializerHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p2, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {p2}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    .line 66
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getSort()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->sort()V

    .line 70
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;-><init>()V

    invoke-virtual {v0, p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerRDF;->serialize(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    return-void
.end method

.method public static serializeToBuffer(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 119
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 120
    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerHelper;->serialize(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    .line 121
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public static serializeToString(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    :goto_0
    const/4 v0, 0x1

    .line 90
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setEncodeUTF16BE(Z)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 92
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x800

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 93
    invoke-static {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPSerializerHelper;->serialize(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Ljava/io/OutputStream;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    .line 97
    :try_start_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->getEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 103
    :catch_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
