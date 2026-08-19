.class public final Lcom/amplitude/core/Constants;
.super Ljava/lang/Object;
.source "Constants.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000cX\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/amplitude/core/Constants;",
        "",
        "()V",
        "AMP_REVENUE_EVENT",
        "",
        "BATCH_API_HOST",
        "DEFAULT_API_HOST",
        "EU_BATCH_API_HOST",
        "EU_DEFAULT_API_HOST",
        "GROUP_IDENTIFY_EVENT",
        "IDENTIFY_EVENT",
        "MAX_PROPERTY_KEYS",
        "",
        "MAX_STRING_LENGTH",
        "SDK_LIBRARY",
        "SDK_VERSION",
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
.field public static final AMP_REVENUE_EVENT:Ljava/lang/String; = "revenue_amount"

.field public static final BATCH_API_HOST:Ljava/lang/String; = "https://api2.amplitude.com/batch"

.field public static final DEFAULT_API_HOST:Ljava/lang/String; = "https://api2.amplitude.com/2/httpapi"

.field public static final EU_BATCH_API_HOST:Ljava/lang/String; = "https://api.eu.amplitude.com/batch"

.field public static final EU_DEFAULT_API_HOST:Ljava/lang/String; = "https://api.eu.amplitude.com/2/httpapi"

.field public static final GROUP_IDENTIFY_EVENT:Ljava/lang/String; = "$groupidentify"

.field public static final IDENTIFY_EVENT:Ljava/lang/String; = "$identify"

.field public static final INSTANCE:Lcom/amplitude/core/Constants;

.field public static final MAX_PROPERTY_KEYS:I = 0x400

.field public static final MAX_STRING_LENGTH:I = 0x400

.field public static final SDK_LIBRARY:Ljava/lang/String; = "amplitude-kotlin"

.field public static final SDK_VERSION:Ljava/lang/String; = "0.0.1"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/core/Constants;

    invoke-direct {v0}, Lcom/amplitude/core/Constants;-><init>()V

    sput-object v0, Lcom/amplitude/core/Constants;->INSTANCE:Lcom/amplitude/core/Constants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
