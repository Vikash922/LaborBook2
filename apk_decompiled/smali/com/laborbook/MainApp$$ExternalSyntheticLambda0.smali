.class public final synthetic Lcom/laborbook/MainApp$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/laborbook/MainApp;


# direct methods
.method public synthetic constructor <init>(Lcom/laborbook/MainApp;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/laborbook/MainApp$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/MainApp;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/laborbook/MainApp$$ExternalSyntheticLambda0;->f$0:Lcom/laborbook/MainApp;

    check-cast p1, Lorg/koin/core/KoinApplication;

    invoke-static {v0, p1}, Lcom/laborbook/MainApp;->$r8$lambda$VgOhIRFn96D3Jo-6qr5s7Nd6fgs(Lcom/laborbook/MainApp;Lorg/koin/core/KoinApplication;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
