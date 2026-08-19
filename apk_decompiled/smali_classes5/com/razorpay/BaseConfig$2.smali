.class Lcom/razorpay/BaseConfig$2;
.super Ljava/lang/Object;
.source "BaseConfig.java"

# interfaces
.implements Lcom/razorpay/AdvertisingIdUtil$AdvertisingIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/razorpay/BaseConfig;->getAdvertisingIdFromUtil(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 453
    iput-object p1, p0, Lcom/razorpay/BaseConfig$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/String;)V
    .locals 1

    .line 456
    iget-object v0, p0, Lcom/razorpay/BaseConfig$2;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/razorpay/BaseConfig;->access$200(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
