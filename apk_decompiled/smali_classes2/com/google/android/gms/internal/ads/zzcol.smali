.class public final Lcom/google/android/gms/internal/ads/zzcol;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcog;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhfh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcog;Lcom/google/android/gms/internal/ads/zzhfh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcol;->zza:Lcom/google/android/gms/internal/ads/zzcog;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcog;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzcnz;
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzcoc;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcnz;

    return-object p1
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcnz;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcol;->zzb:Lcom/google/android/gms/internal/ads/zzhfh;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcod;

    .line 1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcod;->zza()Lcom/google/android/gms/internal/ads/zzcoc;

    move-result-object v0

    .line 2
    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcoc;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcnz;

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcol;->zza()Lcom/google/android/gms/internal/ads/zzcnz;

    move-result-object v0

    return-object v0
.end method
