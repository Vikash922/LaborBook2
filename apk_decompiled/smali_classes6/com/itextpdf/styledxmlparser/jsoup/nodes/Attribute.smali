.class public Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
.super Ljava/lang/Object;
.source "Attribute.java"

# interfaces
.implements Ljava/util/Map$Entry;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static final booleanAttributes:[Ljava/lang/String;


# instance fields
.field private key:Ljava/lang/String;

.field parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

.field private val:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x1e

    .line 37
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "allowfullscreen"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "async"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "autofocus"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "checked"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "compact"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "declare"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "default"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "defer"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "disabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "formnovalidate"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "hidden"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "inert"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "ismap"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "itemscope"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "multiple"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "muted"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "nohref"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "noresize"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "noshade"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "novalidate"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "nowrap"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "open"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "readonly"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "required"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "reversed"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "seamless"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "selected"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "sortable"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "truespeed"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "typemustmatch"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->booleanAttributes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 68
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-void
.end method

.method public static createFromEncoded(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    .locals 2

    const/4 v0, 0x1

    .line 173
    invoke-static {p1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->unescape(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 174
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    return-object v0
.end method

.method protected static html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 146
    invoke-static {p0, p1, p3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 147
    const-string p0, "=\""

    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 148
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x1

    move-object v0, p2

    move-object v2, p3

    invoke-static/range {v0 .. v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;ZZZ)V

    const/16 p0, 0x22

    .line 149
    invoke-interface {p2, p0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_0
    return-void
.end method

.method protected static isBooleanAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 205
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->booleanAttributes:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static isDataAttribute(Ljava/lang/String;)Z
    .locals 2

    .line 182
    const-string v0, "data-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected static shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z
    .locals 1

    .line 197
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;->syntax()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne p2, v0, :cond_2

    if-eqz p1, :cond_1

    .line 198
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_0
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->isBooleanAttribute(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .line 227
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 229
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 211
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 212
    :cond_1
    check-cast p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 213
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v3, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    if-eqz v2, :cond_3

    :goto_0
    return v1

    .line 214
    :cond_3
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    :cond_6
    :goto_2
    return v1
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasDeclaredValue()Z
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 219
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 220
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public html()Ljava/lang/String;
    .locals 3

    .line 134
    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 137
    :try_start_0
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    const-string v2, ""

    invoke-direct {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->outputSettings()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    .line 139
    new-instance v1, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;

    invoke-direct {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected html(Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->html(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Appendable;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)V

    return-void
.end method

.method protected isDataAttribute()Z
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->isDataAttribute(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 2

    .line 86
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v1, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    aput-object p1, v1, v0

    .line 94
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    return-void
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 36
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->setValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 119
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v1, :cond_0

    .line 120
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->indexOfKey(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 123
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->parent:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v2, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    aput-object p1, v2, v1

    .line 125
    :cond_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    .line 126
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->checkNotNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected final shouldCollapseAttribute(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->val:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->shouldCollapseAttribute(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$OutputSettings;)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 163
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
