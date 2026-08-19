.class public final Lcom/laborbook/expense/network/TransactionApi$Companion;
.super Ljava/lang/Object;
.source "TransactionApi.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/laborbook/expense/network/TransactionApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/laborbook/expense/network/TransactionApi$Companion;",
        "",
        "<init>",
        "()V",
        "API_VERSION",
        "",
        "TRANSACTIONS",
        "TRANSACTION_SUMMARY",
        "CREATE_TRANSACTION",
        "UPDATE_TRANSACTION",
        "DELETE_TRANSACTION",
        "expense_release"
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
.field static final synthetic $$INSTANCE:Lcom/laborbook/expense/network/TransactionApi$Companion;

.field public static final API_VERSION:Ljava/lang/String; = "api/v1"

.field public static final CREATE_TRANSACTION:Ljava/lang/String; = "/users/{user_id}/transactions"

.field public static final DELETE_TRANSACTION:Ljava/lang/String; = "/users/{user_id}/transactions/{id}"

.field public static final TRANSACTIONS:Ljava/lang/String; = "/users/{user_id}/transactions"

.field public static final TRANSACTION_SUMMARY:Ljava/lang/String; = "/users/{user_id}/transactions/summary"

.field public static final UPDATE_TRANSACTION:Ljava/lang/String; = "/users/{user_id}/transactions/{id}"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/expense/network/TransactionApi$Companion;

    invoke-direct {v0}, Lcom/laborbook/expense/network/TransactionApi$Companion;-><init>()V

    sput-object v0, Lcom/laborbook/expense/network/TransactionApi$Companion;->$$INSTANCE:Lcom/laborbook/expense/network/TransactionApi$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
