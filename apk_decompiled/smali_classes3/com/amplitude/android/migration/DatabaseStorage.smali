.class public final Lcom/amplitude/android/migration/DatabaseStorage;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DatabaseStorage.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000z\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u0008\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0016H\u0002J\u0015\u0010\u0017\u001a\u0004\u0018\u00010\u00182\u0006\u0010\u0019\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u001aJ\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0019\u001a\u00020\u0005J\u001a\u0010\u001c\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002J\u0010\u0010\u001f\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020 H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\"\u001a\u00020#H\u0016J\"\u0010$\u001a\u00020\u00132\u0008\u0010\"\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\nH\u0016JY\u0010\'\u001a\u0004\u0018\u00010(2\u0006\u0010\"\u001a\u00020#2\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u00052\u0010\u0010)\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010*2\u0008\u0010+\u001a\u0004\u0018\u00010\u00052\u0010\u0010,\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0005\u0018\u00010*2\u0008\u0010-\u001a\u0004\u0018\u00010\u0005H\u0002\u00a2\u0006\u0002\u0010.J\u000c\u0010/\u001a\u0008\u0012\u0004\u0012\u00020100J\u0016\u00102\u001a\u0008\u0012\u0004\u0012\u000201002\u0006\u0010\u001e\u001a\u00020\u0005H\u0002J\u000c\u00103\u001a\u0008\u0012\u0004\u0012\u00020100J\u000c\u00104\u001a\u0008\u0012\u0004\u0012\u00020100J\u000e\u00105\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0018J\u0018\u00107\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u00106\u001a\u00020\u0018H\u0002J\u000e\u00108\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0018J\u000e\u00109\u001a\u00020\u00132\u0006\u00106\u001a\u00020\u0018J\u000e\u0010:\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005J\u000e\u0010;\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005J\u0018\u0010<\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0002R\u001e\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\n@BX\u0086\u000e\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006="
    }
    d2 = {
        "Lcom/amplitude/android/migration/DatabaseStorage;",
        "Landroid/database/sqlite/SQLiteOpenHelper;",
        "context",
        "Landroid/content/Context;",
        "databaseName",
        "",
        "logger",
        "Lcom/amplitude/common/Logger;",
        "(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;)V",
        "<set-?>",
        "",
        "currentDbVersion",
        "getCurrentDbVersion",
        "()I",
        "file",
        "Ljava/io/File;",
        "isValidDatabaseFile",
        "",
        "closeDb",
        "",
        "convertIfCursorWindowException",
        "e",
        "Ljava/lang/RuntimeException;",
        "getLongValue",
        "",
        "key",
        "(Ljava/lang/String;)Ljava/lang/Long;",
        "getValue",
        "getValueFromTable",
        "",
        "table",
        "handleIfCursorRowTooLargeException",
        "Ljava/lang/IllegalStateException;",
        "onCreate",
        "db",
        "Landroid/database/sqlite/SQLiteDatabase;",
        "onUpgrade",
        "oldVersion",
        "newVersion",
        "queryDb",
        "Landroid/database/Cursor;",
        "columns",
        "",
        "selection",
        "selectionArgs",
        "orderBy",
        "(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;",
        "readEventsContent",
        "",
        "Lorg/json/JSONObject;",
        "readEventsFromTable",
        "readIdentifiesContent",
        "readInterceptedIdentifiesContent",
        "removeEvent",
        "rowId",
        "removeEventFromTable",
        "removeIdentify",
        "removeInterceptedIdentify",
        "removeLongValue",
        "removeValue",
        "removeValueFromTable",
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


# instance fields
.field private currentDbVersion:I

.field private file:Ljava/io/File;

.field private isValidDatabaseFile:Z

.field private final logger:Lcom/amplitude/common/Logger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/amplitude/common/Logger;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "databaseName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "logger"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x4

    .line 47
    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 46
    iput-object p3, p0, Lcom/amplitude/android/migration/DatabaseStorage;->logger:Lcom/amplitude/common/Logger;

    .line 53
    invoke-virtual {p1, p2}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string p2, "context.getDatabasePath(databaseName)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amplitude/android/migration/DatabaseStorage;->file:Ljava/io/File;

    const/4 p1, 0x1

    .line 54
    iput-boolean p1, p0, Lcom/amplitude/android/migration/DatabaseStorage;->isValidDatabaseFile:Z

    .line 55
    iput v1, p0, Lcom/amplitude/android/migration/DatabaseStorage;->currentDbVersion:I

    return-void
.end method

.method private final closeDb()V
    .locals 3

    .line 99
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 101
    sget-object v1, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v1}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v1

    const-string v2, "close failed: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final convertIfCursorWindowException(Ljava/lang/RuntimeException;)V
    .locals 5

    .line 89
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 90
    move-object v1, v0

    check-cast v1, Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Cursor window allocation of"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Could not allocate CursorWindow"

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    :cond_0
    new-instance p1, Lcom/amplitude/android/migration/CursorWindowAllocationException;

    invoke-direct {p1, v0}, Lcom/amplitude/android/migration/CursorWindowAllocationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_1
    throw p1
