.class public Lorg/objectweb/asm/tree/ModuleNode;
.super Lorg/objectweb/asm/ModuleVisitor;
.source "ModuleNode.java"


# instance fields
.field public access:I

.field public exports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleExportNode;",
            ">;"
        }
    .end annotation
.end field

.field public mainClass:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public opens:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleOpenNode;",
            ">;"
        }
    .end annotation
.end field

.field public packages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public provides:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleProvideNode;",
            ">;"
        }
    .end annotation
.end field

.field public requires:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleRequireNode;",
            ">;"
        }
    .end annotation
.end field

.field public uses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public version:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleRequireNode;",
            ">;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleExportNode;",
            ">;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleOpenNode;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Lorg/objectweb/asm/tree/ModuleProvideNode;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0, p1}, Lorg/objectweb/asm/ModuleVisitor;-><init>(I)V

    .line 123
    iput-object p2, p0, Lorg/objectweb/asm/tree/ModuleNode;->name:Ljava/lang/String;

    .line 124
    iput p3, p0, Lorg/objectweb/asm/tree/ModuleNode;->access:I

    .line 125
    iput-object p4, p0, Lorg/objectweb/asm/tree/ModuleNode;->version:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lorg/objectweb/asm/tree/ModuleNode;->requires:Ljava/util/List;

    .line 127
    iput-object p6, p0, Lorg/objectweb/asm/tree/ModuleNode;->exports:Ljava/util/List;

    .line 128
    iput-object p7, p0, Lorg/objectweb/asm/tree/ModuleNode;->opens:Ljava/util/List;

    .line 129
    iput-object p8, p0, Lorg/objectweb/asm/tree/ModuleNode;->uses:Ljava/util/List;

    .line 130
    iput-object p9, p0, Lorg/objectweb/asm/tree/ModuleNode;->provides:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    const/high16 v0, 0x90000

    .line 87
    invoke-direct {p0, v0}, Lorg/objectweb/asm/ModuleVisitor;-><init>(I)V

    .line 88
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lorg/objectweb/asm/tree/ModuleNode;

    if-ne v0, v1, :cond_0

    .line 91
    iput-object p1, p0, Lorg/objectweb/asm/tree/ModuleNode;->name:Ljava/lang/String;

    .line 92
    iput p2, p0, Lorg/objectweb/asm/tree/ModuleNode;->access:I

    .line 93
    iput-object p3, p0, Lorg/objectweb/asm/tree/ModuleNode;->version:Ljava/lang/String;

    return-void

    .line 89
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method


# virtual methods
.method public accept(Lorg/objectweb/asm/ClassVisitor;)V
    .locals 4

    .line 197
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->name:Ljava/lang/String;

    iget v1, p0, Lorg/objectweb/asm/tree/ModuleNode;->access:I

    iget-object v2, p0, Lorg/objectweb/asm/tree/ModuleNode;->version:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Lorg/objectweb/asm/ClassVisitor;->visitModule(Ljava/lang/String;ILjava/lang/String;)Lorg/objectweb/asm/ModuleVisitor;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->mainClass:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1, v0}, Lorg/objectweb/asm/ModuleVisitor;->visitMainClass(Ljava/lang/String;)V

    .line 204
    :cond_1
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->packages:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 205
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 206
    iget-object v3, p0, Lorg/objectweb/asm/tree/ModuleNode;->packages:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ModuleVisitor;->visitPackage(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 209
    :cond_2
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->requires:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 210
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    .line 211
    iget-object v3, p0, Lorg/objectweb/asm/tree/ModuleNode;->requires:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/ModuleRequireNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/ModuleRequireNode;->accept(Lorg/objectweb/asm/ModuleVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 214
    :cond_3
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->exports:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 215
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v0, :cond_4

    .line 216
    iget-object v3, p0, Lorg/objectweb/asm/tree/ModuleNode;->exports:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/ModuleExportNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/ModuleExportNode;->accept(Lorg/objectweb/asm/ModuleVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 219
    :cond_4
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->opens:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 220
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_5

    .line 221
    iget-object v3, p0, Lorg/objectweb/asm/tree/ModuleNode;->opens:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/objectweb/asm/tree/ModuleOpenNode;

    invoke-virtual {v3, p1}, Lorg/objectweb/asm/tree/ModuleOpenNode;->accept(Lorg/objectweb/asm/ModuleVisitor;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 224
    :cond_5
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->uses:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 225
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v2, v1

    :goto_4
    if-ge v2, v0, :cond_6

    .line 226
    iget-object v3, p0, Lorg/objectweb/asm/tree/ModuleNode;->uses:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/objectweb/asm/ModuleVisitor;->visitUse(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 229
    :cond_6
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->provides:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 230
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_5
    if-ge v1, v0, :cond_7

    .line 231
    iget-object v2, p0, Lorg/objectweb/asm/tree/ModuleNode;->provides:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/objectweb/asm/tree/ModuleProvideNode;

    invoke-virtual {v2, p1}, Lorg/objectweb/asm/tree/ModuleProvideNode;->accept(Lorg/objectweb/asm/ModuleVisitor;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method

.method public visitEnd()V
    .locals 0

    return-void
.end method

.method public varargs visitExport(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    .line 156
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->exports:Ljava/util/List;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->exports:Ljava/util/List;

    .line 159
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->exports:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/ModuleExportNode;

    invoke-static {p3}, Lorg/objectweb/asm/tree/Util;->asArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/ModuleExportNode;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitMainClass(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lorg/objectweb/asm/tree/ModuleNode;->mainClass:Ljava/lang/String;

    return-void
.end method

.method public varargs visitOpen(Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->opens:Ljava/util/List;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->opens:Ljava/util/List;

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->opens:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/ModuleOpenNode;

    invoke-static {p3}, Lorg/objectweb/asm/tree/Util;->asArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/ModuleOpenNode;-><init>(Ljava/lang/String;ILjava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitPackage(Ljava/lang/String;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->packages:Ljava/util/List;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->packages:Ljava/util/List;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->packages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public varargs visitProvide(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    .line 180
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->provides:Ljava/util/List;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->provides:Ljava/util/List;

    .line 183
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->provides:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/ModuleProvideNode;

    invoke-static {p2}, Lorg/objectweb/asm/tree/Util;->asArrayList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lorg/objectweb/asm/tree/ModuleProvideNode;-><init>(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitRequire(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->requires:Ljava/util/List;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->requires:Ljava/util/List;

    .line 151
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->requires:Ljava/util/List;

    new-instance v1, Lorg/objectweb/asm/tree/ModuleRequireNode;

    invoke-direct {v1, p1, p2, p3}, Lorg/objectweb/asm/tree/ModuleRequireNode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitUse(Ljava/lang/String;)V
    .locals 2

    .line 172
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->uses:Ljava/util/List;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->uses:Ljava/util/List;

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/objectweb/asm/tree/ModuleNode;->uses:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
