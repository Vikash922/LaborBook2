.class public final Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
.super Lcom/google/android/gms/internal/ads/zzgxp;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbbn$zzy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzgxp<",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzx;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;",
        ">;",
        "Lcom/google/android/gms/internal/ads/zzbbn$zzy;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzg()Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzgxp;-><init>(Lcom/google/android/gms/internal/ads/zzgxv;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zza(I)I

    move-result p1

    return p1
.end method

.method public zzb()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzb()I

    move-result v0

    return v0
.end method

.method public zzc()Lcom/google/android/gms/internal/ads/zzbbn$zzq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzc()Lcom/google/android/gms/internal/ads/zzbbn$zzq;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzx(Lcom/google/android/gms/internal/ads/zzbbn$zzx;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public zze(I)Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzy(Lcom/google/android/gms/internal/ads/zzbbn$zzx;I)V

    return-object p0
.end method

.method public zzf()Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzz(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V

    return-object p0
.end method

.method public zzg()Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzA(Lcom/google/android/gms/internal/ads/zzbbn$zzx;)V

    return-object p0
.end method

.method public zzh(II)Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzB(Lcom/google/android/gms/internal/ads/zzbbn$zzx;II)V

    return-object p0
.end method

.method public zzi(Lcom/google/android/gms/internal/ads/zzbbn$zzq;)Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbu()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    .line 2
    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzC(Lcom/google/android/gms/internal/ads/zzbbn$zzx;Lcom/google/android/gms/internal/ads/zzbbn$zzq;)V

    return-object p0
.end method

.method public zzj()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzj()Ljava/util/List;

    move-result-object v0

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public zzk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbbn$zzx$zza;->zza:Lcom/google/android/gms/internal/ads/zzgxv;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbbn$zzx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbbn$zzx;->zzk()Z

    move-result v0

    return v0
.end method
