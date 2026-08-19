.class final Lcom/google/android/gms/internal/ads/zzdwm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.2.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgbo;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzdwn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzdwn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zza:Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzgi:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzdwn;->zzd()Ljava/util/regex/Pattern;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zza:Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Lcom/google/android/gms/internal/ads/zzdwn;)Lcom/google/android/gms/internal/ads/zzdzp;

    move-result-object v0

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzdzp;->zzi(I)V

    :cond_0
    return-void
.end method

.method public final bridge synthetic zzb(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzfbg;

    .line 2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbci;->zzgi:Lcom/google/android/gms/internal/ads/zzbbz;

    .line 3
    invoke-static {}, Lcom/google/android/gms/ads/internal/client/zzbd;->zzc()Lcom/google/android/gms/internal/ads/zzbcg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcg;->zzb(Lcom/google/android/gms/internal/ads/zzbbz;)Ljava/lang/Object;

    move-result-object v0

    .line 2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdwm;->zza:Lcom/google/android/gms/internal/ads/zzdwn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Lcom/google/android/gms/internal/ads/zzdwn;)Lcom/google/android/gms/internal/ads/zzdzp;

    move-result-object v1

    .line 4
    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbg;->zzb:Lcom/google/android/gms/internal/ads/zzfbf;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfbf;->zzb:Lcom/google/android/gms/internal/ads/zzfax;

    iget v2, p1, Lcom/google/android/gms/internal/ads/zzfax;->zzf:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzdzp;->zzi(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdwn;->zza(Lcom/google/android/gms/internal/ads/zzdwn;)Lcom/google/android/gms/internal/ads/zzdzp;

    move-result-object v0

    iget-wide v1, p1, Lcom/google/android/gms/internal/ads/zzfax;->zzg:J

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzdzp;->zzj(J)V

    :cond_0
    return-void
.end method
