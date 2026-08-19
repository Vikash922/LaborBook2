.class public final synthetic Lcom/google/android/gms/internal/ads/zzjo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdt;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzap;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjo;->zza:Lcom/google/android/gms/internal/ads/zzap;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzb:I

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbe;

    sget v0, Lcom/google/android/gms/internal/ads/zzka;->zzd:I

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjo;->zza:Lcom/google/android/gms/internal/ads/zzap;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzjo;->zzb:I

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbe;->zze(Lcom/google/android/gms/internal/ads/zzap;I)V

    return-void
.end method
