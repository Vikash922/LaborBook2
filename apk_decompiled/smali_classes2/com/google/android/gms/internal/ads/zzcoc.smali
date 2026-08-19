.class final Lcom/google/android/gms/internal/ads/zzcoc;
.super Lcom/google/android/gms/internal/ads/zzcnz;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzc:Landroid/content/Context;

.field private final zzd:Landroid/view/View;

.field private final zze:Lcom/google/android/gms/internal/ads/zzcel;

.field private final zzf:Lcom/google/android/gms/internal/ads/zzfav;

.field private final zzg:Lcom/google/android/gms/internal/ads/zzcqe;

.field private final zzh:Lcom/google/android/gms/internal/ads/zzdib;

.field private final zzi:Lcom/google/android/gms/internal/ads/zzdde;

.field private final zzj:Lcom/google/android/gms/internal/ads/zzhes;

.field private final zzk:Ljava/util/concurrent/Executor;

.field private zzl:Lcom/google/android/gms/ads/internal/client/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcqf;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzfav;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzcqe;Lcom/google/android/gms/internal/ads/zzdib;Lcom/google/android/gms/internal/ads/zzdde;Lcom/google/android/gms/internal/ads/zzhes;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcnz;-><init>(Lcom/google/android/gms/internal/ads/zzcqf;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzc:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzd:Landroid/view/View;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zze:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzf:Lcom/google/android/gms/internal/ads/zzfav;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzg:Lcom/google/android/gms/internal/ads/zzcqe;

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzh:Lcom/google/android/gms/internal/ads/zzdib;

    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzi:Lcom/google/android/gms/internal/ads/zzdde;

    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzj:Lcom/google/android/gms/internal/ads/zzhes;

    iput-object p10, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzk:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzcoc;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzh:Lcom/google/android/gms/internal/ads/zzdib;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdib;->zze()Lcom/google/android/gms/internal/ads/zzbhe;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzj:Lcom/google/android/gms/internal/ads/zzhes;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzhes;->zzb()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/client/zzbx;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzc:Landroid/content/Context;

    invoke-static {p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    .line 2
    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbhe;->zze(Lcom/google/android/gms/ads/internal/client/zzbx;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    sget v0, Lcom/google/android/gms/ads/internal/util/zze;->zza:I

    const-string v0, "RemoteException when notifyAdLoad is called"

    .line 4
    invoke-static {v0, p0}, Lcom/google/android/gms/ads/internal/util/client/zzo;->zzh(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final zza()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfax;->zzd:I

    return v0
.end method

.method public final zzc()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzhU:Lcom/google/android/gms/internal/ads/zzbbz;

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

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzag:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzhV:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zza:Lcom/google/android/gms/internal/ads/zzfbg;

    .line 5
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzfax;->zzc:I

    return v0
.end method

.method public final zzd()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzd:Landroid/view/View;

    return-object v0
.end method

.method public final zze()Lcom/google/android/gms/ads/internal/client/zzea;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzg:Lcom/google/android/gms/internal/ads/zzcqe;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcqe;->zza()Lcom/google/android/gms/ads/internal/client/zzea;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzfbw; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzfav;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfbv;->zzb(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzfav;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzb:Lcom/google/android/gms/internal/ads/zzfau;

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzac:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzfau;->zza:Ljava/util/List;

    .line 2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    const-string v4, "FirstParty"

    .line 3
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzd:Landroid/view/View;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfav;

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v0, v2}, Lcom/google/android/gms/internal/ads/zzfav;-><init>(IIZ)V

    return-object v1

    .line 4
    :cond_3
    :goto_0
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzfau;->zzr:Ljava/util/List;

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzfav;

    return-object v0
.end method

.method public final zzg()Lcom/google/android/gms/internal/ads/zzfav;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzf:Lcom/google/android/gms/internal/ads/zzfav;

    return-object v0
.end method

.method public final zzh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzi:Lcom/google/android/gms/internal/ads/zzdde;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdde;->zza()V

    return-void
.end method

.method public final zzi(Landroid/view/ViewGroup;Lcom/google/android/gms/ads/internal/client/zzr;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zze:Lcom/google/android/gms/internal/ads/zzcel;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcgf;->zzc(Lcom/google/android/gms/ads/internal/client/zzr;)Lcom/google/android/gms/internal/ads/zzcgf;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzcel;->zzaj(Lcom/google/android/gms/internal/ads/zzcgf;)V

    .line 2
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzc:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumHeight(I)V

    .line 3
    iget v0, p2, Lcom/google/android/gms/ads/internal/client/zzr;->zzf:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setMinimumWidth(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzl:Lcom/google/android/gms/ads/internal/client/zzr;

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcob;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcob;-><init>(Lcom/google/android/gms/internal/ads/zzcoc;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcoc;->zzk:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzcnz;->zzk()V

    return-void
.end method
