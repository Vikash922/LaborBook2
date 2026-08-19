.class Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;
.super Ljava/lang/Object;
.source "TernaryTreeIterator.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;
    }
.end annotation


# instance fields
.field cur:I

.field curkey:Ljava/lang/String;

.field ks:Ljava/lang/StringBuffer;

.field ns:Ljava/util/Stack;

.field tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;


# direct methods
.method public constructor <init>(Lcom/itextpdf/layout/hyphenation/TernaryTree;)V
    .locals 0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    const/4 p1, -0x1

    .line 121
    iput p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    .line 122
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    .line 123
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ks:Ljava/lang/StringBuffer;

    .line 124
    invoke-virtual {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->reset()V

    return-void
.end method

.method private run()I
    .locals 8

    .line 223
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    move v2, v0

    .line 230
    :cond_1
    :goto_0
    iget v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    const v4, 0xffff

    if-eqz v3, :cond_4

    .line 231
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    iget v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v3, v3, v5

    const/4 v5, 0x1

    if-ne v3, v4, :cond_2

    :goto_1
    move v2, v5

    goto :goto_2

    .line 235
    :cond_2
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    new-instance v6, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;

    iget v7, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    int-to-char v7, v7

    invoke-direct {v6, p0, v7, v0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;CC)V

    invoke-virtual {v3, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    iget v6, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v3, v3, v6

    if-nez v3, :cond_3

    goto :goto_1

    .line 240
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    iget v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v3, v3, v4

    iput v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    goto :goto_0

    :cond_4
    :goto_2
    if-eqz v2, :cond_6

    .line 253
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ks:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 254
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v2, v2, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    iget v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v2, v2, v3

    if-ne v2, v4, :cond_5

    .line 255
    iget-object v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v2, v2, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    iget v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v2, v2, v3

    .line 256
    :goto_3
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/hyphenation/CharVector;->get(I)C

    move-result v3

    if-eqz v3, :cond_5

    .line 257
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTree;->kv:Lcom/itextpdf/layout/hyphenation/CharVector;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/itextpdf/layout/hyphenation/CharVector;->get(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v2, v4

    goto :goto_3

    .line 260
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->curkey:Ljava/lang/String;

    return v0

    .line 246
    :cond_6
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->up()I

    move-result v3

    iput v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    if-ne v3, v1, :cond_1

    return v1
.end method

.method private up()I
    .locals 7

    .line 168
    new-instance v0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;

    invoke-direct {v0, p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;)V

    .line 171
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    .line 175
    :cond_0
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v0, v0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    iget v2, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v0, v0, v2

    if-nez v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v0, v0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->lo:[C

    iget v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v0, v0, v1

    return v0

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    move v3, v0

    move v4, v2

    :goto_0
    if-eqz v3, :cond_7

    .line 182
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;

    .line 183
    iget-char v5, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    add-int/2addr v5, v0

    int-to-char v5, v5

    iput-char v5, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    .line 184
    iget-char v5, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    if-eq v5, v0, :cond_5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    .line 209
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->size()I

    move-result v3

    if-nez v3, :cond_2

    return v1

    :cond_2
    move v3, v0

    goto :goto_0

    .line 199
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    iget-char v5, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    aget-char v4, v4, v5

    .line 200
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    new-instance v6, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;

    invoke-direct {v6, p0, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ks:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 203
    iget-object v3, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ks:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    sub-int/2addr v5, v0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    :cond_4
    :goto_1
    move v3, v2

    goto :goto_0

    .line 186
    :cond_5
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    iget-char v5, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    aget-char v4, v4, v5

    if-eqz v4, :cond_6

    .line 187
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    iget-char v5, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    aget-char v4, v4, v5

    .line 188
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    new-instance v6, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;

    invoke-direct {v6, p0, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v5, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ks:Ljava/lang/StringBuffer;

    iget-object v6, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v6, v6, Lcom/itextpdf/layout/hyphenation/TernaryTree;->sc:[C

    iget-char v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    aget-char v3, v6, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 191
    :cond_6
    iget-char v4, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    add-int/2addr v4, v0

    int-to-char v4, v4

    iput-char v4, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->child:C

    .line 192
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    new-instance v5, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;

    invoke-direct {v5, p0, v3}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;-><init>(Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;)V

    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v4, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v4, v4, Lcom/itextpdf/layout/hyphenation/TernaryTree;->hi:[C

    iget-char v3, v3, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator$Item;->parent:C

    aget-char v3, v4, v3

    move v4, v3

    goto :goto_1

    :cond_7
    return v4
.end method


# virtual methods
.method public getValue()C
    .locals 2

    .line 151
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    if-ltz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-object v0, v0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->eq:[C

    iget v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    aget-char v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasMoreElements()Z
    .locals 2

    .line 161
    iget v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->curkey:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->up()I

    move-result v1

    iput v1, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    .line 143
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->run()I

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ns:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    .line 132
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->ks:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 133
    iget-object v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->tt:Lcom/itextpdf/layout/hyphenation/TernaryTree;

    iget-char v0, v0, Lcom/itextpdf/layout/hyphenation/TernaryTree;->root:C

    iput v0, p0, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->cur:I

    .line 134
    invoke-direct {p0}, Lcom/itextpdf/layout/hyphenation/TernaryTreeIterator;->run()I

    return-void
.end method
