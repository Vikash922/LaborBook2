.class final Lcom/razorpay/nfc/NfcHelper$Tlv;
.super Ljava/lang/Object;
.source "NfcHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/nfc/NfcHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Tlv"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0013\u0008\u0082\u0008\u0018\u00002\u00020\u0001B%\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\tH\u00c6\u0003J1\u0010\u0017\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u00c6\u0001J\u0013\u0010\u0018\u001a\u00020\t2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/razorpay/nfc/NfcHelper$Tlv;",
        "",
        "tag",
        "",
        "length",
        "",
        "value",
        "",
        "constructed",
        "",
        "(Ljava/lang/String;I[BZ)V",
        "getConstructed",
        "()Z",
        "getLength",
        "()I",
        "getTag",
        "()Ljava/lang/String;",
        "getValue",
        "()[B",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final __l1_:I

.field private final _l_1l__:Z

.field private final _llI:[B

.field private final l$1_I$l$:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I[BZ)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    iput p2, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    iput-object p3, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    iput-boolean p4, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/razorpay/nfc/NfcHelper$Tlv;Ljava/lang/String;I[BZILjava/lang/Object;)Lcom/razorpay/nfc/NfcHelper$Tlv;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget p2, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-boolean p4, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/razorpay/nfc/NfcHelper$Tlv;->copy(Ljava/lang/String;I[BZ)Lcom/razorpay/nfc/NfcHelper$Tlv;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    return v0
.end method

.method public final component3()[B
    .locals 1

    iget-object v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    return v0
.end method

.method public final copy(Ljava/lang/String;I[BZ)Lcom/razorpay/nfc/NfcHelper$Tlv;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/razorpay/nfc/NfcHelper$Tlv;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/razorpay/nfc/NfcHelper$Tlv;-><init>(Ljava/lang/String;I[BZ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/razorpay/nfc/NfcHelper$Tlv;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/razorpay/nfc/NfcHelper$Tlv;

    iget-object v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    iget-object v3, p1, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    iget v3, p1, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    iget-object v3, p1, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    iget-boolean p1, p1, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    if-eq v1, p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getConstructed()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    return v0
.end method

.method public final getLength()I
    .locals 1

    .line 13
    iget v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    return v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    return-object v0
.end method

.method public final getValue()[B
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Tlv(tag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->l$1_I$l$:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->__l1_:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_llI:[B

    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", constructed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/razorpay/nfc/NfcHelper$Tlv;->_l_1l__:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
