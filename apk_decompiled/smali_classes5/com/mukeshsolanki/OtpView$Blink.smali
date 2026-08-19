.class Lcom/mukeshsolanki/OtpView$Blink;
.super Ljava/lang/Object;
.source "OtpView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mukeshsolanki/OtpView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Blink"
.end annotation


# instance fields
.field private cancelled:Z

.field final synthetic this$0:Lcom/mukeshsolanki/OtpView;


# direct methods
.method private constructor <init>(Lcom/mukeshsolanki/OtpView;)V
    .locals 0

    .line 1045
    iput-object p1, p0, Lcom/mukeshsolanki/OtpView$Blink;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mukeshsolanki/OtpView;Lcom/mukeshsolanki/OtpView$1;)V
    .locals 0

    .line 1045
    invoke-direct {p0, p1}, Lcom/mukeshsolanki/OtpView$Blink;-><init>(Lcom/mukeshsolanki/OtpView;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mukeshsolanki/OtpView$Blink;)V
    .locals 0

    .line 1045
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView$Blink;->cancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/mukeshsolanki/OtpView$Blink;)V
    .locals 0

    .line 1045
    invoke-direct {p0}, Lcom/mukeshsolanki/OtpView$Blink;->unCancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .line 1063
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->cancelled:Z

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-virtual {v0, p0}, Lcom/mukeshsolanki/OtpView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 1065
    iput-boolean v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->cancelled:Z

    :cond_0
    return-void
.end method

.method private unCancel()V
    .locals 1

    const/4 v0, 0x0

    .line 1070
    iput-boolean v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->cancelled:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1050
    iget-boolean v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->cancelled:Z

    if-eqz v0, :cond_0

    return-void

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-virtual {v0, p0}, Lcom/mukeshsolanki/OtpView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1056
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-static {v0}, Lcom/mukeshsolanki/OtpView;->access$400(Lcom/mukeshsolanki/OtpView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1057
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->this$0:Lcom/mukeshsolanki/OtpView;

    invoke-static {v0}, Lcom/mukeshsolanki/OtpView;->access$500(Lcom/mukeshsolanki/OtpView;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/mukeshsolanki/OtpView;->access$600(Lcom/mukeshsolanki/OtpView;Z)V

    .line 1058
    iget-object v0, p0, Lcom/mukeshsolanki/OtpView$Blink;->this$0:Lcom/mukeshsolanki/OtpView;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Lcom/mukeshsolanki/OtpView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
