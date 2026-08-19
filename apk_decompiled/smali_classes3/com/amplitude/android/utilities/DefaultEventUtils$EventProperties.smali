.class public final Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;
.super Ljava/lang/Object;
.source "DefaultEventUtils.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amplitude/android/utilities/DefaultEventUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventProperties"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;",
        "",
        "()V",
        "BUILD",
        "",
        "FROM_BACKGROUND",
        "LINK_REFERRER",
        "LINK_URL",
        "PREVIOUS_BUILD",
        "PREVIOUS_VERSION",
        "SCREEN_NAME",
        "VERSION",
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
.field public static final BUILD:Ljava/lang/String; = "[Amplitude] Build"

.field public static final FROM_BACKGROUND:Ljava/lang/String; = "[Amplitude] From Background"

.field public static final INSTANCE:Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;

.field public static final LINK_REFERRER:Ljava/lang/String; = "[Amplitude] Link Referrer"

.field public static final LINK_URL:Ljava/lang/String; = "[Amplitude] Link URL"

.field public static final PREVIOUS_BUILD:Ljava/lang/String; = "[Amplitude] Previous Build"

.field public static final PREVIOUS_VERSION:Ljava/lang/String; = "[Amplitude] Previous Version"

.field public static final SCREEN_NAME:Ljava/lang/String; = "[Amplitude] Screen Name"

.field public static final VERSION:Ljava/lang/String; = "[Amplitude] Version"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;

    invoke-direct {v0}, Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;-><init>()V

    sput-object v0, Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;->INSTANCE:Lcom/amplitude/android/utilities/DefaultEventUtils$EventProperties;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
