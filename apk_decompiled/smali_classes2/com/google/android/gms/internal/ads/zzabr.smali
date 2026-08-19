.class public final Lcom/google/android/gms/internal/ads/zzabr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Landroid/os/Handler;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabs;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzabs;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v0, p1

    check-cast v0, Landroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/Exception;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzo(Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzq(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzabr;JI)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    .line 2
    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabs;->zzt(JI)V

    return-void
.end method

.method public static synthetic zzd(Lcom/google/android/gms/internal/ads/zzabr;IJ)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabs;->zzl(IJ)V

    return-void
.end method

.method public static synthetic zze(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzv(Lcom/google/android/gms/internal/ads/zzcd;)V

    return-void
.end method

.method public static synthetic zzf(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhy;->zza()V

    .line 2
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzr(Lcom/google/android/gms/internal/ads/zzhy;)V

    return-void
.end method

.method public static synthetic zzg(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabs;->zzu(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V

    return-void
.end method

.method public static synthetic zzh(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/Object;J)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabs;->zzm(Ljava/lang/Object;J)V

    return-void
.end method

.method public static synthetic zzi(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 1

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzabs;

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzabs;->zzs(Lcom/google/android/gms/internal/ads/zzhy;)V

    return-void
.end method

.method public static synthetic zzj(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;JJ)V
    .locals 7

    .line 1
    sget v0, Lcom/google/android/gms/internal/ads/zzeu;->zza:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzabr;->zzb:Lcom/google/android/gms/internal/ads/zzabs;

    move-object p0, v1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzabs;

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    .line 2
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzabs;->zzp(Ljava/lang/String;JJ)V

    return-void
.end method


# virtual methods
.method public final zzk(Ljava/lang/String;JJ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v8, Lcom/google/android/gms/internal/ads/zzabh;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzabh;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzl(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabq;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabq;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhy;->zza()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabp;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabp;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzhy;)V

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzn(IJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabj;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabj;-><init>(Lcom/google/android/gms/internal/ads/zzabr;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzhy;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabn;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabn;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzhy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabo;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzabo;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzq(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance v3, Lcom/google/android/gms/internal/ads/zzabk;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzabk;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/Object;J)V

    .line 2
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzr(JI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabl;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzabl;-><init>(Lcom/google/android/gms/internal/ads/zzabr;JI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzs(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabm;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabm;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzcd;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzabr;->zza:Landroid/os/Handler;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzabi;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/zzabi;-><init>(Lcom/google/android/gms/internal/ads/zzabr;Lcom/google/android/gms/internal/ads/zzcd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
