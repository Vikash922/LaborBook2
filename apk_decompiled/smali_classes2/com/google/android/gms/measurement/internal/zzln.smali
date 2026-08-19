.class final Lcom/google/android/gms/measurement/internal/zzln;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@22.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/measurement/internal/zzlh;

.field private final synthetic zzb:J

.field private final synthetic zzc:Lcom/google/android/gms/measurement/internal/zzlg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzlh;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlh;

    iput-wide p3, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzb:J

    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzc:Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzc:Lcom/google/android/gms/measurement/internal/zzlg;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/zzln;->zza:Lcom/google/android/gms/measurement/internal/zzlh;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzb:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/gms/measurement/internal/zzlg;->zza(Lcom/google/android/gms/measurement/internal/zzlg;Lcom/google/android/gms/measurement/internal/zzlh;ZJ)V

    .line 3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzc:Lcom/google/android/gms/measurement/internal/zzlg;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/measurement/internal/zzlg;->zza:Lcom/google/android/gms/measurement/internal/zzlh;

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/zzln;->zzc:Lcom/google/android/gms/measurement/internal/zzlg;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/zzg;->zzo()Lcom/google/android/gms/measurement/internal/zzlp;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/zzlp;->zza(Lcom/google/android/gms/measurement/internal/zzlh;)V

    return-void
.end method
