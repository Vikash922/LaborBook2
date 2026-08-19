.class public final Lcom/laborbook/base/analytics/ConstantEventAttributes;
.super Ljava/lang/Object;
.source "ConstantEventAttributes.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/analytics/ConstantEventAttributes$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/laborbook/base/analytics/ConstantEventAttributes;",
        "",
        "<init>",
        "()V",
        "Companion",
        "base_release"
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
.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final APP_OPEN_COUNT:Ljava/lang/String; = "app_open_count"

.field public static final APP_VERSION:Ljava/lang/String; = "app_version"

.field public static final CHOSEN_MONTH:Ljava/lang/String; = "chosen_month"

.field public static final CURRENT_MONTH:Ljava/lang/String; = "current_month"

.field public static final Companion:Lcom/laborbook/base/analytics/ConstantEventAttributes$Companion;

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field public static final EVENT_VALUE:Ljava/lang/String; = "event_value"

.field public static final EXPENSE_TYPE:Ljava/lang/String; = "expense_type"

.field public static final INCOME_TYPE:Ljava/lang/String; = "income_type"

.field public static final INSTALL_SOURCE:Ljava/lang/String; = "install_source"

.field public static final IS_UPDATE_EXPENSE:Ljava/lang/String; = "is_update_expense"

.field public static final IS_UPDATE_INCOME:Ljava/lang/String; = "is_update_income"

.field public static final LABOR_NAME:Ljava/lang/String; = "labor_name"

.field public static final LANGUAGE:Ljava/lang/String; = "language"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final PERMISSION_GRANTED:Ljava/lang/String; = "permission_granted"

.field public static final PRIVACY_MODE:Ljava/lang/String; = "privacy_mode"

.field public static final SELECTED_LANGUAGE:Ljava/lang/String; = "selected_language"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final UPDATE_TYPE:Ljava/lang/String; = "update_type"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_MOBILE_NUMBER:Ljava/lang/String; = "user_mobile_number"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"

.field public static final USER_TYPE:Ljava/lang/String; = "user_type"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/base/analytics/ConstantEventAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/analytics/ConstantEventAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/analytics/ConstantEventAttributes;->Companion:Lcom/laborbook/base/analytics/ConstantEventAttributes$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
