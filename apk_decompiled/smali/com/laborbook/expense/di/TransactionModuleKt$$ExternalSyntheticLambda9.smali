.class public final synthetic Lcom/laborbook/expense/di/TransactionModuleKt$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Lorg/koin/core/scope/Scope;

    check-cast p2, Lorg/koin/core/parameter/DefinitionParameters;

    invoke-static {p1, p2}, Lcom/laborbook/expense/di/TransactionModuleKt;->$r8$lambda$Uby08sSVQlKYhnhrJoK0qQew4aM(Lorg/koin/core/scope/Scope;Lorg/koin/core/parameter/DefinitionParameters;)Lcom/laborbook/expense/usecase/GetTransactionSummaryUseCase;

    move-result-object p1

    return-object p1
.end method
