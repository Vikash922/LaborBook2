.class public final Lcom/itextpdf/kernel/xmp/options/AliasOptions;
.super Lcom/itextpdf/kernel/xmp/options/Options;
.source "AliasOptions.java"


# static fields
.field public static final PROP_ARRAY:I = 0x200

.field public static final PROP_ARRAY_ALTERNATE:I = 0x800

.field public static final PROP_ARRAY_ALT_TEXT:I = 0x1000

.field public static final PROP_ARRAY_ORDERED:I = 0x400

.field public static final PROP_DIRECT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/itextpdf/kernel/xmp/options/Options;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 72
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected defineOptionName(I)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_4

    const/16 v0, 0x200

    if-eq p1, v0, :cond_3

    const/16 v0, 0x400

    if-eq p1, v0, :cond_2

    const/16 v0, 0x800

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 187
    :cond_0
    const-string p1, "ARRAY_ALT_TEXT"

    return-object p1

    .line 186
    :cond_1
    const-string p1, "ARRAY_ALTERNATE"

    return-object p1

    .line 185
    :cond_2
    const-string p1, "ARRAY_ORDERED"

    return-object p1

    .line 184
    :cond_3
    const-string p1, "ARRAY"

    return-object p1

    .line 183
    :cond_4
    const-string p1, "PROP_DIRECT"

    return-object p1
.end method

.method protected getValidOptions()I
    .locals 1

    const/16 v0, 0x1e00

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/16 v0, 0x200

    .line 90
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAltText()Z
    .locals 1

    const/16 v0, 0x1000

    .line 150
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAlternate()Z
    .locals 1

    const/16 v0, 0x800

    .line 130
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayOrdered()Z
    .locals 1

    const/16 v0, 0x400

    .line 110
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 1

    .line 81
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->getOptions()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setArray(Z)Lcom/itextpdf/kernel/xmp/options/AliasOptions;
    .locals 1

    const/16 v0, 0x200

    .line 100
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayAltText(Z)Lcom/itextpdf/kernel/xmp/options/AliasOptions;
    .locals 1

    const/16 v0, 0x1e00

    .line 160
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayAlternate(Z)Lcom/itextpdf/kernel/xmp/options/AliasOptions;
    .locals 1

    const/16 v0, 0xe00

    .line 140
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayOrdered(Z)Lcom/itextpdf/kernel/xmp/options/AliasOptions;
    .locals 1

    const/16 v0, 0x600

    .line 120
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->setOption(IZ)V

    return-object p0
.end method

.method public toPropertyOptions()Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 172
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/AliasOptions;->getOptions()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>(I)V

    return-object v0
.end method
