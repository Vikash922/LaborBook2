.class final Lcom/google/android/gms/internal/ads/zzlr;
.super Lcom/google/android/gms/internal/ads/zzum;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zzc:Lcom/google/android/gms/internal/ads/zzbk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzls;Lcom/google/android/gms/internal/ads/zzbl;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ads/zzum;-><init>(Lcom/google/android/gms/internal/ads/zzbl;)V

    .line 2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbk;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzbk;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzlr;->zzc:Lcom/google/android/gms/internal/ads/zzbk;

    return-void
.end method


# virtual methods
.method public final zzd(ILcom/google/android/gms/internal/ads/zzbj;Z)Lcom/google/android/gms/internal/ads/zzbj;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzum;->zzb:Lcom/google/android/gms/internal/ads/zzbl;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbl;->zzd(ILcom/google/android/gms/internal/ads/zzbj;Z)Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object p1

    .line 2
    iget p3, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzlr;->zzc:Lcom/google/android/gms/internal/ads/zzbk;

    const-wide/16 v2, 0x0

    .line 3
    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzbl;->zze(ILcom/google/android/gms/internal/ads/zzbk;J)Lcom/google/android/gms/internal/ads/zzbk;

    move-result-object p3

    .line 2
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzbk;->zzb()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzbj;->zza:Ljava/lang/Object;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzb:Ljava/lang/Object;

    iget v4, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzc:I

    iget-wide v5, p2, Lcom/google/android/gms/internal/ads/zzbj;->zzd:J

    iget-wide p2, p2, Lcom/google/android/gms/internal/ads/zzbj;->zze:J

    sget-object v9, Lcom/google/android/gms/internal/ads/zzb;->zza:Lcom/google/android/gms/internal/ads/zzb;

    const/4 v10, 0x1

    const-wide/16 v7, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v10}, Lcom/google/android/gms/internal/ads/zzbj;->zzi(Ljava/lang/Object;Ljava/lang/Object;IJJLcom/google/android/gms/internal/ads/zzb;Z)Lcom/google/android/gms/internal/ads/zzbj;

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzf:Z

    :goto_0
    return-object p1
.end method
