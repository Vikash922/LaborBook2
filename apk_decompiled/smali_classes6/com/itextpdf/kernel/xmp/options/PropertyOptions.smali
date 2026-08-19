.class public final Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
.super Lcom/itextpdf/kernel/xmp/options/Options;
.source "PropertyOptions.java"


# static fields
.field public static final ARRAY:I = 0x200

.field public static final ARRAY_ALTERNATE:I = 0x800

.field public static final ARRAY_ALT_TEXT:I = 0x1000

.field public static final ARRAY_ORDERED:I = 0x400

.field public static final DELETE_EXISTING:I = 0x20000000

.field public static final HAS_LANGUAGE:I = 0x40

.field public static final HAS_QUALIFIERS:I = 0x10

.field public static final HAS_TYPE:I = 0x80

.field public static final NO_OPTIONS:I = 0x0

.field public static final QUALIFIER:I = 0x20

.field public static final SCHEMA_NODE:I = -0x80000000

.field public static final SEPARATE_NODE:I = 0x40000000

.field public static final STRUCT:I = 0x100

.field public static final URI:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 80
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

    .line 93
    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/xmp/options/Options;-><init>(I)V

    return-void
.end method


# virtual methods
.method public assertConsistency(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    and-int/lit16 v0, p1, 0x100

    const/16 v1, 0x67

    if-lez v0, :cond_1

    and-int/lit16 v0, p1, 0x200

    if-gtz v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "IsStruct and IsArray options are mutually exclusive"

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_1
    :goto_0
    and-int/lit8 v0, p1, 0x2

    if-lez v0, :cond_3

    and-int/lit16 p1, p1, 0x300

    if-gtz p1, :cond_2

    goto :goto_1

    .line 443
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/xmp/XMPException;

    const-string v0, "Structs and arrays can\'t have \"value\" options"

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method protected defineOptionName(I)Ljava/lang/String;
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 420
    :sswitch_0
    const-string p1, "ARRAY_ALT_TEXT"

    return-object p1

    .line 419
    :sswitch_1
    const-string p1, "ARRAY_ALTERNATE"

    return-object p1

    .line 418
    :sswitch_2
    const-string p1, "ARRAY_ORDERED"

    return-object p1

    .line 417
    :sswitch_3
    const-string p1, "ARRAY"

    return-object p1

    .line 416
    :sswitch_4
    const-string p1, "STRUCT"

    return-object p1

    .line 415
    :sswitch_5
    const-string p1, "HAS_TYPE"

    return-object p1

    .line 414
    :sswitch_6
    const-string p1, "HAS_LANGUAGE"

    return-object p1

    .line 413
    :sswitch_7
    const-string p1, "QUALIFIER"

    return-object p1

    .line 412
    :sswitch_8
    const-string p1, "HAS_QUALIFIER"

    return-object p1

    .line 411
    :sswitch_9
    const-string p1, "URI"

    return-object p1

    .line 421
    :sswitch_a
    const-string p1, "SCHEMA_NODE"

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_a
        0x2 -> :sswitch_9
        0x10 -> :sswitch_8
        0x20 -> :sswitch_7
        0x40 -> :sswitch_6
        0x80 -> :sswitch_5
        0x100 -> :sswitch_4
        0x200 -> :sswitch_3
        0x400 -> :sswitch_2
        0x800 -> :sswitch_1
        0x1000 -> :sswitch_0
    .end sparse-switch
.end method

.method public equalArrayTypes(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)Z
    .locals 2

    .line 350
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArray()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 351
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayOrdered()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 352
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAlternate()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 353
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->isArrayAltText()Z

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getHasLanguage()Z
    .locals 1

    const/16 v0, 0x40

    .line 166
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getHasQualifiers()Z
    .locals 1

    const/16 v0, 0x10

    .line 125
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public getHasType()Z
    .locals 1

    const/16 v0, 0x80

    .line 184
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method protected getValidOptions()I
    .locals 1

    const v0, -0x3fffe00e

    return v0
.end method

.method public isArray()Z
    .locals 1

    const/16 v0, 0x200

    .line 223
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAltText()Z
    .locals 1

    const/16 v0, 0x1000

    .line 287
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayAlternate()Z
    .locals 1

    const/16 v0, 0x800

    .line 265
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isArrayOrdered()Z
    .locals 1

    const/16 v0, 0x400

    .line 244
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isCompositeProperty()Z
    .locals 1

    .line 328
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnlyArrayOptions()Z
    .locals 1

    .line 378
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, -0x1e01

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isQualifier()Z
    .locals 1

    const/16 v0, 0x20

    .line 148
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSchemaNode()Z
    .locals 1

    const/high16 v0, -0x80000000

    .line 306
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isSimple()Z
    .locals 1

    .line 337
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    and-int/lit16 v0, v0, 0x300

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStruct()Z
    .locals 1

    const/16 v0, 0x100

    .line 202
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public isURI()Z
    .locals 1

    const/4 v0, 0x2

    .line 103
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOption(I)Z

    move-result v0

    return v0
.end method

.method public mergeWith(Lcom/itextpdf/kernel/xmp/options/PropertyOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->getOptions()I

    move-result p1

    or-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOptions(I)V

    :cond_0
    return-void
.end method

.method public setArray(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x200

    .line 233
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayAltText(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x1000

    .line 297
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayAlternate(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x800

    .line 275
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setArrayOrdered(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x400

    .line 254
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setHasLanguage(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x40

    .line 176
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setHasQualifiers(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x10

    .line 135
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setHasType(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x80

    .line 194
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setQualifier(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x20

    .line 158
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setSchemaNode(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/high16 v0, -0x80000000

    .line 316
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setStruct(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/16 v0, 0x100

    .line 212
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method

.method public setURI(Z)Lcom/itextpdf/kernel/xmp/options/PropertyOptions;
    .locals 1

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;->setOption(IZ)V

    return-object p0
.end method
