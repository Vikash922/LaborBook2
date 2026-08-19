.class final Lcom/google/android/gms/internal/ads/zzaae;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabv;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzabb;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzabg;

.field private final zzc:Ljava/util/Queue;

.field private zzd:Lcom/google/android/gms/internal/ads/zzz;

.field private zze:J

.field private zzf:Lcom/google/android/gms/internal/ads/zzaay;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzabb;Lcom/google/android/gms/internal/ads/zzdg;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzabb;->zzi(Lcom/google/android/gms/internal/ads/zzdg;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzabg;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaac;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzaac;-><init>(Lcom/google/android/gms/internal/ads/zzaae;Lcom/google/android/gms/internal/ads/zzaad;)V

    .line 2
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzabg;-><init>(Lcom/google/android/gms/internal/ads/zzaac;Lcom/google/android/gms/internal/ads/zzabb;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzb:Lcom/google/android/gms/internal/ads/zzabg;

    new-instance p1, Ljava/util/ArrayDeque;

    .line 3
    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzc:Ljava/util/Queue;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzx;

    .line 4
    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzx;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zze:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaab;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzaab;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzf:Lcom/google/android/gms/internal/ads/zzaay;

    return-void
.end method

.method static bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzaae;)Lcom/google/android/gms/internal/ads/zzaay;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzf:Lcom/google/android/gms/internal/ads/zzaay;

    return-object p0
.end method

.method static bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzaae;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzc:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public final zzc(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzg()V

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzb:Lcom/google/android/gms/internal/ads/zzabg;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzabg;->zza()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzc:Ljava/util/Queue;

    .line 3
    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method public final zzd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzc(Z)V

    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V
    .locals 1

    .line 1
    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 2
    iget p6, p1, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzz;->zzv:I

    if-ne v0, p6, :cond_0

    iget p6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    if-eq p6, p1, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzb:Lcom/google/android/gms/internal/ads/zzabg;

    iget p6, p2, Lcom/google/android/gms/internal/ads/zzz;->zzw:I

    .line 3
    invoke-virtual {p1, v0, p6}, Lcom/google/android/gms/internal/ads/zzabg;->zzc(II)V

    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    .line 4
    iget p6, p6, Lcom/google/android/gms/internal/ads/zzz;->zzx:F

    cmpl-float p6, p1, p6

    if-eqz p6, :cond_2

    iget-object p6, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    .line 5
    invoke-virtual {p6, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzj(F)V

    :cond_2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zze:J

    cmp-long p1, p3, p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzb:Lcom/google/android/gms/internal/ads/zzabg;

    .line 6
    invoke-virtual {p1, p5, p3, p4}, Lcom/google/android/gms/internal/ads/zzabg;->zzb(IJ)V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzaae;->zze:J

    :cond_3
    return-void
.end method

.method public final zzf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzd()V

    return-void
.end method

.method public final zzg()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzabb;->zze()V

    return-void
.end method

.method public final zzh(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabu;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzb:Lcom/google/android/gms/internal/ads/zzabg;

    .line 1
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzabg;->zzd(JJ)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzii; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 2
    new-instance p2, Lcom/google/android/gms/internal/ads/zzabu;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzd:Lcom/google/android/gms/internal/ads/zzz;

    invoke-direct {p2, p1, p3}, Lcom/google/android/gms/internal/ads/zzabu;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzz;)V

    throw p2
.end method

.method public final zzi(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzh(I)V

    return-void
.end method

.method public final zzj(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzabb;->zzl(F)V

    return-void
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzaay;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zzf:Lcom/google/android/gms/internal/ads/zzaay;

    return-void
.end method

.method public final zzm()V
    .locals 0

    return-void
.end method

.method public final zzn(Z)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaae;->zza:Lcom/google/android/gms/internal/ads/zzabb;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzabb;->zzm(Z)Z

    move-result p1

    return p1
.end method
