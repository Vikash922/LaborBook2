.class public abstract Lcom/itextpdf/kernel/xmp/options/Options;
.super Ljava/lang/Object;
.source "Options.java"


# instance fields
.field private optionNames:Ljava/util/Map;

.field private options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->optionNames:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;->assertOptionsValid(I)V

    .line 71
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;->setOptions(I)V

    return-void
.end method

.method private assertOptionsValid(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->getValidOptions()I

    move-result v0

    not-int v0, v0

    and-int/2addr v0, p1

    if-nez v0, :cond_0

    .line 260
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;->assertConsistency(I)V

    return-void

    .line 264
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The option bit(s) 0x"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " are invalid!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x67

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1
.end method

.method private getOptionName(I)Ljava/lang/String;
    .locals 3

    .line 279
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->procureOptionNames()Ljava/util/HashMap;

    move-result-object v0

    .line 281
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 283
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;->defineOptionName(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 292
    :cond_0
    const-string p1, "<option name not defined>"

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private procureOptionNames()Ljava/util/HashMap;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->optionNames:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 307
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->optionNames:Ljava/util/Map;

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->optionNames:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method protected assertConsistency(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    return-void
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    return-void
.end method

.method public containsAllOptions(I)Z
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public containsOneOf(I)Z
    .locals 1

    .line 110
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptions()I

    move-result v0

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract defineOptionName(I)Ljava/lang/String;
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 160
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptions()I

    move-result v0

    check-cast p1, Lcom/itextpdf/kernel/xmp/options/Options;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptions()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected getOption(I)Z
    .locals 1

    .line 120
    iget v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getOptions()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    return v0
.end method

.method public getOptionsString()Ljava/lang/String;
    .locals 3

    .line 181
    iget v0, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    if-eqz v0, :cond_2

    .line 183
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 184
    iget v1, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    :goto_0
    if-eqz v1, :cond_1

    add-int/lit8 v2, v1, -0x1

    and-int/2addr v2, v1

    xor-int/2addr v1, v2

    .line 189
    invoke-direct {p0, v1}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptionName(I)Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz v2, :cond_0

    .line 193
    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move v1, v2

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 201
    :cond_2
    const-string v0, "<none>"

    return-object v0
.end method

.method protected abstract getValidOptions()I
.end method

.method public hashCode()I
    .locals 1

    .line 169
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptions()I

    move-result v0

    return v0
.end method

.method public isExactly(I)Z
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/Options;->getOptions()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public setOption(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    .line 130
    iget p2, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    return-void
.end method

.method public setOptions(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 150
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;->assertOptionsValid(I)V

    .line 151
    iput p1, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/itextpdf/kernel/xmp/options/Options;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
