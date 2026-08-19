.class public final synthetic Lcom/razorpay/LifecycleContext$WhenMappings;
.super Ljava/lang/Object;
.source "LifecycleContext.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/razorpay/LifecycleContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/razorpay/LifecycleContext;->values()[Lcom/razorpay/LifecycleContext;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/razorpay/LifecycleContext;->REDIRECTING_TO_APP:Lcom/razorpay/LifecycleContext;

    invoke-virtual {v1}, Lcom/razorpay/LifecycleContext;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/razorpay/LifecycleContext;->REDIRECTING_USING_SCHEME:Lcom/razorpay/LifecycleContext;

    invoke-virtual {v1}, Lcom/razorpay/LifecycleContext;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1

    sput-object v0, Lcom/razorpay/LifecycleContext$WhenMappings;->$EnumSwitchMapping$0:[I

    return-void
.end method
