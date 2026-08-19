.class public final Lcom/laborbook/keep/network/KeepApi$Companion;
.super Ljava/lang/Object;
.source "KeepApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/keep/network/KeepApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\n\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/laborbook/keep/network/KeepApi$Companion;",
        "",
        "<init>",
        "()V",
        "API_VERSION",
        "",
        "STAFFS",
        "STAFF",
        "USER",
        "USER_ATTENDANCE",
        "MARK_BULK_ATTENDANCE",
        "MARK_SINGLE_ATTENDANCE",
        "ADD_ADVANCE",
        "SAVE_OVERTIME",
        "ADD_OT",
        "keep_release"
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
.field static final synthetic $$INSTANCE:Lcom/laborbook/keep/network/KeepApi$Companion;

.field public static final ADD_ADVANCE:Ljava/lang/String; = "/user/{id}/advance"

.field public static final ADD_OT:Ljava/lang/String; = "/user/{user_id}/ot"

.field public static final API_VERSION:Ljava/lang/String; = "api/v1"

.field public static final MARK_BULK_ATTENDANCE:Ljava/lang/String; = "/user/{id}/attendances"

.field public static final MARK_SINGLE_ATTENDANCE:Ljava/lang/String; = "/user/{id}/attendance"

.field public static final SAVE_OVERTIME:Ljava/lang/String; = "/user/{id}/overtime"

.field public static final STAFF:Ljava/lang/String; = "/user"

.field public static final STAFFS:Ljava/lang/String; = "/users"

.field public static final USER:Ljava/lang/String; = "/user/{id}"

.field public static final USER_ATTENDANCE:Ljava/lang/String; = "/user/{id}/attendances"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/keep/network/KeepApi$Companion;

    invoke-direct {v0}, Lcom/laborbook/keep/network/KeepApi$Companion;-><init>()V

    sput-object v0, Lcom/laborbook/keep/network/KeepApi$Companion;->$$INSTANCE:Lcom/laborbook/keep/network/KeepApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
