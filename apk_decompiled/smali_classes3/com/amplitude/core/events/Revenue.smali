.class public Lcom/amplitude/core/events/Revenue;
.super Ljava/lang/Object;
.source "Revenue.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amplitude/core/events/Revenue$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRevenue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Revenue.kt\ncom/amplitude/core/events/Revenue\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,107:1\n1#2:108\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010%\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0012\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0016\u0018\u0000 .2\u00020\u0001:\u0001.B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010)\u001a\u00020*J\u0016\u0010\u001f\u001a\u00020\u00002\u0006\u0010\u001d\u001a\u00020\u000b2\u0006\u0010+\u001a\u00020\u000bJ\u0006\u0010,\u001a\u00020-R*\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR(\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u000b@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010R*\u0010\u0011\u001a\u0012\u0012\u0004\u0012\u00020\u000b\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0012X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R$\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0017@FX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001c\u0010\u001d\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u000e\"\u0004\u0008\u001f\u0010\u0010R\u001c\u0010 \u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\u000e\"\u0004\u0008\"\u0010\u0010R*\u0010#\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0004@FX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\n\u001a\u0004\u0008$\u0010\u0007\"\u0004\u0008%\u0010\tR\u001c\u0010&\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\'\u0010\u000e\"\u0004\u0008(\u0010\u0010\u00a8\u0006/"
    }
    d2 = {
        "Lcom/amplitude/core/events/Revenue;",
        "",
        "()V",
        "value",
        "",
        "price",
        "getPrice",
        "()Ljava/lang/Double;",
        "setPrice",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "",
        "productId",
        "getProductId",
        "()Ljava/lang/String;",
        "setProductId",
        "(Ljava/lang/String;)V",
        "properties",
        "",
        "getProperties",
        "()Ljava/util/Map;",
        "setProperties",
        "(Ljava/util/Map;)V",
        "",
        "quantity",
        "getQuantity",
        "()I",
        "setQuantity",
        "(I)V",
        "receipt",
        "getReceipt",
        "setReceipt",
        "receiptSig",
        "getReceiptSig",
        "setReceiptSig",
        "revenue",
        "getRevenue",
        "setRevenue",
        "revenueType",
        "getRevenueType",
        "setRevenueType",
        "isValid",
        "",
        "receiptSignature",
        "toRevenueEvent",
        "Lcom/amplitude/core/events/RevenueEvent;",
        "Companion",
        "core"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/amplitude/core/events/Revenue$Companion;

.field public static final REVENUE:Ljava/lang/String; = "$revenue"

.field public static final REVENUE_PRICE:Ljava/lang/String; = "$price"

.field public static final REVENUE_PRODUCT_ID:Ljava/lang/String; = "$productId"

.field public static final REVENUE_QUANTITY:Ljava/lang/String; = "$quantity"

.field public static final REVENUE_RECEIPT:Ljava/lang/String; = "$receipt"

.field public static final REVENUE_RECEIPT_SIG:Ljava/lang/String; = "$receiptSig"

.field public static final REVENUE_TYPE:Ljava/lang/String; = "$revenueType"


# instance fields
.field private price:Ljava/lang/Double;

.field private productId:Ljava/lang/String;

.field private properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private quantity:I

.field private receipt:Ljava/lang/String;

.field private receiptSig:Ljava/lang/String;

.field private revenue:Ljava/lang/Double;

.field private revenueType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amplitude/core/events/Revenue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amplitude/core/events/Revenue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amplitude/core/events/Revenue;->Companion:Lcom/amplitude/core/events/Revenue$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 17
    iput v0, p0, Lcom/amplitude/core/events/Revenue;->quantity:I

    return-void
.end method


# virtual methods
.method public final getPrice()Ljava/lang/Double;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public final getQuantity()I
    .locals 1

    .line 17
    iget v0, p0, Lcom/amplitude/core/events/Revenue;->quantity:I

    return v0
.end method

.method public final getReceipt()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->receipt:Ljava/lang/String;

    return-object v0
.end method

.method public final getReceiptSig()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->receiptSig:Ljava/lang/String;

    return-object v0
.end method

.method public final getRevenue()Ljava/lang/Double;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRevenueType()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->revenueType:Ljava/lang/String;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amplitude/core/events/Revenue;->price:Ljava/lang/Double;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final setPrice(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 29
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 30
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->price:Ljava/lang/Double;

    :goto_0
    return-void
.end method

.method public final setProductId(Ljava/lang/String;)V
    .locals 1

    .line 9
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->productId:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public final setProperties(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->properties:Ljava/util/Map;

    return-void
.end method

.method public final setQuantity(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 20
    iput p1, p0, Lcom/amplitude/core/events/Revenue;->quantity:I

    :cond_0
    return-void
.end method

.method public final setReceipt(Ljava/lang/String;Ljava/lang/String;)Lcom/amplitude/core/events/Revenue;
    .locals 1

    const-string v0, "receipt"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "receiptSignature"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->receipt:Ljava/lang/String;

    .line 79
    iput-object p2, p0, Lcom/amplitude/core/events/Revenue;->receiptSig:Ljava/lang/String;

    return-object p0
.end method

.method public final setReceipt(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->receipt:Ljava/lang/String;

    return-void
.end method

.method public final setReceiptSig(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->receiptSig:Ljava/lang/String;

    return-void
.end method

.method public final setRevenue(Ljava/lang/Double;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    .line 60
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->revenue:Ljava/lang/Double;

    :goto_0
    return-void
.end method

.method public final setRevenueType(Ljava/lang/String;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amplitude/core/events/Revenue;->revenueType:Ljava/lang/String;

    return-void
.end method

.method public final toRevenueEvent()Lcom/amplitude/core/events/RevenueEvent;
    .locals 5

    .line 94
    new-instance v0, Lcom/amplitude/core/events/RevenueEvent;

    invoke-direct {v0}, Lcom/amplitude/core/events/RevenueEvent;-><init>()V

    .line 95
    iget-object v1, p0, Lcom/amplitude/core/events/Revenue;->properties:Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v1, Ljava/util/Map;

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/amplitude/core/events/Revenue;->productId:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v3, "$productId"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_0
    iget v2, p0, Lcom/amplitude/core/events/Revenue;->quantity:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "$quantity"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, Lcom/amplitude/core/events/Revenue;->price:Ljava/lang/Double;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-string v4, "$price"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    :goto_1
    iget-object v2, p0, Lcom/amplitude/core/events/Revenue;->revenueType:Ljava/lang/String;

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    const-string v3, "$revenueType"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_2
    iget-object v2, p0, Lcom/amplitude/core/events/Revenue;->receipt:Ljava/lang/String;

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    const-string v3, "$receipt"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :goto_3
    iget-object v2, p0, Lcom/amplitude/core/events/Revenue;->receiptSig:Ljava/lang/String;

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    const-string v3, "$receiptSig"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :goto_4
    iget-object v2, p0, Lcom/amplitude/core/events/Revenue;->revenue:Ljava/lang/Double;

    if-nez v2, :cond_6

    goto :goto_5

    :cond_6
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v2

    const-string v4, "$revenue"

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    :goto_5
    invoke-virtual {v0, v1}, Lcom/amplitude/core/events/RevenueEvent;->setEventProperties(Ljava/util/Map;)V

    return-object v0
.end method
