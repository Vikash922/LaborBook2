.class public final synthetic Lcom/google/android/gms/internal/ads/zzvc;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdk;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzvi;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzup;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzuu;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzvi;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zzvi;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzd:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvc;->zza:Lcom/google/android/gms/internal/ads/zzvi;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzvi;->zzb:Lcom/google/android/gms/internal/ads/zzuy;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzb:Lcom/google/android/gms/internal/ads/zzup;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzc:Lcom/google/android/gms/internal/ads/zzuu;

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzvc;->zzd:I

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzvj;

    const/4 v2, 0x0

    .line 1
    invoke-interface/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzvj;->zzak(ILcom/google/android/gms/internal/ads/zzuy;Lcom/google/android/gms/internal/ads/zzup;Lcom/google/android/gms/internal/ads/zzuu;I)V

    return-void
.end method