.end method

.method private final getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 12

    .line 227
    const-string v0, " failed: "

    .line 0
    const-string v1, "getValue from "

    .line 227
    iget-object v2, p0, Lcom/amplitude/android/migration/DatabaseStorage;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return-object v3

    .line 234
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 235
    iget-boolean v2, p0, Lcom/amplitude/android/migration/DatabaseStorage;->isValidDatabaseFile:Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    return-object v3

    .line 240
    :cond_1
    :try_start_1
    const-string v2, "db"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 243
    new-array v7, v2, [Ljava/lang/String;

    const-string v2, "key"

    const/4 v4, 0x0

    aput-object v2, v7, v4

    .line 244
    const-string/jumbo v2, "value"

    const/4 v11, 0x1

    aput-object v2, v7, v11

    .line 246
    const-string v8, "key = ?"

    .line 247
    new-array v9, v11, [Ljava/lang/String;

    aput-object p2, v9, v4

    const/4 v10, 0x0

    move-object v4, p0

    move-object v6, p1

    .line 239
    invoke-direct/range {v4 .. v10}, Lcom/amplitude/android/migration/DatabaseStorage;->queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    :try_start_2
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    const-string/jumbo v2, "store"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-interface {p2, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1
    :try_end_2
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    move-object v3, p1

    .line 272
    :cond_3
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 273
    :goto_1
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    goto/16 :goto_6

    :catch_0
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception v2

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_5

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :catch_4
    move-exception p1

    move-object p2, v3

    .line 270
    :goto_2
    :try_start_3
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->convertIfCursorWindowException(Ljava/lang/RuntimeException;)V

    if-nez p2, :cond_3

    goto :goto_1

    :catch_5
    move-exception p1

    move-object p2, v3

    .line 267
    :goto_3
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->handleIfCursorRowTooLargeException(Ljava/lang/IllegalStateException;)V

    if-nez p2, :cond_3

    goto :goto_1

    :catch_6
    move-exception v2

    move-object p2, v3

    .line 260
    :goto_4
    sget-object v4, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v4}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v4

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-virtual {v4, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V

    if-nez p2, :cond_3

    goto :goto_1

    :catch_7
    move-exception v2

    move-object p2, v3

    .line 254
    :goto_5
    sget-object v4, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v4}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v4

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {v4, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 258
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p2, :cond_3

    goto :goto_1

    :goto_6
    return-object v3

    :catchall_1
    move-exception p1

    move-object v3, p2

    :goto_7
    if-nez v3, :cond_4

    goto :goto_8

    .line 272
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 273
    :goto_8
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    throw p1
.end method

.method private final handleIfCursorRowTooLargeException(Ljava/lang/IllegalStateException;)V
    .locals 5

    .line 80
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Couldn\'t read"

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CursorWindow"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v0, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V

    return-void

    .line 84
    :cond_0
    throw p1
.end method

.method private final queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v7, p6

    .line 76
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    return-object p1
.end method

.method private final readEventsFromTable(Ljava/lang/String;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 124
    const-string v0, " failed: "

    const-string v1, "read events from "

    iget-object v2, p0, Lcom/amplitude/android/migration/DatabaseStorage;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 125
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 128
    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    check-cast v2, Ljava/util/List;

    const/4 v3, 0x0

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 132
    iget-boolean v4, p0, Lcom/amplitude/android/migration/DatabaseStorage;->isValidDatabaseFile:Z

    if-nez v4, :cond_1

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    check-cast v4, Ljava/util/List;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    return-object v4

    .line 137
    :cond_1
    :try_start_1
    const-string v4, "db"

    invoke-static {v5, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 139
    new-array v7, v4, [Ljava/lang/String;

    const-string v4, "id"

    const/4 v11, 0x0

    aput-object v4, v7, v11

    const-string v4, "event"

    const/4 v12, 0x1

    aput-object v4, v7, v12

    .line 142
    const-string v10, "id ASC"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p0

    move-object v6, p1

    .line 136
    invoke-direct/range {v4 .. v10}, Lcom/amplitude/android/migration/DatabaseStorage;->queryDb(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 144
    :cond_2
    :goto_0
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 145
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 146
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 147
    move-object v7, v6

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 150
    :cond_3
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v6, "$rowId"

    invoke-virtual {v7, v6, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 152
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 169
    :cond_4
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 167
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->convertIfCursorWindowException(Ljava/lang/RuntimeException;)V

    if-nez v3, :cond_4

    goto :goto_1

    :catch_1
    move-exception p1

    .line 165
    invoke-direct {p0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->handleIfCursorRowTooLargeException(Ljava/lang/IllegalStateException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v3, :cond_4

    .line 170
    :goto_1
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    goto :goto_2

    :catch_2
    move-exception v4

    .line 160
    :try_start_3
    sget-object v5, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v5}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v5

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-virtual {v5, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V

    if-nez v3, :cond_4

    goto :goto_1

    :catch_3
    move-exception v4

    .line 155
    sget-object v5, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v5}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v5

    .line 156
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-virtual {v5, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 158
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v3, :cond_4

    goto :goto_1

    :goto_2
    return-object v2

    :goto_3
    if-nez v3, :cond_5

    goto :goto_4

    .line 169
    :cond_5
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 170
    :goto_4
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    throw p1
.end method

.method private final removeEventFromTable(Ljava/lang/String;J)V
    .locals 5

    .line 194
    const-string v0, " failed: "

    .line 0
    const-string v1, "remove events from "

    .line 195
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 198
    const-string v3, "id = ?"

    const/4 v4, 0x1

    .line 199
    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    aput-object p2, v4, p3

    .line 196
    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :goto_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 207
    :try_start_1
    sget-object p3, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {p3}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object p3

    .line 208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p3, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 210
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 202
    sget-object p3, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {p3}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object p3

    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 202
    invoke-virtual {p3, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 205
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 212
    :goto_2
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    throw p1
.end method

.method private final removeValueFromTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 289
    const-string v0, " failed: "

    .line 0
    const-string v1, "remove value from "

    .line 290
    :try_start_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 293
    const-string v3, "key = ?"

    const/4 v4, 0x1

    .line 294
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    .line 291
    invoke-virtual {v2, p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :goto_0
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    .line 302
    :try_start_1
    sget-object v2, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v2}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v2

    .line 303
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/StackOverflowError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 302
    invoke-virtual {v2, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 305
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 297
    sget-object v2, Lcom/amplitude/common/android/LogcatLogger;->Companion:Lcom/amplitude/common/android/LogcatLogger$Companion;

    invoke-virtual {v2}, Lcom/amplitude/common/android/LogcatLogger$Companion;->getLogger()Lcom/amplitude/common/android/LogcatLogger;

    move-result-object v2

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 297
    invoke-virtual {v2, p1}, Lcom/amplitude/common/android/LogcatLogger;->error(Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->closeDb()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 307
    :goto_2
    invoke-virtual {p0}, Lcom/amplitude/android/migration/DatabaseStorage;->close()V

    throw p1
.end method


# virtual methods
.method public final getCurrentDbVersion()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/amplitude/android/migration/DatabaseStorage;->currentDbVersion:I

    return v0
.end method

.method public final declared-synchronized getLongValue(Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    const-string v0, "long_store"

    invoke-direct {p0, v0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "store"

    invoke-direct {p0, v0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->getValueFromTable(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "db"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 60
    iput-boolean p1, p0, Lcom/amplitude/android/migration/DatabaseStorage;->isValidDatabaseFile:Z

    .line 61
    iget-object p1, p0, Lcom/amplitude/android/migration/DatabaseStorage;->logger:Lcom/amplitude/common/Logger;

    iget-object v0, p0, Lcom/amplitude/android/migration/DatabaseStorage;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Attempt to re-create existing legacy database file "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amplitude/common/Logger;->error(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    .line 65
    iput p2, p0, Lcom/amplitude/android/migration/DatabaseStorage;->currentDbVersion:I

    return-void
.end method

.method public final declared-synchronized readEventsContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 107
    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0}, Lcom/amplitude/android/migration/DatabaseStorage;->readEventsFromTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized readIdentifiesContent()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0}, Lcom/amplitude/android/migration/DatabaseStorage;->readEventsFromTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized readInterceptedIdentifiesContent()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/amplitude/android/migration/DatabaseStorage;->currentDbVersion:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 118
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 120
    :cond_0
    :try_start_1
    const-string v0, "identify_interceptor"

    invoke-direct {p0, v0}, Lcom/amplitude/android/migration/DatabaseStorage;->readEventsFromTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public final declared-synchronized removeEvent(J)V
    .locals 1

    monitor-enter p0

    .line 177
    :try_start_0
    const-string v0, "events"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/android/migration/DatabaseStorage;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized removeIdentify(J)V
    .locals 1

    monitor-enter p0

    .line 182
    :try_start_0
    const-string v0, "identifys"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/android/migration/DatabaseStorage;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 183
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized removeInterceptedIdentify(J)V
    .locals 2

    monitor-enter p0

    .line 187
    :try_start_0
    iget v0, p0, Lcom/amplitude/android/migration/DatabaseStorage;->currentDbVersion:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 188
    monitor-exit p0

    return-void

    .line 190
    :cond_0
    :try_start_1
    const-string v0, "identify_interceptor"

    invoke-direct {p0, v0, p1, p2}, Lcom/amplitude/android/migration/DatabaseStorage;->removeEventFromTable(Ljava/lang/String;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final declared-synchronized removeLongValue(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 285
    const-string v0, "long_store"

    invoke-direct {p0, v0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->removeValueFromTable(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized removeValue(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 280
    const-string/jumbo v0, "store"

    invoke-direct {p0, v0, p1}, Lcom/amplitude/android/migration/DatabaseStorage;->removeValueFromTable(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
