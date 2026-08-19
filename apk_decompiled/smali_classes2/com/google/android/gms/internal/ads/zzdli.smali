.class public final synthetic Lcom/google/android/gms/internal/ads/zzdli;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcgb;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzdlp;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzcel;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzbzo;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdli;->zza:Lcom/google/android/gms/internal/ads/zzdlp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzc:Lcom/google/android/gms/internal/ads/zzbzo;

    return-void
.end method


# virtual methods
.method public final zza(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdli;->zza:Lcom/google/android/gms/internal/ads/zzdlp;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzb:Lcom/google/android/gms/internal/ads/zzcel;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzdli;->zzc:Lcom/google/android/gms/internal/ads/zzbzo;

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzdlp;->zzg(Lcom/google/android/gms/internal/ads/zzdlp;Lcom/google/android/gms/internal/ads/zzcel;Lcom/google/android/gms/internal/ads/zzbzo;ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
