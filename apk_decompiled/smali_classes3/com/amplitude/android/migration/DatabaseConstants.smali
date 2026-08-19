.class public final Lcom/amplitude/android/migration/DatabaseConstants;
.super Ljava/lang/Object;
.source "DatabaseStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/amplitude/android/migration/DatabaseConstants;",
        "",
        "()V",
        "DATABASE_NAME",
        "",
        "DATABASE_VERSION",
        "",
        "EVENT_FIELD",
        "EVENT_TABLE_NAME",
        "IDENTIFY_INTERCEPTOR_TABLE_NAME",
        "IDENTIFY_TABLE_NAME",
        "ID_FIELD",
        "KEY_FIELD",
        "LONG_STORE_TABLE_NAME",
        "ROW_ID_FIELD",
        "STORE_TABLE_NAME",
        "VALUE_FIELD",
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
.field public static final DATABASE_NAME:Ljava/lang/String; = "com.amplitude.api"

.field public static final DATABASE_VERSION:I = 0x4

.field public static final EVENT_FIELD:Ljava/lang/String; = "event"

.field public static final EVENT_TABLE_NAME:Ljava/lang/String; = "events"

.field public static final IDENTIFY_INTERCEPTOR_TABLE_NAME:Ljava/lang/String; = "identify_interceptor"

.field public static final IDENTIFY_TABLE_NAME:Ljava/lang/String; = "identifys"

.field public static final ID_FIELD:Ljava/lang/String; = "id"

.field public static final INSTANCE:Lcom/amplitude/android/migration/DatabaseConstants;

.field public static final KEY_FIELD:Ljava/lang/String; = "key"

.field public static final LONG_STORE_TABLE_NAME:Ljava/lang/String; = "long_store"

.field public static final ROW_ID_FIELD:Ljava/lang/String; = "$rowId"

.field public static final STORE_TABLE_NAME:Ljava/lang/String; = "store"

.field public static final VALUE_FIELD:Ljava/lang/String; = "value"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amplitude/android/migration/DatabaseConstants;

    invoke-direct {v0}, Lcom/amplitude/android/migration/DatabaseConstants;-><init>()V

    sput-object v0, Lcom/amplitude/android/migration/DatabaseConstants;->INSTANCE:Lcom/amplitude/android/migration/DatabaseConstants;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
