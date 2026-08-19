.class public Lorg/objectweb/asm/tree/analysis/SimpleVerifier;
.super Lorg/objectweb/asm/tree/analysis/BasicVerifier;
.source "SimpleVerifier.java"


# instance fields
.field private final currentClass:Lorg/objectweb/asm/Type;

.field private final currentClassInterfaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Type;",
            ">;"
        }
    .end annotation
.end field

.field private final currentSuperClass:Lorg/objectweb/asm/Type;

.field private final isInterface:Z

.field private loader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0, v0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Z)V

    return-void
.end method

.method protected constructor <init>(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/objectweb/asm/Type;",
            "Lorg/objectweb/asm/Type;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Type;",
            ">;Z)V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;-><init>(I)V

    .line 56
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    .line 128
    iput-object p2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    .line 129
    iput-object p3, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/objectweb/asm/Type;

    .line 130
    iput-object p4, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    .line 131
    iput-boolean p5, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface:Z

    return-void
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/Type;",
            "Lorg/objectweb/asm/Type;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/Type;",
            ">;Z)V"
        }
    .end annotation

    const/high16 v1, 0x90000

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    .line 96
    invoke-direct/range {v0 .. v5}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(ILorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p2, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;

    if-ne p1, p2, :cond_0

    return-void

    .line 103
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public constructor <init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, p1, p2, v0, p3}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;-><init>(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;Ljava/util/List;Z)V

    return-void
.end method

