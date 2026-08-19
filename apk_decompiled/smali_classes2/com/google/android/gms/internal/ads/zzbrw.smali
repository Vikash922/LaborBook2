.class public final Lcom/google/android/gms/internal/ads/zzbrw;
.super Lcom/google/android/gms/internal/ads/zzbsc;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private zza:Ljava/lang/String;

.field private zzb:Z

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:I

.field private zzg:I

.field private zzh:I

.field private final zzi:Ljava/lang/Object;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzk:Landroid/app/Activity;

.field private zzl:Lcom/google/android/gms/internal/ads/zzcgf;

.field private zzm:Landroid/widget/ImageView;

.field private zzn:Landroid/widget/LinearLayout;

.field private final zzo:Lcom/google/android/gms/internal/ads/zzbsd;

.field private zzp:Landroid/widget/PopupWindow;

.field private zzq:Landroid/widget/RelativeLayout;

.field private zzr:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    .line 1
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "top-left"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "top-right"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "top-center"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "center"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bottom-left"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bottom-right"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bottom-center"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/util/CollectionUtils;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbsd;)V
    .locals 2

    .line 1
    const-string v0, "resize"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;-><init>(Lcom/google/android/gms/internal/ads/zzcel;Ljava/lang/String;)V

    const-string v0, "top-right"

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zza:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzb:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzi:Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzi()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzk:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzo:Lcom/google/android/gms/internal/ads/zzbsd;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbrw;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbrw;->zzm(Z)V

    return-void
.end method

