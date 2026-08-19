.class public Lcom/itextpdf/kernel/utils/CompareTool;
.super Ljava/lang/Object;
.source "CompareTool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;,
        Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;,
        Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;,
        Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;,
        Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;,
        Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final COPYRIGHT_REGEXP:Ljava/lang/String; = "\u00a9\\d+-\\d+ iText Group NV"

.field private static final COPYRIGHT_REPLACEMENT:Ljava/lang/String; = "\u00a9<copyright years> iText Group NV"

.field private static final DIFFERENT_PAGES:Ljava/lang/String; = "File file://<filename> differs on page <pagenumber>."

.field private static final FILE_PROTOCOL:Ljava/lang/String; = "file://"

.field private static final IGNORED_AREAS_PREFIX:Ljava/lang/String; = "ignored_areas_"

.field private static final NEW_LINES:Ljava/lang/String; = "\\r|\\n"

.field private static final UNEXPECTED_NUMBER_OF_PAGES:Ljava/lang/String; = "Unexpected number of pages for <filename>."

.field private static final VERSION_REGEXP:Ljava/lang/String; = "(\\d+\\.)+\\d+(-SNAPSHOT)?"

.field private static final VERSION_REPLACEMENT:Ljava/lang/String; = "<version>"


# instance fields
.field private cmpImage:Ljava/lang/String;

.field private cmpPagesRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private cmpPdf:Ljava/lang/String;

.field private cmpPdfName:Ljava/lang/String;

.field private cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

.field private compareByContentErrorsLimit:I

.field private compareExec:Ljava/lang/String;

.field private encryptionCompareEnabled:Z

.field private generateCompareByContentXmlReport:Z

.field private gsExec:Ljava/lang/String;

.field private metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

.field private outImage:Ljava/lang/String;

.field private outPagesRef:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation
.end field

.field private outPdf:Ljava/lang/String;

.field private outPdfName:Ljava/lang/String;

.field private outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

.field private useCachedPagesForComparison:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 156
    iput v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    .line 159
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 156
    iput v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    const/4 v0, 0x0

    .line 157
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    .line 159
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    .line 171
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->gsExec:Ljava/lang/String;

    .line 172
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareExec:Ljava/lang/String;

    return-void
.end method

