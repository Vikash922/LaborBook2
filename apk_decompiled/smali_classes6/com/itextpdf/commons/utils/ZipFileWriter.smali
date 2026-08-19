.class public Lcom/itextpdf/commons/utils/ZipFileWriter;
.super Ljava/lang/Object;
.source "ZipFileWriter.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/commons/utils/ZipFileWriter$ZipWriter;
    }
.end annotation


# instance fields
.field private final outputStream:Ljava/util/zip/ZipOutputStream;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    .line 54
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->isFileNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->directoryExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Ljava/util/zip/ZipOutputStream;

    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->getFileOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    iput-object v0, p0, Lcom/itextpdf/commons/utils/ZipFileWriter;->outputStream:Ljava/util/zip/ZipOutputStream;

    const/16 p1, 0x8

    .line 59
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setMethod(I)V

    const/16 p1, 0x9

    .line 60
    invoke-virtual {v0, p1}, Ljava/util/zip/ZipOutputStream;->setLevel(I)V

    return-void

    .line 55
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "File name: {0}, already exists."

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 56
    invoke-static {v1, p1}, Lcom/itextpdf/commons/utils/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "File name can not be null."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private addEntryToZip(Ljava/lang/String;Lcom/itextpdf/commons/utils/ZipFileWriter$ZipWriter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 126
    new-instance v0, Ljava/util/zip/ZipEntry;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    .line 127
    iget-object p1, p0, Lcom/itextpdf/commons/utils/ZipFileWriter;->outputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {p1, v0}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 128
    iget-object p1, p0, Lcom/itextpdf/commons/utils/ZipFileWriter;->outputStream:Ljava/util/zip/ZipOutputStream;

    invoke-interface {p2, p1}, Lcom/itextpdf/commons/utils/ZipFileWriter$ZipWriter;->write(Ljava/util/zip/ZipOutputStream;)V

    return-void

    .line 124
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File name should be unique."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic lambda$addEntry$0(Ljava/io/InputStream;Ljava/util/zip/ZipOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x400

    .line 91
    new-array v0, v0, [B

    .line 93
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v2, 0x0

    .line 94
    invoke-virtual {p1, v0, v2, v1}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic lambda$addJsonEntry$1(Ljava/lang/Object;Ljava/util/zip/ZipOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-static {p1, p0}, Lcom/itextpdf/commons/utils/JsonUtil;->serializeToStream(Ljava/io/OutputStream;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addEntry(Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newInputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/InputStream;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/commons/utils/ZipFileWriter;->addEntry(Ljava/lang/String;Ljava/io/InputStream;)V

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "File should exist."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addEntry(Ljava/lang/String;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 90
    new-instance v0, Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2}, Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda1;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/commons/utils/ZipFileWriter;->addEntryToZip(Ljava/lang/String;Lcom/itextpdf/commons/utils/ZipFileWriter$ZipWriter;)V

    return-void

    .line 88
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Passed stream can not be null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addJsonEntry(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 111
    new-instance v0, Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/itextpdf/commons/utils/ZipFileWriter$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/itextpdf/commons/utils/ZipFileWriter;->addEntryToZip(Ljava/lang/String;Lcom/itextpdf/commons/utils/ZipFileWriter$ZipWriter;)V

    return-void

    .line 109
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Passed json object can not be null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/itextpdf/commons/utils/ZipFileWriter;->outputStream:Ljava/util/zip/ZipOutputStream;

    invoke-virtual {v0}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method
