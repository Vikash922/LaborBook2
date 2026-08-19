.class public final synthetic Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/keep/model/CalendarItem;

.field public final synthetic f$1:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$0:Lcom/laborbook/keep/model/CalendarItem;

    iput-object p2, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$1:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;

    iput-object p3, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$0:Lcom/laborbook/keep/model/CalendarItem;

    iget-object v1, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$1:Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;

    iget-object v2, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder$$ExternalSyntheticLambda5;->f$3:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;->$r8$lambda$dqtTE-9p1gth2wyVXcUJ3Dc7EHk(Lcom/laborbook/keep/model/CalendarItem;Lcom/laborbook/keep/screen/calendar/adapter/AttendanceCalendarItemAdapter$ItemViewHolder;Ljava/lang/String;Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