.method private compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    .line 1603
    const-string p1, "Found null. Expected PdfArray."

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_0
    return v0

    .line 1605
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v2

    if-eq v1, v2, :cond_3

    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1607
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "PdfArrays. Lengths are different. Expected: {0}. Found: {1}."

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    const/4 v1, 0x1

    move v2, v0

    move v3, v1

    .line 1611
    :goto_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_9

    if-eqz p3, :cond_4

    .line 1613
    invoke-virtual {p3, v2}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pushArrayItemToPath(I)V

    .line 1614
    :cond_4
    invoke-virtual {p1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {p2, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {p0, v4, v5, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareObjects(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    move v3, v1

    goto :goto_1

    :cond_5
    move v3, v0

    :goto_1
    if-eqz p3, :cond_6

    .line 1616
    invoke-virtual {p3}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pop()V

    :cond_6
    if-nez v3, :cond_8

    if-eqz p3, :cond_7

    if-eqz p4, :cond_7

    .line 1617
    invoke-virtual {p4}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    return v0

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_9
    return v3
.end method

.method private compareBooleansExtended(Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 2

    .line 1718
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 1722
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "PdfBoolean. Expected: {0}. Found: {1}."

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v7, p0

    .line 1170
    invoke-direct/range {p0 .. p0}, Lcom/itextpdf/kernel/utils/CompareTool;->printOutCmpDirectories()V

    .line 1171
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Comparing by content.........."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 1172
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v0, v7, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v1

    invoke-direct {v8, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 1173
    :try_start_0
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v1, v7, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 1174
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v0

    invoke-direct {v9, v8, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    .line 1175
    :try_start_1
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v0, v7, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v1

    invoke-direct {v10, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_7

    .line 1176
    :try_start_2
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v1, v7, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 1177
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v0

    invoke-direct {v11, v10, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 1179
    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    .line 1181
    invoke-direct {v7, v9, v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool;->loadPagesFromReader(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Ljava/util/List;)V

    .line 1183
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    .line 1185
    invoke-direct {v7, v11, v12, v1}, Lcom/itextpdf/kernel/utils/CompareTool;->loadPagesFromReader(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Ljava/util/List;)V

    .line 1187
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 1188
    const-string v2, "Documents have different numbers of pages."

    const/4 v6, 0x0

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisuallyAndCombineReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1227
    :try_start_4
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    :try_start_6
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_a

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    return-object v0

    .line 1190
    :cond_0
    :try_start_7
    new-instance v13, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v1, v7, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v13, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(I)V

    .line 1191
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v14, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v15, 0x0

    move v1, v15

    .line 1192
    :goto_0
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1193
    new-instance v2, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    iget-object v3, v7, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v4, v7, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {v2, v3, v4}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 1194
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-interface {v12, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v7, v3, v4, v2, v13}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1198
    :cond_2
    new-instance v4, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 1199
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 1200
    new-instance v6, Ljava/util/LinkedHashSet;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v1, v0, v15

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1201
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object/from16 v1, p0

    move-object v5, v13

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 1204
    iget-boolean v0, v7, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    if-eqz v0, :cond_3

    .line 1205
    invoke-direct {v7, v9, v11, v13}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDocumentsEncryption(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)V

    .line 1207
    :cond_3
    iget-boolean v0, v7, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    if-eqz v0, :cond_4

    .line 1208
    new-instance v0, Ljava/io/File;

    iget-object v1, v7, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1209
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x3

    invoke-virtual {v0, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "report.xml"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1211
    :try_start_8
    invoke-virtual {v13, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->writeReportToXml(Ljava/io/OutputStream;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1215
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v2, v0

    .line 1213
    :try_start_a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1215
    :goto_1
    :try_start_b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 1216
    throw v0

    :cond_4
    move-object/from16 v3, p1

    .line 1220
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    invoke-virtual {v13}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isOk()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1221
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "OK"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1222
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1227
    :try_start_c
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :try_start_e
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    const/4 v0, 0x0

    return-object v0

    .line 1225
    :cond_5
    :try_start_f
    invoke-virtual {v13}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->getReport()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object v6, v14

    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisuallyAndCombineReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 1227
    :try_start_10
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :try_start_11
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :try_start_12
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v1, v0

    .line 1172
    :try_start_13
    throw v1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 1227
    :try_start_14
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_15
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :catchall_4
    move-exception v0

    move-object v1, v0

    .line 1172
    :try_start_16
    throw v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :catchall_5
    move-exception v0

    move-object v2, v0

    .line 1227
    :try_start_17
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto :goto_4

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_18
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v2
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    :catchall_7
    move-exception v0

    move-object v1, v0

    .line 1172
    :try_start_19
    throw v1
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    :catchall_8
    move-exception v0

    move-object v2, v0

    .line 1227
    :try_start_1a
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    goto :goto_5

    :catchall_9
    move-exception v0

    move-object v3, v0

    :try_start_1b
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_a

    :catchall_a
    move-exception v0

    move-object v1, v0

    .line 1172
    :try_start_1c
    throw v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_b

    :catchall_b
    move-exception v0

    move-object v2, v0

    .line 1227
    :try_start_1d
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_c

    goto :goto_6

    :catchall_c
    move-exception v0

    move-object v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v2
.end method

.method private compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1311
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    move-result p1

    return p1
.end method

.method private compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;",
            "Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    if-nez v2, :cond_2

    .line 1316
    :cond_1
    const-string v1, "One of the dictionaries is null, the other is not."

    invoke-virtual {v4, v3, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return v6

    .line 1321
    :cond_2
    new-instance v7, Ljava/util/TreeSet;

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1322
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1323
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    const/4 v9, 0x1

    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfName;

    if-nez v9, :cond_5

    if-eqz v3, :cond_4

    if-eqz v4, :cond_4

    .line 1324
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    return v6

    :cond_5
    if-eqz v5, :cond_6

    .line 1328
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    goto :goto_0

    .line 1331
    :cond_6
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->ModDate:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    goto :goto_0

    .line 1332
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isStream()Z

    move-result v11

    if-eqz v11, :cond_8

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_3

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->Length:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    goto :goto_0

    .line 1334
    :cond_8
    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->BaseFont:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_9

    sget-object v11, Lcom/itextpdf/kernel/pdf/PdfName;->FontName:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 1335
    :cond_9
    invoke-virtual {v2, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    if-eqz v11, :cond_f

    .line 1336
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v12

    if-eqz v12, :cond_f

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0x2b

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    if-lez v12, :cond_f

    .line 1337
    invoke-virtual {v1, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v12

    .line 1338
    invoke-virtual {v12}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result v14

    const-string v15, "PdfDictionary {0} entry: Expected: {1}. Found: {2}"

    if-eqz v14, :cond_d

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    const/4 v8, -0x1

    if-ne v14, v8, :cond_a

    goto :goto_1

    .line 1343
    :cond_a
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v14

    invoke-virtual {v8, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1344
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 1345
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    if-eqz v4, :cond_b

    if-eqz v3, :cond_b

    .line 1347
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_b
    const/4 v9, 0x0

    :cond_c
    const/4 v6, 0x0

    goto/16 :goto_0

    :cond_d
    :goto_1
    if-eqz v4, :cond_e

    if-eqz v3, :cond_e

    .line 1340
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    filled-new-array {v6, v8, v9}, [Ljava/lang/Object;

    move-result-object v6

    invoke-static {v15, v6}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_e
    const/4 v6, 0x0

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1356
    :cond_f
    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ParentTree:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_13

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    goto :goto_3

    :cond_10
    if-eqz v3, :cond_11

    .line 1406
    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V

    :cond_11
    const/4 v6, 0x0

    .line 1408
    invoke-virtual {v1, v10, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v2, v10, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v0, v8, v10, v3, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareObjects(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v8

    if-eqz v8, :cond_12

    if-eqz v9, :cond_12

    const/4 v9, 0x1

    goto :goto_2

    :cond_12
    move v9, v6

    :goto_2
    if-eqz v3, :cond_3

    .line 1410
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pop()V

    goto/16 :goto_0

    :cond_13
    :goto_3
    const/4 v6, 0x0

    if-eqz v3, :cond_14

    .line 1358
    invoke-virtual {v3, v10}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1360
    :cond_14
    invoke-virtual {v1, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    .line 1361
    invoke-virtual {v2, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    .line 1362
    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    .line 1363
    new-instance v12, Ljava/util/LinkedList;

    invoke-direct {v12}, Ljava/util/LinkedList;-><init>()V

    const/4 v13, 0x0

    .line 1364
    invoke-direct {v0, v8, v13, v11}, Lcom/itextpdf/kernel/utils/CompareTool;->flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v8

    .line 1365
    invoke-direct {v0, v10, v13, v12}, Lcom/itextpdf/kernel/utils/CompareTool;->flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v10

    .line 1366
    const-string v13, "Number tree ends with a key which is invalid according to the PDF specification."

    const-class v14, Lcom/itextpdf/kernel/utils/CompareTool;

    if-eqz v8, :cond_16

    .line 1367
    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v15

    invoke-interface {v15, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    if-nez v10, :cond_16

    if-eqz v4, :cond_15

    if-eqz v3, :cond_15

    .line 1370
    const-string v9, "Number tree unexpectedly ends with a key"

    invoke-virtual {v4, v3, v9}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_15
    move v9, v6

    :cond_16
    if-eqz v10, :cond_18

    .line 1376
    invoke-static {v14}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v14

    invoke-interface {v14, v13}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    if-nez v8, :cond_18

    if-eqz v4, :cond_17

    if-eqz v3, :cond_17

    .line 1379
    const-string v9, "Number tree was expected to end with a key (although it is invalid according to the specification), but ended with a value"

    invoke-virtual {v4, v3, v9}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_17
    move v9, v6

    :cond_18
    if-eqz v8, :cond_1a

    if-eqz v10, :cond_1a

    .line 1384
    invoke-virtual {v0, v8, v10}, Lcom/itextpdf/kernel/utils/CompareTool;->compareNumbers(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;)Z

    move-result v8

    if-nez v8, :cond_1a

    if-eqz v4, :cond_19

    if-eqz v3, :cond_19

    .line 1386
    const-string v8, "Number tree was expected to end with a different key (although it is invalid according to the specification)"

    invoke-virtual {v4, v3, v8}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_19
    move v9, v6

    .line 1390
    :cond_1a
    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v11}, Ljava/util/LinkedList;->size()I

    move-result v10

    invoke-direct {v8, v11, v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/lang/Iterable;I)V

    .line 1391
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v11

    invoke-direct {v10, v12, v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Ljava/lang/Iterable;I)V

    .line 1392
    invoke-direct {v0, v8, v10, v3, v4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result v8

    if-nez v8, :cond_1c

    if-eqz v4, :cond_1b

    if-eqz v3, :cond_1b

    .line 1394
    const-string v8, "Number trees were flattened, compared and found to be different."

    invoke-virtual {v4, v3, v8}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_1b
    move v9, v6

    :cond_1c
    if-eqz v3, :cond_3

    .line 1400
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pop()V

    goto/16 :goto_0

    :cond_1d
    return v9
.end method

.method private compareDocumentsEncryption(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)V
    .locals 13

    move-object/from16 v6, p3

    .line 1253
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 1254
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Encrypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    if-nez v7, :cond_0

    if-nez v8, :cond_0

    return-void

    .line 1260
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;

    move-object v1, p1

    move-object v2, p2

    invoke-direct {v0, p2, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/TrailerPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    if-nez v7, :cond_1

    .line 1262
    const-string v1, "Expected encrypted document."

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return-void

    :cond_1
    if-nez v8, :cond_2

    .line 1266
    const-string v1, "Expected not encrypted document."

    invoke-virtual {v6, v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return-void

    .line 1270
    :cond_2
    new-instance v5, Ljava/util/LinkedHashSet;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->O:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v9, 0x0

    aput-object v1, v0, v9

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->U:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v10, 0x1

    aput-object v1, v0, v10

    const/4 v1, 0x2

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OE:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->UE:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Perms:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1271
    new-instance v11, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-direct {v11, v0, v1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v11

    move-object/from16 v4, p3

    .line 1272
    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 1274
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    .line 1275
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->CF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    if-nez v8, :cond_3

    if-eqz v7, :cond_7

    :cond_3
    if-eqz v8, :cond_4

    if-eqz v7, :cond_5

    :cond_4
    if-nez v8, :cond_6

    .line 1278
    :cond_5
    const-string v0, "One of the dictionaries is null, the other is not."

    invoke-virtual {v6, v11, v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    goto :goto_1

    .line 1280
    :cond_6
    new-instance v0, Ljava/util/TreeSet;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 1281
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 1282
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1283
    invoke-virtual {v11, v0}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pushDictItemToPath(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 1284
    new-instance v5, Ljava/util/LinkedHashSet;

    new-array v1, v10, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Recipients:Lcom/itextpdf/kernel/pdf/PdfName;

    aput-object v2, v1, v9

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 1285
    invoke-virtual {v7, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    invoke-virtual {v8, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    move-object v0, p0

    move-object v3, v11

    move-object/from16 v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 1286
    invoke-virtual {v11}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pop()V

    goto :goto_0

    :cond_7
    :goto_1
    return-void
.end method

.method private compareImagesOfPdfs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    .line 1024
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;

    iget-object v4, v1, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-direct {v0, v4}, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v4

    .line 1025
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;

    iget-object v5, v1, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-direct {v0, v5}, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v5

    .line 1027
    array-length v0, v4

    array-length v6, v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v0, v6, :cond_0

    move v6, v7

    goto :goto_0

    :cond_0
    move v6, v8

    .line 1030
    :goto_0
    array-length v0, v4

    array-length v9, v5

    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-lt v9, v7, :cond_9

    .line 1035
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;

    const/4 v10, 0x0

    invoke-direct {v0, v10}, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {v4, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1036
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;

    invoke-direct {v0, v10}, Lcom/itextpdf/kernel/utils/CompareTool$ImageNameComparator;-><init>(Lcom/itextpdf/kernel/utils/CompareTool$1;)V

    invoke-static {v5, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 1042
    :try_start_0
    new-instance v0, Lcom/itextpdf/io/util/ImageMagickHelper;

    iget-object v11, v1, Lcom/itextpdf/kernel/utils/CompareTool;->compareExec:Ljava/lang/String;

    invoke-direct {v0, v11}, Lcom/itextpdf/io/util/ImageMagickHelper;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v11, v7

    move-object v7, v10

    goto :goto_1

    :catch_0
    move-exception v0

    .line 1046
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 1047
    const-class v11, Lcom/itextpdf/kernel/utils/CompareTool;

    invoke-static {v11}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    move v11, v8

    move-object v0, v10

    .line 1050
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v10

    :goto_2
    if-ge v8, v9, :cond_5

    if-eqz v3, :cond_1

    .line 1054
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v3, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    move/from16 v18, v9

    move-object/from16 v9, p2

    goto/16 :goto_4

    .line 1056
    :cond_1
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v10, "Comparing page "

    invoke-direct {v15, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v16, v8, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ": "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v17, v4, v8

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v17

    move/from16 v18, v9

    invoke-static/range {v17 .. v17}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, " ..."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1057
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v14, v4, v8

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1058
    new-instance v3, Ljava/io/FileInputStream;

    aget-object v9, v4, v8

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1059
    new-instance v9, Ljava/io/FileInputStream;

    aget-object v10, v5, v8

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 1060
    invoke-direct {v1, v3, v9}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreams(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v10

    .line 1061
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 1062
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    if-nez v10, :cond_4

    .line 1065
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v11, :cond_2

    .line 1067
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v9, p2

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ".png"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1068
    aget-object v10, v4, v8

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aget-object v13, v5, v8

    .line 1069
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    .line 1068
    invoke-virtual {v0, v10, v13, v3}, Lcom/itextpdf/io/util/ImageMagickHelper;->runImageMagickImageCompare(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1070
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1071
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v13, "Page is different!\nPlease, examine file://"

    invoke-direct {v3, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1072
    invoke-static {v10}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/io/File;)Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " for more details."

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_2
    move-object/from16 v9, p2

    .line 1075
    :cond_3
    const-string v3, "Page is different!"

    :goto_3
    move-object v13, v3

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v9, p2

    .line 1077
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v10, " done."

    invoke-virtual {v3, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_4
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v3, p3

    move/from16 v9, v18

    const/4 v10, 0x0

    goto/16 :goto_2

    .line 1080
    :cond_5
    const-string v0, "<filename>"

    if-eqz v13, :cond_7

    .line 1081
    iget-object v2, v1, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-static {v2}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "File file://<filename> differs on page <pagenumber>."

    invoke-virtual {v3, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "<pagenumber>"

    invoke-direct {v1, v12}, Lcom/itextpdf/kernel/utils/CompareTool;->listDiffPagesAsString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    if-nez v11, :cond_6

    .line 1083
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    return-object v0

    :cond_7
    if-eqz v6, :cond_8

    .line 1088
    const-string v2, "Unexpected number of pages for <filename>."

    iget-object v3, v1, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v2, 0x0

    return-object v2

    .line 1032
    :cond_9
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;

    const-string v2, "No files for comparing. The result or sample pdf file is not processed by GhostScript."

    invoke-direct {v0, v2}, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private compareLinkAnnotations(Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z
    .locals 8

    .line 1740
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 1741
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    const/16 v2, 0xa

    const/4 v3, 0x6

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 1744
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v6

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v7

    if-eq v6, v7, :cond_0

    return v5

    .line 1749
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p3

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p3, v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object p3

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object p3

    .line 1750
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p4

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Dests:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p4, v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object p4

    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object p4

    .line 1751
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v6

    if-eq v6, v4, :cond_3

    if-eq v6, v3, :cond_2

    if-eq v6, v2, :cond_1

    const/4 p3, 0x0

    move-object p4, p3

    goto :goto_0

    .line 1761
    :cond_1
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1762
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfArray;

    goto :goto_0

    .line 1757
    :cond_2
    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1758
    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfArray;

    goto :goto_0

    .line 1753
    :cond_3
    move-object p3, v0

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1754
    move-object p4, v1

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1768
    :goto_0
    invoke-direct {p0, p3}, Lcom/itextpdf/kernel/utils/CompareTool;->getExplicitDestinationPageNum(Lcom/itextpdf/kernel/pdf/PdfArray;)I

    move-result p3

    invoke-direct {p0, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->getExplicitDestinationPageNum(Lcom/itextpdf/kernel/pdf/PdfArray;)I

    move-result p4

    if-eq p3, p4, :cond_4

    return v5

    .line 1774
    :cond_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1775
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1776
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->size()I

    move-result p4

    if-eq p3, p4, :cond_5

    return v5

    .line 1779
    :cond_5
    sget-object p3, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p3

    .line 1780
    sget-object p4, Lcom/itextpdf/kernel/pdf/PdfName;->Rect:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsRectangle(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object p4

    .line 1782
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v0

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 1783
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v0

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getWidth()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 1784
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v0

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_c

    .line 1785
    invoke-virtual {p3}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p3

    invoke-virtual {p4}, Lcom/itextpdf/kernel/geom/Rectangle;->getY()F

    move-result p4

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_6

    goto :goto_2

    .line 1788
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 1789
    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1790
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-nez v0, :cond_8

    return v5

    .line 1792
    :cond_8
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p3

    .line 1793
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    if-eq v0, v1, :cond_9

    return v5

    .line 1796
    :cond_9
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    if-eq v0, v2, :cond_a

    if-eq v0, v3, :cond_a

    const/4 v1, 0x7

    if-eq v0, v1, :cond_a

    const/16 v1, 0x8

    if-eq v0, v1, :cond_a

    goto :goto_1

    .line 1802
    :cond_a
    invoke-virtual {p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_7

    return v5

    :cond_b
    return v4

    :cond_c
    :goto_2
    return v5
.end method

.method private compareNamesExtended(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 1

    .line 1625
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 1629
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfName;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "PdfName. Expected: {0}. Found: {1}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private compareNumbersExtended(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 4

    .line 1635
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p4, :cond_1

    if-eqz p3, :cond_1

    .line 1639
    const-string v0, "PdfNumber. Expected: {0}. Found: {1}"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private compareStreams(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x10000

    .line 1293
    new-array v1, v0, [B

    .line 1294
    new-array v0, v0, [B

    .line 1298
    :cond_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1299
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    return v4

    .line 1302
    :cond_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_2

    return v4

    :cond_2
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/4 p1, 0x1

    return p1
.end method

.method private compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 3

    .line 1536
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->FlateDecode:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1537
    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v1

    .line 1538
    invoke-virtual {p2, v0}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes(Z)[B

    move-result-object v0

    .line 1539
    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1540
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1542
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1543
    array-length p2, v0

    array-length v2, v1

    if-eq p2, v2, :cond_1

    .line 1544
    array-length p2, v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    array-length v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p2, v2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "PdfStream. Lengths are different. Expected: {0}. Found: {1}\n"

    invoke-static {v2, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1546
    :cond_1
    const-string p2, "PdfStream. Bytes are different.\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1548
    :goto_0
    invoke-direct {p0, v1, v0, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->findBytesDifference([B[BLjava/lang/StringBuilder;)I

    move-result p2

    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1551
    invoke-virtual {p3, p2}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pushOffsetToPath(I)V

    .line 1552
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    .line 1553
    invoke-virtual {p3}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pop()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private compareStringsExtended(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 3

    .line 1645
    invoke-direct {p0, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->convertPdfStringToBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->convertPdfStringToBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1648
    :cond_0
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p2

    .line 1649
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object p1

    .line 1650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1651
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 1652
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PdfString. Lengths are different. Expected: {0}. Found: {1}\n"

    invoke-static {v2, v1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1654
    :cond_1
    const-string v1, "PdfString. Characters are different.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1656
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->findStringDifference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I

    move-result p1

    if-eqz p4, :cond_2

    if-eqz p3, :cond_2

    .line 1659
    invoke-virtual {p3, p1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pushOffsetToPath(I)V

    .line 1660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    .line 1661
    invoke-virtual {p3}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->pop()V

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 987
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 991
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p2, :cond_2

    .line 996
    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 998
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "_"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 996
    :cond_1
    const-string p2, ""

    .line 1000
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "diff_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1003
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->prepareOutputDirs(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Comparing visually.........."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 1007
    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1008
    invoke-direct {p0, p1, p3}, Lcom/itextpdf/kernel/utils/CompareTool;->createIgnoredAreasPdfs(Ljava/lang/String;Ljava/util/Map;)V

    .line 1013
    :cond_3
    :try_start_0
    new-instance p3, Lcom/itextpdf/io/util/GhostscriptHelper;

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->gsExec:Ljava/lang/String;

    invoke-direct {p3, v0}, Lcom/itextpdf/io/util/GhostscriptHelper;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outImage:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, v1}, Lcom/itextpdf/io/util/GhostscriptHelper;->runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1019
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpImage:Ljava/lang/String;

    invoke-virtual {p3, v0, p1, v1}, Lcom/itextpdf/io/util/GhostscriptHelper;->runGhostScriptImageGeneration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    invoke-direct {p0, p1, p2, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareImagesOfPdfs(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 1015
    new-instance p2, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareToolExecutionException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private compareVisuallyAndCombineReports(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1233
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Fail"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1234
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Compare by content report:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1236
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1237
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 1238
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1239
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    .line 1240
    :cond_1
    :goto_0
    const-string p1, "Compare by content fails. No visual differences"

    return-object p1
.end method

.method private convertPdfStringToBytes(Lcom/itextpdf/kernel/pdf/PdfString;)[B
    .locals 2

    .line 1708
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 1709
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getEncoding()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1710
    const-string v1, "UnicodeBig"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/itextpdf/io/font/PdfEncodings;->isPdfDocEncoding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1711
    const-string p1, "PDF"

    invoke-static {v0, p1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    goto :goto_0

    .line 1713
    :cond_0
    invoke-static {v0, p1}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private createIgnoredAreasPdfs(Ljava/lang/String;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1107
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    .line 1108
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 1109
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ignored_areas_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;)V

    .line 1110
    :try_start_0
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 1111
    :try_start_1
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v4, v2, v1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 1112
    :try_start_2
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfWriter;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfWriter;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 1113
    :try_start_3
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 1114
    :try_start_4
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v7, v6, v5, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1115
    :try_start_5
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1116
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1117
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1120
    new-instance v9, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v4, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 1121
    new-instance v10, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v8

    invoke-direct {v10, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;-><init>(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 1123
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1124
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->saveState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1125
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/geom/Rectangle;

    .line 1126
    invoke-virtual {v9, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v11

    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1127
    invoke-virtual {v10, v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->rectangle(Lcom/itextpdf/kernel/geom/Rectangle;)Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->fill()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    goto :goto_1

    .line 1129
    :cond_1
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;

    .line 1130
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;->restoreState()Lcom/itextpdf/kernel/pdf/canvas/PdfCanvas;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1133
    :cond_2
    :try_start_6
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    :try_start_9
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    :try_start_a
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_f

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V

    .line 1135
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 1109
    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception p2

    .line 1133
    :try_start_c
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    :try_start_d
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :catchall_3
    move-exception p1

    .line 1109
    :try_start_e
    throw p1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception p2

    .line 1133
    :try_start_f
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception v0

    :try_start_10
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception p1

    .line 1109
    :try_start_11
    throw p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception p2

    .line 1133
    :try_start_12
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception v0

    :try_start_13
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw p2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_9

    :catchall_9
    move-exception p1

    .line 1109
    :try_start_14
    throw p1
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    :catchall_a
    move-exception p2

    .line 1133
    :try_start_15
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_b

    goto :goto_5

    :catchall_b
    move-exception v0

    :try_start_16
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    :catchall_c
    move-exception p1

    .line 1109
    :try_start_17
    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    :catchall_d
    move-exception p2

    .line 1133
    :try_start_18
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    goto :goto_6

    :catchall_e
    move-exception v0

    :try_start_19
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    :catchall_f
    move-exception p1

    .line 1109
    :try_start_1a
    throw p1
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    :catchall_10
    move-exception p2

    .line 1133
    :try_start_1b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    goto :goto_7

    :catchall_11
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p2
.end method

.method private findBytesDifference([B[BLjava/lang/StringBuilder;)I
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1565
    array-length v2, v1

    array-length v3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_1

    .line 1567
    aget-byte v8, v1, v4

    aget-byte v9, v0, v4

    if-eq v8, v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v7, :cond_0

    move v6, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v2, v6, -0xa

    .line 1578
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1579
    array-length v8, v1

    add-int/lit8 v9, v6, 0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1580
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1581
    array-length v10, v0

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 1584
    new-instance v11, Ljava/lang/String;

    aget-byte v10, v1, v6

    new-array v12, v7, [B

    aput-byte v10, v12, v3

    sget-object v10, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v11, v12, v10}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1585
    new-instance v10, Ljava/lang/String;

    sub-int/2addr v8, v4

    sget-object v12, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v10, v1, v4, v8, v12}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    const-string v1, "\\r|\\n"

    const-string v4, " "

    invoke-virtual {v10, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1586
    new-instance v13, Ljava/lang/String;

    aget-byte v8, v0, v6

    new-array v7, v7, [B

    aput-byte v8, v7, v3

    sget-object v3, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v13, v7, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1587
    new-instance v3, Ljava/lang/String;

    sub-int/2addr v9, v2

    sget-object v7, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v3, v0, v2, v9, v7}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1589
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array/range {v10 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    .line 1588
    const-string v1, "First bytes difference is encountered at index {0}. Expected: {1} ({2}). Found: {3} ({4}). Total number of different bytes: {5}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    move v2, v6

    goto :goto_1

    .line 1593
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Bytes of the shorter array are the same as the first {0} bytes of the longer one."

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    .line 1596
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2
.end method

.method private findStringDifference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)I
    .locals 15

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1670
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v4, v2, :cond_1

    .line 1672
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-eq v7, v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    move v6, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v5, :cond_2

    add-int/lit8 v2, v6, -0xf

    .line 1683
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1684
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v6, 0xf

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1685
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1686
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3, v8}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1689
    invoke-virtual {v1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    .line 1690
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\\r|\\n"

    const-string v7, " "

    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1691
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v12

    .line 1692
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1694
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array/range {v9 .. v14}, [Ljava/lang/Object;

    move-result-object v0

    .line 1693
    const-string v1, "First characters difference is encountered at index {0}.\nExpected: {1} ({2}).\nFound: {3} ({4}).\nTotal number of different characters: {5}"

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    move v2, v6

    goto :goto_1

    .line 1699
    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "All characters of the shorter string are the same as the first {0} characters of the longer one."

    invoke-static {v1, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, p3

    .line 1702
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v2
.end method

.method private flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfNumber;",
            "Ljava/util/LinkedList<",
            "Lcom/itextpdf/kernel/pdf/PdfObject;",
            ">;)",
            "Lcom/itextpdf/kernel/pdf/PdfNumber;"
        }
    .end annotation

    .line 1417
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Nums:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    move p1, v2

    .line 1419
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge p1, v3, :cond_3

    if-nez p2, :cond_0

    add-int/lit8 v3, p1, 0x1

    .line 1422
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    move-object v5, p2

    move-object p2, p1

    move p1, v3

    move-object v3, v5

    goto :goto_1

    :cond_0
    move-object v3, v1

    .line 1427
    :goto_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    .line 1428
    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1429
    invoke-virtual {v0, p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    add-int/lit8 p1, p1, 0x1

    move-object p2, v3

    goto :goto_0

    :cond_1
    return-object p2

    .line 1434
    :cond_2
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Kids:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1435
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 1436
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsDictionary(I)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 1437
    invoke-direct {p0, v0, p2, p3}, Lcom/itextpdf/kernel/utils/CompareTool;->flattenNumTree(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfNumber;Ljava/util/LinkedList;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    return-object v1
.end method

.method private getExplicitDestinationPageNum(Lcom/itextpdf/kernel/pdf/PdfArray;)I
    .locals 3

    const/4 v0, 0x0

    .line 1811
    invoke-virtual {p1, v0, v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(IZ)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 1813
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    const/4 v1, 0x1

    .line 1814
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    if-gt v1, v2, :cond_1

    .line 1815
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1818
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "PdfLinkAnnotation comparison: Page not found."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getLinkAnnotations(ILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;",
            ">;"
        }
    .end annotation

    .line 1728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1729
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object p1

    .line 1730
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 1731
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Link:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1732
    check-cast p2, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 965
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    .line 966
    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    .line 967
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    .line 968
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    .line 969
    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdfName:Ljava/lang/String;

    iput-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outImage:Ljava/lang/String;

    .line 970
    const-string p2, "cmp_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 971
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpImage:Ljava/lang/String;

    goto :goto_0

    .line 973
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpImage:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private listDiffPagesAsString(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1095
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1096
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1097
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1098
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 1099
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1102
    :cond_1
    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private loadPagesFromReader(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/List;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            ">;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;)V"
        }
    .end annotation

    .line 1245
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1247
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1248
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private prepareOutputDirs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1143
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1144
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->createDirectories(Ljava/lang/String;)V

    goto :goto_3

    .line 1146
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$PngFileFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1147
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 1148
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1150
    :cond_1
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdfName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CmpPngFileFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1151
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 1152
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1155
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/utils/CompareTool$DiffPngFileFilter;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/itextpdf/commons/utils/FileUtil;->listFilesInDirectoryByFilter(Ljava/lang/String;Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p1

    .line 1156
    array-length p2, p1

    :goto_2
    if-ge v2, p2, :cond_3

    aget-object v0, p1, v2

    .line 1157
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method private printOutCmpDirectories()V
    .locals 4

    .line 1163
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out file folder: file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1164
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/io/File;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1165
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cmp file folder: file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1166
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/io/util/UrlUtil;->toNormalizedURI(Ljava/io/File;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1165
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method private setPassword([B[B)V
    .locals 1

    if-eqz p1, :cond_0

    .line 979
    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->setPassword([B)Lcom/itextpdf/kernel/pdf/ReaderProperties;

    :cond_0
    if-eqz p2, :cond_1

    .line 982
    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/ReaderProperties;->setPassword([B)Lcom/itextpdf/kernel/pdf/ReaderProperties;

    :cond_1
    return-void
.end method


# virtual methods
.method public compareArrays(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)Z
    .locals 1

    const/4 v0, 0x0

    .line 651
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1
.end method

.method public compareBooleans(Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/pdf/PdfBoolean;)Z
    .locals 0

    .line 695
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public compareByCatalog(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 9

    .line 195
    new-instance v6, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v6, v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(I)V

    .line 196
    new-instance v7, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    .line 197
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-direct {v7, v0, v1}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 198
    new-instance v5, Ljava/util/LinkedHashSet;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    const/4 v8, 0x0

    aput-object v1, v0, v8

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 199
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-object v0, p0

    move-object v3, v7

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    .line 204
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    if-nez p1, :cond_0

    goto :goto_1

    .line 208
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-virtual {v6}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result p1

    if-nez p1, :cond_1

    .line 209
    const-string p1, "Documents have different numbers of pages."

    invoke-virtual {v6, v7, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    .line 211
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v8, p1, :cond_3

    .line 212
    invoke-virtual {v6}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->isMessageLimitReached()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 215
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-direct {p1, p2, v0}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 216
    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {p2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 217
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 218
    invoke-direct {p0, p2, v0, p1, v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v6
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 409
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 436
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 497
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;[B[B)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 530
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out pdf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 532
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cmp pdf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 533
    invoke-direct {p0, p6, p7}, Lcom/itextpdf/kernel/utils/CompareTool;->setPassword([B[B)V

    .line 534
    invoke-direct {p0, p3, p4, p5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    .line 469
    invoke-virtual/range {v0 .. v7}, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareDictionaries(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Z
    .locals 1

    const/4 v0, 0x0

    .line 546
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1
.end method

.method public compareDictionariesStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 1

    const/4 v0, 0x0

    .line 567
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    move-result-object p1

    return-object p1
.end method

.method public compareDictionariesStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Ljava/util/Set;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Lcom/itextpdf/kernel/pdf/PdfDictionary;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            ">;)",
            "Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;"
        }
    .end annotation

    .line 590
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 594
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(I)V

    .line 595
    new-instance v4, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    invoke-direct {v4, v1, v2}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v0

    move-object v6, p3

    .line 596
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;Ljava/util/Set;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 598
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->getReport()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 591
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The \'outDict\' and \'cmpDict\' objects shall have indirect references."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public compareDocumentInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 839
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDocumentInfo(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareDocumentInfo(Ljava/lang/String;Ljava/lang/String;[B[B)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 804
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[itext] INFO  Comparing document info......."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 806
    invoke-direct {p0, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->setPassword([B[B)V

    .line 807
    new-instance p3, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object p4

    invoke-direct {p3, p1, p4}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V

    .line 808
    :try_start_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance p4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {p4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 809
    invoke-virtual {p4, v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object p4

    invoke-direct {p1, p3, p4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 810
    :try_start_1
    new-instance p4, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/utils/CompareTool;->getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;

    move-result-object v0

    invoke-direct {p4, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/ReaderProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 811
    :try_start_2
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 812
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v0

    invoke-direct {p2, p4, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 813
    :try_start_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->convertDocInfoToStrings(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;)[Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/utils/CompareTool;->convertDocInfoToStrings(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 815
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 816
    aget-object v3, v0, v2

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 817
    const-string v3, "Document info fail. Expected: \"{0}\", actual: \"{1}\""

    aget-object v0, v0, v2

    aget-object v1, v1, v2

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 821
    :goto_1
    :try_start_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    if-nez v0, :cond_2

    .line 823
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "OK"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 825
    :cond_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Fail"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 826
    :goto_2
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-object v0

    :catchall_0
    move-exception v0

    .line 807
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v1

    .line 821
    :try_start_8
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception p2

    :try_start_9
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p2

    .line 807
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v0

    .line 821
    :try_start_b
    invoke-virtual {p4}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p4

    :try_start_c
    invoke-virtual {p2, p4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p2

    .line 807
    :try_start_d
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception p4

    .line 821
    :try_start_e
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_5

    :catchall_8
    move-exception p1

    :try_start_f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw p4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception p1

    .line 807
    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception p2

    .line 821
    :try_start_11
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_6

    :catchall_b
    move-exception p3

    invoke-virtual {p1, p3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw p2
.end method

.method public compareLinkAnnotations(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 851
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "[itext] INFO  Comparing link annotations...."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 853
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 854
    :try_start_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v1, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 855
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 856
    :try_start_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 857
    :try_start_2
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v2, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v3, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 858
    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v2

    invoke-direct {p2, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    .line 859
    :cond_0
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-ge v4, v5, :cond_3

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-ge v4, v5, :cond_3

    add-int/lit8 v4, v4, 0x1

    .line 860
    invoke-direct {p0, v4, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->getLinkAnnotations(ILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    move-result-object v5

    .line 861
    invoke-direct {p0, v4, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->getLinkAnnotations(ILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;

    move-result-object v6

    .line 863
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 864
    const-string v2, "Different number of links on page {0}."

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_1
    move v7, v2

    .line 867
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_0

    .line 868
    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-direct {p0, v8, v9, p2, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->compareLinkAnnotations(Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 869
    const-string v3, "Different links on page {0}.\n{1}\n{2}"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v8, v6, v5}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 874
    :cond_3
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    :try_start_6
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_9

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    if-nez v3, :cond_4

    .line 876
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "OK"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 878
    :cond_4
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string p2, "Fail"

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 879
    :goto_3
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    return-object v3

    :catchall_0
    move-exception v2

    .line 853
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v3

    .line 874
    :try_start_8
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    :try_start_9
    invoke-virtual {v2, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p2

    .line 853
    :try_start_a
    throw p2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception v2

    .line 874
    :try_start_b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v1

    :try_start_c
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p2

    .line 853
    :try_start_d
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    move-exception v1

    .line 874
    :try_start_e
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    goto :goto_6

    :catchall_8
    move-exception p1

    :try_start_f
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    move-exception p1

    .line 853
    :try_start_10
    throw p1
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    move-exception p2

    .line 874
    :try_start_11
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_7

    :catchall_b
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p2
.end method

.method public compareNames(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;)Z
    .locals 0

    .line 662
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compareNumbers(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;)Z
    .locals 2

    .line 673
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide p1

    cmpl-double p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected compareObjects(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1447
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v2, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, p1

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz p2, :cond_3

    .line 1449
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    goto :goto_1

    :cond_2
    move-object v1, p2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    return v3

    :cond_4
    if-nez v2, :cond_5

    .line 1455
    const-string p1, "Expected object was not found."

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return v0

    :cond_5
    if-nez v1, :cond_6

    .line 1458
    const-string p1, "Found object which was not expected to be found."

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return v0

    .line 1460
    :cond_6
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v4

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1461
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Types do not match. Expected: {0}. Found: {1}."

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return v0

    .line 1463
    :cond_7
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1464
    const-string p1, "Expected indirect object."

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return v0

    .line 1466
    :cond_8
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1467
    const-string p1, "Expected direct object."

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    return v0

    :cond_9
    if-eqz p3, :cond_b

    .line 1471
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1472
    move-object v4, p2

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-object v5, p1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    invoke-virtual {p3, v4, v5}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->isComparing(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z

    move-result v6

    if-eqz v6, :cond_a

    return v3

    .line 1474
    :cond_a
    invoke-virtual {p3, v4, v5}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;->resetDirectPath(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    move-result-object p3

    .line 1477
    :cond_b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_16

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v5, v1

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    iget-boolean v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    if-eqz v4, :cond_16

    .line 1479
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v4

    if-eqz v4, :cond_14

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Page:Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v5, v2

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_6

    .line 1484
    :cond_c
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_d

    check-cast p2, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    goto :goto_2

    :cond_d
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p2

    .line 1485
    :goto_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isIndirectReference()Z

    move-result v4

    if-eqz v4, :cond_e

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    goto :goto_3

    :cond_e
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    .line 1487
    :goto_3
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    if-nez v4, :cond_f

    .line 1488
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    move v4, v3

    .line 1489
    :goto_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-gt v4, v5, :cond_f

    .line 1490
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 1493
    :cond_f
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    if-nez v4, :cond_10

    .line 1494
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    move v4, v3

    .line 1495
    :goto_5
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-gt v4, v5, :cond_10

    .line 1496
    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1503
    :cond_10
    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1504
    :cond_11
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ne v1, v2, :cond_12

    return v3

    :cond_12
    if-eqz p4, :cond_13

    if-eqz p3, :cond_13

    .line 1508
    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPagesRef:Ljava/util/List;

    .line 1509
    invoke-interface {v1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    add-int/2addr p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPagesRef:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1508
    const-string p2, "The dictionaries refer to different pages. Expected page number: {0}. Found: {1}"

    invoke-static {p2, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_13
    return v0

    :cond_14
    :goto_6
    if-eqz p4, :cond_15

    if-eqz p3, :cond_15

    .line 1481
    const-string p1, "Expected a page. Found not a page."

    invoke-virtual {p4, p3, p1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->addError(Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Ljava/lang/String;)V

    :cond_15
    return v0

    .line 1514
    :cond_16
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 1515
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareDictionariesExtended(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1516
    :cond_17
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isStream()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 1517
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1518
    :cond_18
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1519
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareArraysExtended(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1520
    :cond_19
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isName()Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1521
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareNamesExtended(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1522
    :cond_1a
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1523
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareNumbersExtended(Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1524
    :cond_1b
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isString()Z

    move-result p1

    if-eqz p1, :cond_1c

    .line 1525
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStringsExtended(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1526
    :cond_1c
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isBoolean()Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1527
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {p0, v2, v1, p3, p4}, Lcom/itextpdf/kernel/utils/CompareTool;->compareBooleansExtended(Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/pdf/PdfBoolean;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1

    .line 1528
    :cond_1d
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNull()Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNull()Z

    move-result p1

    if-eqz p1, :cond_1e

    return v3

    .line 1531
    :cond_1e
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public compareStreams(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 1

    const/4 v0, 0x0

    .line 639
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    return p1
.end method

.method public compareStreamsStructure(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;)Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;
    .locals 4

    .line 618
    new-instance v0, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;

    iget v1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;-><init>(I)V

    .line 619
    new-instance v1, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 620
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;-><init>(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)V

    .line 621
    invoke-direct {p0, p1, p2, v1, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareStreamsExtended(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/utils/objectpathitems/ObjectPath;Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 623
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/utils/CompareTool$CompareResult;->getReport()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public compareStrings(Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)Z
    .locals 0

    .line 684
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public compareTagStructures(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 899
    const-string v0, "root"

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "[itext] INFO  Comparing tag structures......"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 901
    const-string v1, ".xml"

    const-string v2, ".pdf"

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 902
    const-string v3, ".cmp.xml"

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 905
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {v3, p1}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 906
    :try_start_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v4, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v5, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 907
    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v4

    invoke-direct {p1, v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_f

    .line 908
    :try_start_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    .line 909
    :try_start_2
    new-instance v5, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    invoke-direct {v5, p1}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v5, v0}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->setRootTag(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->convertToXml(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_9

    .line 910
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    :try_start_4
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_f

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    .line 911
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V

    .line 912
    :try_start_5
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v3, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v4, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 913
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v3

    invoke-direct {p2, p1, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 914
    :try_start_6
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 915
    :try_start_7
    new-instance v4, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    invoke-direct {v4, p2}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v4, v0}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->setRootTag(Ljava/lang/String;)Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/itextpdf/kernel/utils/TaggedPdfReaderTool;->convertToXml(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 916
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V

    .line 918
    invoke-virtual {p0, v1, v2}, Lcom/itextpdf/kernel/utils/CompareTool;->compareXmls(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 919
    const-string p1, "The tag structures are different."

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 922
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "OK"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 924
    :cond_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v0, "Fail"

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 925
    :goto_1
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p2}, Ljava/io/PrintStream;->flush()V

    return-object p1

    :catchall_0
    move-exception v0

    .line 911
    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catchall_1
    move-exception v1

    .line 916
    :try_start_b
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    :try_start_c
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :catchall_3
    move-exception v0

    .line 911
    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :catchall_4
    move-exception v1

    .line 916
    :try_start_e
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_5

    goto :goto_3

    :catchall_5
    move-exception p2

    :try_start_f
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :catchall_6
    move-exception p2

    .line 911
    :try_start_10
    throw p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_7

    :catchall_7
    move-exception v0

    .line 916
    :try_start_11
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8

    goto :goto_4

    :catchall_8
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v0

    :catchall_9
    move-exception p2

    .line 905
    :try_start_12
    throw p2
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_a

    :catchall_a
    move-exception v0

    .line 910
    :try_start_13
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    goto :goto_5

    :catchall_b
    move-exception v1

    :try_start_14
    invoke-virtual {p2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :catchall_c
    move-exception p2

    .line 905
    :try_start_15
    throw p2
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    .line 910
    :try_start_16
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    goto :goto_6

    :catchall_e
    move-exception p1

    :try_start_17
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_6
    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_f

    :catchall_f
    move-exception p1

    .line 905
    :try_start_18
    throw p1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_10

    :catchall_10
    move-exception p2

    .line 910
    :try_start_19
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_11

    goto :goto_7

    :catchall_11
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p2
.end method

.method public compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 351
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/geom/Rectangle;",
            ">;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 380
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out pdf: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 382
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cmp pdf: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 383
    invoke-direct {p0, p3, p4, p5}, Lcom/itextpdf/kernel/utils/CompareTool;->compareVisually(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareXmls(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 782
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Out xml: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 783
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cmp xml: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/itextpdf/io/util/UrlUtil;->getNormalizedFileUriString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 784
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->getInputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 785
    :try_start_0
    invoke-static {p2}, Lcom/itextpdf/commons/utils/FileUtil;->getInputStreamForFile(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 786
    :try_start_1
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/utils/XmlUtils;->compareXmls(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_0

    .line 787
    :try_start_2
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    return v0

    :catchall_0
    move-exception v0

    .line 784
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p2, :cond_2

    .line 787
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    .line 784
    :try_start_6
    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    move-exception v0

    if-eqz p1, :cond_3

    .line 787
    :try_start_7
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v0
.end method

.method public compareXmls([B[B)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 767
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    invoke-direct {p1, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/utils/XmlUtils;->compareXmls(Ljava/io/InputStream;Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public compareXmp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 706
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/utils/CompareTool;->compareXmp(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public compareXmp(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12

    .line 719
    const-string v0, "Producer"

    const-string v1, "http://ns.adobe.com/pdf/1.3/"

    const-string v2, "MetadataDate"

    const-string v3, "ModifyDate"

    const-string v4, "CreateDate"

    const-string v5, "http://ns.adobe.com/xap/1.0/"

    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/utils/CompareTool;->init(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :try_start_0
    new-instance p1, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object p2, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpPdf:Ljava/lang/String;

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 721
    :try_start_1
    new-instance p2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v6, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 722
    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v6

    invoke-direct {p2, p1, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_9

    .line 723
    :try_start_2
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v7, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outPdf:Ljava/lang/String;

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 724
    :try_start_3
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v8, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v9, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    .line 725
    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v8

    invoke-direct {v7, v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 726
    :try_start_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v8

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v9

    if-eqz p3, :cond_0

    .line 728
    new-instance p3, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {p3}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    const/4 v10, 0x1

    invoke-virtual {p3, v10}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->setOmitNormalization(Z)Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    move-result-object p3

    invoke-static {v8, p3}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p3

    .line 730
    invoke-static {p3, v5, v4, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 731
    invoke-static {p3, v5, v3, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 732
    invoke-static {p3, v5, v2, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 733
    invoke-static {p3, v1, v0, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 735
    new-instance v8, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    const/16 v11, 0x2000

    invoke-direct {v8, v11}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>(I)V

    invoke-static {p3, v8}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object v8

    .line 737
    new-instance p3, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {p3}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    invoke-virtual {p3, v10}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->setOmitNormalization(Z)Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    move-result-object p3

    invoke-static {v9, p3}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([BLcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p3

    .line 738
    invoke-static {p3, v5, v4, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 739
    invoke-static {p3, v5, v3, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 740
    invoke-static {p3, v5, v2, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 741
    invoke-static {p3, v1, v0, v10, v10}, Lcom/itextpdf/kernel/xmp/XMPUtils;->removeProperties(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 743
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v0, v11}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>(I)V

    invoke-static {p3, v0}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object v9

    .line 746
    :cond_0
    invoke-virtual {p0, v8, v9}, Lcom/itextpdf/kernel/utils/CompareTool;->compareXmls([B[B)Z

    move-result p3

    if-nez p3, :cond_1

    .line 747
    const-string p3, "The XMP packages different!"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 749
    :try_start_5
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :try_start_7
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_9

    :try_start_8
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    return-object p3

    :cond_1
    :try_start_9
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    :try_start_b
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    :try_start_c
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p3

    .line 720
    :try_start_d
    throw p3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catchall_1
    move-exception v0

    .line 749
    :try_start_e
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v1

    :try_start_f
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :catchall_3
    move-exception p3

    .line 720
    :try_start_10
    throw p3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v0

    .line 749
    :try_start_11
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v1

    :try_start_12
    invoke-virtual {p3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    :catchall_6
    move-exception p3

    .line 720
    :try_start_13
    throw p3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :catchall_7
    move-exception v0

    .line 749
    :try_start_14
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    goto :goto_2

    :catchall_8
    move-exception p2

    :try_start_15
    invoke-virtual {p3, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :catchall_9
    move-exception p2

    .line 720
    :try_start_16
    throw p2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :catchall_a
    move-exception p3

    .line 749
    :try_start_17
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_3

    :catchall_b
    move-exception p1

    :try_start_18
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw p3
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    .line 750
    :catch_0
    const-string p1, "XMP parsing failure!"

    return-object p1
.end method

.method protected convertDocInfoToStrings(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x5

    .line 939
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v5, 0x3

    aput-object v2, v0, v5

    const/4 v6, 0x4

    aput-object v2, v0, v6

    .line 940
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getTitle()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 942
    aput-object v2, v0, v1

    .line 943
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getAuthor()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 945
    aput-object v1, v0, v3

    .line 946
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getSubject()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 948
    aput-object v1, v0, v4

    .line 949
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getKeywords()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 951
    aput-object v1, v0, v5

    .line 952
    :cond_3
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getProducer()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 954
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/utils/CompareTool;->convertProducerLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v6

    :cond_4
    return-object v0
.end method

.method convertProducerLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 960
    const-string v0, "(\\d+\\.)+\\d+(-SNAPSHOT)?"

    const-string v1, "<version>"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u00a9\\d+-\\d+ iText Group NV"

    const-string v1, "\u00a9<copyright years> iText Group NV"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public disableCachedPagesComparison()Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 1

    const/4 v0, 0x0

    .line 243
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->useCachedPagesForComparison:Z

    return-object p0
.end method

.method public enableEncryptionCompare()Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 1

    const/4 v0, 0x1

    .line 291
    iput-boolean v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->encryptionCompareEnabled:Z

    return-object p0
.end method

.method public getCmpReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    if-nez v0, :cond_0

    .line 326
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->cmpProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    return-object v0
.end method

.method public getOutReaderProperties()Lcom/itextpdf/kernel/pdf/ReaderProperties;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    if-nez v0, :cond_0

    .line 308
    new-instance v0, Lcom/itextpdf/kernel/pdf/ReaderProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/ReaderProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/utils/CompareTool;->outProps:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    return-object v0
.end method

.method public setCompareByContentErrorsLimit(I)Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 0

    .line 254
    iput p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->compareByContentErrorsLimit:I

    return-object p0
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    return-void
.end method

.method public setGenerateCompareByContentXmlReport(Z)Lcom/itextpdf/kernel/utils/CompareTool;
    .locals 0

    .line 267
    iput-boolean p1, p0, Lcom/itextpdf/kernel/utils/CompareTool;->generateCompareByContentXmlReport:Z

    return-object p0
.end method
