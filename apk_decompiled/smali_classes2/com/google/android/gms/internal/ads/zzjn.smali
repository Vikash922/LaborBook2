.class public final synthetic Lcom/google/android/gms/internal/ads/zzjn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field public final synthetic zza:I

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzbf;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbf;


# direct methods
.method public synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zza:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbe;

    sget v0, Lcom/google/android/gms/internal/ads/zzka;->zzd:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjn;->zza:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjn;->zzb:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-interface {p1, v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbe;->zzn(Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;I)V

    return-void
.end method
