.class public Lorg/jacoco/core/instr/Instrumenter;
.super Ljava/lang/Object;
.source "Instrumenter.java"


# instance fields
.field private final accessorGenerator:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

.field private final signatureRemover:Lorg/jacoco/core/internal/instr/SignatureRemover;


# direct methods
.method public constructor <init>(Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lorg/jacoco/core/instr/Instrumenter;->accessorGenerator:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    .line 59
    new-instance p1, Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-direct {p1}, Lorg/jacoco/core/internal/instr/SignatureRemover;-><init>()V

    iput-object p1, p0, Lorg/jacoco/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/core/internal/instr/SignatureRemover;

    return-void
.end method

.method private copy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 304
    new-array v0, v0, [B

    .line 306
    :goto_0
    invoke-direct {p0, p1, v0, p3}, Lorg/jacoco/core/instr/Instrumenter;->read(Ljava/io/InputStream;[BLjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    .line 307
    invoke-virtual {p2, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static crc([B)J
    .locals 2

    .line 260
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    .line 261
    invoke-virtual {v0, p0}, Ljava/util/zip/CRC32;->update([B)V

    .line 262
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private filterOrInstrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lorg/jacoco/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-virtual {v0, p4, p1, p2}, Lorg/jacoco/core/internal/instr/SignatureRemover;->filterEntry(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "@"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method private instrument([B)[B
    .locals 5

    .line 76
    invoke-static {p1}, Lorg/jacoco/core/internal/data/CRC64;->classId([B)J

    move-result-wide v0

    .line 77
    invoke-static {p1}, Lorg/jacoco/core/internal/instr/InstrSupport;->classReaderFor([B)Lorg/objectweb/asm/ClassReader;

    move-result-object p1

    .line 78
    new-instance v2, Lorg/jacoco/core/instr/Instrumenter$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lorg/jacoco/core/instr/Instrumenter$1;-><init>(Lorg/jacoco/core/instr/Instrumenter;Lorg/objectweb/asm/ClassReader;I)V

    .line 85
    iget-object v3, p0, Lorg/jacoco/core/instr/Instrumenter;->accessorGenerator:Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;

    invoke-static {v0, v1, p1, v3}, Lorg/jacoco/core/internal/instr/ProbeArrayStrategyFactory;->createFor(JLorg/objectweb/asm/ClassReader;Lorg/jacoco/core/runtime/IExecutionDataAccessorGenerator;)Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;

    move-result-object v0

    .line 87
    invoke-static {p1}, Lorg/jacoco/core/internal/instr/InstrSupport;->getMajorVersion(Lorg/objectweb/asm/ClassReader;)I

    move-result v1

    .line 88
    new-instance v3, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;

    new-instance v4, Lorg/jacoco/core/internal/instr/ClassInstrumenter;

    invoke-direct {v4, v0, v2}, Lorg/jacoco/core/internal/instr/ClassInstrumenter;-><init>(Lorg/jacoco/core/internal/instr/IProbeArrayStrategy;Lorg/objectweb/asm/ClassVisitor;)V

    invoke-static {v1}, Lorg/jacoco/core/internal/instr/InstrSupport;->needsFrames(I)Z

    move-result v0

    invoke-direct {v3, v4, v0}, Lorg/jacoco/core/internal/flow/ClassProbesAdapter;-><init>(Lorg/jacoco/core/internal/flow/ClassProbesVisitor;Z)V

    const/16 v0, 0x8

    .line 91
    invoke-virtual {p1, v3, v0}, Lorg/objectweb/asm/ClassReader;->accept(Lorg/objectweb/asm/ClassVisitor;I)V

    .line 92
    invoke-virtual {v2}, Lorg/objectweb/asm/ClassWriter;->toByteArray()[B

    move-result-object p1

    return-object p1
.end method

.method private instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;
    .locals 3

    .line 161
    new-instance v0, Ljava/io/IOException;

    sget-object v1, Lorg/jacoco/core/JaCoCo;->VERSION:Ljava/lang/String;

    sget-object v2, Lorg/jacoco/core/JaCoCo;->COMMITID_SHORT:Ljava/lang/String;

    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "Error while instrumenting %s with JaCoCo %s/%s."

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 164
    invoke-virtual {v0, p2}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-object v0
.end method

.method private instrumentGzip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    :try_start_0
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    new-instance p1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 283
    invoke-virtual {p0, v0, p1, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result p2

    .line 284
    invoke-virtual {p1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    return p2

    :catch_0
    move-exception p1

    .line 280
    invoke-direct {p0, p3, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private instrumentPack200(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 292
    :try_start_0
    invoke-static {p1}, Lorg/jacoco/core/internal/Pack200Streams;->unpack(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 296
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 297
    invoke-virtual {p0, p1, v0, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result p1

    .line 298
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p3

    invoke-static {p3, p2}, Lorg/jacoco/core/internal/Pack200Streams;->pack([BLjava/io/OutputStream;)V

    return p1

    :catch_0
    move-exception p1

    .line 294
    invoke-direct {p0, p3, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private instrumentZip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 212
    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 213
    new-instance p1, Ljava/util/zip/ZipOutputStream;

    invoke-direct {p1, p2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 p2, 0x0

    .line 216
    :goto_0
    invoke-direct {p0, v0, p3}, Lorg/jacoco/core/instr/Instrumenter;->nextEntry(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 217
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v2

    .line 218
    iget-object v3, p0, Lorg/jacoco/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-virtual {v3, v2}, Lorg/jacoco/core/internal/instr/SignatureRemover;->removeEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    new-instance v3, Ljava/util/zip/ZipEntry;

    invoke-direct {v3, v2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 224
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v4

    if-eqz v4, :cond_2

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 226
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 227
    invoke-direct {p0, v0, p1, p3, v2}, Lorg/jacoco/core/instr/Instrumenter;->filterOrInstrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_1

    .line 242
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(I)V

    throw p1

    .line 232
    :cond_2
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 233
    invoke-direct {p0, v0, v1, p3, v2}, Lorg/jacoco/core/instr/Instrumenter;->filterOrInstrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    add-int/2addr p2, v2

    .line 234
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .line 235
    array-length v2, v1

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setSize(J)V

    .line 236
    array-length v2, v1

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setCompressedSize(J)V

    .line 237
    invoke-static {v1}, Lorg/jacoco/core/instr/Instrumenter;->crc([B)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/util/zip/ZipEntry;->setCrc(J)V

    .line 238
    invoke-virtual {p1, v3}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 239
    invoke-virtual {p1, v1}, Ljava/util/zip/ZipOutputStream;->write([B)V

    .line 244
    :goto_1
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    goto :goto_0

    .line 246
    :cond_3
    invoke-virtual {p1}, Ljava/util/zip/ZipOutputStream;->finish()V

    return p2
.end method

.method private nextEntry(Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    :try_start_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 270
    invoke-direct {p0, p2, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method private read(Ljava/io/InputStream;[BLjava/lang/String;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 314
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 316
    invoke-direct {p0, p3, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 156
    invoke-virtual {p0, p1, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrument(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public instrument(Ljava/io/InputStream;Ljava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-static {p1}, Lorg/jacoco/core/internal/InputStreams;->readFully(Ljava/io/InputStream;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    invoke-virtual {p0, p1, p2}, Lorg/jacoco/core/instr/Instrumenter;->instrument([BLjava/lang/String;)[B

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    .line 134
    invoke-direct {p0, p2, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public instrument([BLjava/lang/String;)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrument([B)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 111
    invoke-direct {p0, p2, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public instrumentAll(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 190
    :try_start_0
    new-instance v0, Lorg/jacoco/core/internal/ContentTypeDetector;

    invoke-direct {v0, p1}, Lorg/jacoco/core/internal/ContentTypeDetector;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    invoke-virtual {v0}, Lorg/jacoco/core/internal/ContentTypeDetector;->getType()I

    move-result p1

    const v1, -0x35014542    # -8346975.0f

    if-eq p1, v1, :cond_3

    const v1, -0x35012ff3    # -8349702.5f

    if-eq p1, v1, :cond_2

    const/high16 v1, 0x1f8b0000

    if-eq p1, v1, :cond_1

    const v1, 0x504b0304

    if-eq p1, v1, :cond_0

    .line 205
    invoke-virtual {v0}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 199
    :cond_0
    invoke-virtual {v0}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentZip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 201
    :cond_1
    invoke-virtual {v0}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentGzip(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 203
    :cond_2
    invoke-virtual {v0}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrumentPack200(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)I

    move-result p1

    return p1

    .line 196
    :cond_3
    invoke-virtual {v0}, Lorg/jacoco/core/internal/ContentTypeDetector;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lorg/jacoco/core/instr/Instrumenter;->instrument(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 192
    invoke-direct {p0, p3, p1}, Lorg/jacoco/core/instr/Instrumenter;->instrumentError(Ljava/lang/String;Ljava/lang/Exception;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public setRemoveSignatures(Z)V
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/jacoco/core/instr/Instrumenter;->signatureRemover:Lorg/jacoco/core/internal/instr/SignatureRemover;

    invoke-virtual {v0, p1}, Lorg/jacoco/core/internal/instr/SignatureRemover;->setActive(Z)V

    return-void
.end method
