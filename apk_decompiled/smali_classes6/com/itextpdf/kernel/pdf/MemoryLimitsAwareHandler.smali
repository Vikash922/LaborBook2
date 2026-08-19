.class public Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
.super Ljava/lang/Object;
.source "MemoryLimitsAwareHandler.java"


# static fields
.field private static final MAX_NUMBER_OF_ELEMENTS_IN_XREF_STRUCTURE:I = 0x2faf080

.field private static final SINGLE_DECOMPRESSED_PDF_STREAM_MIN_SIZE:I = 0x147ae14

.field private static final SINGLE_SCALE_COEFFICIENT:I = 0x64

.field private static final SUM_OF_DECOMPRESSED_PDF_STREAMS_MIN_SIZE:J = 0x6666666L

.field private static final SUM_SCALE_COEFFICIENT:I = 0x1f4


# instance fields
.field private allMemoryUsedForDecompression:J

.field considerCurrentPdfStream:Z

.field private maxNumberOfElementsInXrefStructure:I

.field private maxSizeOfDecompressedPdfStreamsSum:J

.field private maxSizeOfSingleDecompressedPdfStream:I

.field private memoryUsedForCurrentPdfStreamDecompression:J


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/32 v0, 0x6666666

    const v2, 0x2faf080

    const v3, 0x147ae14

    .line 83
    invoke-direct {p0, v3, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;-><init>(IJI)V

    return-void
.end method

.method private constructor <init>(IJI)V
    .locals 2

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 73
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    .line 74
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    .line 101
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    .line 102
    iput-wide p2, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    .line 103
    iput p4, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxNumberOfElementsInXrefStructure:I

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4

    const/16 v0, 0x64

    const-wide/32 v1, 0x147ae14

    .line 94
    invoke-static {p1, p2, v0, v1, v2}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->calculateDefaultParameter(JIJ)J

    move-result-wide v0

    long-to-int v0, v0

    const/16 v1, 0x1f4

    const-wide/32 v2, 0x6666666

    .line 95
    invoke-static {p1, p2, v1, v2, v3}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->calculateDefaultParameter(JIJ)J

    move-result-wide p1

    const v1, 0x2faf080

    .line 94
    invoke-direct {p0, v0, p1, p2, v1}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;-><init>(IJI)V

    return-void
.end method

.method private static calculateDefaultParameter(JIJ)J
    .locals 2

    int-to-long v0, p2

    mul-long/2addr p0, v0

    cmp-long p2, p0, p3

    if-gez p2, :cond_0

    move-wide p0, p3

    :cond_0
    mul-long/2addr p3, v0

    cmp-long p2, p0, p3

    if-lez p2, :cond_1

    move-wide p0, p3

    :cond_1
    return-wide p0
.end method

.method private ensureCurrentStreamIsReset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 273
    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    return-void
.end method


# virtual methods
.method beginDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 1

    .line 234
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->ensureCurrentStreamIsReset()V

    const/4 v0, 0x1

    .line 235
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    return-object p0
.end method

.method public checkIfXrefStructureExceedsTheLimit(I)V
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 204
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxNumberOfElementsInXrefStructure:I

    if-gt p1, v0, :cond_0

    return-void

    .line 205
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;

    const-string v0, "Xref structure contains too many elements and may cause OOM exception. You can increase number of elements by setting custom MemoryLimitsAwareHandler."

    invoke-direct {p1, v0}, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method considerBytesOccupiedByDecompressedPdfStream(J)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 2

    .line 218
    iget-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_1

    .line 219
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    .line 220
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-gtz p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    new-instance p1, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;

    const-string p2, "During decompression a single stream occupied more memory than allowed. Please either check your pdf or increase the allowed multiple decompressed pdf streams maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

    invoke-direct {p1, p2}, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method endDecompressedPdfStreamProcessing()Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 4

    .line 247
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    iget-wide v2, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->memoryUsedForCurrentPdfStreamDecompression:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    .line 248
    iget-wide v2, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 252
    invoke-direct {p0}, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->ensureCurrentStreamIsReset()V

    const/4 v0, 0x0

    .line 253
    iput-boolean v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->considerCurrentPdfStream:Z

    return-object p0

    .line 249
    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;

    const-string v1, "During decompression multiple streams in sum occupied more memory than allowed. Please either check your pdf or increase the allowed single decompressed pdf stream maximum size value by setting the appropriate parameter of ReaderProperties\'s MemoryLimitsAwareHandler."

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/exceptions/MemoryLimitsAwareException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getAllMemoryUsedForDecompression()J
    .locals 2

    .line 258
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->allMemoryUsedForDecompression:J

    return-wide v0
.end method

.method public getMaxNumberOfElementsInXrefStructure()I
    .locals 1

    .line 184
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxNumberOfElementsInXrefStructure:I

    return v0
.end method

.method public getMaxSizeOfDecompressedPdfStreamsSum()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    return-wide v0
.end method

.method public getMaxSizeOfSingleDecompressedPdfStream()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    return v0
.end method

.method public isMemoryLimitsAwarenessRequiredOnDecompression(Lcom/itextpdf/kernel/pdf/PdfArray;)Z
    .locals 4

    .line 167
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 168
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 169
    invoke-virtual {p1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    .line 170
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setMaxNumberOfElementsInXrefStructure(I)V
    .locals 0

    .line 193
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxNumberOfElementsInXrefStructure:I

    return-void
.end method

.method public setMaxSizeOfDecompressedPdfStreamsSum(J)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 0

    .line 155
    iput-wide p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfDecompressedPdfStreamsSum:J

    return-object p0
.end method

.method public setMaxSizeOfSingleDecompressedPdfStream(I)Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;
    .locals 0

    .line 128
    iput p1, p0, Lcom/itextpdf/kernel/pdf/MemoryLimitsAwareHandler;->maxSizeOfSingleDecompressedPdfStream:I

    return-object p0
.end method
