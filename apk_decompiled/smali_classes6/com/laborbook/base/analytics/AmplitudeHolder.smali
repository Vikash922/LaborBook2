.class public final Lcom/laborbook/base/analytics/AmplitudeHolder;
.super Ljava/lang/Object;
.source "AmplitudeHolder.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/base/analytics/AmplitudeHolder;",
        "",
        "<init>",
        "()V",
        "instance",
        "Lcom/amplitude/android/Amplitude;",
        "getInstance",
        "()Lcom/amplitude/android/Amplitude;",
        "setInstance",
        "(Lcom/amplitude/android/Amplitude;)V",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

.field public static instance:Lcom/amplitude/android/Amplitude;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/base/analytics/AmplitudeHolder;

    invoke-direct {v0}, Lcom/laborbook/base/analytics/AmplitudeHolder;-><init>()V

    sput-object v0, Lcom/laborbook/base/analytics/AmplitudeHolder;->INSTANCE:Lcom/laborbook/base/analytics/AmplitudeHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/amplitude/android/Amplitude;
    .locals 1

    .line 6
    sget-object v0, Lcom/laborbook/base/analytics/AmplitudeHolder;->instance:Lcom/amplitude/android/Amplitude;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "instance"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final setInstance(Lcom/amplitude/android/Amplitude;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sput-object p1, Lcom/laborbook/base/analytics/AmplitudeHolder;->instance:Lcom/amplitude/android/Amplitude;

    return-void
.end method
