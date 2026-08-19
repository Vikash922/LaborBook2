.class final Lcom/google/android/gms/internal/ads/zzfng;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfnh;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzasu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzasu;->zza()Lcom/google/android/gms/internal/ads/zzarz;

    move-result-object v0

    const-string v1, "E"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarz;->zzv(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzarz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasu;

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Lcom/google/android/gms/internal/ads/zzasu;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzasu;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfng;->zza:Lcom/google/android/gms/internal/ads/zzasu;

    return-object v0
.end method
