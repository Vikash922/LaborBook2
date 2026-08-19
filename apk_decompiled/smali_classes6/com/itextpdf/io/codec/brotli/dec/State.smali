.class final Lcom/itextpdf/io/codec/brotli/dec/State;
.super Ljava/lang/Object;
.source "State.java"


# instance fields
.field final blockLenTrees:[I

.field final blockLength:[I

.field final blockTypeRb:[I

.field final blockTypeTrees:[I

.field final br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

.field bytesToIgnore:I

.field bytesToWrite:I

.field bytesWritten:I

.field contextLookupOffset1:I

.field contextLookupOffset2:I

.field contextMap:[B

.field contextMapSlice:I

.field contextModes:[B

.field copyDst:I

.field copyLength:I

.field customDictionary:[B

.field distContextMap:[B

.field distContextMapSlice:I

.field final distRb:[I

.field distRbIdx:I

.field distance:I

.field distanceCode:I

.field distancePostfixBits:I

.field distancePostfixMask:I

.field expectedTotalSize:J

.field final hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

.field final hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

.field final hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

.field inputEnd:Z

.field insertLength:I

.field isMetadata:Z

.field isUncompressed:Z

.field j:I

.field literalTree:I

.field literalTreeIndex:I

.field maxBackwardDistance:I

.field maxDistance:I

.field maxRingBufferSize:I

.field metaBlockLength:I

.field nextRunningState:I

.field final numBlockTypes:[I

.field numDirectDistanceCodes:I

.field output:[B

.field outputLength:I

.field outputOffset:I

.field outputUsed:I

.field pos:I

.field ringBuffer:[B

.field ringBufferSize:I

.field runningState:I

.field treeCommandOffset:I

.field trivialLiteralContext:Z


# direct methods
.method constructor <init>()V
    .locals 5

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    .line 15
    new-instance v1, Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    invoke-direct {v1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    const/16 v1, 0xca8

    .line 17
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeTrees:[I

    .line 18
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLenTrees:[I

    .line 26
    new-instance v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-direct {v1}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup0:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    .line 27
    new-instance v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-direct {v1}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup1:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    .line 28
    new-instance v1, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    invoke-direct {v1}, Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->hGroup2:Lcom/itextpdf/io/codec/brotli/dec/HuffmanTreeGroup;

    const/4 v1, 0x3

    .line 29
    new-array v2, v1, [I

    iput-object v2, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockLength:[I

    .line 30
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->numBlockTypes:[I

    const/4 v1, 0x6

    .line 31
    new-array v1, v1, [I

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->blockTypeRb:[I

    const/16 v1, 0xb

    const/4 v2, 0x4

    const/16 v3, 0x10

    const/16 v4, 0xf

    .line 32
    filled-new-array {v3, v4, v1, v2}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRb:[I

    .line 33
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->pos:I

    .line 34
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxDistance:I

    .line 35
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->distRbIdx:I

    .line 36
    iput-boolean v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->trivialLiteralContext:Z

    .line 37
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->literalTreeIndex:I

    .line 58
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->ringBufferSize:I

    const-wide/16 v1, 0x0

    .line 59
    iput-wide v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->expectedTotalSize:J

    .line 60
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->customDictionary:[B

    .line 61
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->bytesToIgnore:I

    return-void
.end method

.method static close(Lcom/itextpdf/io/codec/brotli/dec/State;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    if-eqz v0, :cond_1

    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    return-void

    .line 113
    :cond_0
    iput v1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    .line 114
    iget-object p0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    invoke-static {p0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->close(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)V

    return-void

    .line 108
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "State MUST be initialized"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static decodeWindowBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I
    .locals 3

    const/4 v0, 0x1

    .line 72
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v0

    if-nez v0, :cond_0

    const/16 p0, 0x10

    return p0

    :cond_0
    const/4 v0, 0x3

    .line 75
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result v1

    const/16 v2, 0x11

    if-eqz v1, :cond_1

    add-int/2addr v1, v2

    return v1

    .line 79
    :cond_1
    invoke-static {p0, v0}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->readBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;I)I

    move-result p0

    if-eqz p0, :cond_2

    add-int/lit8 p0, p0, 0x8

    return p0

    :cond_2
    return v2
.end method

.method static setInput(Lcom/itextpdf/io/codec/brotli/dec/State;Ljava/io/InputStream;)V
    .locals 1

    .line 93
    iget v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    invoke-static {v0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BitReader;->init(Lcom/itextpdf/io/codec/brotli/dec/BitReader;Ljava/io/InputStream;)V

    .line 97
    iget-object p1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->br:Lcom/itextpdf/io/codec/brotli/dec/BitReader;

    invoke-static {p1}, Lcom/itextpdf/io/codec/brotli/dec/State;->decodeWindowBits(Lcom/itextpdf/io/codec/brotli/dec/BitReader;)I

    move-result p1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    shl-int p1, v0, p1

    .line 101
    iput p1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxRingBufferSize:I

    add-int/lit8 p1, p1, -0x10

    .line 102
    iput p1, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->maxBackwardDistance:I

    .line 103
    iput v0, p0, Lcom/itextpdf/io/codec/brotli/dec/State;->runningState:I

    return-void

    .line 99
    :cond_0
    new-instance p0, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;

    const-string p1, "Invalid \'windowBits\' code"

    invoke-direct {p0, p1}, Lcom/itextpdf/io/codec/brotli/dec/BrotliRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "State MUST be uninitialized"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
