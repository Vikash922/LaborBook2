.class public final synthetic Lcom/google/android/gms/internal/ads/zznz;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmh;

.field public final synthetic zzb:I

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbf;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzbf;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;ILcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zznz;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzb:I

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zznz;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zznz;->zzd:Lcom/google/android/gms/internal/ads/zzbf;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmj;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zznz;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zznz;->zzd:Lcom/google/android/gms/internal/ads/zzbf;

    iget v2, p0, Lcom/google/android/gms/internal/ads/zznz;->zzb:I

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zznz;->zzc:Lcom/google/android/gms/internal/ads/zzbf;

    invoke-interface {p1, v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzmj;->zzm(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzbf;Lcom/google/android/gms/internal/ads/zzbf;I)V

    return-void
.end method
