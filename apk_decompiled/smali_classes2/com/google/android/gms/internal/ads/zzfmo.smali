.class public final synthetic Lcom/google/android/gms/internal/ads/zzfmo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/tasks/Continuation;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzarf;

.field public final synthetic zzb:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzarf;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzfmo;->zzb:I

    return-void
.end method


# virtual methods
.method public final then(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Object;
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzfmr;->zza:I

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzfmo;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfmo;->zza:Lcom/google/android/gms/internal/ads/zzarf;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzfor;

    .line 3
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzbn()Lcom/google/android/gms/internal/ads/zzgxv;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzarj;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgvw;->zzaV()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzfor;->zza([B)Lcom/google/android/gms/internal/ads/zzfop;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzfop;->zza(I)Lcom/google/android/gms/internal/ads/zzfop;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfop;->zzc()V

    const/4 p1, 0x1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 7
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    return-object p1
.end method
