.class public Lcom/itextpdf/commons/utils/Base64$InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/commons/utils/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InputStream"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alphabet:[B

.field private breakLines:Z

.field private buffer:[B

.field private bufferLength:I

.field private decodabet:[B

.field private encode:Z

.field private lineLength:I

.field private numSigBytes:I

.field private options:I

.field private position:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1285
    const-class v0, Lcom/itextpdf/commons/utils/Base64;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 1305
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/commons/utils/Base64$InputStream;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .line 1330
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    and-int/lit8 p1, p2, 0x8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x8

    if-eq p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1331
    :goto_0
    iput-boolean p1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->breakLines:Z

    and-int/lit8 p1, p2, 0x1

    if-ne p1, v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    .line 1332
    :goto_1
    iput-boolean v1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->encode:Z

    if-eqz v1, :cond_2

    const/4 p1, 0x4

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 1333
    :goto_2
    iput p1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->bufferLength:I

    .line 1334
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->buffer:[B

    const/4 p1, -0x1

    .line 1335
    iput p1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    .line 1336
    iput v0, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->lineLength:I

    .line 1337
    iput p2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->options:I

    .line 1338
    invoke-static {p2}, Lcom/itextpdf/commons/utils/Base64;->access$000(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->alphabet:[B

    .line 1339
    invoke-static {p2}, Lcom/itextpdf/commons/utils/Base64;->access$100(I)[B

    move-result-object p1

    iput-object p1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->decodabet:[B

    return-void
.end method


# virtual methods
.method public read()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1351
    iget v0, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-gez v0, :cond_b

    .line 1352
    iget-boolean v0, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->encode:Z

    const/4 v3, 0x4

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    .line 1353
    new-array v4, v0, [B

    move v5, v2

    move v6, v5

    :goto_0
    if-ge v5, v0, :cond_2

    .line 1357
    :try_start_0
    iget-object v7, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v7}, Ljava/io/InputStream;->read()I

    move-result v7

    if-ltz v7, :cond_0

    int-to-byte v7, v7

    .line 1361
    aput-byte v7, v4, v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :catch_0
    move-exception v7

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1369
    :cond_1
    throw v7

    :cond_2
    if-lez v6, :cond_3

    .line 1375
    iget-object v7, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->buffer:[B

    const/4 v8, 0x0

    iget v9, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->options:I

    const/4 v5, 0x0

    invoke-static/range {v4 .. v9}, Lcom/itextpdf/commons/utils/Base64;->access$200([BII[BII)[B

    .line 1376
    iput v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    .line 1377
    iput v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->numSigBytes:I

    goto :goto_4

    :cond_3
    return v1

    .line 1386
    :cond_4
    new-array v0, v3, [B

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_8

    .line 1392
    :cond_5
    iget-object v5, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ltz v5, :cond_6

    .line 1394
    iget-object v6, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->decodabet:[B

    and-int/lit8 v7, v5, 0x7f

    aget-byte v6, v6, v7

    const/4 v7, -0x5

    if-le v6, v7, :cond_5

    :cond_6
    if-gez v5, :cond_7

    goto :goto_3

    :cond_7
    int-to-byte v5, v5

    .line 1399
    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-ne v4, v3, :cond_9

    .line 1403
    iget-object v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->buffer:[B

    iget v4, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->options:I

    invoke-static {v0, v2, v3, v2, v4}, Lcom/itextpdf/commons/utils/Base64;->access$300([BI[BII)I

    move-result v0

    iput v0, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->numSigBytes:I

    .line 1404
    iput v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    goto :goto_4

    :cond_9
    if-nez v4, :cond_a

    return v1

    .line 1411
    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "improperly.padded.base64.input"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1419
    :cond_b
    :goto_4
    iget v0, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    iget v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->numSigBytes:I

    if-lt v0, v3, :cond_c

    return v1

    .line 1422
    :cond_c
    iget-boolean v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->encode:Z

    if-eqz v3, :cond_d

    iget-boolean v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->breakLines:Z

    if-eqz v3, :cond_d

    iget v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->lineLength:I

    const/16 v4, 0x4c

    if-lt v3, v4, :cond_d

    .line 1423
    iput v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->lineLength:I

    const/16 v0, 0xa

    return v0

    .line 1427
    :cond_d
    iget v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->lineLength:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->lineLength:I

    .line 1431
    iget-object v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->buffer:[B

    add-int/lit8 v3, v0, 0x1

    iput v3, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    aget-byte v0, v2, v0

    .line 1433
    iget v2, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->bufferLength:I

    if-lt v3, v2, :cond_e

    .line 1434
    iput v1, p0, Lcom/itextpdf/commons/utils/Base64$InputStream;->position:I

    :cond_e
    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 1458
    invoke-virtual {p0}, Lcom/itextpdf/commons/utils/Base64$InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_0

    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 1464
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    return v0
.end method
