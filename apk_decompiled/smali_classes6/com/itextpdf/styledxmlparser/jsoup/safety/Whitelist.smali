.class public Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
.super Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
.source "Whitelist.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V

    return-void
.end method

.method public static basic()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 2

    .line 51
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->basic()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static basicWithImages()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 2

    .line 55
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->basicWithImages()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static none()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 2

    .line 59
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->none()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static relaxed()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 2

    .line 63
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->relaxed()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V

    return-object v0
.end method

.method public static simpleText()Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;
    .locals 2

    .line 67
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->simpleText()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Whitelist;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V

    return-object v0
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 84
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 0

    .line 136
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object p1

    return-object p1
.end method

.method protected isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z
    .locals 0

    .line 131
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z

    move-result p1

    return p1
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .locals 0

    .line 126
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeTag(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public preserveRelativeLinks(Z)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 108
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->preserveRelativeLinks(Z)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 90
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 120
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 78
    invoke-super {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->removeTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    return-object p0
.end method
