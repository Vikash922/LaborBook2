.class public Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
.super Ljava/lang/Object;
.source "Safelist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TypedValue;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeValue;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;,
        Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;
    }
.end annotation


# instance fields
.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;",
            ">;>;"
        }
    .end annotation
.end field

.field private enforcedAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeValue;",
            ">;>;"
        }
    .end annotation
.end field

.field private preserveRelativeLinks:Z

.field private protocols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private tagNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;)V
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>()V

    .line 222
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 224
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 226
    iget-boolean p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    return-void
.end method

.method public static basic()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 13

    .line 126
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>()V

    const/16 v1, 0x18

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    const-string v4, "b"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "blockquote"

    aput-object v6, v1, v4

    const-string v7, "br"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const/4 v7, 0x4

    const-string v9, "cite"

    aput-object v9, v1, v7

    const/4 v10, 0x5

    const-string v11, "code"

    aput-object v11, v1, v10

    const/4 v10, 0x6

    const-string v11, "dd"

    aput-object v11, v1, v10

    const/4 v10, 0x7

    const-string v11, "dl"

    aput-object v11, v1, v10

    const/16 v10, 0x8

    const-string v11, "dt"

    aput-object v11, v1, v10

    const/16 v10, 0x9

    const-string v11, "em"

    aput-object v11, v1, v10

    const/16 v10, 0xa

    const-string v11, "i"

    aput-object v11, v1, v10

    const/16 v10, 0xb

    const-string v11, "li"

    aput-object v11, v1, v10

    const/16 v10, 0xc

    const-string v11, "ol"

    aput-object v11, v1, v10

    const/16 v10, 0xd

    const-string v11, "p"

    aput-object v11, v1, v10

    const/16 v10, 0xe

    const-string v11, "pre"

    aput-object v11, v1, v10

    const/16 v10, 0xf

    const-string v11, "q"

    aput-object v11, v1, v10

    const/16 v10, 0x10

    const-string v12, "small"

    aput-object v12, v1, v10

    const/16 v10, 0x11

    const-string v12, "span"

    aput-object v12, v1, v10

    const/16 v10, 0x12

    const-string v12, "strike"

    aput-object v12, v1, v10

    const/16 v10, 0x13

    const-string v12, "strong"

    aput-object v12, v1, v10

    const/16 v10, 0x14

    const-string v12, "sub"

    aput-object v12, v1, v10

    const/16 v10, 0x15

    const-string v12, "sup"

    aput-object v12, v1, v10

    const/16 v10, 0x16

    const-string v12, "u"

    aput-object v12, v1, v10

    const/16 v10, 0x17

    const-string v12, "ul"

    aput-object v12, v1, v10

    .line 127
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    const-string v10, "href"

    aput-object v10, v1, v2

    .line 132
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object v9, v1, v2

    .line 133
    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    aput-object v9, v1, v2

    .line 134
    invoke-virtual {v0, v11, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v7, "ftp"

    aput-object v7, v1, v2

    const-string v7, "http"

    aput-object v7, v1, v5

    const-string v11, "https"

    aput-object v11, v1, v4

    const-string v12, "mailto"

    aput-object v12, v1, v8

    .line 136
    invoke-virtual {v0, v3, v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v11, v1, v5

    .line 137
    invoke-virtual {v0, v6, v9, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v11, v1, v5

    .line 138
    invoke-virtual {v0, v9, v9, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const-string v1, "rel"

    const-string v2, "nofollow"

    .line 140
    invoke-virtual {v0, v3, v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    return-object v0
.end method

.method public static basicWithImages()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 9

    .line 152
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->basic()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "img"

    aput-object v4, v2, v3

    .line 153
    invoke-virtual {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "align"

    aput-object v5, v2, v3

    const-string v5, "alt"

    aput-object v5, v2, v1

    const-string v5, "height"

    const/4 v6, 0x2

    aput-object v5, v2, v6

    const/4 v5, 0x3

    const-string v7, "src"

    aput-object v7, v2, v5

    const/4 v5, 0x4

    const-string v8, "title"

    aput-object v8, v2, v5

    const/4 v5, 0x5

    const-string v8, "width"

    aput-object v8, v2, v5

    .line 154
    invoke-virtual {v0, v4, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v2, v6, [Ljava/lang/String;

    const-string v5, "http"

    aput-object v5, v2, v3

    const-string v3, "https"

    aput-object v3, v2, v1

    .line 155
    invoke-virtual {v0, v4, v7, v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    return-object v0
.end method

.method private isValidAnchor(Ljava/lang/String;)Z
    .locals 1

    .line 575
    const-string v0, "#"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ".*\\s.*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static none()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 1

    .line 98
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>()V

    return-object v0
.end method

.method public static relaxed()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 24

    .line 169
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>()V

    const/16 v1, 0x2a

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "a"

    aput-object v3, v1, v2

    const-string v4, "b"

    const/4 v5, 0x1

    aput-object v4, v1, v5

    const/4 v4, 0x2

    const-string v6, "blockquote"

    aput-object v6, v1, v4

    const-string v7, "br"

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const-string v7, "caption"

    const/4 v9, 0x4

    aput-object v7, v1, v9

    const/4 v7, 0x5

    const-string v10, "cite"

    aput-object v10, v1, v7

    const-string v11, "code"

    const/4 v12, 0x6

    aput-object v11, v1, v12

    const/4 v11, 0x7

    const-string v13, "col"

    aput-object v13, v1, v11

    const/16 v11, 0x8

    const-string v14, "colgroup"

    aput-object v14, v1, v11

    const/16 v11, 0x9

    const-string v15, "dd"

    aput-object v15, v1, v11

    const/16 v11, 0xa

    const-string v15, "div"

    aput-object v15, v1, v11

    const/16 v11, 0xb

    const-string v15, "dl"

    aput-object v15, v1, v11

    const/16 v11, 0xc

    const-string v15, "dt"

    aput-object v15, v1, v11

    const/16 v11, 0xd

    const-string v15, "em"

    aput-object v15, v1, v11

    const/16 v11, 0xe

    const-string v15, "h1"

    aput-object v15, v1, v11

    const/16 v11, 0xf

    const-string v15, "h2"

    aput-object v15, v1, v11

    const/16 v11, 0x10

    const-string v15, "h3"

    aput-object v15, v1, v11

    const/16 v11, 0x11

    const-string v15, "h4"

    aput-object v15, v1, v11

    const/16 v11, 0x12

    const-string v15, "h5"

    aput-object v15, v1, v11

    const/16 v11, 0x13

    const-string v15, "h6"

    aput-object v15, v1, v11

    const/16 v11, 0x14

    const-string v15, "i"

    aput-object v15, v1, v11

    const/16 v11, 0x15

    const-string v15, "img"

    aput-object v15, v1, v11

    const/16 v11, 0x16

    const-string v16, "li"

    aput-object v16, v1, v11

    const/16 v11, 0x17

    const-string v7, "ol"

    aput-object v7, v1, v11

    const/16 v11, 0x18

    const-string v17, "p"

    aput-object v17, v1, v11

    const/16 v11, 0x19

    const-string v17, "pre"

    aput-object v17, v1, v11

    const/16 v11, 0x1a

    const-string v9, "q"

    aput-object v9, v1, v11

    const/16 v11, 0x1b

    const-string v18, "small"

    aput-object v18, v1, v11

    const/16 v11, 0x1c

    const-string v18, "span"

    aput-object v18, v1, v11

    const/16 v11, 0x1d

    const-string v19, "strike"

    aput-object v19, v1, v11

    const/16 v11, 0x1e

    const-string v19, "strong"

    aput-object v19, v1, v11

    const/16 v11, 0x1f

    const-string v19, "sub"

    aput-object v19, v1, v11

    const/16 v11, 0x20

    const-string v19, "sup"

    aput-object v19, v1, v11

    const/16 v11, 0x21

    const-string v8, "table"

    aput-object v8, v1, v11

    const/16 v11, 0x22

    const-string v20, "tbody"

    aput-object v20, v1, v11

    const/16 v11, 0x23

    const-string v12, "td"

    aput-object v12, v1, v11

    const/16 v11, 0x24

    const-string v21, "tfoot"

    aput-object v21, v1, v11

    const/16 v11, 0x25

    const-string v5, "th"

    aput-object v5, v1, v11

    const/16 v11, 0x26

    const-string v22, "thead"

    aput-object v22, v1, v11

    const/16 v11, 0x27

    const-string v22, "tr"

    aput-object v22, v1, v11

    const/16 v11, 0x28

    const-string v22, "u"

    aput-object v22, v1, v11

    const/16 v11, 0x29

    const-string v22, "ul"

    aput-object v22, v1, v11

    .line 170
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    const-string v11, "href"

    aput-object v11, v1, v2

    const-string v11, "title"

    const/4 v4, 0x1

    aput-object v11, v1, v4

    .line 177
    invoke-virtual {v0, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/String;

    aput-object v10, v1, v2

    .line 178
    invoke-virtual {v0, v6, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v1, 0x2

    new-array v11, v1, [Ljava/lang/String;

    aput-object v18, v11, v2

    const-string v23, "width"

    aput-object v23, v11, v4

    .line 179
    invoke-virtual {v0, v13, v11}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v11, v1, [Ljava/lang/String;

    aput-object v18, v11, v2

    aput-object v23, v11, v4

    .line 180
    invoke-virtual {v0, v14, v11}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v11, 0x6

    new-array v13, v11, [Ljava/lang/String;

    const-string v11, "align"

    aput-object v11, v13, v2

    const-string v11, "alt"

    aput-object v11, v13, v4

    const-string v4, "height"

    aput-object v4, v13, v1

    const-string v4, "src"

    const/4 v11, 0x3

    aput-object v4, v13, v11

    const-string v4, "title"

    const/4 v11, 0x4

    aput-object v4, v13, v11

    const/4 v4, 0x5

    aput-object v23, v13, v4

    .line 181
    invoke-virtual {v0, v15, v13}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    const-string v11, "start"

    aput-object v11, v4, v2

    const-string v11, "type"

    const/4 v13, 0x1

    aput-object v11, v4, v13

    .line 182
    invoke-virtual {v0, v7, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v4, v13, [Ljava/lang/String;

    aput-object v10, v4, v2

    .line 183
    invoke-virtual {v0, v9, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v4, v1, [Ljava/lang/String;

    const-string v7, "summary"

    aput-object v7, v4, v2

    aput-object v23, v4, v13

    .line 184
    invoke-virtual {v0, v8, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v4, 0x5

    new-array v7, v4, [Ljava/lang/String;

    const-string v4, "abbr"

    aput-object v4, v7, v2

    const-string v4, "axis"

    aput-object v4, v7, v13

    const-string v4, "colspan"

    aput-object v4, v7, v1

    const-string v4, "rowspan"

    const/4 v8, 0x3

    aput-object v4, v7, v8

    const/4 v4, 0x4

    aput-object v23, v7, v4

    .line 185
    invoke-virtual {v0, v12, v7}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/String;

    const-string v7, "abbr"

    aput-object v7, v4, v2

    const-string v7, "axis"

    aput-object v7, v4, v13

    const-string v7, "colspan"

    aput-object v7, v4, v1

    const-string v1, "rowspan"

    aput-object v1, v4, v8

    const-string v1, "scope"

    const/4 v7, 0x4

    aput-object v1, v4, v7

    const/4 v1, 0x5

    aput-object v23, v4, v1

    .line 186
    invoke-virtual {v0, v5, v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v13, [Ljava/lang/String;

    const-string v4, "type"

    aput-object v4, v1, v2

    .line 189
    const-string v4, "ul"

    invoke-virtual {v0, v4, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    const-string v4, "ftp"

    aput-object v4, v1, v2

    const-string v4, "http"

    aput-object v4, v1, v13

    const-string v5, "https"

    const/4 v7, 0x2

    aput-object v5, v1, v7

    const-string v8, "mailto"

    const/4 v11, 0x3

    aput-object v8, v1, v11

    .line 191
    const-string v8, "href"

    invoke-virtual {v0, v3, v8, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v13

    .line 192
    invoke-virtual {v0, v6, v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v13

    .line 193
    invoke-virtual {v0, v10, v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v13

    .line 194
    const-string v3, "src"

    invoke-virtual {v0, v15, v3, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    new-array v1, v7, [Ljava/lang/String;

    aput-object v4, v1, v2

    aput-object v5, v1, v13

    .line 195
    invoke-virtual {v0, v9, v10, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    return-object v0
.end method

.method public static simpleText()Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 4

    .line 108
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;-><init>()V

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "b"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "em"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "i"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "strong"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "u"

    aput-object v3, v1, v2

    .line 109
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;

    move-result-object v0

    return-object v0
.end method

.method private testValidProtocol(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;",
            ">;)Z"
        }
    .end annotation

    .line 548
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 549
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 550
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 551
    :cond_0
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    if-nez v0, :cond_1

    .line 552
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    .line 554
    :cond_1
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;

    .line 555
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;->toString()Ljava/lang/String;

    move-result-object p3

    .line 557
    const-string v0, "#"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 558
    invoke-direct {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isValidAnchor(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    .line 565
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, ":"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 567
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public varargs addAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 4

    .line 281
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 282
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 283
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "No attribute names supplied."

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 285
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    .line 286
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 287
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 288
    array-length v2, p2

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, p2, v1

    .line 289
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 290
    invoke-static {v3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 292
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 293
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 294
    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 296
    :cond_2
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-object p0
.end method

.method public addEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 1

    .line 356
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 357
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 358
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 360
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    .line 361
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object p2

    .line 363
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeValue;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeValue;

    move-result-object p3

    .line 365
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 368
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 369
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method

.method public varargs addProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 2

    .line 432
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 433
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 434
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 436
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    .line 437
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object p2

    .line 441
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    .line 444
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 447
    :goto_0
    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 448
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    goto :goto_1

    .line 450
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 451
    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    .line 453
    :goto_1
    array-length p2, p3

    const/4 v0, 0x0

    :goto_2
    if-ge v0, p2, :cond_2

    aget-object v1, p3, v0

    .line 454
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 455
    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;

    move-result-object v1

    .line 456
    invoke-interface {p1, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public varargs addTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 4

    .line 236
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 238
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 239
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;
    .locals 3

    .line 579
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 580
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    .line 581
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 582
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 583
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 584
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeValue;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z
    .locals 5

    .line 519
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 520
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object v1

    .line 522
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 523
    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 524
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 525
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 527
    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-direct {p0, p2, p3, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->testValidProtocol(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;Ljava/util/Set;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move v3, v4

    :cond_1
    return v3

    :cond_2
    return v4

    .line 533
    :cond_3
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 535
    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->getEnforcedAttributes(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v0

    .line 536
    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 537
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 538
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 542
    :cond_4
    const-string v0, ":all"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0, v0, p2, p3}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->isSafeAttribute(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Z

    move-result p1

    if-eqz p1, :cond_5

    move v3, v4

    :cond_5
    return v3
.end method

.method protected isSafeTag(Ljava/lang/String;)Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public preserveRelativeLinks(Z)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 0

    .line 413
    iput-boolean p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->preserveRelativeLinks:Z

    return-object p0
.end method

.method public varargs removeAttributes(Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 5

    .line 315
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 316
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 317
    array-length v0, p2

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v2, "No attribute names supplied."

    invoke-static {v0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 319
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object v0

    .line 320
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 321
    array-length v3, p2

    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    .line 322
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 323
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_1
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 326
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    .line 327
    invoke-interface {p2, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 329
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 330
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    :cond_2
    const-string p2, ":all"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 333
    iget-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    .line 334
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 335
    invoke-interface {v0, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 337
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 338
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    return-object p0
.end method

.method public removeEnforcedAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 1

    .line 383
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 384
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 386
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    .line 387
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object p2

    .line 389
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 390
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 393
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public varargs removeProtocols(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 5

    .line 473
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 474
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 475
    invoke-static {p3}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 477
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object p1

    .line 478
    invoke-static {p2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$AttributeKey;

    move-result-object p2

    .line 482
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Cannot remove a protocol that is not set."

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 484
    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isTrue(ZLjava/lang/String;)V

    .line 486
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 487
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p3, v3

    .line 488
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 489
    invoke-static {v4}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$Protocol;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 492
    :cond_0
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 493
    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 495
    iget-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p0
.end method

.method public varargs removeTags([Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;
    .locals 4

    .line 252
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 254
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 255
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 256
    invoke-static {v2}, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;->valueOf(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist$TagName;

    move-result-object v2

    .line 258
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->tagNames:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 259
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->attributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->enforcedAttributes:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/safety/Safelist;->protocols:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method