.method private final zzm(Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkU:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    check-cast v1, Landroid/view/View;

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    .line 4
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    check-cast v1, Landroid/view/View;

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 4
    :goto_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkV:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 8
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    check-cast v0, Landroid/view/View;

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 10
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 11
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzm:Landroid/widget/ImageView;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzkW:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzl:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 16
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 17
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "Unable to add webview back to view hierarchy."

    .line 18
    invoke-static {v1, v0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzl:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 20
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    .line 16
    const-string p1, "default"

    .line 21
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsc;->zzl(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzo:Lcom/google/android/gms/internal/ads/zzbsd;

    if-eqz p1, :cond_4

    .line 22
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->zzb()V

    :cond_4
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzn:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final zzb(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzkT:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    .line 5
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zzf:Lcom/google/android/gms/internal/ads/zzgcd;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbru;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzbru;-><init>(Lcom/google/android/gms/internal/ads/zzbrw;Z)V

    .line 6
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcd;->zza(Ljava/lang/Runnable;)Lcom/google/common/util/concurrent/ListenableFuture;

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbrw;->zzm(Z)V

    .line 7
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zzc(Ljava/util/Map;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "Cannot show popup window: "

    .line 1
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzi:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzk:Landroid/app/Activity;

    if-nez v4, :cond_0

    const-string v0, "Not an activity context. Cannot resize."

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 2
    monitor-exit v3

    return-void

    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    .line 3
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzO()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v0, "Webview is not yet available, size is not set."

    .line 102
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 103
    monitor-exit v3

    return-void

    .line 4
    :cond_1
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzO()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzcgf;->zzi()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "Is interstitial. Cannot resize an interstitial."

    .line 100
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 101
    monitor-exit v3

    return-void

    .line 5
    :cond_2
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzaF()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v0, "Cannot resize an expanded banner."

    .line 98
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 99
    monitor-exit v3

    return-void

    :cond_3
    const-string v6, "width"

    .line 6
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 7
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v6, "width"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    :cond_4
    const-string v6, "height"

    .line 8
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v6, "height"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    :cond_5
    const-string v6, "offsetX"

    .line 10
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 11
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v6, "offsetX"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    :cond_6
    const-string v6, "offsetY"

    .line 12
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 13
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    const-string v6, "offsetY"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/zzs;->zzP(Ljava/lang/String;)I

    move-result v6

    iput v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    :cond_7
    const-string v6, "allowOffscreen"

    .line 14
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "allowOffscreen"

    .line 15
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzb:Z

    :cond_8
    const-string v6, "customClosePosition"

    .line 16
    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zza:Ljava/lang/String;

    :cond_9
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    if-ltz v0, :cond_2b

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    if-ltz v0, :cond_2b

    .line 20
    invoke-virtual {v4}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2a

    .line 21
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    if-nez v6, :cond_a

    goto/16 :goto_10

    .line 24
    :cond_a
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    move-result-object v6

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v9, v6, v8

    const/4 v10, 0x1

    aget v6, v6, v10

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v8, 0x32

    const/16 v16, 0x0

    if-lt v11, v8, :cond_1c

    if-le v11, v9, :cond_b

    goto/16 :goto_b

    .line 42
    :cond_b
    iget v12, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    if-lt v12, v8, :cond_1b

    if-le v12, v6, :cond_c

    goto/16 :goto_a

    :cond_c
    if-ne v12, v6, :cond_d

    if-ne v11, v9, :cond_d

    .line 29
    const-string v6, "Cannot resize to a full-screen ad."

    .line 33
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 34
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_d
    iget-boolean v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzb:Z

    if-eqz v6, :cond_16

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zza:Ljava/lang/String;

    .line 32
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sparse-switch v17, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v8, "top-center"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v10

    goto :goto_1

    :sswitch_1
    const-string v8, "bottom-center"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v13

    goto :goto_1

    :sswitch_2
    const-string v8, "bottom-right"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x5

    goto :goto_1

    :sswitch_3
    const-string v8, "bottom-left"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v14

    goto :goto_1

    :sswitch_4
    const-string v8, "top-left"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    const/4 v6, 0x0

    goto :goto_1

    :sswitch_5
    const-string v8, "center"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    move v6, v15

    goto :goto_1

    :cond_e
    :goto_0
    const/4 v6, -0x1

    :goto_1
    if-eqz v6, :cond_14

    if-eq v6, v10, :cond_13

    if-eq v6, v15, :cond_12

    if-eq v6, v14, :cond_11

    if-eq v6, v13, :cond_10

    const/4 v8, 0x5

    if-eq v6, v8, :cond_f

    :try_start_1
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    add-int/2addr v6, v8

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    goto :goto_4

    :cond_f
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    add-int/2addr v6, v8

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x32

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    goto :goto_2

    :cond_10
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    shr-int/2addr v11, v10

    add-int/2addr v6, v8

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    :goto_2
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    goto :goto_3

    :cond_11
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    add-int/2addr v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    goto :goto_2

    :goto_3
    add-int/2addr v8, v11

    add-int/2addr v8, v12

    add-int/lit8 v8, v8, -0x32

    goto :goto_6

    :cond_12
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    shr-int/2addr v11, v10

    add-int/2addr v6, v8

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    add-int/2addr v8, v11

    shr-int/lit8 v11, v12, 0x1

    add-int/2addr v8, v11

    add-int/lit8 v8, v8, -0x19

    goto :goto_6

    :cond_13
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    shr-int/2addr v11, v10

    add-int/2addr v6, v8

    add-int/2addr v6, v11

    add-int/lit8 v6, v6, -0x19

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    :goto_4
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    goto :goto_5

    :cond_14
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    add-int/2addr v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    goto :goto_4

    :goto_5
    add-int/2addr v8, v11

    :goto_6
    if-ltz v6, :cond_1d

    const/16 v11, 0x32

    add-int/2addr v6, v11

    if-gt v6, v9, :cond_1d

    const/4 v6, 0x0

    aget v9, v7, v6

    if-lt v8, v9, :cond_1d

    add-int/2addr v8, v11

    aget v6, v7, v10

    if-le v8, v6, :cond_15

    goto :goto_c

    :cond_15
    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    add-int/2addr v6, v7

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    add-int/2addr v7, v8

    filled-new-array {v6, v7}, [I

    move-result-object v16

    goto :goto_c

    .line 30
    :cond_16
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzW(Landroid/app/Activity;)[I

    move-result-object v6

    .line 31
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {v4}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v7

    const/4 v8, 0x0

    aget v6, v6, v8

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzf:I

    add-int/2addr v8, v9

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzg:I

    add-int/2addr v9, v11

    if-gez v8, :cond_17

    const/4 v6, 0x0

    :goto_7
    const/4 v8, 0x0

    goto :goto_8

    :cond_17
    iget v11, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    add-int v12, v8, v11

    if-le v12, v6, :cond_18

    sub-int/2addr v6, v11

    goto :goto_7

    :cond_18
    move v6, v8

    goto :goto_7

    :goto_8
    aget v11, v7, v8

    if-ge v9, v11, :cond_19

    move v9, v11

    goto :goto_9

    :cond_19
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    add-int v11, v9, v8

    aget v7, v7, v10

    if-le v11, v7, :cond_1a

    sub-int v9, v7, v8

    :cond_1a
    :goto_9
    filled-new-array {v6, v9}, [I

    move-result-object v16

    goto :goto_c

    .line 42
    :cond_1b
    :goto_a
    const-string v6, "Height is too small or too large."

    .line 28
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 29
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    goto :goto_c

    .line 25
    :cond_1c
    :goto_b
    const-string v6, "Width is too small or too large."

    .line 26
    sget v7, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    .line 27
    invoke-static {v6}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_1d
    :goto_c
    if-nez v16, :cond_1e

    const-string v0, "Resize location out of screen or close button is not visible."

    .line 35
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 36
    monitor-exit v3

    return-void

    .line 37
    :cond_1e
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v6, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    invoke-static {v4, v6}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v6

    .line 38
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    invoke-static {v4, v7}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v7

    move-object v8, v5

    check-cast v8, Landroid/view/View;

    .line 39
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    if-eqz v8, :cond_29

    .line 40
    instance-of v9, v8, Landroid/view/ViewGroup;

    if-eqz v9, :cond_29

    .line 43
    check-cast v8, Landroid/view/ViewGroup;

    move-object v9, v5

    check-cast v9, Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    if-nez v9, :cond_1f

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    move-object v8, v5

    check-cast v8, Landroid/view/View;

    .line 46
    invoke-virtual {v8, v10}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    move-object v8, v5

    check-cast v8, Landroid/view/View;

    .line 47
    invoke-virtual {v8}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v9, v5

    check-cast v9, Landroid/view/View;

    const/4 v11, 0x0

    .line 48
    invoke-virtual {v9, v11}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    new-instance v9, Landroid/widget/ImageView;

    .line 49
    invoke-direct {v9, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzm:Landroid/widget/ImageView;

    .line 50
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 51
    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzcel;->zzO()Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v8

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzl:Lcom/google/android/gms/internal/ads/zzcgf;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzm:Landroid/widget/ImageView;

    .line 52
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_d

    .line 44
    :cond_1f
    invoke-virtual {v9}, Landroid/widget/PopupWindow;->dismiss()V

    .line 52
    :goto_d
    new-instance v8, Landroid/widget/RelativeLayout;

    .line 53
    invoke-direct {v8, v4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    const/4 v9, 0x0

    .line 54
    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    .line 55
    invoke-direct {v9, v6, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    new-instance v9, Landroid/widget/PopupWindow;

    const/4 v11, 0x0

    .line 57
    invoke-direct {v9, v8, v6, v7, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    .line 58
    invoke-virtual {v9, v11}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    .line 59
    invoke-virtual {v8, v10}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    iget-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzb:Z

    xor-int/2addr v9, v10

    .line 60
    invoke-virtual {v8, v9}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    check-cast v5, Landroid/view/View;

    const/4 v9, -0x1

    .line 61
    invoke-virtual {v8, v5, v9, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;II)V

    new-instance v5, Landroid/widget/LinearLayout;

    .line 62
    invoke-direct {v5, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzn:Landroid/widget/LinearLayout;

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 63
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const/16 v8, 0x32

    invoke-static {v4, v8}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v11

    .line 64
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    invoke-static {v4, v8}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v8

    invoke-direct {v5, v11, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zza:Ljava/lang/String;

    .line 65
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sparse-switch v11, :sswitch_data_1

    goto :goto_e

    .line 76
    :sswitch_6
    const-string v11, "top-center"

    .line 65
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move v9, v10

    goto :goto_e

    :sswitch_7
    const-string v11, "bottom-center"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move v9, v13

    goto :goto_e

    :sswitch_8
    const-string v11, "bottom-right"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v9, 0x5

    goto :goto_e

    :sswitch_9
    const-string v11, "bottom-left"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move v9, v14

    goto :goto_e

    :sswitch_a
    const-string v11, "top-left"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    const/4 v9, 0x0

    goto :goto_e

    :sswitch_b
    const-string v11, "center"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    move v9, v15

    :cond_20
    :goto_e
    const/16 v8, 0x9

    const/16 v11, 0xa

    if-eqz v9, :cond_26

    const/16 v12, 0xe

    if-eq v9, v10, :cond_25

    if-eq v9, v15, :cond_24

    const/16 v15, 0xc

    if-eq v9, v14, :cond_23

    if-eq v9, v13, :cond_22

    const/16 v8, 0xb

    const/4 v12, 0x5

    if-eq v9, v12, :cond_21

    .line 77
    :try_start_2
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_f

    .line 66
    :cond_21
    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 67
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_f

    .line 68
    :cond_22
    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 69
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_f

    .line 70
    :cond_23
    invoke-virtual {v5, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 71
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_f

    :cond_24
    const/16 v8, 0xd

    .line 72
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_f

    .line 73
    :cond_25
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 74
    invoke-virtual {v5, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_f

    .line 75
    :cond_26
    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 76
    invoke-virtual {v5, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    :goto_f
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzn:Landroid/widget/LinearLayout;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzbrv;

    invoke-direct {v9, v1}, Lcom/google/android/gms/internal/ads/zzbrv;-><init>(Lcom/google/android/gms/internal/ads/zzbrw;)V

    .line 79
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzn:Landroid/widget/LinearLayout;

    const-string v9, "Close button"

    .line 80
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzn:Landroid/widget/LinearLayout;

    .line 81
    invoke-virtual {v8, v9, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    .line 82
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    const/4 v8, 0x0

    aget v9, v16, v8

    invoke-static {v4, v9}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v9

    .line 84
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbb;->zzb()Lcom/google/android/gms/ads/internal/util/client/zzf;

    aget v11, v16, v10

    invoke-static {v4, v11}, Lcom/google/android/gms/ads/internal/util/client/zzf;->zzy(Landroid/content/Context;I)I

    move-result v4

    .line 85
    invoke-virtual {v5, v0, v8, v9, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    aget v0, v16, v8

    aget v2, v16, v10

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzo:Lcom/google/android/gms/internal/ads/zzbsd;

    if-eqz v4, :cond_27

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    .line 92
    invoke-interface {v4, v0, v2, v5, v8}, Lcom/google/android/gms/internal/ads/zzbsd;->zza(IIII)V

    :cond_27
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzcgf;->zzb(II)Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v2

    .line 93
    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    const/4 v0, 0x0

    aget v2, v16, v0

    aget v4, v16, v10

    .line 94
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzk:Landroid/app/Activity;

    invoke-static {v5}, Lcom/google/android/gms/ads/internal/util/zzs;->zzS(Landroid/app/Activity;)[I

    move-result-object v5

    aget v0, v5, v0

    sub-int/2addr v4, v0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzh:I

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zze:I

    .line 95
    invoke-virtual {v1, v2, v4, v0, v5}, Lcom/google/android/gms/internal/ads/zzbsc;->zzk(IIII)V

    const-string v0, "resized"

    .line 96
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzl(Ljava/lang/String;)V

    .line 97
    monitor-exit v3

    return-void

    :catch_0
    move-exception v0

    .line 86
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzq:Landroid/widget/RelativeLayout;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzj:Lcom/google/android/gms/internal/ads/zzcel;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 87
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzm:Landroid/widget/ImageView;

    .line 88
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzr:Landroid/view/ViewGroup;

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    .line 89
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzbrw;->zzl:Lcom/google/android/gms/internal/ads/zzcgf;

    .line 90
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    .line 91
    :cond_28
    monitor-exit v3

    return-void

    .line 44
    :cond_29
    const-string v0, "Webview is detached, probably in the middle of a resize or expand."

    .line 41
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 42
    monitor-exit v3

    return-void

    .line 21
    :cond_2a
    :goto_10
    const-string v0, "Activity context is not ready, cannot get window or decor view."

    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 23
    monitor-exit v3

    return-void

    .line 31
    :cond_2b
    const-string v0, "Invalid width and height options. Cannot resize."

    .line 18
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbsc;->zzh(Ljava/lang/String;)V

    .line 19
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    .line 97
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x514d33ab -> :sswitch_5
        -0x3c587281 -> :sswitch_4
        -0x27103597 -> :sswitch_3
        0x455fe3fa -> :sswitch_2
        0x4ccee637 -> :sswitch_1
        0x68a23bcd -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_b
        -0x3c587281 -> :sswitch_a
        -0x27103597 -> :sswitch_9
        0x455fe3fa -> :sswitch_8
        0x4ccee637 -> :sswitch_7
        0x68a23bcd -> :sswitch_6
    .end sparse-switch
.end method

.method public final zzd(IIZ)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzi:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final zze(II)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzc:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzd:I

    return-void
.end method

.method public final zzf()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzi:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbrw;->zzp:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
