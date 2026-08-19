.class public Lcom/itextpdf/kernel/pdf/PdfDocument;
.super Ljava/lang/Object;
.source "PdfDocument.java"

# interfaces
.implements Lcom/itextpdf/kernel/events/IEventDispatcher;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final pdfPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;


# instance fields
.field protected catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

.field protected closeReader:Z

.field protected closeWriter:Z

.field protected closed:Z

.field private defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

.field private defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

.field private final documentFonts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;"
        }
    .end annotation
.end field

.field private final documentId:Lcom/itextpdf/commons/actions/sequence/SequenceId;

.field private encryptedEmbeddedStreamsHandler:Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

.field protected eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

.field protected fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

.field protected flushUnusedObjects:Z

.field protected info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

.field protected isClosing:Z

.field memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

.field private modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field private originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

.field protected pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

.field private final pendingDestinationMutations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

.field protected reader:Lcom/itextpdf/kernel/pdf/PdfReader;

.field protected serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

.field serializedObjectsCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            "[B>;"
        }
    .end annotation
.end field

.field protected structParentIndex:I

.field protected structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

.field protected tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

.field protected trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

.field protected xmpMetadata:[B

.field final xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 113
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfPageFactory;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfPageFactory;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;)V
    .locals 1

    .line 202
    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 2

    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pendingDestinationMutations:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v0}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 138
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 142
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 146
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 150
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 154
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 160
    new-instance v1, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    const/4 v1, -0x1

    .line 162
    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 164
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 166
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 170
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 179
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 184
    sget-object v1, Lcom/itextpdf/kernel/geom/PageSize;->DEFAULT:Lcom/itextpdf/kernel/geom/PageSize;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 193
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz p1, :cond_0

    .line 215
    new-instance v1, Lcom/itextpdf/commons/actions/sequence/SequenceId;

    invoke-direct {v1}, Lcom/itextpdf/commons/actions/sequence/SequenceId;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:Lcom/itextpdf/commons/actions/sequence/SequenceId;

    .line 216
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 218
    new-instance p1, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {p1}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 219
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 220
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    return-void

    .line 213
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The reader in PdfDocument constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    .locals 1

    .line 260
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/StampingProperties;)V
    .locals 3

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pendingDestinationMutations:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v0}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 138
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 142
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 146
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 150
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 154
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 160
    new-instance v1, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    const/4 v1, -0x1

    .line 162
    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 164
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 166
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 170
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 179
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 184
    sget-object v1, Lcom/itextpdf/kernel/geom/PageSize;->DEFAULT:Lcom/itextpdf/kernel/geom/PageSize;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 193
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 277
    new-instance v0, Lcom/itextpdf/commons/actions/sequence/SequenceId;

    invoke-direct {v0}, Lcom/itextpdf/commons/actions/sequence/SequenceId;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:Lcom/itextpdf/commons/actions/sequence/SequenceId;

    .line 278
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 279
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 280
    iput-object p3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 282
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->writerHasEncryption()Z

    move-result p1

    .line 283
    iget-boolean v0, p3, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 284
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 285
    const-string v2, "Writer encryption will be ignored, because append mode is used. Document will preserve the original encryption (or will stay unencrypted)"

    invoke-interface {v0, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 287
    :cond_0
    iget-boolean p3, p3, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 288
    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p1

    .line 289
    const-string p3, "Writer encryption will be ignored, because preservation of encryption is enabled. Document will preserve the original encryption (or will stay unencrypted)"

    invoke-interface {p1, p3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 292
    :cond_1
    iget-object p1, p2, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/WriterProperties;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    return-void

    .line 275
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The writer in PdfDocument constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 272
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The reader in PdfDocument constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;)V
    .locals 1

    .line 230
    new-instance v0, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfWriter;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V
    .locals 2

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pendingDestinationMutations:Ljava/util/List;

    .line 128
    new-instance v0, Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-direct {v0}, Lcom/itextpdf/kernel/events/EventDispatcher;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    const/4 v0, 0x0

    .line 133
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 138
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    .line 142
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 146
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 150
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 154
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 158
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_7:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 160
    new-instance v1, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-direct {v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    const/4 v1, -0x1

    .line 162
    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    const/4 v1, 0x1

    .line 163
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    .line 164
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    const/4 v1, 0x0

    .line 165
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 166
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    .line 170
    iput-boolean v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    .line 175
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializedObjectsCache:Ljava/util/Map;

    .line 179
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 184
    sget-object v1, Lcom/itextpdf/kernel/geom/PageSize;->DEFAULT:Lcom/itextpdf/kernel/geom/PageSize;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    .line 193
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-eqz p1, :cond_0

    .line 244
    new-instance v0, Lcom/itextpdf/commons/actions/sequence/SequenceId;

    invoke-direct {v0}, Lcom/itextpdf/commons/actions/sequence/SequenceId;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:Lcom/itextpdf/commons/actions/sequence/SequenceId;

    .line 245
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    .line 247
    new-instance v0, Lcom/itextpdf/kernel/pdf/StampingProperties;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/StampingProperties;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    .line 248
    iget-object p2, p2, Lcom/itextpdf/kernel/pdf/DocumentProperties;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    invoke-virtual {v0, p2}, Lcom/itextpdf/kernel/pdf/StampingProperties;->setEventCountingMetaInfo(Lcom/itextpdf/commons/actions/contexts/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    .line 249
    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/WriterProperties;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    return-void

    .line 242
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The writer in PdfDocument constructor can not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cloneOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    return-void

    .line 2450
    :cond_0
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getAllChildren()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 2451
    invoke-interface {p1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2453
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2454
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 2455
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1, v0, p4, p5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->copyDestination(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 2457
    :goto_1
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addOutline(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v3

    if-eqz v0, :cond_3

    .line 2459
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->addDestination(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    .line 2461
    :cond_3
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getStyle()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2463
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setStyle(I)V

    .line 2465
    :cond_4
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 2467
    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setColor(Lcom/itextpdf/kernel/colors/Color;)V

    .line 2469
    :cond_5
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfOutline;->isOpen()Z

    move-result v0

    invoke-virtual {v3, v0}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setOpen(Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v5, p4

    move-object v6, p5

    .line 2471
    invoke-direct/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->cloneOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private copyOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 2405
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2406
    invoke-interface {v1, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2408
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfOutline;

    .line 2409
    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getAllOutlinesToCopy(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2412
    invoke-virtual {p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2414
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfOutline;

    invoke-direct {v0, p2}, Lcom/itextpdf/kernel/pdf/PdfOutline;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2415
    const-string v2, "Outlines"

    invoke-virtual {v0, v2}, Lcom/itextpdf/kernel/pdf/PdfOutline;->setTitle(Ljava/lang/String;)V

    :cond_1
    move-object v2, v0

    .line 2418
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->cloneOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfOutline;Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    return-void
.end method

.method private ensureTreeRootAddedToNames(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V
    .locals 3

    .line 2477
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2479
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2480
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Names:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 2481
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2483
    :cond_0
    invoke-virtual {v0, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2484
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method private getAllOutlinesToCopy(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            "Ljava/util/Set<",
            "Lcom/itextpdf/kernel/pdf/PdfOutline;",
            ">;)V"
        }
    .end annotation

    .line 2428
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getParent()Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object p1

    .line 2431
    const-string v0, "Outlines"

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutline;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2434
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2435
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getAllOutlinesToCopy(Lcom/itextpdf/kernel/pdf/PdfOutline;Ljava/util/Set;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static isXmpMetaHasProperty(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 2543
    invoke-interface {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->getProperty(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/xmp/properties/XMPProperty;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static overrideFullCompressionInWriterProperties(Lcom/itextpdf/kernel/pdf/WriterProperties;Z)V
    .locals 3

    .line 2532
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    const-class v2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-ne v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 2533
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2534
    const-string v1, "Full compression mode requested in append mode but the original document has cross-reference table, not cross-reference stream. Falling back to cross-reference table in appended document and switching full compression off"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 2535
    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    .line 2536
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2537
    const-string v1, "Full compression mode was requested to be switched off in append mode but the original document has cross-reference stream, not cross-reference table. Falling back to cross-reference stream in appended document and switching full compression on"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 2539
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    return-void
.end method

.method private processReadingError(Ljava/lang/String;)V
    .locals 2

    .line 2522
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->CONSERVATIVE:Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->getStrictnessLevel()Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;->isStricter(Lcom/itextpdf/kernel/pdf/PdfReader$StrictnessLevel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2523
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2524
    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    return-void

    .line 2526
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    invoke-direct {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readDocumentIds()V
    .locals 3

    .line 2507
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2510
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    .line 2511
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    const/4 v1, 0x1

    .line 2512
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2515
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v0, :cond_2

    .line 2516
    :cond_1
    const-string v0, "The document original and/or modified id is corrupted"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->processReadingError(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private removeUnusedWidgetsFromFields(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 4

    .line 2366
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2370
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 2371
    :cond_1
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Fields:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    .line 2373
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object p1

    .line 2374
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 2375
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Widget:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2376
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfWidgetAnnotation;->releaseFormFieldFromWidgetAnnotation()V

    if-eqz v0, :cond_2

    .line 2378
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private resolveDestinations(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;)V"
        }
    .end annotation

    .line 2385
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pendingDestinationMutations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;

    .line 2387
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->getOriginalDestination()Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v2, v3, p2, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->copyDestination(Lcom/itextpdf/kernel/pdf/PdfObject;Ljava/util/Map;Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;

    move-result-object v2

    if-nez v2, :cond_0

    .line 2390
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->handleDestinationUnavailable()V

    goto :goto_0

    .line 2392
    :cond_0
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;->handleDestinationAvailable(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private tryFlushTagStructure(Z)V
    .locals 2

    .line 2339
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    if-eqz v0, :cond_0

    .line 2340
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->prepareToDocumentClosing()V

    :cond_0
    if-eqz p1, :cond_1

    .line 2342
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2343
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    .line 2346
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Tag structure flushing failed: it might be corrupted."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private updatePdfVersionFromCatalog()V
    .locals 2

    .line 2492
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2496
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/PdfVersion;->fromPdfName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v0

    .line 2497
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-lez v1, :cond_0

    .line 2498
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2501
    :catch_0
    const-string v0, "The document version specified in catalog is corrupted"

    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->processReadingError(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private updateValueInMarkInfoDict(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 3

    .line 2352
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->MarkInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2354
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 2355
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->MarkInfo:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2357
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    return-void
.end method

.method private writerHasEncryption()Z
    .locals 1

    .line 2488
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isStandardEncryptionUsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/WriterProperties;->isPublicKeyEncryptionUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 3

    .line 1601
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1602
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 1603
    const-string v1, "For associated files their associated file specification dictionaries shall include the AFRelationship key."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1606
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1608
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 1609
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1611
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1613
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFileAttachment(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V

    return-void
.end method

.method protected addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 0

    return-void
.end method

.method public addEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/events/EventDispatcher;->addEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V

    return-void
.end method

.method public addFileAttachment(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 2

    .line 1581
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1582
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p2

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, p1, p2, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addNameToNameTree(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    return-void
.end method

.method public addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2

    .line 1836
    invoke-virtual {p1, p0}, Lcom/itextpdf/kernel/font/PdfFont;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 1838
    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->setForbidRelease()V

    .line 1839
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 2

    .line 1486
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1487
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfObject;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1488
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "When destination\'s not associated with a Remote or Embedded Go-To action, it shall specify page dictionary instead of page number. Otherwise destination might be considered invalid"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1490
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addNamedDestination(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public addNewPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 477
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public addNewPage(ILcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 492
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p2

    .line 493
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 494
    new-instance p1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v0, "StartPdfPage"

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 495
    new-instance p1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v0, "InsertPdfPage"

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    return-object p2
.end method

.method public addNewPage(Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 459
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 460
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/itextpdf/kernel/pdf/IPdfPageFactory;->createPdfPage(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/geom/PageSize;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    .line 461
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 462
    new-instance v0, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v1, "StartPdfPage"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 463
    new-instance v0, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v1, "InsertPdfPage"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    return-object p1
.end method

.method public addOutputIntent(Lcom/itextpdf/kernel/pdf/PdfOutputIntent;)V
    .locals 3

    .line 1529
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    if-nez p1, :cond_0

    return-void

    .line 1534
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1536
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 1537
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OutputIntents:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 1539
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfOutputIntent;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 526
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 527
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 528
    new-instance p1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v0, "InsertPdfPage"

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    return-object p2
.end method

.method public addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 2

    .line 509
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 510
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkAndAddPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 511
    new-instance v0, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v1, "InsertPdfPage"

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    return-object p1
.end method

.method protected checkAndAddPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 2

    .line 2250
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2253
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2254
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The passed page belongs to document {0} (page {1} of the document) and therefore cannot be added to this document ({2})."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 2257
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {v0, p2, p0}, [Ljava/lang/Object;

    move-result-object p2

    .line 2256
    invoke-virtual {p1, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 2259
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void

    .line 2251
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Flushed page cannot be added or inserted."

    invoke-direct {p1, v0, p2}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1
.end method

.method protected checkAndAddPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V
    .locals 3

    .line 2268
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2271
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 2272
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "The passed page belongs to document {0} (page {1} of the document) and therefore cannot be added to this document ({2})."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    .line 2275
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfPage;->getDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p1

    .line 2274
    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/exceptions/PdfException;

    move-result-object p1

    throw p1

    .line 2277
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void

    .line 2269
    :cond_2
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Flushed page cannot be added or inserted."

    invoke-direct {v0, v1, p1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    throw v0
.end method

.method protected checkClosingStatus()V
    .locals 2

    .line 2284
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    if-nez v0, :cond_0

    return-void

    .line 2285
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Document was closed. It is impossible to execute action."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkIsoConformance()V
    .locals 0

    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;)V
    .locals 0

    return-void
.end method

.method public checkIsoConformance(Ljava/lang/Object;Lcom/itextpdf/kernel/pdf/IsoKey;Lcom/itextpdf/kernel/pdf/PdfResources;Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 0

    return-void
.end method

.method public checkShowTextIsoConformance(Lcom/itextpdf/kernel/pdf/canvas/CanvasGraphicsState;Lcom/itextpdf/kernel/pdf/PdfResources;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 12

    .line 830
    const-string v0, "PdfReader closing failed due to the error occurred!"

    const-string v1, "PdfWriter closing failed due to the error occurred!"

    const-class v2, Lcom/itextpdf/kernel/pdf/PdfDocument;

    iget-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 833
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->isClosing:Z

    .line 835
    :try_start_0
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_1e

    .line 836
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isFlushed()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 841
    invoke-static {}, Lcom/itextpdf/commons/actions/EventManager;->getInstance()Lcom/itextpdf/commons/actions/EventManager;

    move-result-object v4

    .line 842
    new-instance v5, Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsEvent;

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getNumberOfPages()I

    move-result v6

    .line 843
    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/kernel/pdf/statistics/NumberOfPagesStatisticsEvent;-><init>(ILcom/itextpdf/commons/actions/data/ProductData;)V

    .line 842
    invoke-virtual {v4, v5}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V

    .line 845
    new-instance v5, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;

    invoke-direct {v5, p0}, Lcom/itextpdf/kernel/actions/events/FlushPdfDocumentEvent;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v4, v5}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V

    .line 847
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateXmpMetadata()V

    .line 849
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v5

    const/4 v6, 0x0

    if-ltz v5, :cond_1

    .line 850
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->PDF20_DEPRECATED_KEYS:[Lcom/itextpdf/kernel/pdf/PdfName;

    array-length v7, v5

    move v8, v6

    :goto_0
    if-ge v8, v7, :cond_1

    aget-object v9, v5, v8

    .line 851
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 854
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata()[B

    move-result-object v5

    if-eqz v5, :cond_3

    .line 855
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v5

    .line 856
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isAppendMode()Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->isFlushed()Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 858
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->setData([B)V

    .line 859
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    goto :goto_1

    .line 862
    :cond_2
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>()V

    invoke-virtual {v5, p0}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    .line 863
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfStream;->getOutputStream()Lcom/itextpdf/kernel/pdf/PdfOutputStream;

    move-result-object v7

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfOutputStream;->write([B)V

    .line 864
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 865
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 867
    :goto_1
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Type:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 868
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Subtype:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->XML:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 869
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isMetadataEncrypted()Z

    move-result v7

    if-nez v7, :cond_3

    .line 870
    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v7}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 871
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Crypt:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 872
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Filter:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 875
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkIsoConformance()V

    .line 877
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v5

    if-nez v5, :cond_4

    .line 880
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addNewPage()Lcom/itextpdf/kernel/pdf/PdfPage;

    .line 884
    :cond_4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 885
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v7, v7, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    const/4 v8, 0x0

    if-eqz v7, :cond_10

    .line 886
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v7, :cond_5

    .line 887
    invoke-direct {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->tryFlushTagStructure(Z)V

    .line 889
    :cond_5
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOCPropertiesMayHaveChanged()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 890
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 891
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->flush()V

    .line 893
    :cond_6
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    if-eqz v7, :cond_7

    .line 894
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v10, v10, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 897
    :cond_7
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 898
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    .line 899
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->isModified()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 900
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v10, v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->ensureTreeRootAddedToNames(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_2

    .line 904
    :cond_9
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generateTree()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 905
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->isModified()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 906
    :cond_a
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v10, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v9, v10, v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 907
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 910
    :cond_b
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isModified()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 911
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 913
    :cond_c
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushFonts()V

    .line 915
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v7, :cond_d

    .line 918
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 919
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    if-eqz v9, :cond_e

    .line 921
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_d
    move-object v7, v8

    .line 925
    :cond_e
    :goto_3
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushModifiedWaitingObjects(Ljava/util/Set;)V

    move v9, v6

    .line 926
    :goto_4
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v10

    if-ge v9, v10, :cond_1b

    .line 927
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v10, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v10

    if-eqz v10, :cond_f

    .line 928
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v11

    if-nez v11, :cond_f

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 929
    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v11

    if-nez v11, :cond_f

    .line 930
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 931
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    :cond_f
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 935
    :cond_10
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOCPropertiesMayHaveChanged()Z

    move-result v7

    if-eqz v7, :cond_11

    .line 936
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 937
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOCProperties(Z)Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/layer/PdfOCProperties;->flush()V

    .line 939
    :cond_11
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    if-eqz v7, :cond_12

    .line 940
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->PageLabels:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v10, v10, Lcom/itextpdf/kernel/pdf/PdfCatalog;->pageLabels:Lcom/itextpdf/kernel/pdf/PdfNumTree;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 943
    :cond_12
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Pages:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v10

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->generateTree()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 945
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfCatalog;->nameTrees:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_13
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 946
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/kernel/pdf/PdfNameTree;

    .line 947
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->isModified()Z

    move-result v11

    if-eqz v11, :cond_13

    .line 948
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->buildTree()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v10

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v10, v9}, Lcom/itextpdf/kernel/pdf/PdfDocument;->ensureTreeRootAddedToNames(Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfName;)V

    goto :goto_5

    :cond_14
    move v7, v3

    .line 952
    :goto_6
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v9

    if-gt v7, v9, :cond_16

    .line 953
    invoke-virtual {p0, v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v9

    if-eqz v9, :cond_15

    .line 955
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfPage;->flush()V

    :cond_15
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 958
    :cond_16
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v7, :cond_17

    .line 959
    invoke-direct {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->tryFlushTagStructure(Z)V

    .line 961
    :cond_17
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 962
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->flush(Z)V

    .line 963
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushFonts()V

    .line 965
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v7, :cond_18

    .line 966
    iget-object v7, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v7, v7, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    .line 967
    invoke-virtual {v7, p0}, Lcom/itextpdf/kernel/pdf/PdfObject;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 968
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_18
    move-object v7, v8

    .line 971
    :goto_7
    iget-object v9, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v9, v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushWaitingObjects(Ljava/util/Set;)V

    move v9, v6

    .line 972
    :goto_8
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v10

    if-ge v9, v10, :cond_1b

    .line 973
    iget-object v10, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v10, v9}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v10

    if-eqz v10, :cond_1a

    .line 974
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->isFree()Z

    move-result v11

    if-nez v11, :cond_1a

    invoke-virtual {v10, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 975
    invoke-interface {v5, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 977
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isFlushUnusedObjects()Z

    move-result v11

    if-eqz v11, :cond_19

    const/16 v11, 0x10

    invoke-virtual {v10, v11}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v11

    if-nez v11, :cond_19

    .line 979
    invoke-virtual {v10, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo(Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v11

    if-eqz v11, :cond_19

    .line 980
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush()V

    goto :goto_9

    .line 982
    :cond_19
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    :cond_1a
    :goto_9
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 990
    :cond_1b
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iput-object v8, v5, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 992
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v5, v5, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-nez v5, :cond_1c

    if-eqz v7, :cond_1c

    .line 994
    invoke-virtual {v7, v6}, Lcom/itextpdf/kernel/pdf/PdfObject;->flush(Z)V

    .line 1000
    :cond_1c
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v8, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1001
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1006
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v5

    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 1007
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/itextpdf/io/source/ByteUtils;->getIsoBytes(Ljava/lang/String;)[B

    move-result-object v6

    .line 1006
    invoke-static {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->createInfoId([B[B)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    .line 1008
    iget-object v6, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v6, p0, v5, v7}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->writeXrefTableAndTrailer(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfObject;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 1009
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flush()V

    .line 1010
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    instance-of v5, v5, Lcom/itextpdf/kernel/pdf/CountOutputStream;

    if-eqz v5, :cond_1e

    .line 1011
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/CountOutputStream;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/CountOutputStream;->getAmountOfWrittenBytes()J

    move-result-wide v5

    .line 1012
    new-instance v7, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsEvent;

    invoke-static {}, Lcom/itextpdf/kernel/actions/data/ITextCoreProductData;->getInstance()Lcom/itextpdf/commons/actions/data/ProductData;

    move-result-object v8

    invoke-direct {v7, v5, v6, v8}, Lcom/itextpdf/kernel/pdf/statistics/SizeOfPdfStatisticsEvent;-><init>(JLcom/itextpdf/commons/actions/data/ProductData;)V

    invoke-virtual {v4, v7}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V

    goto :goto_a

    .line 837
    :cond_1d
    new-instance v3, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v4, "Cannot close document with already flushed PDF Catalog."

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1015
    :cond_1e
    :goto_a
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->clearPageRefs()V

    .line 1016
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removeAllHandlers()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1020
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_1f

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseWriter()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 1022
    :try_start_1
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_b

    :catch_0
    move-exception v4

    .line 1024
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1025
    invoke-interface {v5, v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    :cond_1f
    :goto_b
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseReader()Z

    move-result v1

    if-eqz v1, :cond_20

    .line 1031
    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_c

    :catch_1
    move-exception v1

    .line 1033
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1034
    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1039
    :cond_20
    :goto_c
    iput-boolean v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    return-void

    :catchall_0
    move-exception v3

    goto :goto_d

    :catch_2
    move-exception v3

    .line 1018
    :try_start_3
    new-instance v4, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v5, "Cannot close document."

    invoke-direct {v4, v5, v3, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1020
    :goto_d
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_21

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseWriter()Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1022
    :try_start_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_e

    :catch_3
    move-exception v4

    .line 1024
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1025
    invoke-interface {v5, v1, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1029
    :cond_21
    :goto_e
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v1, :cond_22

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isCloseReader()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1031
    :try_start_5
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_f

    :catch_4
    move-exception v1

    .line 1033
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 1034
    invoke-interface {v2, v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1038
    :cond_22
    :goto_f
    throw v3
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1192
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    .line 1139
    invoke-virtual/range {v0 .. v5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    if-gt p1, p2, :cond_0

    .line 1168
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1170
    :cond_0
    invoke-virtual {p0, v0, p3, p4, p5}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1217
    invoke-virtual {p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(IILcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1357
    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I)",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1237
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "I",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    .line 1261
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1264
    :cond_0
    iget-object v2, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->pendingDestinationMutations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1265
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1266
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1268
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1270
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object/from16 v7, p1

    .line 1271
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1274
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    move/from16 v11, p3

    if-ge v11, v9, :cond_1

    move v9, v10

    goto :goto_0

    :cond_1
    move v9, v6

    .line 1276
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v12, v11

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    .line 1277
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v1, v14}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v14

    move-object/from16 v15, p4

    .line 1278
    invoke-virtual {v14, v0, v15}, Lcom/itextpdf/kernel/pdf/PdfPage;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v6

    .line 1279
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1280
    invoke-interface {v3, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-lt v8, v10, :cond_2

    .line 1283
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1285
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    .line 1286
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    invoke-interface {v8, v14, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v9, :cond_3

    .line 1289
    invoke-virtual {v0, v12, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;

    goto :goto_2

    .line 1291
    :cond_3
    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addPage(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/PdfPage;

    :goto_2
    add-int/lit8 v12, v12, 0x1

    .line 1294
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasOutlines()Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    .line 1295
    invoke-virtual {v14, v6}, Lcom/itextpdf/kernel/pdf/PdfPage;->getOutlines(Z)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_5

    .line 1297
    invoke-interface {v4, v8}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    .line 1300
    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    .line 1303
    :cond_6
    invoke-direct {v1, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->resolveDestinations(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1306
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 1307
    invoke-static {v1, v0, v3}, Lcom/itextpdf/kernel/pdf/OcgPropertiesCopier;->copyOCGProperties(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1312
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 1315
    :try_start_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    if-eqz v9, :cond_8

    .line 1317
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v7

    invoke-virtual {v7, v0, v11, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;ILjava/util/Map;)V

    goto :goto_5

    .line 1319
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v7

    invoke-virtual {v7, v0, v6}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->copyTo(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    .line 1321
    :goto_5
    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    add-int/2addr v11, v6

    goto :goto_4

    .line 1323
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->normalizeDocumentRootTag()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 1325
    new-instance v2, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v3, "Tag structure copying failed: it might be corrupted in one of the documents."

    invoke-direct {v2, v3, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1331
    :cond_a
    const-class v5, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v5}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v5

    .line 1332
    const-string v6, "Not tagged pages are copied to the tagged document. Destination document now may contain not tagged content."

    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 1335
    :cond_b
    :goto_6
    iget-object v5, v1, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->isOutlineMode()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1336
    invoke-direct {v1, v4, v0, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyOutlines(Ljava/util/Set;Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/util/Map;)V

    :cond_c
    return-object v2
.end method

.method public copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/itextpdf/kernel/pdf/PdfDocument;",
            "Lcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfPage;",
            ">;"
        }
    .end annotation

    .line 1379
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->copyPagesTo(Ljava/util/List;Lcom/itextpdf/kernel/pdf/PdfDocument;ILcom/itextpdf/kernel/pdf/IPdfPageExtraCopier;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public createNextIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 803
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->createNextIndirectReference(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    return-object v0
.end method

.method public dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V
    .locals 1

    .line 731
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/events/EventDispatcher;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    return-void
.end method

.method public dispatchEvent(Lcom/itextpdf/kernel/events/Event;Z)V
    .locals 1

    .line 739
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/events/EventDispatcher;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;Z)V

    return-void
.end method

.method doesStreamBelongToEmbeddedFile(Lcom/itextpdf/kernel/pdf/PdfStream;)Z
    .locals 1

    .line 2330
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->encryptedEmbeddedStreamsHandler:Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->isStreamStoredAsEmbedded(Lcom/itextpdf/kernel/pdf/PdfStream;)Z

    move-result p1

    return p1
.end method

.method public findFont(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3

    .line 1872
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 1873
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->isFlushed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1, p1, p2}, Lcom/itextpdf/kernel/font/PdfFont;->isBuiltWith(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public flushCopiedObjects(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3

    .line 1392
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1393
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushCopiedObjects(J)V

    :cond_0
    return-void
.end method

.method protected flushFonts()V
    .locals 4

    .line 2229
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v0, :cond_2

    .line 2230
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentFonts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 2231
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    const/16 v3, 0x40

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->checkState(S)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2232
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->checkState(S)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2233
    :cond_1
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->flush()V

    goto :goto_0

    .line 2237
    :cond_2
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentFonts()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/font/PdfFont;

    .line 2238
    invoke-virtual {v1}, Lcom/itextpdf/kernel/font/PdfFont;->flush()V

    goto :goto_1

    :cond_3
    return-void
.end method

.method protected flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1980
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->flushObject(Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    return-void
.end method

.method public getAssociatedFiles()Lcom/itextpdf/kernel/pdf/PdfArray;
    .locals 2

    .line 1622
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1623
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    return-object v0
.end method

.method public getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;
    .locals 1

    .line 821
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 822
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    return-object v0
.end method

.method public getDefaultFont()Lcom/itextpdf/kernel/font/PdfFont;
    .locals 3

    .line 1812
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    if-nez v0, :cond_0

    .line 1814
    :try_start_0
    invoke-static {}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont()Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1815
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v1, :cond_0

    .line 1816
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/font/PdfFont;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1819
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 1820
    const-string v2, "Exception while creating default font (Helvetica, WinAnsi)"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 1821
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    .line 1824
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultFont:Lcom/itextpdf/kernel/font/PdfFont;

    return-object v0
.end method

.method public getDefaultPageSize()Lcom/itextpdf/kernel/geom/PageSize;
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    return-object v0
.end method

.method protected getDocumentFonts()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/kernel/font/PdfFont;",
            ">;"
        }
    .end annotation

    .line 2222
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getDocumentId()J
    .locals 2

    .line 1886
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:Lcom/itextpdf/commons/actions/sequence/SequenceId;

    invoke-virtual {v0}, Lcom/itextpdf/commons/actions/sequence/SequenceId;->getId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentId:Lcom/itextpdf/commons/actions/sequence/SequenceId;

    return-object v0
.end method

.method public getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;
    .locals 3

    .line 665
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 666
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    if-nez v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 668
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    instance-of v2, v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    :goto_0
    invoke-direct {v1, v0, p0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 670
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    invoke-static {v0, v1}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendMetadataToInfo([BLcom/itextpdf/kernel/pdf/PdfDocumentInfo;)V

    .line 672
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    return-object v0
.end method

.method public getEncryptedPayloadDocument()Lcom/itextpdf/kernel/pdf/PdfEncryptedPayloadDocument;
    .locals 5

    .line 1633
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getReader()Lcom/itextpdf/kernel/pdf/PdfReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfReader;->isEncrypted()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v1

    .line 1636
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getCollection()Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1637
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->isViewHidden()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1638
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->getInitialDocument()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    .line 1639
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->EmbeddedFiles:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getNameTree(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNameTree;

    move-result-object v2

    .line 1640
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v0

    .line 1641
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfNameTree;->getNames()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfObject;

    if-eqz v2, :cond_2

    .line 1642
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfObject;->isDictionary()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1644
    :try_start_0
    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-static {v2}, Lcom/itextpdf/kernel/pdf/filespec/PdfEncryptedPayloadFileSpecFactory;->wrap(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1646
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->EF:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 1647
    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v3

    .line 1649
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->UF:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1651
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->F:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_2

    .line 1654
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfEncryptedPayloadDocument;

    invoke-direct {v3, v4, v2, v0}, Lcom/itextpdf/kernel/pdf/PdfEncryptedPayloadDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfStream;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/exceptions/PdfException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    .line 1658
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/exceptions/PdfException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public getFingerPrint()Lcom/itextpdf/kernel/pdf/FingerPrint;
    .locals 1

    .line 1860
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

    return-object v0
.end method

.method public getFirstPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 418
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    const/4 v0, 0x1

    .line 419
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public getFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;
    .locals 2

    .line 1797
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1798
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1799
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/font/PdfFont;

    return-object p1

    .line 1801
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/font/PdfFontFactory;->createFont(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addFont(Lcom/itextpdf/kernel/font/PdfFont;)Lcom/itextpdf/kernel/font/PdfFont;

    move-result-object p1

    return-object p1
.end method

.method public getLastPage()Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 428
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    return-object v0
.end method

.method public getModifiedDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getNextStructParentIndex()I
    .locals 2

    .line 1099
    iget v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    if-gez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    :goto_0
    return v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 539
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getNumberOfPages()I

    move-result v0

    return v0
.end method

.method public getNumberOfPdfObjects()I
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v0

    return v0
.end method

.method public getOriginalDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;
    .locals 1

    .line 1466
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1467
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    move-result-object p1

    return-object p1
.end method

.method public getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 396
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 397
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method public getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;
    .locals 1

    .line 408
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 409
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPage(Lcom/itextpdf/kernel/pdf/PdfDictionary;)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object p1

    return-object p1
.end method

.method protected getPageFactory()Lcom/itextpdf/kernel/pdf/IPdfPageFactory;
    .locals 1

    .line 2295
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfPageFactory:Lcom/itextpdf/kernel/pdf/IPdfPageFactory;

    return-object v0
.end method

.method public getPageLabels()[Ljava/lang/String;
    .locals 12

    .line 1709
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageLabelsTree(Z)Lcom/itextpdf/kernel/pdf/PdfNumTree;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return-object v2

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageLabelsTree(Z)Lcom/itextpdf/kernel/pdf/PdfNumTree;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfNumTree;->getNumbers()Ljava/util/Map;

    move-result-object v0

    .line 1713
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1

    return-object v2

    .line 1716
    :cond_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 1720
    const-string v3, ""

    const/4 v4, 0x1

    const-string v5, "D"

    move v6, v1

    move-object v8, v3

    move v7, v4

    :goto_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v9

    if-ge v6, v9, :cond_b

    .line 1721
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "e"

    if-eqz v9, :cond_5

    .line 1722
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 1723
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->St:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 1725
    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result v7

    goto :goto_1

    :cond_2
    move v7, v4

    .line 1729
    :goto_1
    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->P:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v8}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 1731
    invoke-virtual {v8}, Lcom/itextpdf/kernel/pdf/PdfString;->toUnicodeString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v3

    .line 1735
    :goto_2
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1737
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_4
    move-object v5, v10

    .line 1742
    :cond_5
    :goto_3
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v11, -0x1

    sparse-switch v9, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v9, "r"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_4

    :cond_6
    const/4 v11, 0x4

    goto :goto_4

    :sswitch_1
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    goto :goto_4

    :cond_7
    const/4 v11, 0x3

    goto :goto_4

    :sswitch_2
    const-string v9, "a"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    goto :goto_4

    :cond_8
    const/4 v11, 0x2

    goto :goto_4

    :sswitch_3
    const-string v9, "R"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    goto :goto_4

    :cond_9
    move v11, v4

    goto :goto_4

    :sswitch_4
    const-string v9, "A"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    goto :goto_4

    :cond_a
    move v11, v1

    :goto_4
    packed-switch v11, :pswitch_data_0

    .line 1759
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    goto :goto_5

    .line 1747
    :pswitch_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanLowerCase(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    goto :goto_5

    .line 1756
    :pswitch_1
    aput-object v8, v2, v6

    goto :goto_5

    .line 1753
    :pswitch_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberLowerCase(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    goto :goto_5

    .line 1744
    :pswitch_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/itextpdf/kernel/numbering/RomanNumbering;->toRomanUpperCase(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    goto :goto_5

    .line 1750
    :pswitch_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Lcom/itextpdf/kernel/numbering/EnglishAlphabetNumbering;->toLatinAlphabetNumberUpperCase(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v2, v6

    :goto_5
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_b
    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x41 -> :sswitch_4
        0x52 -> :sswitch_3
        0x61 -> :sswitch_2
        0x65 -> :sswitch_1
        0x72 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfDictionary;)I

    move-result p1

    return p1
.end method

.method public getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I
    .locals 1

    .line 550
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 551
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p1

    return p1
.end method

.method public getPdfObject(I)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 1

    .line 368
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 369
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 373
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getRefersTo()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    return-object p1
.end method

.method public getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;
    .locals 1

    .line 812
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    return-object v0
.end method

.method public getReader()Lcom/itextpdf/kernel/pdf/PdfReader;
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 783
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    return-object v0
.end method

.method public getSerializeOptions()Lcom/itextpdf/kernel/xmp/options/SerializeOptions;
    .locals 1

    .line 1904
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    return-object v0
.end method

.method public getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;
    .locals 1

    .line 1087
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    return-object v0
.end method

.method public getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;
    .locals 2

    .line 1109
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1110
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    if-nez v0, :cond_1

    .line 1111
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->initTagStructureContext()V

    goto :goto_0

    .line 1112
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Must be a tagged document."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1118
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    return-object v0
.end method

.method public getTrailer()Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .locals 1

    .line 1516
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1517
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    return-object v0
.end method

.method public getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;
    .locals 1

    .line 772
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 773
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    return-object v0
.end method

.method public getXmpMetadata()[B
    .locals 1

    const/4 v0, 0x0

    .line 335
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata(Z)[B

    move-result-object v0

    return-object v0
.end method

.method public getXmpMetadata(Z)[B
    .locals 3

    .line 346
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 347
    invoke-static {}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->create()Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object p1

    .line 348
    const-string v0, "xmpmeta"

    invoke-interface {p1, v0}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setObjectName(Ljava/lang/String;)V

    .line 349
    const-string v0, ""

    invoke-interface {p1, v0}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setObjectName(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addCustomMetadataExtensions(Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 352
    :try_start_0
    const-string v0, "http://purl.org/dc/elements/1.1/"

    const-string v1, "format"

    const-string v2, "application/pdf"

    invoke-interface {p1, v0, v1, v2}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 353
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :catch_0
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    return-object p1
.end method

.method getXref()Lcom/itextpdf/kernel/pdf/PdfXrefTable;
    .locals 1

    .line 2322
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    return-object v0
.end method

.method hasAcroForm()Z
    .locals 2

    .line 2334
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v0

    return v0
.end method

.method public hasEventHandler(Ljava/lang/String;)Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/events/EventDispatcher;->hasEventHandler(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public hasOutlines()Z
    .locals 1

    .line 1773
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->hasOutlines()Z

    move-result v0

    return v0
.end method

.method protected initTagStructureContext()V
    .locals 1

    .line 1920
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->tagStructureContext:Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    return-void
.end method

.method public initializeOutlines()V
    .locals 1

    .line 1474
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    const/4 v0, 0x0

    .line 1475
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOutlines(Z)Lcom/itextpdf/kernel/pdf/PdfOutline;

    return-void
.end method

.method public isAppendMode()Z
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 793
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    return v0
.end method

.method public isCloseReader()Z
    .locals 1

    .line 1403
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    return v0
.end method

.method public isCloseWriter()Z
    .locals 1

    .line 1422
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    return v0
.end method

.method public isClosed()Z
    .locals 1

    .line 1048
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closed:Z

    return v0
.end method

.method isDocumentFont(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 2326
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->documentFonts:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFlushUnusedObjects()Z
    .locals 1

    .line 1442
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    return v0
.end method

.method public isTagged()Z
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public listIndirectReferences()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/kernel/pdf/PdfIndirectReference;",
            ">;"
        }
    .end annotation

    .line 1499
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1500
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 1501
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1502
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->get(I)Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1504
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method protected markObjectAsMustBeFlushed(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1

    .line 1966
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object p1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setState(S)Lcom/itextpdf/kernel/pdf/PdfObject;

    :cond_0
    return-void
.end method

.method public markStreamAsEmbeddedFile(Lcom/itextpdf/kernel/pdf/PdfStream;)V
    .locals 1

    .line 439
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->encryptedEmbeddedStreamsHandler:Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->storeEmbeddedStream(Lcom/itextpdf/kernel/pdf/PdfStream;)V

    return-void
.end method

.method public movePage(II)V
    .locals 2

    .line 590
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    .line 591
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    add-int/2addr v1, v0

    if-gt p2, v1, :cond_2

    .line 596
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    .line 597
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 598
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->move(Lcom/itextpdf/kernel/pdf/PdfPage;I)V

    .line 599
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->normalizeDocumentRootTag()V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->removePage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    if-le p2, p1, :cond_1

    add-int/lit8 p2, p2, -0x1

    .line 605
    :cond_1
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->addPage(ILcom/itextpdf/kernel/pdf/PdfPage;)V

    return-void

    .line 592
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    .line 594
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 593
    const-string v0, "Requested page number {0} is out of bounds."

    invoke-static {v0, p2}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public movePage(Lcom/itextpdf/kernel/pdf/PdfPage;I)Z
    .locals 0

    .line 574
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 575
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p1

    if-lez p1, :cond_0

    .line 577
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->movePage(II)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected open(Lcom/itextpdf/kernel/pdf/PdfVersion;)V
    .locals 7

    .line 1991
    new-instance v0, Lcom/itextpdf/kernel/pdf/FingerPrint;

    invoke-direct {v0}, Lcom/itextpdf/kernel/pdf/FingerPrint;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

    .line 1992
    new-instance v0, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->encryptedEmbeddedStreamsHandler:Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

    .line 1995
    :try_start_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentIdWrapper()Lcom/itextpdf/commons/actions/sequence/SequenceId;

    move-result-object v0

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/StampingProperties;->metaInfo:Lcom/itextpdf/commons/actions/contexts/IMetaInfo;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-nez v2, :cond_0

    sget-object v2, Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;->ON_DEMAND:Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;->ON_CLOSE:Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;->createProcessPdfEvent(Lcom/itextpdf/commons/actions/sequence/SequenceId;Lcom/itextpdf/commons/actions/contexts/IMetaInfo;Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;)Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;

    move-result-object v0

    .line 1998
    invoke-static {}, Lcom/itextpdf/commons/actions/EventManager;->getInstance()Lcom/itextpdf/commons/actions/EventManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V

    .line 2000
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_8

    .line 2001
    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    if-nez v1, :cond_7

    .line 2004
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iput-object p0, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->pdfDocument:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2005
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->properties:Lcom/itextpdf/kernel/pdf/ReaderProperties;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/ReaderProperties;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    if-nez v1, :cond_1

    .line 2007
    new-instance v1, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v4}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;-><init>(J)V

    iput-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    .line 2009
    :cond_1
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->memoryLimitsAwareHandler:Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->setMemoryLimitsAwareHandler(Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;)V

    .line 2010
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfReader;->readPdf()V

    .line 2011
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2012
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->encryptedEmbeddedStreamsHandler:Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->storeAllEmbeddedStreams()V

    move v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    .line 2015
    :goto_1
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfReader;->headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 2016
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v5, v5, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2018
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->readDocumentIds()V

    .line 2020
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;Z)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-eqz v4, :cond_6

    .line 2024
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-direct {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    iput-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 2025
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updatePdfVersionFromCatalog()V

    .line 2026
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Metadata:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsStream(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2028
    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    .line 2029
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v5, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 2032
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->getPdfAConformanceLevel()Lcom/itextpdf/kernel/pdf/PdfAConformanceLevel;

    .line 2033
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 2037
    :cond_3
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2039
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfDocument;->tryInitTagStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V

    .line 2041
    :cond_4
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v4, v4, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasRebuiltXref()Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasFixedXref()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_2

    .line 2042
    :cond_5
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Append mode requires a document without errors, even if recovery is possible."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2022
    :cond_6
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "The trailer is corrupted: the catalog is corrupted or cannot be referenced from the file\'s trailer. The PDF cannot be opened."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2002
    :cond_7
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Given PdfReader instance has already been utilized. The PdfReader cannot be reused, please create a new instance."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    move v1, v2

    .line 2046
    :cond_9
    :goto_2
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xref:Lcom/itextpdf/kernel/pdf/PdfXrefTable;

    invoke-virtual {v4, p0}, Lcom/itextpdf/kernel/pdf/PdfXrefTable;->initFreeReferencesList(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 2047
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v4, :cond_16

    .line 2048
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasXrefStm()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    if-nez v4, :cond_a

    .line 2049
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->isFullCompression:Ljava/lang/Boolean;

    .line 2051
    :cond_a
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfReader;->isOpenedWithFullPermission()Z

    move-result v3

    if-eqz v3, :cond_b

    goto :goto_3

    .line 2052
    :cond_b
    new-instance p1, Lcom/itextpdf/kernel/exceptions/BadPasswordException;

    const-string v0, "PdfReader is not opened with owner password"

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/BadPasswordException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2054
    :cond_c
    :goto_3
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v3, v3, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    if-eqz v3, :cond_d

    .line 2055
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iput-object v4, v3, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    .line 2057
    :cond_d
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iput-object p0, v3, Lcom/itextpdf/kernel/pdf/PdfWriter;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 2058
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-nez v3, :cond_e

    .line 2059
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 2060
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    invoke-direct {v3, p0}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->addCreationDate()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->info:Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 2062
    :cond_e
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->addModDate()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    .line 2063
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 2064
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Root:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2065
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Info:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2067
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v3, :cond_f

    .line 2069
    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->containsKey(Lcom/itextpdf/kernel/pdf/PdfName;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2070
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v5, v5, Lcom/itextpdf/kernel/pdf/PdfReader;->trailer:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v6, Lcom/itextpdf/kernel/pdf/PdfName;->ID:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 2074
    :cond_f
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v3, v3, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    if-eqz v3, :cond_16

    .line 2075
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2076
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    if-eqz v4, :cond_10

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz v4, :cond_10

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v4, v4, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-nez v4, :cond_11

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v4, v4, Lcom/itextpdf/kernel/pdf/StampingProperties;->preserveEncryption:Z

    if-nez v4, :cond_11

    .line 2078
    :cond_10
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->initialDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2080
    :cond_11
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v4, :cond_12

    .line 2081
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2083
    :cond_12
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v4, :cond_13

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-eqz v4, :cond_13

    .line 2084
    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2086
    :cond_13
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v4, :cond_15

    .line 2087
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v4, :cond_14

    .line 2088
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2090
    :cond_14
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->originalDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    iput-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2092
    :cond_15
    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v4, v4, Lcom/itextpdf/kernel/pdf/WriterProperties;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    if-nez v4, :cond_16

    iget-object v4, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v4, v3}, Lcom/itextpdf/kernel/pdf/PdfString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 2093
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-static {}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->generateNewDocumentId()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>([B)V

    iput-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->modifiedDocumentId:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 2100
    :cond_16
    iget-object v3, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->properties:Lcom/itextpdf/kernel/pdf/StampingProperties;

    iget-boolean v3, v3, Lcom/itextpdf/kernel/pdf/StampingProperties;->appendMode:Z

    if-eqz v3, :cond_18

    .line 2103
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->tokens:Lcom/itextpdf/io/source/PdfTokenizer;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/PdfTokenizer;->getSafeFile()Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-result-object v1

    const/16 v3, 0x2000

    .line 2105
    new-array v3, v3, [B

    .line 2106
    :goto_4
    invoke-virtual {v1, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read([B)I

    move-result v4

    if-lez v4, :cond_17

    .line 2107
    iget-object v5, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    invoke-virtual {v5, v3, v2, v4}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write([BII)V

    goto :goto_4

    .line 2109
    :cond_17
    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->close()V

    .line 2110
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->write(I)V

    .line 2112
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfReader;->hasXrefStm()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->overrideFullCompressionInWriterProperties(Lcom/itextpdf/kernel/pdf/WriterProperties;Z)V

    .line 2114
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfReader;->decrypt:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    iput-object v2, v1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz p1, :cond_1d

    .line 2120
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_1_4:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-ltz v1, :cond_1d

    .line 2126
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->reader:Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v1, v1, Lcom/itextpdf/kernel/pdf/PdfReader;->headerPdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v1

    if-lez v1, :cond_1d

    .line 2127
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Version:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->toPdfName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 2128
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 2129
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    goto :goto_5

    .line 2136
    :cond_18
    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    if-eqz v2, :cond_1d

    if-eqz p1, :cond_19

    .line 2138
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 2140
    :cond_19
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->writeHeader()V

    .line 2142
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-nez p1, :cond_1a

    .line 2143
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfWriter;->initCryptoIfSpecified(Lcom/itextpdf/kernel/pdf/PdfVersion;)V

    .line 2145
    :cond_1a
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    if-eqz p1, :cond_1d

    if-nez v1, :cond_1b

    .line 2146
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->isEmbeddedFilesOnly()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 2147
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->encryptedEmbeddedStreamsHandler:Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/EncryptedEmbeddedStreamsHandler;->storeAllEmbeddedStreams()V

    .line 2149
    :cond_1b
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getCryptoMode()I

    move-result p1

    const/4 v1, 0x3

    if-ge p1, v1, :cond_1c

    .line 2150
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v1, "Encryption algorithms STANDARD_ENCRYPTION_40, STANDARD_ENCRYPTION_128 and ENCRYPTION_AES_128 (see com.itextpdf.kernel.pdf.EncryptionConstants) are deprecated in PDF 2.0. It is highly recommended not to use it."

    invoke-static {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogWarn(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    goto :goto_5

    .line 2152
    :cond_1c
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getCryptoMode()I

    move-result p1

    if-ne p1, v1, :cond_1d

    .line 2153
    iget-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object p1, p1, Lcom/itextpdf/kernel/pdf/PdfWriter;->crypto:Lcom/itextpdf/kernel/pdf/PdfEncryption;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryption;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object p1

    check-cast p1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 2154
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->intValue()I

    move-result p1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_1d

    .line 2155
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v1, "It seems that PDF 1.7 document encrypted with AES256 was updated to PDF 2.0 version and StampingProperties#preserveEncryption flag was set: encryption shall be updated via WriterProperties#setStandardEncryption method. Standard security handler was found with revision 5, which is deprecated and shall not be used in PDF 2.0 documents."

    invoke-static {p0, p1, v1}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogWarn(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    .line 2161
    :cond_1d
    :goto_5
    sget-object p1, Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;->ON_DEMAND:Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/actions/events/ITextCoreProductEvent;->getConfirmationType()Lcom/itextpdf/commons/actions/confirmations/EventConfirmationType;

    move-result-object v1

    if-ne p1, v1, :cond_1e

    .line 2163
    invoke-static {}, Lcom/itextpdf/commons/actions/EventManager;->getInstance()Lcom/itextpdf/commons/actions/EventManager;

    move-result-object p1

    new-instance v1, Lcom/itextpdf/commons/actions/confirmations/ConfirmEvent;

    invoke-direct {v1, v0}, Lcom/itextpdf/commons/actions/confirmations/ConfirmEvent;-><init>(Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/commons/actions/EventManager;->onEvent(Lcom/itextpdf/commons/actions/IEvent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1e
    return-void

    :catch_0
    move-exception p1

    .line 2166
    new-instance v0, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v1, "Cannot open document."

    invoke-direct {v0, v1, p1, p0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Object;)V

    throw v0
.end method

.method public registerProduct(Lcom/itextpdf/commons/actions/data/ProductData;)Z
    .locals 1

    .line 1851
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->fingerPrint:Lcom/itextpdf/kernel/pdf/FingerPrint;

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/FingerPrint;->registerProduct(Lcom/itextpdf/commons/actions/data/ProductData;)Z

    move-result p1

    return p1
.end method

.method public removeAllHandlers()V
    .locals 1

    .line 763
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/events/EventDispatcher;->removeAllHandlers()V

    return-void
.end method

.method public removeEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V
    .locals 1

    .line 755
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->eventDispatcher:Lcom/itextpdf/kernel/events/EventDispatcher;

    invoke-virtual {v0, p1, p2}, Lcom/itextpdf/kernel/events/EventDispatcher;->removeEventHandler(Ljava/lang/String;Lcom/itextpdf/kernel/events/IEventHandler;)V

    return-void
.end method

.method public removePage(I)V
    .locals 3

    .line 634
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 636
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 637
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->hasAcroForm()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 638
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Flushed page cannot be removed from a document which is tagged or has an AcroForm"

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 642
    iget-object v1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->removeOutlines(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 643
    invoke-direct {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removeUnusedWidgetsFromFields(Lcom/itextpdf/kernel/pdf/PdfPage;)V

    .line 644
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 645
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getTagStructureContext()Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;->removePageTags(Lcom/itextpdf/kernel/pdf/PdfPage;)Lcom/itextpdf/kernel/pdf/tagutils/TagStructureContext;

    .line 647
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->isFlushed()Z

    move-result v1

    if-nez v1, :cond_3

    .line 648
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Parent:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 649
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfPage;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->setFree()V

    .line 652
    :cond_3
    new-instance v1, Lcom/itextpdf/kernel/events/PdfDocumentEvent;

    const-string v2, "RemovePdfPage"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/kernel/events/PdfDocumentEvent;-><init>(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfPage;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->dispatchEvent(Lcom/itextpdf/kernel/events/Event;)V

    .line 655
    :cond_4
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPageTree()Lcom/itextpdf/kernel/pdf/PdfPagesTree;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/itextpdf/kernel/pdf/PdfPagesTree;->removePage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    return-void
.end method

.method public removePage(Lcom/itextpdf/kernel/pdf/PdfPage;)Z
    .locals 1

    .line 619
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 620
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPageNumber(Lcom/itextpdf/kernel/pdf/PdfPage;)I

    move-result p1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 622
    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->removePage(I)V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCloseReader(Z)V
    .locals 0

    .line 1412
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1413
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeReader:Z

    return-void
.end method

.method public setCloseWriter(Z)V
    .locals 0

    .line 1431
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1432
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->closeWriter:Z

    return-void
.end method

.method public setDefaultPageSize(Lcom/itextpdf/kernel/geom/PageSize;)V
    .locals 0

    .line 715
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->defaultPageSize:Lcom/itextpdf/kernel/geom/PageSize;

    return-void
.end method

.method public setEncryptedPayload(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V
    .locals 4

    .line 1673
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1677
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->writerHasEncryption()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1680
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->EncryptedPayload:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->AFRelationship:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1681
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    const-string v1, "Encrypted payload file spec shall have \'AFRelationship\' filed equal to \'EncryptedPayload\'"

    .line 1682
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 1684
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;->extractFrom(Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1689
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getCollection()Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1691
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    const-string v3, "Collection dictionary already exists. It will be modified."

    .line 1692
    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 1694
    :cond_1
    new-instance v1, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;-><init>()V

    .line 1695
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setCollection(Lcom/itextpdf/kernel/pdf/collection/PdfCollection;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    :goto_0
    const/4 v2, 0x2

    .line 1697
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->setView(I)Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    .line 1698
    invoke-static {v0}, Lcom/itextpdf/kernel/pdf/filespec/PdfEncryptedPayloadFileSpecFactory;->generateFileDisplay(Lcom/itextpdf/kernel/pdf/PdfEncryptedPayload;)Ljava/lang/String;

    move-result-object v0

    .line 1699
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/pdf/collection/PdfCollection;->setInitialDocument(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/collection/PdfCollection;

    .line 1700
    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->addAssociatedFile(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/filespec/PdfFileSpec;)V

    return-void

    .line 1686
    :cond_2
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Encrypted payload file spec shall have encrypted payload dictionary."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1678
    :cond_3
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot set encrypted payload to an encrypted document."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1674
    :cond_4
    new-instance p1, Lcom/itextpdf/kernel/exceptions/PdfException;

    const-string v0, "Cannot set encrypted payload to a document opened in read only mode."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/PdfException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFlushUnusedObjects(Z)V
    .locals 0

    .line 1452
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1453
    iput-boolean p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->flushUnusedObjects:Z

    return-void
.end method

.method public setSerializeOptions(Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V
    .locals 0

    .line 1913
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    return-void
.end method

.method public setTagged()Lcom/itextpdf/kernel/pdf/PdfDocument;
    .locals 3

    .line 1067
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->checkClosingStatus()V

    .line 1068
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    if-nez v0, :cond_0

    .line 1069
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 1070
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->catalog:Lcom/itextpdf/kernel/pdf/PdfCatalog;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->StructTreeRoot:Lcom/itextpdf/kernel/pdf/PdfName;

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 1071
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->Marked:Lcom/itextpdf/kernel/pdf/PdfName;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-direct {p0, v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateValueInMarkInfoDict(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    const/4 v0, 0x0

    .line 1073
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    :cond_0
    return-object p0
.end method

.method public setUserProperties(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1782
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->TRUE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/itextpdf/kernel/pdf/PdfBoolean;->FALSE:Lcom/itextpdf/kernel/pdf/PdfBoolean;

    .line 1783
    :goto_0
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->UserProperties:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-direct {p0, v0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateValueInMarkInfoDict(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    return-void
.end method

.method public setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    const/16 v1, 0x7d0

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/xmp/options/SerializeOptions;->setPadding(I)Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 326
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V

    return-void
.end method

.method public setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 304
    iput-object p2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->serializeOptions:Lcom/itextpdf/kernel/xmp/options/SerializeOptions;

    .line 305
    invoke-static {p1, p2}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->serializeToBuffer(Lcom/itextpdf/kernel/xmp/XMPMeta;Lcom/itextpdf/kernel/xmp/options/SerializeOptions;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata([B)V

    return-void
.end method

.method protected setXmpMetadata([B)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    return-void
.end method

.method protected storeDestinationToReaddress(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            "Ljava/util/function/Consumer<",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;",
            ">;)V"
        }
    .end annotation

    .line 1950
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pendingDestinationMutations:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;

    invoke-direct {v1, p1, p2, p3}, Lcom/itextpdf/kernel/pdf/PdfDocument$DestinationMutationInfo;-><init>(Lcom/itextpdf/kernel/pdf/navigation/PdfDestination;Ljava/util/function/Consumer;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected storeLinkAnnotation(Lcom/itextpdf/kernel/pdf/PdfPage;Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected tryInitTagStructure(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 2

    .line 2306
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    invoke-direct {v0, p1, p0}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;-><init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    .line 2307
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getStructTreeRoot()Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;->getParentTreeNextKey()I

    move-result p1

    iput p1, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x0

    .line 2309
    iput-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structTreeRoot:Lcom/itextpdf/kernel/pdf/tagging/PdfStructTreeRoot;

    const/4 v0, -0x1

    .line 2310
    iput v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->structParentIndex:I

    .line 2311
    const-class v0, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    .line 2312
    const-string v1, "Tag structure initialization failed, tag structure is ignored, it might be corrupted."

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected updateDefaultXmpMetadata()Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2204
    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getXmpMetadata(Z)[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/kernel/xmp/XMPMetaFactory;->parseFromBuffer([B)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v1

    .line 2205
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getDocumentInfo()Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/itextpdf/kernel/pdf/XmpMetaInfoConverter;->appendDocumentInfoToMetadata(Lcom/itextpdf/kernel/pdf/PdfDocumentInfo;Lcom/itextpdf/kernel/xmp/XMPMeta;)V

    .line 2207
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isTagged()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v2, v2, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-boolean v2, v2, Lcom/itextpdf/kernel/pdf/WriterProperties;->addUAXmpMetadata:Z

    if-eqz v2, :cond_0

    const-string v2, "http://www.aiim.org/pdfua/ns/id/"

    const-string v3, "part"

    invoke-static {v1, v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDocument;->isXmpMetaHasProperty(Lcom/itextpdf/kernel/xmp/XMPMeta;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2209
    new-instance v4, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/xmp/options/PropertyOptions;-><init>(I)V

    invoke-interface {v1, v2, v3, v0, v4}, Lcom/itextpdf/kernel/xmp/XMPMeta;->setPropertyInteger(Ljava/lang/String;Ljava/lang/String;ILcom/itextpdf/kernel/xmp/options/PropertyOptions;)V

    :cond_0
    return-object v1
.end method

.method protected updateXmpMetadata()V
    .locals 3

    .line 2186
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->xmpMetadata:[B

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->writer:Lcom/itextpdf/kernel/pdf/PdfWriter;

    iget-object v0, v0, Lcom/itextpdf/kernel/pdf/PdfWriter;->properties:Lcom/itextpdf/kernel/pdf/WriterProperties;

    iget-boolean v0, v0, Lcom/itextpdf/kernel/pdf/WriterProperties;->addXmpMetadata:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/kernel/pdf/PdfDocument;->pdfVersion:Lcom/itextpdf/kernel/pdf/PdfVersion;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    .line 2187
    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 2188
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->updateDefaultXmpMetadata()Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->setXmpMetadata(Lcom/itextpdf/kernel/xmp/XMPMeta;)V
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2191
    const-class v1, Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 2192
    const-string v2, "Exception while updating XmpMetadata"

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
