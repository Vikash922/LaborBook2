.class public final Lcom/google/android/gms/internal/ads/zzeih;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzdfe;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdfe;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzdfe;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzeid;)Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/zzeif;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzeie;

    invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/ads/zzeie;-><init>(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzfau;)V

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/zzeif;-><init>(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzdfm;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcqw;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcqw;-><init>(Lcom/google/android/gms/internal/ads/zzfbg;Lcom/google/android/gms/internal/ads/zzfau;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeih;->zza:Lcom/google/android/gms/internal/ads/zzdfe;

    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzdfe;->zzd(Lcom/google/android/gms/internal/ads/zzcqw;Lcom/google/android/gms/internal/ads/zzdee;)Lcom/google/android/gms/internal/ads/zzdeb;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzeig;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzeig;-><init>(Lcom/google/android/gms/internal/ads/zzeih;Lcom/google/android/gms/internal/ads/zzdeb;)V

    .line 2
    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/zzeid;->zzd(Lcom/google/android/gms/ads/internal/zzg;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdeb;->zzg()Lcom/google/android/gms/internal/ads/zzdea;

    move-result-object p1

    return-object p1
.end method
