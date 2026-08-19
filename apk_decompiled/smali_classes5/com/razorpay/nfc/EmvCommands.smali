.class public final Lcom/razorpay/nfc/EmvCommands;
.super Ljava/lang/Object;
.source "EmvCommands.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u001b\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u0004J\u0016\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\u001fJ\u000e\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0006R\u0017\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00040\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\r\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u0006R\u0011\u0010\u000f\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006R\u0011\u0010\u0011\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0006R\u0011\u0010\u0013\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0006R\u0011\u0010\u0015\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0006R\u0011\u0010\u0017\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0006R\u0011\u0010\u0019\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0006\u00a8\u0006#"
    }
    d2 = {
        "Lcom/razorpay/nfc/EmvCommands;",
        "",
        "()V",
        "AMEX_AID",
        "",
        "getAMEX_AID",
        "()[B",
        "DINERS_DISCOVER_AID",
        "getDINERS_DISCOVER_AID",
        "KNOWN_AIDS",
        "",
        "getKNOWN_AIDS",
        "()Ljava/util/List;",
        "MASTERCARD_AID",
        "getMASTERCARD_AID",
        "RUPAY_AID",
        "getRUPAY_AID",
        "RUPAY_AID_ALT_1",
        "getRUPAY_AID_ALT_1",
        "RUPAY_AID_ALT_2",
        "getRUPAY_AID_ALT_2",
        "RUPAY_AID_ALT_3",
        "getRUPAY_AID_ALT_3",
        "SELECT_PPSE",
        "getSELECT_PPSE",
        "VISA_AID",
        "getVISA_AID",
        "getProcessingOptions",
        "pdolData",
        "readRecord",
        "record",
        "",
        "sfi",
        "selectAid",
        "aid",
        "core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final $I__I:[B

.field private static final $l$I1I11I1:[B

.field public static final INSTANCE:Lcom/razorpay/nfc/EmvCommands;

.field private static final I__1l:[B

.field private static final _$_l_$1l$:[B

.field private static final _1__:[B

.field private static final __l1_:[B

.field private static final _l_1l__:[B

.field private static final _llI:[B

.field private static final l$1_I$l$:[B

.field private static final lI_l1Il_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/razorpay/nfc/EmvCommands;

    invoke-direct {v0}, Lcom/razorpay/nfc/EmvCommands;-><init>()V

    sput-object v0, Lcom/razorpay/nfc/EmvCommands;->INSTANCE:Lcom/razorpay/nfc/EmvCommands;

    const/4 v0, 0x7

    .line 5
    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/razorpay/nfc/EmvCommands;->l$1_I$l$:[B

    .line 6
    new-array v2, v0, [B

    fill-array-data v2, :array_1

    sput-object v2, Lcom/razorpay/nfc/EmvCommands;->__l1_:[B

    .line 7
    new-array v3, v0, [B

    fill-array-data v3, :array_2

    sput-object v3, Lcom/razorpay/nfc/EmvCommands;->_llI:[B

    .line 8
    new-array v4, v0, [B

    fill-array-data v4, :array_3

    sput-object v4, Lcom/razorpay/nfc/EmvCommands;->_l_1l__:[B

    .line 10
    new-array v5, v0, [B

    fill-array-data v5, :array_4

    sput-object v5, Lcom/razorpay/nfc/EmvCommands;->I__1l:[B

    .line 11
    new-array v6, v0, [B

    fill-array-data v6, :array_5

    sput-object v6, Lcom/razorpay/nfc/EmvCommands;->_1__:[B

    .line 12
    new-array v7, v0, [B

    fill-array-data v7, :array_6

    sput-object v7, Lcom/razorpay/nfc/EmvCommands;->$I__I:[B

    .line 13
    new-array v8, v0, [B

    fill-array-data v8, :array_7

    sput-object v8, Lcom/razorpay/nfc/EmvCommands;->$l$I1I11I1:[B

    .line 23
    filled-new-array/range {v1 .. v8}, [[B

    move-result-object v0

    .line 16
    check-cast v0, [Ljava/lang/Object;

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/razorpay/nfc/EmvCommands;->lI_l1Il_:Ljava/util/List;

    const/16 v0, 0x14

    .line 28
    new-array v0, v0, [B

    fill-array-data v0, :array_8

    .line 26
    sput-object v0, Lcom/razorpay/nfc/EmvCommands;->_$_l_$1l$:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x3t
        0x10t
        0x10t
    .end array-data

    :array_1
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x4t
        0x10t
        0x10t
    .end array-data

    :array_2
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x0t
        0x25t
        0x1t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x1t
        0x52t
        0x30t
        0x10t
    .end array-data

    :array_4
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x5t
        0x24t
        0x10t
        0x10t
    .end array-data

    :array_5
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x5t
        0x24t
        0x20t
        0x10t
    .end array-data

    :array_6
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x5t
        0x24t
        0x30t
        0x10t
    .end array-data

    :array_7
    .array-data 1
        -0x60t
        0x0t
        0x0t
        0x5t
        0x24t
        0x40t
        0x10t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
        0xet
        0x32t
        0x50t
        0x41t
        0x59t
        0x2et
        0x53t
        0x59t
        0x53t
        0x2et
        0x44t
        0x44t
        0x46t
        0x30t
        0x31t
        0x0t
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getProcessingOptions$default(Lcom/razorpay/nfc/EmvCommands;[BILjava/lang/Object;)[B
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 47
    new-array p1, p1, [B

    :cond_0
    invoke-virtual {p0, p1}, Lcom/razorpay/nfc/EmvCommands;->getProcessingOptions([B)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAMEX_AID()[B
    .locals 1

    .line 7
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->_llI:[B

    return-object v0
.end method

.method public final getDINERS_DISCOVER_AID()[B
    .locals 1

    .line 8
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->_l_1l__:[B

    return-object v0
.end method

.method public final getKNOWN_AIDS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 15
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->lI_l1Il_:Ljava/util/List;

    return-object v0
.end method

.method public final getMASTERCARD_AID()[B
    .locals 1

    .line 6
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->__l1_:[B

    return-object v0
.end method

.method public final getProcessingOptions([B)[B
    .locals 6

    const-string v0, "pdolData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    array-length v0, p1

    int-to-byte v0, v0

    const/4 v1, 0x2

    new-array v2, v1, [B

    const/4 v3, 0x0

    const/16 v4, -0x7d

    aput-byte v4, v2, v3

    const/4 v4, 0x1

    aput-byte v0, v2, v4

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    .line 49
    array-length v0, p1

    int-to-byte v0, v0

    const/4 v2, 0x5

    .line 51
    new-array v2, v2, [B

    const/16 v5, -0x80

    aput-byte v5, v2, v3

    const/16 v5, -0x58

    aput-byte v5, v2, v4

    aput-byte v3, v2, v1

    const/4 v1, 0x3

    aput-byte v3, v2, v1

    const/4 v1, 0x4

    aput-byte v0, v2, v1

    .line 50
    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    invoke-static {p1, v3}, Lkotlin/collections/ArraysKt;->plus([BB)[B

    move-result-object p1

    return-object p1
.end method

.method public final getRUPAY_AID()[B
    .locals 1

    .line 10
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->I__1l:[B

    return-object v0
.end method

.method public final getRUPAY_AID_ALT_1()[B
    .locals 1

    .line 11
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->_1__:[B

    return-object v0
.end method

.method public final getRUPAY_AID_ALT_2()[B
    .locals 1

    .line 12
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->$I__I:[B

    return-object v0
.end method

.method public final getRUPAY_AID_ALT_3()[B
    .locals 1

    .line 13
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->$l$I1I11I1:[B

    return-object v0
.end method

.method public final getSELECT_PPSE()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->_$_l_$1l$:[B

    return-object v0
.end method

.method public final getVISA_AID()[B
    .locals 1

    .line 5
    sget-object v0, Lcom/razorpay/nfc/EmvCommands;->l$1_I$l$:[B

    return-object v0
.end method

.method public final readRecord(II)[B
    .locals 6

    const/4 v0, 0x3

    shl-int/2addr p2, v0

    const/4 v1, 0x4

    or-int/2addr p2, v1

    int-to-byte p1, p1

    int-to-byte p2, p2

    const/4 v2, 0x5

    .line 40
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v3, v2, v3

    const/16 v4, -0x4e

    const/4 v5, 0x1

    aput-byte v4, v2, v5

    const/4 v4, 0x2

    aput-byte p1, v2, v4

    aput-byte p2, v2, v0

    aput-byte v3, v2, v1

    return-object v2
.end method

.method public final selectAid([B)[B
    .locals 2

    const-string v0, "aid"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 33
    new-array v0, v0, [B

    fill-array-data v0, :array_0

    .line 34
    array-length v1, p1

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->plus([BB)[B

    move-result-object v0

    invoke-static {v0, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lkotlin/collections/ArraysKt;->plus([BB)[B

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x0t
        -0x5ct
        0x4t
        0x0t
    .end array-data
.end method
