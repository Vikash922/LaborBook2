.class public Lcom/itextpdf/forms/fields/PdfChoiceFormField;
.super Lcom/itextpdf/forms/fields/PdfFormField;
.source "PdfChoiceFormField.java"


# static fields
.field public static final FF_COMBO:I

.field public static final FF_COMMIT_ON_SEL_CHANGE:I

.field public static final FF_DO_NOT_SPELL_CHECK:I

.field public static final FF_EDIT:I

.field public static final FF_MULTI_SELECT:I

.field public static final FF_SORT:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x12

    .line 72
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    const/16 v0, 0x13

    .line 73
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_EDIT:I

    const/16 v0, 0x14

    .line 74
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_SORT:I

    const/16 v0, 0x16

    .line 75
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_MULTI_SELECT:I

    const/16 v0, 0x17

    .line 76
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_DO_NOT_SPELL_CHECK:I

    const/16 v0, 0x1b

    .line 77
    invoke-static {v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->makeFieldFlag(I)I

    move-result v0

    sput v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMMIT_ON_SEL_CHANGE:I

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method protected constructor <init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/fields/PdfFormField;-><init>(Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method private optionsToUnicodeNames()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 354
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 355
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 356
    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 358
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 359
    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfString;

    goto :goto_1

    .line 360
    :cond_0
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 361
    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfString;

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    if-eqz v3, :cond_2

    .line 363
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method


# virtual methods
.method public getFormType()Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 1

    .line 98
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Ch:Lcom/itextpdf/kernel/pdf/PdfName;

    return-object v0
.end method

.method public getIndices()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getTopIndex()Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    return-object v0
.end method

.method public isCombo()Z
    .locals 1

    .line 257
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isCommitOnSelChange()Z
    .locals 1

    .line 349
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMMIT_ON_SEL_CHANGE:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isEdit()Z
    .locals 1

    .line 278
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_EDIT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isMultiSelect()Z
    .locals 1

    .line 315
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_MULTI_SELECT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSort()Z
    .locals 1

    .line 297
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_SORT:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    return v0
.end method

.method public isSpellCheck()Z
    .locals 1

    .line 332
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_DO_NOT_SPELL_CHECK:I

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldFlag(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public setCombo(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 248
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMBO:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setCommitOnSelChange(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 341
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_COMMIT_ON_SEL_CHANGE:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setEdit(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 268
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_EDIT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setIndices(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 128
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setListSelected([I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 9

    .line 200
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isMultiSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 202
    const-string v2, "Multiple values were set to a field that does not have MultiSelect flag set."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 204
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 205
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 207
    array-length v4, p1

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_3

    aget v7, p1, v6

    if-ltz v7, :cond_2

    .line 208
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 209
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v8, v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 210
    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 211
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 212
    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 214
    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v7, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 219
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setIndices(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    .line 220
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_4

    .line 221
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_2

    .line 223
    :cond_4
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_2

    .line 226
    :cond_5
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 227
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 229
    :goto_2
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->regenerateField()Z

    return-object p0
.end method

.method public setListSelected([Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    move-result-object p1

    return-object p1
.end method

.method public setListSelected([Ljava/lang/String;Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 12

    .line 149
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isMultiSelect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 151
    const-string v2, "Multiple values were set to a field that does not have MultiSelect flag set."

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getOptions()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 154
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 155
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 156
    invoke-direct {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->optionsToUnicodeNames()Ljava/util/List;

    move-result-object v4

    .line 157
    array-length v5, p1

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, p1, v7

    if-nez v8, :cond_1

    goto :goto_2

    .line 161
    :cond_1
    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 162
    invoke-interface {v4, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 163
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v9, v8}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {v2, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 164
    invoke-virtual {v0, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    .line 165
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_1

    :cond_2
    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v8, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    :goto_1
    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v3, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_2

    .line 167
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isCombo()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->isEdit()Z

    move-result v9

    if-nez v9, :cond_5

    .line 168
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v9

    .line 171
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->getFieldName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v10

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v10

    .line 170
    const-string v11, "Value \"{0}\" is not contained in /Opt array of field \"{1}\"."

    invoke-static {v11, v10}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 169
    invoke-interface {v9, v10}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 173
    :cond_5
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfString;

    const-string v10, "UnicodeBig"

    invoke-direct {v9, v8, v10}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 176
    :cond_6
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    if-lez p1, :cond_7

    .line 177
    invoke-virtual {p0, v2}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setIndices(Lcom/itextpdf/kernel/pdf/PdfArray;)Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    goto :goto_3

    .line 179
    :cond_7
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->I:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 181
    :goto_3
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 182
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    goto :goto_4

    .line 184
    :cond_8
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfName;->V:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    :goto_4
    if-eqz p2, :cond_9

    .line 188
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->regenerateField()Z

    :cond_9
    return-object p0
.end method

.method public setMultiSelect(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 307
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_MULTI_SELECT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setSort(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 288
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_SORT:I

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setSpellCheck(Z)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 1

    .line 324
    sget v0, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->FF_DO_NOT_SPELL_CHECK:I

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->setFieldFlag(IZ)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/forms/fields/PdfChoiceFormField;

    return-object p1
.end method

.method public setTopIndex(I)Lcom/itextpdf/forms/fields/PdfChoiceFormField;
    .locals 2

    .line 108
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->TI:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {v1, p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/fields/PdfFormField;

    .line 109
    invoke-virtual {p0}, Lcom/itextpdf/forms/fields/PdfChoiceFormField;->regenerateField()Z

    return-object p0
.end method
