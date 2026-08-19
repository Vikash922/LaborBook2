.class public final synthetic Lcom/google/android/gms/internal/ads/zzdhb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdhl;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzdjo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdhl;Lcom/google/android/gms/internal/ads/zzdjo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zza:Lcom/google/android/gms/internal/ads/zzdhl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzb:Lcom/google/android/gms/internal/ads/zzdjo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zza:Lcom/google/android/gms/internal/ads/zzdhl;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdhb;->zzb:Lcom/google/android/gms/internal/ads/zzdjo;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdhl;->zzw(Lcom/google/android/gms/internal/ads/zzdhl;Lcom/google/android/gms/internal/ads/zzdjo;)V

    return-void
.end method
