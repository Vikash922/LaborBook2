.class public Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/styledxmlparser/jsoup/select/Selector$SelectorParseException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static filterOut(Ljava/util/Collection;Ljava/util/Collection;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;"
        }
    .end annotation

    .line 156
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 157
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 159
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 160
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 166
    :cond_1
    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 123
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 124
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 125
    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->collect(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static select(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 0

    .line 111
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object p0

    return-object p0
.end method

.method public static select(Ljava/lang/String;Ljava/lang/Iterable;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;",
            ">;)",
            "Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;"
        }
    .end annotation

    .line 136
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 137
    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    .line 138
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p0

    .line 139
    new-instance v0, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    invoke-direct {v0}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;-><init>()V

    .line 140
    new-instance v1, Ljava/util/IdentityHashMap;

    invoke-direct {v1}, Ljava/util/IdentityHashMap;-><init>()V

    .line 143
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 144
    invoke-static {p0, v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Selector;->select(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;

    move-result-object v2

    .line 145
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 146
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v3, v4}, Ljava/util/IdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 147
    invoke-virtual {v0, v3}, Lcom/itextpdf/styledxmlparser/jsoup/select/Elements;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static selectFirst(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;
    .locals 0

    .line 178
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    .line 179
    invoke-static {p0}, Lcom/itextpdf/styledxmlparser/jsoup/select/QueryParser;->parse(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/itextpdf/styledxmlparser/jsoup/select/Collector;->findFirst(Lcom/itextpdf/styledxmlparser/jsoup/select/Evaluator;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p0

    return-object p0
.end method
