.class public final Lcom/google/android/gms/internal/ads/zzdiq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# static fields
.field static final zza:Landroid/widget/ImageView$ScaleType;


# instance fields
.field private final zzb:Lcom/google/android/gms/ads/internal/util/zzg;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzfbp;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzdhv;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdhq;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdje;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdjm;

.field private final zzh:Ljava/util/concurrent/Executor;

.field private final zzi:Ljava/util/concurrent/Executor;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbfi;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzdhn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdiq;->zza:Landroid/widget/ImageView$ScaleType;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/util/zzg;Lcom/google/android/gms/internal/ads/zzfbp;Lcom/google/android/gms/internal/ads/zzdhv;Lcom/google/android/gms/internal/ads/zzdhq;Lcom/google/android/gms/internal/ads/zzdje;Lcom/google/android/gms/internal/ads/zzdjm;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/zzdhn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfbp;->zzi:Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzj:Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzd:Lcom/google/android/gms/internal/ads/zzdhv;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zze:Lcom/google/android/gms/internal/ads/zzdhq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzf:Lcom/google/android/gms/internal/ads/zzdje;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzg:Lcom/google/android/gms/internal/ads/zzdjm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzh:Ljava/util/concurrent/Executor;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzi:Ljava/util/concurrent/Executor;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzk:Lcom/google/android/gms/internal/ads/zzdhn;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzdiq;Landroid/view/ViewGroup;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zze:Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzf()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    const-string v1, "2"

    .line 3
    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "1"

    .line 4
    invoke-interface {v0, p0, v1, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 1
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzb:Lcom/google/android/gms/ads/internal/util/zzg;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzc:Lcom/google/android/gms/internal/ads/zzfbp;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhq;->zzc()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzfbp;->zzf:Ljava/lang/String;

    .line 2
    invoke-interface {v1, p0, v0, p1}, Lcom/google/android/gms/ads/internal/util/zzg;->zzF(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdjo;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzd:Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhv;->zzf()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdhv;->zze()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v4

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const-string v5, "1098"

    aput-object v5, v1, v2

    const-string v5, "3011"

    aput-object v5, v1, v3

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_0

    .line 3
    aget-object v6, v1, v5

    .line 4
    invoke-interface {p1, v6}, Lcom/google/android/gms/internal/ads/zzdjo;->zzg(Ljava/lang/String;)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 5
    instance-of v7, v6, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    .line 6
    check-cast v6, Landroid/view/ViewGroup;

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 7
    :goto_2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzf()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v5, -0x2

    .line 8
    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zze:Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zze()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zze()Landroid/view/View;

    move-result-object v0

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzj:Lcom/google/android/gms/internal/ads/zzbfi;

    if-nez v7, :cond_3

    goto :goto_3

    :cond_3
    if-nez v6, :cond_7

    .line 23
    iget v6, v7, Lcom/google/android/gms/internal/ads/zzbfi;->zze:I

    .line 9
    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzdiq;->zzh(Landroid/widget/RelativeLayout$LayoutParams;I)V

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object v6, v4

    goto :goto_3

    :cond_4
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzl()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v7

    instance-of v7, v7, Lcom/google/android/gms/internal/ads/zzbfd;

    if-nez v7, :cond_5

    move-object v0, v4

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzl()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v7

    .line 11
    check-cast v7, Lcom/google/android/gms/internal/ads/zzbfd;

    if-nez v6, :cond_6

    .line 12
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzbfd;->zzc()I

    move-result v6

    invoke-static {v1, v6}, Lcom/google/android/gms/internal/ads/zzdiq;->zzh(Landroid/widget/RelativeLayout$LayoutParams;I)V

    move-object v6, v4

    .line 13
    :cond_6
    new-instance v8, Lcom/google/android/gms/internal/ads/zzbfe;

    invoke-direct {v8, v0, v7, v1}, Lcom/google/android/gms/internal/ads/zzbfe;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbfd;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 14
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzea:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 15
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v8, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move-object v0, v8

    :cond_7
    :goto_3
    const/4 v1, -0x1

    if-nez v0, :cond_8

    goto :goto_5

    .line 16
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_9

    .line 17
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_9
    if-eqz v6, :cond_a

    .line 18
    invoke-virtual {v6}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 19
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_4

    .line 24
    :cond_a
    new-instance v6, Lcom/google/android/gms/ads/formats/zza;

    .line 20
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzf()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/google/android/gms/ads/formats/zza;-><init>(Landroid/content/Context;)V

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    invoke-direct {v7, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Lcom/google/android/gms/ads/formats/zza;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    invoke-virtual {v6, v0}, Lcom/google/android/gms/ads/formats/zza;->addView(Landroid/view/View;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh()Landroid/widget/FrameLayout;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 23
    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 19
    :cond_b
    :goto_4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzk()Ljava/lang/String;

    move-result-object v6

    .line 24
    invoke-interface {p1, v6, v0, v3}, Lcom/google/android/gms/internal/ads/zzdjo;->zzq(Ljava/lang/String;Landroid/view/View;Z)V

    .line 25
    :goto_5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzdim;->zza:Lcom/google/android/gms/internal/ads/zzfww;

    .line 26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    move v7, v2

    :cond_c
    if-ge v7, v6, :cond_d

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    .line 25
    check-cast v8, Ljava/lang/String;

    .line 27
    invoke-interface {p1, v8}, Lcom/google/android/gms/internal/ads/zzdjo;->zzg(Ljava/lang/String;)Landroid/view/View;

    move-result-object v8

    .line 28
    instance-of v9, v8, Landroid/view/ViewGroup;

    add-int/lit8 v7, v7, 0x1

    if-eqz v9, :cond_c

    .line 29
    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_6

    :cond_d
    move-object v8, v4

    :goto_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzi:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzdin;

    invoke-direct {v6, p0, v8}, Lcom/google/android/gms/internal/ads/zzdin;-><init>(Lcom/google/android/gms/internal/ads/zzdiq;Landroid/view/ViewGroup;)V

    .line 30
    invoke-interface {v0, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    if-nez v8, :cond_e

    goto/16 :goto_9

    .line 31
    :cond_e
    invoke-direct {p0, v8, v3}, Lcom/google/android/gms/internal/ads/zzdiq;->zzi(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzs()Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzs()Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdip;

    invoke-direct {v0, p1, v8}, Lcom/google/android/gms/internal/ads/zzdip;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;Landroid/view/ViewGroup;)V

    .line 32
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzar(Lcom/google/android/gms/internal/ads/zzbfh;)V

    return-void

    .line 33
    :cond_f
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzke:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 35
    invoke-direct {p0, v8, v2}, Lcom/google/android/gms/internal/ads/zzdiq;->zzi(Landroid/view/ViewGroup;Z)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzq()Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p0

    if-eqz p0, :cond_14

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdhq;->zzq()Lcom/google/android/gms/internal/ads/zzcel;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdip;

    invoke-direct {v0, p1, v8}, Lcom/google/android/gms/internal/ads/zzdip;-><init>(Lcom/google/android/gms/internal/ads/zzdjo;Landroid/view/ViewGroup;)V

    .line 53
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzar(Lcom/google/android/gms/internal/ads/zzbfh;)V

    return-void

    .line 36
    :cond_10
    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 37
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzf()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 38
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    :cond_11
    if-eqz v4, :cond_14

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzk:Lcom/google/android/gms/internal/ads/zzdhn;

    .line 39
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhn;->zza()Lcom/google/android/gms/internal/ads/zzbfq;

    move-result-object p0

    if-eqz p0, :cond_14

    .line 40
    :try_start_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzbfq;->zzi()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_14

    .line 43
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    if-eqz p0, :cond_14

    new-instance v0, Landroid/widget/ImageView;

    .line 44
    invoke-direct {v0, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzj()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    if-eqz p0, :cond_13

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzgh:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 46
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_7

    .line 49
    :cond_12
    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView$ScaleType;

    .line 50
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_8

    .line 47
    :cond_13
    :goto_7
    sget-object p0, Lcom/google/android/gms/internal/ads/zzdiq;->zza:Landroid/widget/ImageView$ScaleType;

    .line 48
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_8
    new-instance p0, Landroid/widget/FrameLayout$LayoutParams;

    .line 51
    invoke-direct {p0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 41
    :catch_0
    sget p0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p0, "Could not get main image drawable"

    .line 42
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    :cond_14
    :goto_9
    return-void
.end method

.method private static zzh(Landroid/widget/RelativeLayout$LayoutParams;I)V
    .locals 5

    const/16 v0, 0x9

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    const/16 v3, 0xb

    const/16 v4, 0xc

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 8
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 1
    :cond_0
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 4
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void

    .line 5
    :cond_2
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    return-void
.end method

.method private final zzi(Landroid/view/ViewGroup;Z)Z
    .locals 3

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zze:Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzf()Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zze:Lcom/google/android/gms/internal/ads/zzdhq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzdhq;->zzg()Landroid/view/View;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzec:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x11

    if-eqz v0, :cond_3

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    .line 6
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto :goto_1

    .line 8
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x2

    .line 7
    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 8
    :goto_1
    invoke-virtual {p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final zzc(Lcom/google/android/gms/internal/ads/zzdjo;)V
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzf:Lcom/google/android/gms/internal/ads/zzdje;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh()Landroid/widget/FrameLayout;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzd:Lcom/google/android/gms/internal/ads/zzdhv;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzdhv;->zzg()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdje;->zza()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcex; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 3
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzdjo;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzf()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzd:Lcom/google/android/gms/internal/ads/zzdhv;

    .line 2
    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdhv;->zza:Lcom/google/android/gms/internal/ads/zzfau;

    invoke-static {v0, v1}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzh(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfau;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_1

    .line 4
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Activity context is needed for policy validator."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zze(Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzg:Lcom/google/android/gms/internal/ads/zzdjm;

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_2

    :try_start_0
    const-string v2, "window"

    .line 6
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzdjo;->zzh()Landroid/widget/FrameLayout;

    move-result-object p1

    .line 7
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzdjm;->zza(Landroid/view/View;Landroid/view/WindowManager;)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-static {}, Lcom/google/android/gms/ads/internal/util/zzbv;->zzb()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 9
    invoke-interface {v0, p1, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcex; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "web view can not be obtained"

    .line 10
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zze;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzdjo;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdio;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzdio;-><init>(Lcom/google/android/gms/internal/ads/zzdiq;Lcom/google/android/gms/internal/ads/zzdjo;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdiq;->zzh:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final zzf(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdiq;->zzi(Landroid/view/ViewGroup;Z)Z

    move-result p1

    return p1
.end method

.method public final zzg(Landroid/view/ViewGroup;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzdiq;->zzi(Landroid/view/ViewGroup;Z)Z

    move-result p1

    return p1
.end method
