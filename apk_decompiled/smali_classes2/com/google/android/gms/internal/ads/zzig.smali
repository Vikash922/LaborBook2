.class final Lcom/google/android/gms/internal/ads/zzig;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzmd;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzif;

.field private zzc:Lcom/google/android/gms/internal/ads/zzlu;

.field private zzd:Lcom/google/android/gms/internal/ads/zzkv;

.field private zze:Z

.field private zzf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzif;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzb:Lcom/google/android/gms/internal/ads/zzif;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzmd;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzmd;-><init>(Lcom/google/android/gms/internal/ads/zzdg;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmd;->zza()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkv;->zza()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final zzb(Z)J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlu;->zzW()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlu;->zzcT()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzlu;->zzX()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlu;->zzQ()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzkv;

    .line 6
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkv;->zza()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    .line 7
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmd;->zza()J

    move-result-wide v3

    cmp-long v3, v0, v3

    if-gez v3, :cond_2

    .line 8
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmd;->zze()V

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Z

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmd;->zzd()V

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    .line 10
    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzmd;->zzb(J)V

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkv;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object p1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzmd;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 12
    invoke-virtual {v2, p1}, Lcom/google/android/gms/internal/ads/zzmd;->zzg(Lcom/google/android/gms/internal/ads/zzbb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzb:Lcom/google/android/gms/internal/ads/zzif;

    .line 13
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzif;->zzc(Lcom/google/android/gms/internal/ads/zzbb;)V

    goto :goto_1

    :cond_4
    :goto_0
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmd;->zzd()V

    .line 16
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzig;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbb;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmd;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzlu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    :cond_0
    return-void
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzlu;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzii;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzlu;->zzl()Lcom/google/android/gms/internal/ads/zzkv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    .line 2
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzc:Lcom/google/android/gms/internal/ads/zzlu;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzmd;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object p1

    .line 3
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzkv;->zzg(Lcom/google/android/gms/internal/ads/zzbb;)V

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Multiple renderer media clocks enabled."

    .line 2
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzii;->zzd(Ljava/lang/RuntimeException;I)Lcom/google/android/gms/internal/ads/zzii;

    move-result-object p1

    throw p1

    :cond_1
    return-void
.end method

.method public final zzf(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzmd;->zzb(J)V

    return-void
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbb;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzkv;->zzg(Lcom/google/android/gms/internal/ads/zzbb;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    .line 2
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzkv;->zzc()Lcom/google/android/gms/internal/ads/zzbb;

    move-result-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzmd;->zzg(Lcom/google/android/gms/internal/ads/zzbb;)V

    return-void
.end method

.method public final zzh()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmd;->zzd()V

    return-void
.end method

.method public final zzi()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzf:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zza:Lcom/google/android/gms/internal/ads/zzmd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzmd;->zze()V

    return-void
.end method

.method public final zzj()Z
    .locals 2

    .line 2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zze:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzig;->zzd:Lcom/google/android/gms/internal/ads/zzkv;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzkv;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzkv;->zzj()Z

    move-result v0

    return v0
.end method
