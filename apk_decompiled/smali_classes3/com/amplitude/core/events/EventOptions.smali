.class public Lcom/amplitude/core/events/EventOptions;
.super Ljava/lang/Object;
.source "EventOptions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000`\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000e\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u001d\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0006\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008)\u0008\u0016\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001c\u0010\t\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001c\u0010\u000c\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u0006\"\u0004\u0008\u000e\u0010\u0008R\u001c\u0010\u000f\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0006\"\u0004\u0008\u0011\u0010\u0008R\u001a\u0010\u0012\u001a\u00020\u0013X\u0080\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017RX\u0010\u0018\u001a@\u0012\u0004\u0012\u00020\u001a\u0012\u0013\u0012\u00110\u0013\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001d\u0012\u0013\u0012\u00110\u0004\u00a2\u0006\u000c\u0008\u001b\u0012\u0008\u0008\u001c\u0012\u0004\u0008\u0008(\u001e\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u0019j\u0004\u0018\u0001` X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001c\u0010%\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\u0006\"\u0004\u0008\'\u0010\u0008R\u001c\u0010(\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008)\u0010\u0006\"\u0004\u0008*\u0010\u0008R\u001c\u0010+\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008,\u0010\u0006\"\u0004\u0008-\u0010\u0008R\u001c\u0010.\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010\u0006\"\u0004\u00080\u0010\u0008R\u001c\u00101\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\u0006\"\u0004\u00083\u0010\u0008R\u001c\u00104\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0006\"\u0004\u00086\u0010\u0008R\u001c\u00107\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0006\"\u0004\u00089\u0010\u0008R\u001c\u0010:\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008;\u0010\u0006\"\u0004\u0008<\u0010\u0008R\u001e\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010C\u001a\u0004\u0008?\u0010@\"\u0004\u0008A\u0010BR(\u0010D\u001a\u0010\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001\u0018\u00010EX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008F\u0010G\"\u0004\u0008H\u0010IR\u001c\u0010J\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008K\u0010\u0006\"\u0004\u0008L\u0010\u0008R\u001c\u0010M\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008N\u0010\u0006\"\u0004\u0008O\u0010\u0008R\u001c\u0010P\u001a\u0004\u0018\u00010QX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008R\u0010S\"\u0004\u0008T\u0010UR\u001c\u0010V\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008W\u0010\u0006\"\u0004\u0008X\u0010\u0008R\u001c\u0010Y\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008Z\u0010\u0006\"\u0004\u0008[\u0010\u0008R\u001c\u0010\\\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008]\u0010\u0006\"\u0004\u0008^\u0010\u0008R\u001c\u0010_\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008`\u0010\u0006\"\u0004\u0008a\u0010\u0008R\u001e\u0010b\u001a\u0004\u0018\u00010cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010h\u001a\u0004\u0008d\u0010e\"\u0004\u0008f\u0010gR\u001e\u0010i\u001a\u0004\u0018\u00010cX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010h\u001a\u0004\u0008j\u0010e\"\u0004\u0008k\u0010gR\u001c\u0010l\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008m\u0010\u0006\"\u0004\u0008n\u0010\u0008R\u001c\u0010o\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008p\u0010\u0006\"\u0004\u0008q\u0010\u0008R\u001c\u0010r\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008s\u0010\u0006\"\u0004\u0008t\u0010\u0008R\u001c\u0010u\u001a\u0004\u0018\u00010vX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008w\u0010x\"\u0004\u0008y\u0010zR\u001c\u0010{\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008|\u0010\u0006\"\u0004\u0008}\u0010\u0008R\u001f\u0010~\u001a\u0004\u0018\u00010cX\u0086\u000e\u00a2\u0006\u0011\n\u0002\u0010h\u001a\u0004\u0008\u007f\u0010e\"\u0005\u0008\u0080\u0001\u0010gR\u001f\u0010\u0081\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0082\u0001\u0010\u0006\"\u0005\u0008\u0083\u0001\u0010\u0008R$\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u0015\n\u0003\u0010\u0089\u0001\u001a\u0006\u0008\u0085\u0001\u0010\u0086\u0001\"\u0006\u0008\u0087\u0001\u0010\u0088\u0001R\u001f\u0010\u008a\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u008b\u0001\u0010\u0006\"\u0005\u0008\u008c\u0001\u0010\u0008R!\u0010\u008d\u0001\u001a\u0004\u0018\u00010cX\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010h\u001a\u0005\u0008\u008e\u0001\u0010e\"\u0005\u0008\u008f\u0001\u0010gR\u001f\u0010\u0090\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u0091\u0001\u0010\u0006\"\u0005\u0008\u0092\u0001\u0010\u0008R!\u0010\u0093\u0001\u001a\u0004\u0018\u00010>X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010C\u001a\u0005\u0008\u0094\u0001\u0010@\"\u0005\u0008\u0095\u0001\u0010BR!\u0010\u0096\u0001\u001a\u0004\u0018\u00010>X\u0086\u000e\u00a2\u0006\u0012\n\u0002\u0010C\u001a\u0005\u0008\u0097\u0001\u0010@\"\u0005\u0008\u0098\u0001\u0010BR\u001f\u0010\u0099\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009a\u0001\u0010\u0006\"\u0005\u0008\u009b\u0001\u0010\u0008R\u001f\u0010\u009c\u0001\u001a\u0004\u0018\u00010\u0004X\u0086\u000e\u00a2\u0006\u0010\n\u0000\u001a\u0005\u0008\u009d\u0001\u0010\u0006\"\u0005\u0008\u009e\u0001\u0010\u0008\u00a8\u0006\u009f\u0001"
    }
    d2 = {
        "Lcom/amplitude/core/events/EventOptions;",
        "",
        "()V",
        "adid",
        "",
        "getAdid",
        "()Ljava/lang/String;",
        "setAdid",
        "(Ljava/lang/String;)V",
        "androidId",
        "getAndroidId",
        "setAndroidId",
        "appSetId",
        "getAppSetId",
        "setAppSetId",
        "appVersion",
        "getAppVersion",
        "setAppVersion",
        "attempts",
        "",
        "getAttempts$core",
        "()I",
        "setAttempts$core",
        "(I)V",
        "callback",
        "Lkotlin/Function3;",
        "Lcom/amplitude/core/events/BaseEvent;",
        "Lkotlin/ParameterName;",
        "name",
        "status",
        "message",
        "",
        "Lcom/amplitude/core/EventCallBack;",
        "getCallback",
        "()Lkotlin/jvm/functions/Function3;",
        "setCallback",
        "(Lkotlin/jvm/functions/Function3;)V",
        "carrier",
        "getCarrier",
        "setCarrier",
        "city",
        "getCity",
        "setCity",
        "country",
        "getCountry",
        "setCountry",
        "deviceBrand",
        "getDeviceBrand",
        "setDeviceBrand",
        "deviceId",
        "getDeviceId",
        "setDeviceId",
        "deviceManufacturer",
        "getDeviceManufacturer",
        "setDeviceManufacturer",
        "deviceModel",
        "getDeviceModel",
        "setDeviceModel",
        "dma",
        "getDma",
        "setDma",
        "eventId",
        "",
        "getEventId",
        "()Ljava/lang/Long;",
        "setEventId",
        "(Ljava/lang/Long;)V",
        "Ljava/lang/Long;",
        "extra",
        "",
        "getExtra",
        "()Ljava/util/Map;",
        "setExtra",
        "(Ljava/util/Map;)V",
        "idfa",
        "getIdfa",
        "setIdfa",
        "idfv",
        "getIdfv",
        "setIdfv",
        "ingestionMetadata",
        "Lcom/amplitude/core/events/IngestionMetadata;",
        "getIngestionMetadata",
        "()Lcom/amplitude/core/events/IngestionMetadata;",
        "setIngestionMetadata",
        "(Lcom/amplitude/core/events/IngestionMetadata;)V",
        "insertId",
        "getInsertId",
        "setInsertId",
        "ip",
        "getIp",
        "setIp",
        "language",
        "getLanguage",
        "setLanguage",
        "library",
        "getLibrary",
        "setLibrary",
        "locationLat",
        "",
        "getLocationLat",
        "()Ljava/lang/Double;",
        "setLocationLat",
        "(Ljava/lang/Double;)V",
        "Ljava/lang/Double;",
        "locationLng",
        "getLocationLng",
        "setLocationLng",
        "osName",
        "getOsName",
        "setOsName",
        "osVersion",
        "getOsVersion",
        "setOsVersion",
        "partnerId",
        "getPartnerId",
        "setPartnerId",
        "plan",
        "Lcom/amplitude/core/events/Plan;",
        "getPlan",
        "()Lcom/amplitude/core/events/Plan;",
        "setPlan",
        "(Lcom/amplitude/core/events/Plan;)V",
        "platform",
        "getPlatform",
        "setPlatform",
        "price",
        "getPrice",
        "setPrice",
        "productId",
        "getProductId",
        "setProductId",
        "quantity",
        "getQuantity",
        "()Ljava/lang/Integer;",
        "setQuantity",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "region",
        "getRegion",
        "setRegion",
        "revenue",
        "getRevenue",
        "setRevenue",
        "revenueType",
        "getRevenueType",
        "setRevenueType",
        "sessionId",
        "getSessionId",
        "setSessionId",
        "timestamp",
        "getTimestamp",
        "setTimestamp",
        "userId",
        "getUserId",
        "setUserId",
        "versionName",
        "getVersionName",
        "setVersionName",
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


# instance fields
.field private adid:Ljava/lang/String;

.field private androidId:Ljava/lang/String;

.field private appSetId:Ljava/lang/String;

.field private appVersion:Ljava/lang/String;

.field private attempts:I

.field private callback:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/amplitude/core/events/BaseEvent;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private carrier:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private deviceBrand:Ljava/lang/String;

.field private deviceId:Ljava/lang/String;

.field private deviceManufacturer:Ljava/lang/String;

.field private deviceModel:Ljava/lang/String;

.field private dma:Ljava/lang/String;

.field private eventId:Ljava/lang/Long;

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private idfa:Ljava/lang/String;

.field private idfv:Ljava/lang/String;

.field private ingestionMetadata:Lcom/amplitude/core/events/IngestionMetadata;

.field private insertId:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private library:Ljava/lang/String;

.field private locationLat:Ljava/lang/Double;

.field private locationLng:Ljava/lang/Double;

.field private osName:Ljava/lang/String;

.field private osVersion:Ljava/lang/String;

.field private partnerId:Ljava/lang/String;

.field private plan:Lcom/amplitude/core/events/Plan;

.field private platform:Ljava/lang/String;

.field private price:Ljava/lang/Double;

.field private productId:Ljava/lang/String;

.field private quantity:Ljava/lang/Integer;

.field private region:Ljava/lang/String;

.field private revenue:Ljava/lang/Double;

.field private revenueType:Ljava/lang/String;

.field private sessionId:Ljava/lang/Long;

.field private timestamp:Ljava/lang/Long;

.field private userId:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAdid()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->adid:Ljava/lang/String;

    return-object v0
.end method

.method public final getAndroidId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->androidId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppSetId()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->appSetId:Ljava/lang/String;

    return-object v0
.end method

.method public final getAppVersion()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->appVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getAttempts$core()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/amplitude/core/events/EventOptions;->attempts:I

    return v0
.end method

.method public final getCallback()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/amplitude/core/events/BaseEvent;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->callback:Lkotlin/jvm/functions/Function3;

    return-object v0
.end method

.method public final getCarrier()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->carrier:Ljava/lang/String;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->city:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountry()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->country:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceBrand()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->deviceBrand:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->deviceManufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->deviceModel:Ljava/lang/String;

    return-object v0
.end method

.method public final getDma()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->dma:Ljava/lang/String;

    return-object v0
.end method

.method public final getEventId()Ljava/lang/Long;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->eventId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getExtra()Ljava/util/Map;
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

    .line 42
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public final getIdfa()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->idfa:Ljava/lang/String;

    return-object v0
.end method

.method public final getIdfv()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->idfv:Ljava/lang/String;

    return-object v0
.end method

.method public final getIngestionMetadata()Lcom/amplitude/core/events/IngestionMetadata;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->ingestionMetadata:Lcom/amplitude/core/events/IngestionMetadata;

    return-object v0
.end method

.method public final getInsertId()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->insertId:Ljava/lang/String;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->language:Ljava/lang/String;

    return-object v0
.end method

.method public final getLibrary()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->library:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocationLat()Ljava/lang/Double;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->locationLat:Ljava/lang/Double;

    return-object v0
.end method

.method public final getLocationLng()Ljava/lang/Double;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->locationLng:Ljava/lang/Double;

    return-object v0
.end method

.method public final getOsName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->osName:Ljava/lang/String;

    return-object v0
.end method

.method public final getOsVersion()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->osVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getPartnerId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->partnerId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPlan()Lcom/amplitude/core/events/Plan;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->plan:Lcom/amplitude/core/events/Plan;

    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()Ljava/lang/Double;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->price:Ljava/lang/Double;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getQuantity()Ljava/lang/Integer;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->quantity:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getRegion()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->region:Ljava/lang/String;

    return-object v0
.end method

.method public final getRevenue()Ljava/lang/Double;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->revenue:Ljava/lang/Double;

    return-object v0
.end method

.method public final getRevenueType()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->revenueType:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/Long;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->sessionId:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTimestamp()Ljava/lang/Long;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->timestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVersionName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/amplitude/core/events/EventOptions;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public final setAdid(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->adid:Ljava/lang/String;

    return-void
.end method

.method public final setAndroidId(Ljava/lang/String;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->androidId:Ljava/lang/String;

    return-void
.end method

.method public final setAppSetId(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->appSetId:Ljava/lang/String;

    return-void
.end method

.method public final setAppVersion(Ljava/lang/String;)V
    .locals 0

    .line 14
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->appVersion:Ljava/lang/String;

    return-void
.end method

.method public final setAttempts$core(I)V
    .locals 0

    .line 45
    iput p1, p0, Lcom/amplitude/core/events/EventOptions;->attempts:I

    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/amplitude/core/events/BaseEvent;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->callback:Lkotlin/jvm/functions/Function3;

    return-void
.end method

.method public final setCarrier(Ljava/lang/String;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->carrier:Ljava/lang/String;

    return-void
.end method

.method public final setCity(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->city:Ljava/lang/String;

    return-void
.end method

.method public final setCountry(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->country:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceBrand(Ljava/lang/String;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->deviceBrand:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceId(Ljava/lang/String;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->deviceId:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceManufacturer(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->deviceManufacturer:Ljava/lang/String;

    return-void
.end method

.method public final setDeviceModel(Ljava/lang/String;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->deviceModel:Ljava/lang/String;

    return-void
.end method

.method public final setDma(Ljava/lang/String;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->dma:Ljava/lang/String;

    return-void
.end method

.method public final setEventId(Ljava/lang/Long;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->eventId:Ljava/lang/Long;

    return-void
.end method

.method public final setExtra(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->extra:Ljava/util/Map;

    return-void
.end method

.method public final setIdfa(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->idfa:Ljava/lang/String;

    return-void
.end method

.method public final setIdfv(Ljava/lang/String;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->idfv:Ljava/lang/String;

    return-void
.end method

.method public final setIngestionMetadata(Lcom/amplitude/core/events/IngestionMetadata;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->ingestionMetadata:Lcom/amplitude/core/events/IngestionMetadata;

    return-void
.end method

.method public final setInsertId(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->insertId:Ljava/lang/String;

    return-void
.end method

.method public final setIp(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->ip:Ljava/lang/String;

    return-void
.end method

.method public final setLanguage(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->language:Ljava/lang/String;

    return-void
.end method

.method public final setLibrary(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->library:Ljava/lang/String;

    return-void
.end method

.method public final setLocationLat(Ljava/lang/Double;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->locationLat:Ljava/lang/Double;

    return-void
.end method

.method public final setLocationLng(Ljava/lang/Double;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->locationLng:Ljava/lang/Double;

    return-void
.end method

.method public final setOsName(Ljava/lang/String;)V
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->osName:Ljava/lang/String;

    return-void
.end method

.method public final setOsVersion(Ljava/lang/String;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->osVersion:Ljava/lang/String;

    return-void
.end method

.method public final setPartnerId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->partnerId:Ljava/lang/String;

    return-void
.end method

.method public final setPlan(Lcom/amplitude/core/events/Plan;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->plan:Lcom/amplitude/core/events/Plan;

    return-void
.end method

.method public final setPlatform(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->platform:Ljava/lang/String;

    return-void
.end method

.method public final setPrice(Ljava/lang/Double;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->price:Ljava/lang/Double;

    return-void
.end method

.method public final setProductId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->productId:Ljava/lang/String;

    return-void
.end method

.method public final setQuantity(Ljava/lang/Integer;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->quantity:Ljava/lang/Integer;

    return-void
.end method

.method public final setRegion(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->region:Ljava/lang/String;

    return-void
.end method

.method public final setRevenue(Ljava/lang/Double;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->revenue:Ljava/lang/Double;

    return-void
.end method

.method public final setRevenueType(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->revenueType:Ljava/lang/String;

    return-void
.end method

.method public final setSessionId(Ljava/lang/Long;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->sessionId:Ljava/lang/Long;

    return-void
.end method

.method public final setTimestamp(Ljava/lang/Long;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->timestamp:Ljava/lang/Long;

    return-void
.end method

.method public final setUserId(Ljava/lang/String;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->userId:Ljava/lang/String;

    return-void
.end method

.method public final setVersionName(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/amplitude/core/events/EventOptions;->versionName:Ljava/lang/String;

    return-void
.end method
