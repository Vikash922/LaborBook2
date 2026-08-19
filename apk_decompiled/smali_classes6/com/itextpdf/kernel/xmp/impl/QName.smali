.class public Lcom/itextpdf/kernel/xmp/impl/QName;
.super Ljava/lang/Object;
.source "QName.java"


# instance fields
.field private localName:Ljava/lang/String;

.field private prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3a

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v1, 0x0

    .line 54
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->prefix:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->localName:Ljava/lang/String;

    goto :goto_0

    .line 59
    :cond_0
    const-string v0, ""

    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->prefix:Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->localName:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->prefix:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->localName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->prefix:Ljava/lang/String;

    return-object v0
.end method

.method public hasPrefix()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/impl/QName;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
