.class Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$4;
.super Landroidx/room/SharedSQLiteStatement;
.source "CalendarItemDao_Impl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;-><init>(Landroidx/room/RoomDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;


# direct methods
.method constructor <init>(Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;Landroidx/room/RoomDatabase;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "database"
        }
    .end annotation

    .line 132
    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl$4;->this$0:Lcom/laborbook/keep/screen/calendar/dao/CalendarItemDao_Impl;

    invoke-direct {p0, p2}, Landroidx/room/SharedSQLiteStatement;-><init>(Landroidx/room/RoomDatabase;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .line 137
    const-string v0, "DELETE FROM calendar_item"

    return-object v0
.end method
