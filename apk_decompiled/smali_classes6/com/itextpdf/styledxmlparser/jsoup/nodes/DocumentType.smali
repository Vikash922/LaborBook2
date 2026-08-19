.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;
.super Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;
.source "DocumentType.java"


# static fields
.field private static final NAME:Ljava/lang/String; = "name"

.field private static final PUBLIC_ID:Ljava/lang/String; = "publicId"

.field public static final PUBLIC_KEY:Ljava/lang/String; = "PUBLIC"

.field private static final PUB_SYS_KEY:Ljava/lang/String; = "pubSysKey"

.field private static final SYSTEM_ID:Ljava/lang/String; = "systemId"

.field public static final SYSTEM_KEY:Ljava/lang/String; = "SYSTEM"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/LeafNode;-><init>()V

    .line 48
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 49
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 50
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 51
    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 52
    const-string p1, "publicId"

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 53
    const-string p1, "systemId"

    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 54
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->updatePubSyskey()V

    return-void
.end method

.method private has(Ljava/lang/String;)Z
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private updatePubSyskey()V
    .locals 2

    .line 63
    const-string v0, "publicId"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "pubSysKey"

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "PUBLIC"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    goto :goto_0

    .line 65
    :cond_0
    const-string v0, "systemId"

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string v0, "SYSTEM"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public name()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .locals 1

    .line 95
    const-string v0, "#doctype"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_0

    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 102
    const-string p2, "<!doctype"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0

    .line 104
    :cond_0
    const-string p2, "<!DOCTYPE"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 106
    :goto_0
    const-string p2, "name"

    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_1

    .line 107
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 108
    :cond_1
    const-string p2, "pubSysKey"

    invoke-direct {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 109
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 110
    :cond_2
    invoke-direct {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_3

    .line 111
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 112
    :cond_3
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 113
    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_4
    const/16 p2, 0x3e

    .line 114
    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 0

    return-void
.end method

.method public publicId()Ljava/lang/String;
    .locals 1

    .line 82
    const-string v0, "publicId"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPubSysKey(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 59
    const-string v0, "pubSysKey"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    :cond_0
    return-void
.end method

.method public systemId()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "systemId"

    invoke-virtual {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
