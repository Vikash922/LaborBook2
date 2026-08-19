.class public final Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;
.super Ljava/lang/Object;
.source "DefaultEventUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/android/utilities/DefaultEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventTypes"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;",
        "",
        "()V",
        "APPLICATION_BACKGROUNDED",
        "",
        "APPLICATION_INSTALLED",
        "APPLICATION_OPENED",
        "APPLICATION_UPDATED",
        "DEEP_LINK_OPENED",
        "SCREEN_VIEWED",
        "android_release"
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
.field public static final APPLICATION_BACKGROUNDED:Ljava/lang/String; = "[Amplitude] Application Backgrounded"

.field public static final APPLICATION_INSTALLED:Ljava/lang/String; = "[Amplitude] Application Installed"

.field public static final APPLICATION_OPENED:Ljava/lang/String; = "[Amplitude] Application Opened"

.field public static final APPLICATION_UPDATED:Ljava/lang/String; = "[Amplitude] Application Updated"

.field public static final DEEP_LINK_OPENED:Ljava/lang/String; = "[Amplitude] Deep Link Opened"

.field public static final INSTANCE:Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;

.field public static final SCREEN_VIEWED:Ljava/lang/String; = "[Amplitude] Screen Viewed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;

    invoke-direct {v0}, Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;-><init>()V

    sput-object v0, Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;->INSTANCE:Lcom/amplitude/android/utilities/DefaultEventUtils$EventTypes;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
