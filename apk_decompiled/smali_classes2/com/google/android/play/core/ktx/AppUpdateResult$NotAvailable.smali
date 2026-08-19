.class public final Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;
.super Lcom/google/android/play/core/ktx/AppUpdateResult;
.source "com.google.android.play:app-update-ktx@@2.1.0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/play/core/ktx/AppUpdateResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NotAvailable"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;",
        "Lcom/google/android/play/core/ktx/AppUpdateResult;",
        "()V",
        "java.com.google.android.apps.play.store.sdk.playcore.ktx_playcore_app_update_ktx"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;

    invoke-direct {v0}, Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;-><init>()V

    sput-object v0, Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;->INSTANCE:Lcom/google/android/play/core/ktx/AppUpdateResult$NotAvailable;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/play/core/ktx/AppUpdateResult;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method
