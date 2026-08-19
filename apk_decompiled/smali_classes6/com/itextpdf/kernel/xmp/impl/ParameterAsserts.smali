.class Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;
.super Ljava/lang/Object;
.source "ParameterAsserts.java"

# interfaces
.implements Lcom/itextpdf/kernel/xmp/XMPConst;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertArrayName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 62
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Empty array name"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertImplementation(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p0, :cond_1

    .line 168
    instance-of p0, p0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    if-eqz p0, :cond_0

    return-void

    .line 170
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v1, "The XMPMeta-object is not compatible with this implementation"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    .line 165
    :cond_1
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertNotNull(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eqz p0, :cond_2

    .line 148
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v1, "Parameter must not be null or empty"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v1, "Parameter must not be null"

    invoke-direct {p0, v1, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertPrefix(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 102
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 104
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Empty prefix"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertPropName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 74
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 76
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Empty property name"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertSchemaNS(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 88
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 90
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Empty schema namespace URI"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertSpecificLang(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 116
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 118
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Empty specific language"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method

.method public static assertStructName(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 132
    :cond_0
    new-instance p0, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Empty array name"

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p0
.end method
