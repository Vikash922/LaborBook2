.class public interface abstract Lcom/razorpay/ValidationListener;
.super Ljava/lang/Object;
.source "ValidationListener.java"


# virtual methods
.method public abstract onValidationError(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onValidationSuccess()V
.end method
