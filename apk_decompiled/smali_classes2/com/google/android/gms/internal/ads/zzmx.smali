.class public final synthetic Lcom/google/android/gms/internal/ads/zzmx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzmh;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzup;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuu;

.field public final synthetic zzd:Ljava/io/IOException;

.field public final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmx;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzmx;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 6

    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/ads/zzmj;

    .line 1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzmx;->zza:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzmx;->zzd:Ljava/io/IOException;

    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/zzmx;->zze:Z

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzmj;->zzj(Lcom/google/android/gms/internal/ads/zzmh;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V

    return-void
.end method
