.class Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;
.super Ljava/lang/Object;
.source "Attributes.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;",
        ">;"
    }
.end annotation


# instance fields
.field i:I

.field final synthetic this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;


# direct methods
.method constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 303
    iput p1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 307
    :goto_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 308
    iget-object v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v1, v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    aget-object v1, v1, v3

    invoke-static {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$100(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    goto :goto_0

    .line 314
    :cond_0
    iget v0, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-static {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->access$000(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)I

    move-result v1

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public next()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;
    .locals 4

    .line 319
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    iget-object v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v1, v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->keys:[Ljava/lang/String;

    iget v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    iget-object v2, v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->vals:[Ljava/lang/String;

    iget v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->this$0:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v0, v1, v2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 320
    iget v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->i:I

    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 302
    invoke-virtual {p0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes$1;->next()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    move-result-object v0

    return-object v0
.end method
