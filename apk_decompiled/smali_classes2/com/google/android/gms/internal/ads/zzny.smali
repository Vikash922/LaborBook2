.class public final synthetic Lcom/google/android/gms/internal/ads/zzny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzz;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzhz;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzny;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzny;->zzc:Lcom/google/android/gms/internal/ads/zzhz;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzmj;

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzny;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzny;->zzb:Lcom/google/android/gms/internal/ads/zzz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzny;->zzc:Lcom/google/android/gms/internal/ads/zzhz;

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzmj;->zze(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzz;Lcom/google/android/gms/internal/ads/zzhz;)V

    return-void
.end method
