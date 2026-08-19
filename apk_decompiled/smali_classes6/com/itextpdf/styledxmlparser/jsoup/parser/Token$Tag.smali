.class abstract Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.source "Token.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Tag"
.end annotation


# instance fields
.field attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

.field private hasEmptyAttributeValue:Z

.field private hasPendingAttributeValue:Z

.field protected normalName:Ljava/lang/String;

.field private pendingAttributeName:Ljava/lang/String;

.field private pendingAttributeValue:Ljava/lang/StringBuilder;

.field private pendingAttributeValueS:Ljava/lang/String;

.field selfClosing:Z

.field protected tagName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$1;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 104
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 105
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->selfClosing:Z

    return-void
.end method

.method private ensureAttributeValue()V
    .locals 2

    const/4 v0, 0x1

    .line 237
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 239
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 240
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method final appendAttributeName(C)V
    .locals 0

    .line 203
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendAttributeName(Ljava/lang/String;)V

    return-void
.end method

.method final appendAttributeName(Ljava/lang/String;)V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    return-void
.end method

.method final appendAttributeValue(C)V
    .locals 1

    .line 216
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 217
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue(Ljava/lang/String;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 208
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    return-void
.end method

.method final appendAttributeValue([C)V
    .locals 1

    .line 221
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 222
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method

.method final appendAttributeValue([I)V
    .locals 4

    .line 226
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->ensureAttributeValue()V

    .line 227
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 228
    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method final appendTagName(C)V
    .locals 0

    .line 195
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->appendTagName(Ljava/lang/String;)V

    return-void
.end method

.method final appendTagName(Ljava/lang/String;)V
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 191
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-void
.end method

.method final finaliseTag()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->newAttribute()V

    :cond_0
    return-void
.end method

.method final hasAttribute(Ljava/lang/String;)Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->hasKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method final hasAttributes()Z
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isSelfClosing()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->selfClosing:Z

    return v0
.end method

.method final name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/internal/Normalizer;->lowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object p0
.end method

.method final name()Ljava/lang/String;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->isFalse(Z)V

    .line 166
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    return-object v0
.end method

.method final newAttribute()V
    .locals 4

    .line 123
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    if-nez v0, :cond_0

    .line 124
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 128
    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/PortUtil;->trimControlCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 131
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_2
    iget-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    if-eqz v0, :cond_3

    .line 134
    const-string v0, ""

    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 138
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->add(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 141
    :cond_4
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 143
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 144
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 145
    iput-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    return-void
.end method

.method final normalName()Ljava/lang/String;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    return-object v0
.end method

.method reset()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;
    .locals 2

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    .line 111
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->normalName:Ljava/lang/String;

    .line 112
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeName:Ljava/lang/String;

    .line 113
    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValue:Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->reset(Ljava/lang/StringBuilder;)V

    .line 114
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->pendingAttributeValueS:Ljava/lang/String;

    const/4 v1, 0x0

    .line 115
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    .line 116
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasPendingAttributeValue:Z

    .line 117
    iput-boolean v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->selfClosing:Z

    .line 118
    iput-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    return-object p0
.end method

.method final setEmptyAttributeValue()V
    .locals 1

    const/4 v0, 0x1

    .line 233
    iput-boolean v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->hasEmptyAttributeValue:Z

    return-void
.end method

.method public abstract toString()Ljava/lang/String;
.end method

.method final toStringName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;->tagName:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "[unset]"

    :goto_0
    return-object v0
.end method
