.class public final synthetic Lcom/google/android/gms/internal/ads/zzdsy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdti;

.field public final synthetic zzb:Ljava/lang/Object;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbzp;

.field public final synthetic zzd:Ljava/lang/String;

.field public final synthetic zze:J

.field public final synthetic zzf:Lcom/google/android/gms/internal/ads/zzfgc;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdti;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbzp;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfgc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzb:Ljava/lang/Object;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzc:Lcom/google/android/gms/internal/ads/zzbzp;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzd:Ljava/lang/String;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zze:J

    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzf:Lcom/google/android/gms/internal/ads/zzfgc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zza:Lcom/google/android/gms/internal/ads/zzdti;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzb:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzc:Lcom/google/android/gms/internal/ads/zzbzp;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzd:Ljava/lang/String;

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zze:J

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzdsy;->zzf:Lcom/google/android/gms/internal/ads/zzfgc;

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdti;->zzi(Lcom/google/android/gms/internal/ads/zzdti;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbzp;Ljava/lang/String;JLcom/google/android/gms/internal/ads/zzfgc;)V

    return-void
.end method
