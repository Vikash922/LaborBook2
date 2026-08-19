.class public final Lcom/google/android/gms/internal/ads/zzdni;
.super Lcom/google/android/gms/internal/ads/zzcqg;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Ljava/lang/ref/WeakReference;

.field private final zze:Lcom/google/android/gms/internal/ads/zzdfm;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzdcg;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcvp;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzcww;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcrb;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzbwa;

.field private final zzk:Lcom/google/android/gms/internal/ads/zzfnc;

.field private final zzl:Lcom/google/android/gms/internal/ads/zzfbi;

.field private zzm:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzdfm;Lcom/google/android/gms/internal/ads/zzdcg;Lcom/google/android/gms/internal/ads/zzcvp;Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzcrb;Lcom/google/android/gms/internal/ads/zzfau;Lcom/google/android/gms/internal/ads/zzfnc;Lcom/google/android/gms/internal/ads/zzfbi;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqg;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzm:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdni;->zze:Lcom/google/android/gms/internal/ads/zzdfm;

    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-direct {p1, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzd:Ljava/lang/ref/WeakReference;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzf:Lcom/google/android/gms/internal/ads/zzdcg;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzg:Lcom/google/android/gms/internal/ads/zzcvp;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzh:Lcom/google/android/gms/internal/ads/zzcww;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzi:Lcom/google/android/gms/internal/ads/zzcrb;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzk:Lcom/google/android/gms/internal/ads/zzfnc;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbwu;

    iget-object p2, p9, Lcom/google/android/gms/internal/ads/zzfau;->zzl:Lcom/google/android/gms/internal/ads/zzbvw;

    if-eqz p2, :cond_0

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzbvw;->zza:Ljava/lang/String;

    goto :goto_0

    .line 3
    :cond_0
    const-string p3, ""

    :goto_0
    if-eqz p2, :cond_1

    .line 2
    iget p2, p2, Lcom/google/android/gms/internal/ads/zzbvw;->zzb:I

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    .line 3
    :goto_1
    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzbwu;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzj:Lcom/google/android/gms/internal/ads/zzbwa;

    iput-object p11, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzl:Lcom/google/android/gms/internal/ads/zzfbi;

    return-void
.end method


# virtual methods
.method public final finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcel;

    .line 2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzgH:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzm:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbzk;->zzf:Lcom/google/android/gms/internal/ads/zzgcd;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzdnh;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzdnh;-><init>(Lcom/google/android/gms/internal/ads/zzcel;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgcd;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :cond_1
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 7
    throw v0
.end method

.method public final zza()Landroid/os/Bundle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzh:Lcom/google/android/gms/internal/ads/zzcww;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcww;->zzb()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbwa;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzj:Lcom/google/android/gms/internal/ads/zzbwa;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzfbi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzl:Lcom/google/android/gms/internal/ads/zzfbi;

    return-object v0
.end method

.method public final zze()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzi:Lcom/google/android/gms/internal/ads/zzcrb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcrb;->zzg()Z

    move-result v0

    return v0
.end method

.method public final zzf()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzm:Z

    return v0
.end method

.method public final zzg()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzd:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->zzaG()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzh(ZLandroid/app/Activity;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdni;->zze:Lcom/google/android/gms/internal/ads/zzdfm;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdfm;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lcom/google/android/gms/internal/ads/zzfau;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzaQ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzc:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 13
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "Rewarded ads that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzg:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcvp;->zzb()V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzaR:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 16
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzk:Lcom/google/android/gms/internal/ads/zzfnc;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdni;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    .line 18
    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfax;->zzb:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzfnc;->zza(Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzm:Z

    if-eqz v1, :cond_2

    .line 5
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The rewarded ad have been showed."

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzg:Lcom/google/android/gms/internal/ads/zzcvp;

    const/16 p2, 0xa

    const/4 v0, 0x0

    .line 7
    invoke-static {p2, v0, v0}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 8
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcvp;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    return v2

    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzm:Z

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzf:Lcom/google/android/gms/internal/ads/zzdcg;

    .line 9
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdcg;->zzb()V

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzc:Landroid/content/Context;

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzg:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 10
    invoke-interface {v0, p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzdfm;->zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V

    .line 11
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzdcg;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdfl; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzdni;->zzg:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcvp;->zzc(Lcom/google/android/gms/internal/ads/zzdfl;)V

    return v2
.end method
