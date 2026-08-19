.class public Lcom/itextpdf/io/font/TrueTypeCollection;
.super Ljava/lang/Object;
.source "TrueTypeCollection.java"


# instance fields
.field private TTCSize:I

.field private cached:Z

.field protected raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private ttc:[B

.field private ttcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->TTCSize:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->cached:Z

    .line 81
    invoke-static {p1}, Lcom/itextpdf/commons/utils/FileUtil;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createBestSource(Ljava/lang/String;)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 85
    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->ttcPath:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeCollection;->initFontSize()V

    return-void

    .line 82
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "Font file {0} not found."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/itextpdf/io/exceptions/IOException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/io/exceptions/IOException;

    move-result-object p1

    throw p1
.end method

.method public constructor <init>([B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->TTCSize:I

    const/4 v0, 0x1

    .line 60
    iput-boolean v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->cached:Z

    .line 69
    new-instance v0, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    invoke-virtual {v1, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 70
    iput-object p1, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->ttc:[B

    .line 71
    invoke-direct {p0}, Lcom/itextpdf/io/font/TrueTypeCollection;->initFontSize()V

    return-void
.end method

.method private initFontSize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-string v1, "Cp1252"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "ttcf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->skipBytes(I)I

    .line 141
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->raf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->TTCSize:I

    return-void

    .line 138
    :cond_0
    new-instance v0, Lcom/itextpdf/io/exceptions/IOException;

    const-string v1, "{0} is not a valid TTC file."

    invoke-direct {v0, v1}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFontByTccIndex(I)Lcom/itextpdf/io/font/FontProgram;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 97
    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->TTCSize:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->ttcPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 102
    iget-boolean v1, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->cached:Z

    invoke-static {v0, p1, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont(Ljava/lang/String;IZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    return-object p1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->ttc:[B

    iget-boolean v1, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->cached:Z

    invoke-static {v0, p1, v1}, Lcom/itextpdf/io/font/FontProgramFactory;->createFont([BIZ)Lcom/itextpdf/io/font/FontProgram;

    move-result-object p1

    return-object p1

    .line 98
    :cond_1
    new-instance p1, Lcom/itextpdf/io/exceptions/IOException;

    const-string v0, "TTC index doesn\'t exist in this TTC file."

    invoke-direct {p1, v0}, Lcom/itextpdf/io/exceptions/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getTTCSize()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->TTCSize:I

    return v0
.end method

.method public isCached()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->cached:Z

    return v0
.end method

.method public setCached(Z)V
    .locals 0

    .line 132
    iput-boolean p1, p0, Lcom/itextpdf/io/font/TrueTypeCollection;->cached:Z

    return-void
.end method
