.class public Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;
.super Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;
.source "DefaultITextProductEventProcessor.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final MAX_LVL:I

.field static final MESSAGE_FOR_LOGGING:[B

.field private static final REPEAT:[J


# instance fields
.field private final counter:Ljava/util/concurrent/atomic/AtomicLong;

.field private final level:Ljava/util/concurrent/atomic/AtomicLong;

.field private final lock:Ljava/lang/Object;

.field private final repeatLevel:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-string v0, "WW91IGFyZSB1c2luZyBpVGV4dCB1bmRlciB0aGUgQUdQTC4KCklmIHRoaXMgaXMgeW91ciBpbnRlbnRpb24sIHlvdSBoYXZlIHB1Ymxpc2hlZCB5b3VyIG93biBzb3VyY2UgY29kZSBhcyBBR1BMIHNvZnR3YXJlIHRvby4KUGxlYXNlIGxldCB1cyBrbm93IHdoZXJlIHRvIGZpbmQgeW91ciBzb3VyY2UgY29kZSBieSBzZW5kaW5nIGEgbWFpbCB0byBhZ3BsQGl0ZXh0cGRmLmNvbQpXZSdkIGJlIGhvbm9yZWQgdG8gYWRkIGl0IHRvIG91ciBsaXN0IG9mIEFHUEwgcHJvamVjdHMgYnVpbHQgb24gdG9wIG9mIGlUZXh0IDcKYW5kIHdlJ2xsIGV4cGxhaW4gaG93IHRvIHJlbW92ZSB0aGlzIG1lc3NhZ2UgZnJvbSB5b3VyIGVycm9yIGxvZ3MuCgpJZiB0aGlzIHdhc24ndCB5b3VyIGludGVudGlvbiwgeW91IGFyZSBwcm9iYWJseSB1c2luZyBpVGV4dCBpbiBhIG5vbi1mcmVlIGVudmlyb25tZW50LgpJbiB0aGlzIGNhc2UsIHBsZWFzZSBjb250YWN0IHVzIGJ5IGZpbGxpbmcgb3V0IHRoaXMgZm9ybTogaHR0cDovL2l0ZXh0cGRmLmNvbS9zYWxlcwpJZiB5b3UgYXJlIGEgY3VzdG9tZXIsIHdlJ2xsIGV4cGxhaW4gaG93IHRvIGluc3RhbGwgeW91ciBsaWNlbnNlIGtleSB0byBhdm9pZCB0aGlzIG1lc3NhZ2UuCklmIHlvdSdyZSBub3QgYSBjdXN0b21lciwgd2UnbGwgZXhwbGFpbiB0aGUgYmVuZWZpdHMgb2YgYmVjb21pbmcgYSBjdXN0b21lci4="

    .line 40
    invoke-static {v0}, Lcom/itextpdf/commons/utils/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->MESSAGE_FOR_LOGGING:[B

    .line 55
    const-class v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x3

    .line 57
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->REPEAT:[J

    .line 59
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->MAX_LVL:I

    return-void

    :array_0
    .array-data 8
        0x2710
        0x1388
        0x3e8
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    .line 75
    invoke-direct {p0, p1}, Lcom/itextpdf/commons/actions/processors/AbstractITextProductEventProcessor;-><init>(Ljava/lang/String;)V

    .line 61
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->lock:Ljava/lang/Object;

    .line 63
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    .line 65
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p1, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->level:Ljava/util/concurrent/atomic/AtomicLong;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int p1, v1

    invoke-virtual {p0, p1}, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->acquireRepeatLevel(I)J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->repeatLevel:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method acquireRepeatLevel(I)J
    .locals 3

    .line 110
    sget-object v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->REPEAT:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getUsageType()Ljava/lang/String;
    .locals 1

    .line 106
    const-string v0, "AGPL"

    return-object v0
.end method

.method public onEvent(Lcom/itextpdf/commons/actions/AbstractProductProcessITextEvent;)V
    .locals 5

    .line 81
    instance-of p1, p1, Lcom/itextpdf/commons/actions/confirmations/ConfirmEvent;

    if-nez p1, :cond_0

    return-void

    .line 85
    :cond_0
    iget-object p1, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->lock:Ljava/lang/Object;

    monitor-enter p1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iget-object v2, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->repeatLevel:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 87
    iget-object v0, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->counter:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 88
    iget-object v0, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->level:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    sget v2, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->MAX_LVL:I

    int-to-long v3, v2

    cmp-long v0, v0, v3

    if-lez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->level:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v1, v2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->repeatLevel:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->level:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {p0, v1}, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->acquireRepeatLevel(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 94
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 97
    new-instance p1, Ljava/lang/String;

    sget-object v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->MESSAGE_FOR_LOGGING:[B

    sget-object v1, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {p1, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 98
    sget-object v0, Lcom/itextpdf/commons/actions/processors/DefaultITextProductEventProcessor;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0, p1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 100
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    .line 94
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
