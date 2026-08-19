.class public final Lcom/google/android/gms/internal/ads/zzcnt;
.super Lcom/google/android/gms/internal/ads/zzcqg;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzd:I

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzcnh;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzdfm;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdcg;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzcvp;

.field private final zzj:Z

.field private final zzk:Lcom/google/android/gms/internal/ads/zzbze;

.field private zzl:Z


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcel;ILcom/google/android/gms/internal/ads/zzcnh;Lcom/google/android/gms/internal/ads/zzdfm;Lcom/google/android/gms/internal/ads/zzdcg;Lcom/google/android/gms/internal/ads/zzcvp;Lcom/google/android/gms/internal/ads/zzbze;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcqg;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzl:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zze:Landroid/content/Context;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzd:I

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzf:Lcom/google/android/gms/internal/ads/zzcnh;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzg:Lcom/google/android/gms/internal/ads/zzdfm;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzh:Lcom/google/android/gms/internal/ads/zzdcg;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzi:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 2
    sget-object p1, Lcom/google/android/gms/internal/ads/zzbci;->zzfx:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzj:Z

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzk:Lcom/google/android/gms/internal/ads/zzbze;

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzd:I

    return v0
.end method

.method public final zzb()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcqg;->zzb()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcel;->destroy()V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzazu;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcel;->zzak(Lcom/google/android/gms/internal/ads/zzazu;)V

    :cond_0
    return-void
.end method

.method public final zzd(Landroid/app/Activity;Lcom/google/android/gms/internal/ads/zzbah;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zze:Landroid/content/Context;

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzj:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzh:Lcom/google/android/gms/internal/ads/zzdcg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdcg;->zzb()V

    .line 2
    :cond_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzg:Lcom/google/android/gms/internal/ads/zzdfm;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdfm;->zza()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzO(Lcom/google/android/gms/internal/ads/zzfau;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzaQ:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 4
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzq()Lcom/google/android/gms/ads/internal/util/zzs;

    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzs;->zzH(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 20
    sget p2, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p2, "Interstitials that show when your app is in the background are a violation of AdMob policies and may lead to blocked ad serving. To learn more, visit https://goo.gle/admob-interstitial-policies"

    .line 21
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzi:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 22
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzcvp;->zzb()V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzbci;->zzaR:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object p3

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object p2

    .line 24
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfnc;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzv;->zzu()Lcom/google/android/gms/ads/internal/util/zzbt;

    move-result-object p3

    invoke-virtual {p3}, Lcom/google/android/gms/ads/internal/util/zzbt;->zzb()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzfnc;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    .line 26
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfax;->zzb:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfnc;->zza(Ljava/lang/String;)V

    return-void

    .line 5
    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/ads/zzbci;->zzlX:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzc:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v1, :cond_4

    .line 7
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzD()Lcom/google/android/gms/internal/ads/zzfau;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzar:Z

    if-eqz v3, :cond_4

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzfau;->zzas:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzk:Lcom/google/android/gms/internal/ads/zzbze;

    .line 8
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbze;->zzb()I

    move-result v3

    if-ne v1, v3, :cond_3

    goto :goto_0

    .line 16
    :cond_3
    sget p1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string p1, "The app open consent form has been shown."

    .line 17
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzi:Lcom/google/android/gms/internal/ads/zzcvp;

    const/16 p2, 0xc

    const-string p3, "The consent form has already been shown."

    .line 18
    invoke-static {p2, p3, v2}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzcvp;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    return-void

    .line 8
    :cond_4
    :goto_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzl:Z

    if-eqz v1, :cond_5

    .line 9
    sget v1, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v1, "App open interstitial ad is already visible."

    .line 10
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzj(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzi:Lcom/google/android/gms/internal/ads/zzcvp;

    const/16 v3, 0xa

    .line 11
    invoke-static {v3, v2, v2}, Lcom/google/android/gms/internal/ads/zzfcq;->zzd(ILjava/lang/String;Lcom/google/android/gms/ads/internal/client/zze;)Lcom/google/android/gms/ads/internal/client/zze;

    move-result-object v2

    .line 12
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzcvp;->zza(Lcom/google/android/gms/ads/internal/client/zze;)V

    :cond_5
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzl:Z

    if-nez v1, :cond_7

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzi:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 13
    invoke-interface {v0, p3, p1, v1}, Lcom/google/android/gms/internal/ads/zzdfm;->zzb(ZLandroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvp;)V

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzh:Lcom/google/android/gms/internal/ads/zzdcg;

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdcg;->zza()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzdfl; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzl:Z

    return-void

    :catch_0
    move-exception p1

    .line 19
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzi:Lcom/google/android/gms/internal/ads/zzcvp;

    .line 15
    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzcvp;->zzc(Lcom/google/android/gms/internal/ads/zzdfl;)V

    :cond_7
    return-void
.end method

.method public final zze(JI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnt;->zzf:Lcom/google/android/gms/internal/ads/zzcnh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcnh;->zza(JI)V

    return-void
.end method
