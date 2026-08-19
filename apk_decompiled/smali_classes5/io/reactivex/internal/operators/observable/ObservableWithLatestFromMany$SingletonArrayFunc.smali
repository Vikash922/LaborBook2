.class final Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;
.super Ljava/lang/Object;
.source "ObservableWithLatestFromMany.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SingletonArrayFunc"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;


# direct methods
.method constructor <init>(Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;)V
    .locals 0

    .line 286
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;->this$0:Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany$SingletonArrayFunc;->this$0:Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;

    iget-object v0, v0, Lio/reactivex/internal/operators/observable/ObservableWithLatestFromMany;->combiner:Lio/reactivex/functions/Function;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/reactivex/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "The combiner returned a null value"

    invoke-static {p1, v0}, Lio/reactivex/internal/functions/ObjectHelper;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
