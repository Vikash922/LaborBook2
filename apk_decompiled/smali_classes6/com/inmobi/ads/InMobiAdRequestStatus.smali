.class public final Lcom/inmobi/ads/InMobiAdRequestStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0010\u0018\u0000 \u00132\u00020\u0001:\u0002\u0014\u0015B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0017\u0010\u0008\u001a\u00020\u00002\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\rR(\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u00068\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/inmobi/ads/InMobiAdRequestStatus;",
        "",
        "Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;",
        "statusCode",
        "<init>",
        "(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V",
        "",
        "message",
        "setCustomMessage",
        "(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;",
        "a",
        "Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;",
        "getStatusCode",
        "()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;",
        "<set-?>",
        "b",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "Companion",
        "com/inmobi/media/U4",
        "StatusCode",
        "media_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final AD_ACTIVE_MESSAGE:Ljava/lang/String; = "The Ad Request could not be submitted as the user is viewing another Ad."

.field public static final Companion:Lcom/inmobi/media/U4;

.field public static final DEVICE_AUDIO_LEVEL_LOW:Ljava/lang/String; = "The Ad Request could not be processed as the device volume level is below threshold."

.field public static final FEATURE_DISABLED:Ljava/lang/String; = "The Ad Request could not be submitted as the Feature is disabled"

.field public static final REQUEST_INVALID_MESSAGE:Ljava/lang/String; = "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again"


# instance fields
.field public final a:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/inmobi/media/U4;

    invoke-direct {v0}, Lcom/inmobi/media/U4;-><init>()V

    sput-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus;->Companion:Lcom/inmobi/media/U4;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V
    .locals 2

    const-string v0, "statusCode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->a:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 8
    sget-object v0, Lcom/inmobi/ads/c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 34
    const-string v0, "InMobiAdRequestStatus"

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/16 :goto_0

    .line 35
    :pswitch_0
    const-string p1, "The Ad Request could not be processed as the device volume level is below threshold."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 36
    :pswitch_1
    const-string p1, "The Ad Request could not be submitted as the Feature is disabled"

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 37
    :pswitch_2
    const-string p1, "The app is running low on memory, hence resulting in failure"

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 38
    :pswitch_3
    const-string p1, "InMobi Ad Object is not configured properly Please check if setBannerSize(int widthInDp, int heightInDp) or setLayoutParams(<Layout_Params>) have been configured correctly"

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 39
    :pswitch_4
    const-string p1, "An API call is made from non-ui thread."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 40
    :pswitch_5
    const-string p1, "The Ad Request is terminated because monetization is disabled."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 41
    :pswitch_6
    const-string p1, "Null or empty response as parameter is not allowed in load(response)."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 42
    :pswitch_7
    const-string p1, "An ad load is already in progress, load(response) call in this state is not allowed."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 43
    :pswitch_8
    const-string p1, "An ad load is already in progress, getSignals() call in this state is not allowed."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 44
    :pswitch_9
    const-string p1, "Network Request dropped as current request is not GDPR compliant."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 45
    :pswitch_a
    const-string p1, "The SDK rejected the ad load request. Multiple load() call on the same object is not allowed if the previous ad request was successful."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 46
    :pswitch_b
    const-string p1, "The SDK rejected the ad request as one or more required dependencies could not be found. Please ensure you have included the required dependencies."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 47
    :pswitch_c
    const-string p1, "An ad is no longer available. Please call load() to fetch a fresh ad."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 48
    :pswitch_d
    const-string p1, "The Ad Request cannot be done so frequently. Please wait for some time before loading another ad."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 49
    :pswitch_e
    const-string p1, "The Ad Request could not be submitted as the user is viewing another Ad."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 50
    :pswitch_f
    const-string p1, "Ad request successful but no ad served."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 51
    :pswitch_10
    const-string p1, "The Ad Server encountered an error when processing the ad request. This may be a transient issue. Please try again in a few minutes"

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 52
    :pswitch_11
    const-string p1, "The Ad Request timed out waiting for a response from the network. This can be caused due to a bad network connection. Please try again after a few minutes."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 53
    :pswitch_12
    const-string p1, "The SDK is pending response to a previous ad request. Please wait for the previous ad request to complete before requesting for another ad."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 54
    :pswitch_13
    const-string p1, "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again"

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 55
    :pswitch_14
    const-string p1, "The Internet is unreachable. Please check your Internet connection."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    goto :goto_0

    .line 56
    :pswitch_15
    const-string p1, "The InMobi SDK encountered an internal error."

    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->a:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    return-object v0
.end method

.method public final setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    :cond_0
    return-object p0
.end method
