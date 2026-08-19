.class Lcom/mixpanel/android/mpmetrics/MixpanelAPI$3;
.super Ljava/lang/Object;
.source "MixpanelAPI.java"

# interfaces
.implements Lcom/mixpanel/android/mpmetrics/SharedPreferencesLoader$OnPrefsLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->getPersistentIdentity(Landroid/content/Context;Ljava/util/concurrent/Future;Ljava/lang/String;Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/PersistentIdentity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;


# direct methods
.method constructor <init>(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;)V
    .locals 0

    .line 1741
    iput-object p1, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$3;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrefsLoaded(Landroid/content/SharedPreferences;)V
    .locals 1

    .line 1744
    invoke-static {p1}, Lcom/mixpanel/android/mpmetrics/PersistentIdentity;->getPeopleDistinctId(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1746
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MixpanelAPI$3;->this$0:Lcom/mixpanel/android/mpmetrics/MixpanelAPI;

    invoke-static {v0, p1}, Lcom/mixpanel/android/mpmetrics/MixpanelAPI;->access$500(Lcom/mixpanel/android/mpmetrics/MixpanelAPI;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