.method private newArrayValue(Lorg/objectweb/asm/Type;I)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .locals 3

    if-nez p2, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1

    .line 282
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    const/16 v2, 0x5b

    .line 284
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 286
    :cond_1
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/objectweb/asm/Type;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 374
    :try_start_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 375
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 377
    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getClassName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    invoke-static {p1, v2, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 379
    new-instance v0, Ljava/lang/TypeNotPresentException;

    invoke-virtual {p1}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/TypeNotPresentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected getElementValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/objectweb/asm/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 187
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    .line 190
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1

    .line 191
    :cond_0
    sget-object v1, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->NULL_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {v0, v1}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    .line 195
    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method protected getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;
    .locals 1

    .line 315
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object p1, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/objectweb/asm/Type;

    return-object p1

    .line 318
    :cond_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 319
    :cond_1
    invoke-static {p1}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/Class;)Lorg/objectweb/asm/Type;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected isArrayValue(Lorg/objectweb/asm/tree/analysis/BasicValue;)Z
    .locals 2

    .line 181
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 182
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->NULL_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z
    .locals 3

    .line 335
    invoke-virtual {p1, p2}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 338
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 339
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 342
    :cond_1
    iget-boolean v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface:Z

    if-eqz v0, :cond_4

    .line 343
    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result p1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_3

    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result p1

    const/16 p2, 0x9

    if-ne p1, p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :cond_3
    :goto_0
    return v1

    .line 345
    :cond_4
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result p1

    return p1

    .line 348
    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p2}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 349
    iget-object p2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentSuperClass:Lorg/objectweb/asm/Type;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v1

    .line 352
    :cond_6
    iget-object p2, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClassInterfaces:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 353
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/objectweb/asm/Type;

    .line 354
    invoke-virtual {p0, p1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v1

    :cond_8
    return v2

    .line 361
    :cond_9
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method protected isInterface(Lorg/objectweb/asm/Type;)Z
    .locals 1

    .line 300
    iget-object v0, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->currentClass:Lorg/objectweb/asm/Type;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    iget-boolean p1, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface:Z

    return p1

    .line 303
    :cond_0
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result p1

    return p1
.end method

.method protected isSubTypeOf(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Z
    .locals 4

    .line 200
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object p2

    .line 201
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object p1

    .line 202
    invoke-virtual {p2}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 210
    :pswitch_0
    sget-object v0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->NULL_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {p1, v0}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 212
    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v2, 0xa

    const/4 v3, 0x0

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v3

    .line 213
    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 215
    :cond_3
    invoke-virtual {p0, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 220
    const-class p2, Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getClass(Lorg/objectweb/asm/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    :cond_4
    return v3

    .line 207
    :pswitch_1
    invoke-virtual {p1, p2}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public merge(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .locals 5

    .line 234
    invoke-virtual {p1, p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 235
    invoke-virtual {p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v0

    .line 236
    invoke-virtual {p2}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object v1

    if-eqz v0, :cond_a

    .line 238
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    const/16 v3, 0x9

    const/16 v4, 0xa

    if-eq v2, v4, :cond_0

    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-ne v2, v3, :cond_a

    :cond_0
    if-eqz v1, :cond_a

    .line 240
    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-eq v2, v4, :cond_1

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v2

    if-ne v2, v3, :cond_a

    .line 241
    :cond_1
    sget-object v2, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->NULL_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {v0, v2}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object p2

    .line 244
    :cond_2
    sget-object v2, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->NULL_TYPE:Lorg/objectweb/asm/Type;

    invoke-virtual {v1, v2}, Lorg/objectweb/asm/Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-object p1

    .line 247
    :cond_3
    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object p1

    .line 250
    :cond_4
    invoke-virtual {p0, v1, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result p1

    if-eqz p1, :cond_5

    return-object p2

    .line 254
    :cond_5
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getSort()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 255
    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 256
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result p1

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result p2

    if-ne p1, p2, :cond_6

    .line 257
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result p1

    if-ne p1, v4, :cond_6

    .line 258
    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result p1

    if-ne p1, v4, :cond_6

    .line 259
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result p1

    .line 260
    invoke-virtual {v0}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    .line 261
    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    :cond_7
    :goto_0
    if-eqz v0, :cond_9

    .line 264
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isInterface(Lorg/objectweb/asm/Type;)Z

    move-result p2

    if-eqz p2, :cond_8

    goto :goto_1

    .line 267
    :cond_8
    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->getSuperClass(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/Type;

    move-result-object v0

    .line 268
    invoke-virtual {p0, v0, v1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->isAssignableFrom(Lorg/objectweb/asm/Type;Lorg/objectweb/asm/Type;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 269
    invoke-direct {p0, v0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newArrayValue(Lorg/objectweb/asm/Type;I)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1

    .line 265
    :cond_9
    :goto_1
    const-string p2, "java/lang/Object"

    invoke-static {p2}, Lorg/objectweb/asm/Type;->getObjectType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newArrayValue(Lorg/objectweb/asm/Type;I)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1

    .line 273
    :cond_a
    sget-object p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    :cond_b
    return-object p1
.end method

.method public bridge synthetic merge(Lorg/objectweb/asm/tree/analysis/Value;Lorg/objectweb/asm/tree/analysis/Value;)Lorg/objectweb/asm/tree/analysis/Value;
    .locals 0

    .line 41
    check-cast p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    check-cast p2, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {p0, p1, p2}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->merge(Lorg/objectweb/asm/tree/analysis/BasicValue;Lorg/objectweb/asm/tree/analysis/BasicValue;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1
.end method

.method public newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;
    .locals 4

    if-nez p1, :cond_0

    .line 146
    sget-object p1, Lorg/objectweb/asm/tree/analysis/BasicValue;->UNINITIALIZED_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    return-object p1

    .line 149
    :cond_0
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v1

    invoke-virtual {v1}, Lorg/objectweb/asm/Type;->getSort()I

    move-result v1

    if-eq v1, v3, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_2

    goto :goto_1

    .line 156
    :cond_2
    new-instance v0, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-direct {v0, p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    return-object v0

    .line 162
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lorg/objectweb/asm/tree/analysis/BasicVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v1

    .line 163
    sget-object v3, Lorg/objectweb/asm/tree/analysis/BasicValue;->REFERENCE_VALUE:Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v3, v1}, Lorg/objectweb/asm/tree/analysis/BasicValue;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_5

    .line 165
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getElementType()Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object v0

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    :goto_2
    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDimensions()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/16 v3, 0x5b

    .line 168
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 170
    :cond_4
    invoke-virtual {v0}, Lorg/objectweb/asm/tree/analysis/BasicValue;->getType()Lorg/objectweb/asm/Type;

    move-result-object p1

    invoke-virtual {p1}, Lorg/objectweb/asm/Type;->getDescriptor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    new-instance p1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/objectweb/asm/Type;->getType(Ljava/lang/String;)Lorg/objectweb/asm/Type;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    move-object v1, p1

    goto :goto_3

    .line 173
    :cond_5
    new-instance v1, Lorg/objectweb/asm/tree/analysis/BasicValue;

    invoke-direct {v1, p1}, Lorg/objectweb/asm/tree/analysis/BasicValue;-><init>(Lorg/objectweb/asm/Type;)V

    :cond_6
    :goto_3
    return-object v1
.end method

.method public bridge synthetic newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/Value;
    .locals 0

    .line 41
    invoke-virtual {p0, p1}, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->newValue(Lorg/objectweb/asm/Type;)Lorg/objectweb/asm/tree/analysis/BasicValue;

    move-result-object p1

    return-object p1
.end method

.method public setClassLoader(Ljava/lang/ClassLoader;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lorg/objectweb/asm/tree/analysis/SimpleVerifier;->loader:Ljava/lang/ClassLoader;

    return-void
.end method
