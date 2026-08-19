.class public final Lcom/google/android/gms/internal/ads/zzcqb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhey;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcpy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcpy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zza:Lcom/google/android/gms/internal/ads/zzcpy;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcpy;)Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcpy;->zza()Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcxv;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzcxv;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zza:Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqb;->zzc(Lcom/google/android/gms/internal/ads/zzcpy;)Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcqb;->zza:Lcom/google/android/gms/internal/ads/zzcpy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcqb;->zzc(Lcom/google/android/gms/internal/ads/zzcpy;)Lcom/google/android/gms/internal/ads/zzcxv;

    move-result-object v0

    return-object v0
.end method
