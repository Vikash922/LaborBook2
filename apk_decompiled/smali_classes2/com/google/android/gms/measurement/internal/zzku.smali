.class final Lcom/google/android/gms/measurement/internal/zzku;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzjc;

.field private final synthetic zzb:J

.field private final synthetic zzc:J

.field private final synthetic zzd:Z

.field private final synthetic zze:Lcom/google/android/gms/measurement/internal/zzjc;

.field private final synthetic zzf:Lcom/google/android/gms/measurement/internal/zzjk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzjc;JJZLcom/google/android/gms/measurement/internal/zzjc;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Lcom/google/android/gms/measurement/internal/zzjc;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    iput-wide p5, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzc:J

    iput-boolean p7, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Z

    iput-object p8, p0, Lcom/google/android/gms/measurement/internal/zzku;->zze:Lcom/google/android/gms/measurement/internal/zzjc;

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzjk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzjk;->zza(Lcom/google/android/gms/measurement/internal/zzjc;)V

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/measurement/zzpd;->zza()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzjk;

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zziy;->zze()Lcom/google/android/gms/measurement/internal/zzah;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/measurement/internal/zzbj;->zzdb:Lcom/google/android/gms/measurement/internal/zzfz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzah;->zza(Lcom/google/android/gms/measurement/internal/zzfz;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-wide v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzb:J

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/measurement/internal/zzjk;->zza(JZ)V

    .line 6
    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v5, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Lcom/google/android/gms/measurement/internal/zzjc;

    iget-wide v6, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzc:J

    const/4 v8, 0x1

    iget-boolean v9, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzd:Z

    invoke-static/range {v4 .. v9}, Lcom/google/android/gms/measurement/internal/zzjk;->zza(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzjc;JZZ)V

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzku;->zzf:Lcom/google/android/gms/measurement/internal/zzjk;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzku;->zza:Lcom/google/android/gms/measurement/internal/zzjc;

    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/zzku;->zze:Lcom/google/android/gms/measurement/internal/zzjc;

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/zzjk;->zza(Lcom/google/android/gms/measurement/internal/zzjk;Lcom/google/android/gms/measurement/internal/zzjc;Lcom/google/android/gms/measurement/internal/zzjc;)V

    return-void
.end method
