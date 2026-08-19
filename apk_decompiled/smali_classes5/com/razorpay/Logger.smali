.class public final Lcom/razorpay/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final l$1_I$l$:Ljava/lang/String; = "com.razorpay.checkout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;)V
    .locals 1

    .line 25
    sget-object v0, Lcom/razorpay/ConfigDroid;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 31
    sget-object v0, Lcom/razorpay/ConfigDroid;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method static e(Ljava/lang/String;)V
    .locals 1

    .line 45
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 49
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static i(Ljava/lang/String;)V
    .locals 1

    .line 9
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 13
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static v(Ljava/lang/String;)V
    .locals 1

    .line 17
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 21
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method static w(Ljava/lang/String;)V
    .locals 1

    .line 37
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 41
    const-string v0, "com.razorpay.checkout"

    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
