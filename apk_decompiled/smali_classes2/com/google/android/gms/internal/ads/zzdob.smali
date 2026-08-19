.class public final synthetic Lcom/google/android/gms/internal/ads/zzdob;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjj;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdod;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcel;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdod;Lcom/google/android/gms/internal/ads/zzcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdob;->zza:Lcom/google/android/gms/internal/ads/zzdod;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdob;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdob;->zza:Lcom/google/android/gms/internal/ads/zzdod;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdob;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcel;

    invoke-static {v0, v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzdod;->zzf(Lcom/google/android/gms/internal/ads/zzdod;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzcel;Ljava/util/Map;)V

    return-void
.end method
