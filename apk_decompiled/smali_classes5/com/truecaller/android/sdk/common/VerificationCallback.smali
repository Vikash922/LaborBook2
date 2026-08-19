.class public interface abstract Lcom/truecaller/android/sdk/common/VerificationCallback;
.super Ljava/lang/Object;
.source "VerificationCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/android/sdk/common/VerificationCallback$CallbackType;
    }
.end annotation


# static fields
.field public static final TYPE_IM_OTP_INITIATED:I = 0x9

.field public static final TYPE_IM_OTP_RECEIVED:I = 0xa

.field public static final TYPE_MISSED_CALL_INITIATED:I = 0x3

.field public static final TYPE_MISSED_CALL_RECEIVED:I = 0x4

.field public static final TYPE_OTP_INITIATED:I = 0x1

.field public static final TYPE_OTP_RECEIVED:I = 0x2

.field public static final TYPE_PROFILE_VERIFIED_BEFORE:I = 0x6

.field public static final TYPE_VERIFICATION_COMPLETE:I = 0x5


# virtual methods
.method public abstract onRequestFailure(ILcom/truecaller/android/sdk/common/TrueException;)V
.end method

.method public abstract onRequestSuccess(ILcom/truecaller/android/sdk/common/VerificationDataBundle;)V
.end method
