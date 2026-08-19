.class Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;
.super Ljava/lang/Object;
.source "CalendarItemDao_Impl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->deleteOldest(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$count"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 223
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    iput p2, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->val$count:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->call()Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method

.method public call()Lkotlin/Unit;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v0}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$300(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/room/SharedSQLiteStatement;->acquire()Landroidx/sqlite/db/SupportSQLiteStatement;

    move-result-object v0

    .line 229
    iget v1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->val$count:I

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-interface {v0, v3, v1, v2}, Landroidx/sqlite/db/SupportSQLiteStatement;->bindLong(IJ)V

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$000(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 233
    :try_start_1
    invoke-interface {v0}, Landroidx/sqlite/db/SupportSQLiteStatement;->executeUpdateDelete()I

    .line 234
    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v1}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$000(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/room/RoomDatabase;->setTransactionSuccessful()V

    .line 235
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    :try_start_2
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v2}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$000(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 240
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v2}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$300(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    return-object v1

    :catchall_0
    move-exception v1

    .line 237
    :try_start_3
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v2}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$000(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/RoomDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/room/RoomDatabase;->endTransaction()V

    .line 238
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    .line 240
    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$8;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-static {v2}, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;->access$300(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;)Landroidx/room/SharedSQLiteStatement;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/room/SharedSQLiteStatement;->release(Landroidx/sqlite/db/SupportSQLiteStatement;)V

    .line 241
    throw v1
.end method
