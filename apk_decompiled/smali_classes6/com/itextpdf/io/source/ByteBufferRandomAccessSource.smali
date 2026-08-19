.class Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;
.super Ljava/lang/Object;
.source "ByteBufferRandomAccessSource.java"

# interfaces
.implements Lcom/itextpdf/io/source/IRandomAccessSource;


# static fields
.field private static final CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

.field public static final UNMAP_SUPPORTED:Z

.field private static allowUnmapping:Z = true


# instance fields
.field private final byteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 172
    instance-of v1, v0, Lcom/itextpdf/io/source/BufferCleaner;

    if-eqz v1, :cond_0

    .line 173
    check-cast v0, Lcom/itextpdf/io/source/BufferCleaner;

    sput-object v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

    const/4 v0, 0x1

    .line 174
    sput-boolean v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->UNMAP_SUPPORTED:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

    const/4 v0, 0x0

    .line 177
    sput-boolean v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->UNMAP_SUPPORTED:Z

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static clean(Ljava/nio/ByteBuffer;)Z
    .locals 1

    if-eqz p0, :cond_1

    .line 189
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 193
    :cond_0
    new-instance v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource$$ExternalSyntheticLambda0;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private static cleanByUnmapping(Ljava/nio/ByteBuffer;)Z
    .locals 5

    .line 197
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 200
    :try_start_0
    sget-boolean v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->UNMAP_SUPPORTED:Z

    if-eqz v1, :cond_0

    .line 201
    sget-object v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->CLEANER:Lcom/itextpdf/io/source/BufferCleaner;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/itextpdf/io/source/BufferCleaner;->freeBuffer(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "cleaner"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    .line 206
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 207
    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 208
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "clean"

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 209
    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    :goto_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 214
    const-class v1, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    .line 215
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 217
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static disableByteBufferMemoryUnmapping()V
    .locals 1

    const/4 v0, 0x0

    .line 90
    sput-boolean v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->allowUnmapping:Z

    return-void
.end method

.method public static enableByteBufferMemoryUnmapping()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    sput-boolean v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->allowUnmapping:Z

    return-void
.end method

.method static synthetic lambda$clean$0(Ljava/nio/ByteBuffer;)Ljava/lang/Boolean;
    .locals 0

    .line 193
    invoke-static {p0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->cleanByUnmapping(Ljava/nio/ByteBuffer;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    sget-boolean v0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->allowUnmapping:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->clean(Ljava/nio/ByteBuffer;)Z

    :cond_0
    return-void
.end method

.method public get(J)I
    .locals 3

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const/4 v0, -0x1

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, p1, v1

    if-ltz v1, :cond_0

    return v0

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    long-to-int p1, p1

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result p1
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 p1, p1, 0xff

    return p1

    :catch_0
    return v0

    .line 102
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Position must be less than Integer.MAX_VALUE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(J[BII)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    long-to-int p1, p1

    .line 133
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 135
    invoke-virtual {v0, p3, p4, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p1

    .line 125
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Position must be less than Integer.MAX_VALUE"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public length()J
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/itextpdf/io/source/ByteBufferRandomAccessSource;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method
