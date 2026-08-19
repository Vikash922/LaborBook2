.class final Lcom/google/android/gms/internal/ads/zzaas;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzabv;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaax;

.field private zzb:Lcom/google/android/gms/internal/ads/zzfww;

.field private zzc:Lcom/google/android/gms/internal/ads/zzz;

.field private zzd:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaax;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzeu;->zzL(Landroid/content/Context;)Z

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfww;->zzn()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzd:J

    return-void
.end method

.method private final zza(Ljava/util/List;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzfwt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfwt;-><init>()V

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfwt;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwt;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzf(Lcom/google/android/gms/internal/ads/zzaax;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfwt;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfwt;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzfwt;->zzi()Lcom/google/android/gms/internal/ads/zzfww;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    return-void
.end method

.method private static final zzb(Lcom/google/android/gms/internal/ads/zzz;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzz;->zzb()Lcom/google/android/gms/internal/ads/zzx;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzz;->zzC:Lcom/google/android/gms/internal/ads/zzk;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzaax;->zzb(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzk;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzx;->zzD(Lcom/google/android/gms/internal/ads/zzk;)Lcom/google/android/gms/internal/ads/zzx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzx;->zzaj()Lcom/google/android/gms/internal/ads/zzz;

    const/4 p0, 0x0

    .line 3
    throw p0
.end method


# virtual methods
.method public final zzc(Z)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 1
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzd:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzj(Lcom/google/android/gms/internal/ads/zzaax;Z)V

    return-void
.end method

.method public final zzd(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzd(Z)V

    return-void
.end method

.method public final zze(ILcom/google/android/gms/internal/ads/zzz;JILjava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzdc;->zzf(Z)V

    .line 2
    invoke-direct {p0, p6}, Lcom/google/android/gms/internal/ads/zzaas;->zza(Ljava/util/List;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    const-wide p5, -0x7fffffffffffffffL    # -4.9E-324

    .line 3
    invoke-static {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzaax;->zzh(Lcom/google/android/gms/internal/ads/zzaax;J)V

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzaas;->zzb(Lcom/google/android/gms/internal/ads/zzz;)V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaax;->zzc(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzeq;

    move-result-object p1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzd:J

    cmp-long p2, v0, p5

    if-nez p2, :cond_0

    const-wide/16 p5, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 p5, 0x1

    add-long/2addr p5, v0

    .line 5
    :goto_0
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    .line 6
    invoke-virtual {p1, p5, p6, p2}, Lcom/google/android/gms/internal/ads/zzeq;->zzd(JLjava/lang/Object;)V

    return-void
.end method

.method public final zzf()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final zzh(JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzabu;
        }
    .end annotation

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzi(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaax;->zzd(Lcom/google/android/gms/internal/ads/zzaax;)Lcom/google/android/gms/internal/ads/zzabv;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzabv;->zzi(I)V

    return-void
.end method

.method public final zzj(F)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzk(Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzb:Lcom/google/android/gms/internal/ads/zzfww;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzfww;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzaas;->zza(Ljava/util/List;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzc:Lcom/google/android/gms/internal/ads/zzz;

    if-eqz p1, :cond_1

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzaas;->zzb(Lcom/google/android/gms/internal/ads/zzz;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzaay;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzm()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaas;->zza:Lcom/google/android/gms/internal/ads/zzaax;

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzaas;->zzd:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzaax;->zzh(Lcom/google/android/gms/internal/ads/zzaax;J)V

    return-void
.end method

.method public final zzn(Z)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
