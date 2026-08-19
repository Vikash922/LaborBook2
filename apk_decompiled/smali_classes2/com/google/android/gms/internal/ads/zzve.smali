.class public final synthetic Lcom/google/android/gms/internal/ads/zzve;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzup;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuu;

.field public final synthetic zzd:Ljava/io/IOException;

.field public final synthetic zze:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzve;->zza:Lcom/google/android/gms/internal/ads/zzvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzve;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzve;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzve;->zzd:Ljava/io/IOException;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/ads/zzve;->zze:Z

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzve;->zza:Lcom/google/android/gms/internal/ads/zzvi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvi;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzve;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzve;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzve;->zzd:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzve;->zze:Z

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvj;

    const/4 v2, 0x0

    .line 1
    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzvj;->zzaj(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;Ljava/io/IOException;Z)V

    return-void
.end method
