.class public final Lcom/laborbook/auth/network/AuthApi$Companion;
.super Ljava/lang/Object;
.source "AuthApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/auth/network/AuthApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/laborbook/auth/network/AuthApi$Companion;",
        "",
        "<init>",
        "()V",
        "API_VERSION",
        "",
        "GENERATE_OTP",
        "RESENT_OTP",
        "VERIFY_OTP",
        "TRUECALLER_LOGIN",
        "auth_release"
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
.field static final synthetic $$INSTANCE:Lcom/laborbook/auth/network/AuthApi$Companion;

.field public static final API_VERSION:Ljava/lang/String; = "api/v1"

.field public static final GENERATE_OTP:Ljava/lang/String; = "/create-otp"

.field public static final RESENT_OTP:Ljava/lang/String; = "/resend-otp"

.field public static final TRUECALLER_LOGIN:Ljava/lang/String; = "/login/truecaller"

.field public static final VERIFY_OTP:Ljava/lang/String; = "/verify-otp"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/auth/network/AuthApi$Companion;

    invoke-direct {v0}, Lcom/laborbook/auth/network/AuthApi$Companion;-><init>()V

    sput-object v0, Lcom/laborbook/auth/network/AuthApi$Companion;->$$INSTANCE:Lcom/laborbook/auth/network/AuthApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
