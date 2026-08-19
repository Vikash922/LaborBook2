.class final Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;
.super Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InBodyBS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;)V
    .locals 0

    .line 438
    invoke-direct {p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;-><init>()V

    return-void
.end method

.method private inBodyEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 8

    .line 817
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v1

    .line 820
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const-string v4, "br"

    const-string v5, "body"

    const/4 v6, 0x0

    const/4 v7, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "sarcasm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v7, 0xf

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "span"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v7, 0xe

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v7, 0xd

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "form"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v7, 0xc

    goto/16 :goto_0

    :sswitch_4
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v7, 0xb

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "li"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v7, 0xa

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "h6"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v7, 0x9

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "h5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v7, 0x8

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "h4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_0

    :cond_8
    const/4 v7, 0x7

    goto :goto_0

    :sswitch_9
    const-string v2, "h3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto :goto_0

    :cond_9
    const/4 v7, 0x6

    goto :goto_0

    :sswitch_a
    const-string v2, "h2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_0

    :cond_a
    const/4 v7, 0x5

    goto :goto_0

    :sswitch_b
    const-string v2, "h1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto :goto_0

    :cond_b
    const/4 v7, 0x4

    goto :goto_0

    :sswitch_c
    const-string v2, "dt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v7, 0x3

    goto :goto_0

    :sswitch_d
    const-string v2, "dd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v7, 0x2

    goto :goto_0

    :sswitch_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    move v7, v3

    goto :goto_0

    :sswitch_f
    const-string v2, "p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    move v7, v6

    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 908
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndAdoptionFormatters:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 909
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->inBodyEndTagAdoption(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 910
    :cond_10
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndClosers:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 911
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 913
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 916
    :cond_11
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 917
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    .line 918
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 919
    :cond_12
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_2

    .line 921
    :cond_13
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 922
    const-string p1, "name"

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_23

    .line 923
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_14

    .line 924
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 927
    :cond_14
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 928
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_15

    .line 929
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 930
    :cond_15
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 931
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    goto/16 :goto_2

    .line 934
    :cond_16
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 824
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 845
    :pswitch_1
    invoke-virtual {p2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_23

    .line 847
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 850
    :pswitch_2
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object p1

    const/4 v0, 0x0

    .line 851
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->setFormElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;)V

    if-eqz p1, :cond_19

    .line 852
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_17

    goto :goto_1

    .line 856
    :cond_17
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 857
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 858
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 860
    :cond_18
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    goto/16 :goto_2

    .line 853
    :cond_19
    :goto_1
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 837
    :pswitch_3
    invoke-virtual {p2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 838
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 841
    :cond_1a
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->AfterBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_2

    .line 826
    :pswitch_4
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inListItemScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 827
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 830
    :cond_1b
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 831
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 832
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 833
    :cond_1c
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_2

    .line 893
    :pswitch_5
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope([Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1d

    .line 894
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 897
    :cond_1d
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 898
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 899
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 900
    :cond_1e
    sget-object p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose([Ljava/lang/String;)V

    goto :goto_2

    .line 877
    :pswitch_6
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1f

    .line 878
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v6

    .line 881
    :cond_1f
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 883
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 884
    :cond_20
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_2

    .line 904
    :pswitch_7
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 905
    invoke-virtual {p2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    return v6

    .line 864
    :pswitch_8
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_21

    .line 865
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 866
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 867
    invoke-virtual {p2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result p1

    return p1

    .line 869
    :cond_21
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 870
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 871
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 872
    :cond_22
    invoke-virtual {p2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :cond_23
    :goto_2
    return v3

    :sswitch_data_0
    .sparse-switch
        0x70 -> :sswitch_f
        0xc50 -> :sswitch_e
        0xc80 -> :sswitch_d
        0xc90 -> :sswitch_c
        0xcc9 -> :sswitch_b
        0xcca -> :sswitch_a
        0xccb -> :sswitch_9
        0xccc -> :sswitch_8
        0xccd -> :sswitch_7
        0xcce -> :sswitch_6
        0xd7d -> :sswitch_5
        0x2e39a2 -> :sswitch_4
        0x300cc4 -> :sswitch_3
        0x3107ab -> :sswitch_2
        0x35f74a -> :sswitch_1
        0x6f67a51c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private inBodyEndTagAdoption(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 963
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object v2

    .line 964
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->normalName()Ljava/lang/String;

    move-result-object v2

    .line 966
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    if-ge v5, v6, :cond_13

    .line 969
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v6

    if-nez v6, :cond_0

    .line 971
    invoke-virtual/range {p0 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result v1

    return v1

    .line 972
    :cond_0
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 973
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 974
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    return v7

    .line 976
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 977
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v4

    .line 979
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v8

    if-eq v8, v6, :cond_3

    .line 980
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 987
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, -0x1

    move v11, v4

    move v12, v11

    move-object v13, v9

    :goto_1
    if-ge v11, v8, :cond_6

    const/16 v14, 0x40

    if-ge v11, v14, :cond_6

    .line 990
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    if-ne v14, v6, :cond_4

    add-int/lit8 v10, v11, -0x1

    .line 992
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v13, v10

    check-cast v13, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 995
    invoke-virtual {v1, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result v10

    move v12, v7

    goto :goto_2

    :cond_4
    if-eqz v12, :cond_5

    .line 996
    invoke-virtual {v1, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v15

    if-eqz v15, :cond_5

    move-object v9, v14

    goto :goto_3

    :cond_5
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    :goto_3
    if-nez v9, :cond_7

    .line 1002
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1003
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    return v7

    :cond_7
    move v8, v4

    move-object v11, v9

    move-object v12, v11

    :goto_4
    const/4 v14, 0x3

    if-ge v8, v14, :cond_d

    .line 1010
    invoke-virtual {v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->onStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 1011
    invoke-virtual {v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->aboveOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v11

    .line 1012
    :cond_8
    invoke-virtual {v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isInActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1013
    invoke-virtual {v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    goto :goto_5

    :cond_9
    if-ne v11, v6, :cond_a

    goto :goto_6

    .line 1018
    :cond_a
    new-instance v14, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v11}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    move-result-object v15

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;->preserveCase:Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;

    invoke-static {v15, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/parser/ParseSettings;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v4, v15}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 1020
    invoke-virtual {v1, v11, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceActiveFormattingElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 1021
    invoke-virtual {v1, v11, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->replaceOnStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    if-ne v12, v9, :cond_b

    .line 1027
    invoke-virtual {v1, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->positionOfElement(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)I

    move-result v4

    add-int/lit8 v10, v4, 0x1

    .line 1029
    :cond_b
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 1030
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 1031
    :cond_c
    invoke-virtual {v14, v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-object v11, v14

    move-object v12, v11

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto :goto_4

    :cond_d
    :goto_6
    if-eqz v13, :cond_11

    .line 1037
    invoke-virtual {v13}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    sget-object v7, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyEndTableFosters:[Ljava/lang/String;

    invoke-static {v4, v7}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1038
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 1039
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 1040
    :cond_e
    invoke-virtual {v1, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertInFosterParent(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)V

    goto :goto_7

    .line 1042
    :cond_f
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 1043
    invoke-virtual {v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 1044
    :cond_10
    invoke-virtual {v13, v12}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1048
    :cond_11
    :goto_7
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->tag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getBaseUri()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;-><init>(Lcom/itextpdf/styledxmlparser/jsoup/parser/Tag;Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v7

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->addAll(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)V

    .line 1050
    invoke-virtual {v9}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->childNodes()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    new-array v11, v8, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 1051
    array-length v11, v7

    move v12, v8

    :goto_8
    if-ge v12, v11, :cond_12

    aget-object v13, v7, v12

    .line 1052
    invoke-virtual {v4, v13}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 1054
    :cond_12
    invoke-virtual {v9, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->appendChild(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 1055
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 1057
    invoke-virtual {v1, v4, v10}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushWithBookmark(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;I)V

    .line 1058
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 1059
    invoke-virtual {v1, v9, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertOnStackAfter(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    add-int/lit8 v5, v5, 0x1

    move v4, v8

    goto/16 :goto_0

    :cond_13
    return v7
.end method

.method private inBodyStartTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 482
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asStartTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;

    move-result-object v2

    .line 483
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->normalName()Ljava/lang/String;

    move-result-object v3

    .line 487
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "isindex"

    const-string v6, "input"

    const-string v7, "svg"

    const-string v8, "nobr"

    const-string v9, "form"

    const-string v10, "body"

    const-string v11, "li"

    const-string v12, "hr"

    const-string v13, "option"

    const-string v15, "button"

    const-string v14, "a"

    const/4 v0, 0x0

    const/16 v16, -0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "noembed"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v4, 0x23

    goto/16 :goto_0

    :sswitch_1
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v4, 0x22

    goto/16 :goto_0

    :sswitch_2
    const-string v4, "plaintext"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v4, 0x21

    goto/16 :goto_0

    :sswitch_3
    const-string v4, "listing"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v4, 0x20

    goto/16 :goto_0

    :sswitch_4
    const-string v4, "table"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_1

    :cond_4
    const/16 v4, 0x1f

    goto/16 :goto_0

    :sswitch_5
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_1

    :cond_5
    const/16 v4, 0x1e

    goto/16 :goto_0

    :sswitch_6
    const-string v4, "image"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_1

    :cond_6
    const/16 v4, 0x1d

    goto/16 :goto_0

    :sswitch_7
    const-string v4, "span"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    :cond_7
    const/16 v4, 0x1c

    goto/16 :goto_0

    :sswitch_8
    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_1

    :cond_8
    const/16 v4, 0x1b

    goto/16 :goto_0

    :sswitch_9
    const-string v4, "math"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    goto/16 :goto_1

    :cond_9
    const/16 v4, 0x1a

    goto/16 :goto_0

    :sswitch_a
    const-string v4, "html"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    goto/16 :goto_1

    :cond_a
    const/16 v4, 0x19

    goto/16 :goto_0

    :sswitch_b
    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    goto/16 :goto_1

    :cond_b
    const/16 v4, 0x18

    goto/16 :goto_0

    :sswitch_c
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_1

    :cond_c
    const/16 v4, 0x17

    goto/16 :goto_0

    :sswitch_d
    const-string v4, "xmp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    goto/16 :goto_1

    :cond_d
    const/16 v4, 0x16

    goto/16 :goto_0

    :sswitch_e
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    goto/16 :goto_1

    :cond_e
    const/16 v4, 0x15

    goto/16 :goto_0

    :sswitch_f
    const-string v4, "pre"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto/16 :goto_1

    :cond_f
    const/16 v4, 0x14

    goto/16 :goto_0

    :sswitch_10
    const-string v4, "rt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    goto/16 :goto_1

    :cond_10
    const/16 v4, 0x13

    goto/16 :goto_0

    :sswitch_11
    const-string v4, "rp"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto/16 :goto_1

    :cond_11
    const/16 v4, 0x12

    goto/16 :goto_0

    :sswitch_12
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    goto/16 :goto_1

    :cond_12
    const/16 v4, 0x11

    goto/16 :goto_0

    :sswitch_13
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    goto/16 :goto_1

    :cond_13
    const/16 v4, 0x10

    goto/16 :goto_0

    :sswitch_14
    const-string v4, "h6"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    goto/16 :goto_1

    :cond_14
    const/16 v4, 0xf

    goto/16 :goto_0

    :sswitch_15
    const-string v4, "h5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    goto/16 :goto_1

    :cond_15
    const/16 v4, 0xe

    goto/16 :goto_0

    :sswitch_16
    const-string v4, "h4"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    goto/16 :goto_1

    :cond_16
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_17
    const-string v4, "h3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    goto/16 :goto_1

    :cond_17
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_18
    const-string v4, "h2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    goto/16 :goto_1

    :cond_18
    const/16 v4, 0xb

    goto :goto_0

    :sswitch_19
    const-string v4, "h1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    goto/16 :goto_1

    :cond_19
    const/16 v4, 0xa

    goto :goto_0

    :sswitch_1a
    const-string v4, "dt"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    goto/16 :goto_1

    :cond_1a
    const/16 v4, 0x9

    goto :goto_0

    :sswitch_1b
    const-string v4, "dd"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    goto/16 :goto_1

    :cond_1b
    const/16 v4, 0x8

    goto :goto_0

    :sswitch_1c
    invoke-virtual {v3, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_1

    :cond_1c
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_1d
    const-string v4, "optgroup"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    goto :goto_1

    :cond_1d
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_1e
    const-string v4, "select"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    goto :goto_1

    :cond_1e
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_1f
    const-string v4, "textarea"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1f

    goto :goto_1

    :cond_1f
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_20
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_1

    :cond_20
    const/4 v4, 0x3

    :goto_0
    move/from16 v16, v4

    goto :goto_1

    :sswitch_21
    const-string v4, "iframe"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_21

    goto :goto_1

    :cond_21
    const/16 v16, 0x2

    goto :goto_1

    :sswitch_22
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    goto :goto_1

    :cond_22
    const/16 v16, 0x1

    goto :goto_1

    :sswitch_23
    const-string v4, "frameset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    goto :goto_1

    :cond_23
    move/from16 v16, v0

    .line 783
    :goto_1
    const-string v4, "p"

    packed-switch v16, :pswitch_data_0

    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartEmptyFormatters:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 784
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 785
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 786
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    :goto_2
    move-object/from16 v3, p0

    const/4 v4, 0x1

    goto/16 :goto_f

    .line 787
    :cond_24
    sget-object v5, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartPClosers:[Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 788
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 789
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 791
    :cond_25
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_2

    .line 792
    :cond_26
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartToHead:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_27

    .line 793
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InHead:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    move-object/from16 v2, p1

    invoke-virtual {v1, v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result v0

    return v0

    .line 794
    :cond_27
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Formatters:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_28

    .line 795
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 796
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 797
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    goto :goto_2

    .line 798
    :cond_28
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartApplets:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 799
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 800
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 801
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertMarkerToFormattingElements()V

    .line 802
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_2

    .line 803
    :cond_29
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartMedia:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 804
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_2

    .line 805
    :cond_2a
    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartDrop:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move-object/from16 v3, p0

    .line 806
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v0

    :cond_2b
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 809
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 810
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_0
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 696
    invoke-static {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2500(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 641
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 642
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v4

    if-eqz v4, :cond_2c

    return v0

    .line 645
    :cond_2c
    invoke-virtual {v1, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 646
    const-string v0, "action"

    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 647
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v4

    .line 648
    iget-object v7, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v7, v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    .line 650
    :cond_2d
    invoke-virtual {v1, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 651
    const-string v0, "label"

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 653
    const-string v4, "prompt"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttribute(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2e

    iget-object v7, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 654
    invoke-virtual {v7, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2e
    const-string v4, "This is a searchable index. Enter search keywords: "

    .line 657
    :goto_3
    new-instance v7, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    invoke-direct {v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;-><init>()V

    invoke-virtual {v7, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->data(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    .line 660
    new-instance v4, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-direct {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;-><init>()V

    .line 661
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v7

    if-eqz v7, :cond_30

    .line 662
    iget-object v2, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2f
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_30

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 663
    invoke-virtual {v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v8

    sget-object v10, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartInputAttribs:[Ljava/lang/String;

    invoke-static {v8, v10}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2f

    .line 664
    invoke-virtual {v4, v7}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_4

    .line 667
    :cond_30
    const-string v2, "name"

    invoke-virtual {v4, v2, v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    .line 668
    invoke-virtual {v1, v6, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;)Z

    .line 669
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 670
    invoke-virtual {v1, v12}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processStartTag(Ljava/lang/String;)Z

    .line 671
    invoke-virtual {v1, v9}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto/16 :goto_5

    :pswitch_2
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 584
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 585
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 587
    :cond_31
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 588
    iget-object v0, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->PLAINTEXT:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v0, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    goto :goto_5

    :pswitch_3
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 613
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getDocument()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document;->quirksMode()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    move-result-object v5

    sget-object v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;->quirks:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Document$QuirksMode;

    if-eq v5, v6, :cond_32

    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 614
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 616
    :cond_32
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 617
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 618
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_5

    :pswitch_4
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 621
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 622
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v2

    .line 623
    const-string v4, "type"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "hidden"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_34

    .line 624
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_5

    :pswitch_5
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 634
    invoke-virtual {v1, v7}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-nez v0, :cond_33

    .line 635
    const-string v0, "img"

    invoke-virtual {v2, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->name(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Tag;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    return v0

    .line 637
    :cond_33
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_5

    :pswitch_6
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 506
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 507
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    :cond_34
    :goto_5
    move v4, v15

    goto/16 :goto_f

    :pswitch_7
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 603
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 604
    invoke-virtual {v1, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 605
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 606
    invoke-virtual {v1, v8}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 607
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 609
    :cond_35
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 610
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    goto :goto_5

    :pswitch_8
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 710
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 711
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_5

    :pswitch_9
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 527
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 529
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 530
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 531
    iget-object v1, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_36
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 532
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_36

    .line 533
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_6

    :pswitch_a
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 574
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFormElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 575
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v0

    .line 578
    :cond_37
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    .line 579
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 581
    :cond_38
    invoke-virtual {v1, v2, v15}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertForm(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Z)Lcom/itextpdf/styledxmlparser/jsoup/nodes/FormElement;

    goto :goto_5

    :pswitch_b
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 538
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 539
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v4

    .line 540
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eq v5, v15, :cond_3b

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_39

    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v5}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_39

    goto :goto_8

    .line 544
    :cond_39
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 545
    invoke-virtual {v4, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 546
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 547
    iget-object v1, v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->attributes:Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3a
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;

    .line 548
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->hasAttr(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3a

    .line 549
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->attributes()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;->put(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attribute;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Attributes;

    goto :goto_7

    :cond_3b
    :goto_8
    return v0

    :pswitch_c
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 683
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 684
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 686
    :cond_3c
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 687
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 688
    invoke-static {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2500(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_5

    :pswitch_d
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 714
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 715
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_e
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 736
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 737
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 739
    :cond_3d
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 740
    iget-object v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reader:Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/CharacterReader;->matchConsume(Ljava/lang/String;)Z

    .line 741
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_5

    :pswitch_f
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 773
    const-string v0, "ruby"

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inScope(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 774
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    .line 775
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 776
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 777
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToBefore(Ljava/lang/String;)V

    .line 779
    :cond_3e
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_10
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 510
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 511
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v15

    :goto_9
    if-lez v5, :cond_41

    .line 513
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 514
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 515
    invoke-virtual {v1, v11}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_a

    .line 518
    :cond_3f
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    goto :goto_a

    :cond_40
    add-int/lit8 v5, v5, -0x1

    goto :goto_9

    .line 521
    :cond_41
    :goto_a
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 522
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 524
    :cond_42
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_11
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 627
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_43

    .line 628
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 630
    :cond_43
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insertEmpty(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 631
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto/16 :goto_5

    :pswitch_12
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 724
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 725
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 727
    :cond_44
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->Headings:[Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 728
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 729
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pop()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 731
    :cond_45
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_13
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 746
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 747
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    .line 748
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v15

    :goto_b
    if-lez v5, :cond_48

    .line 749
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 750
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->DdDt:[Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_46

    .line 751
    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    goto :goto_c

    .line 754
    :cond_46
    invoke-virtual {v1, v6}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$Constants;->InBodyStartLiBreakers:[Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/itextpdf/styledxmlparser/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_47

    goto :goto_c

    :cond_47
    add-int/lit8 v5, v5, -0x1

    goto :goto_b

    .line 757
    :cond_48
    :goto_c
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 758
    invoke-virtual {v1, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 760
    :cond_49
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_14
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 489
    invoke-virtual {v1, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getActiveFormattingElement(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 490
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 491
    invoke-virtual {v1, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 494
    invoke-virtual {v1, v14}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getFromStack(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    if-eqz v0, :cond_4a

    .line 496
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    .line 497
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->removeFromStack(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    .line 500
    :cond_4a
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 501
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    .line 502
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->pushActiveFormattingElements(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)V

    goto/16 :goto_5

    :pswitch_15
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 699
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 700
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 701
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 703
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->state()Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    move-result-object v0

    .line 704
    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InCaption:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InTableBody:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InRow:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    sget-object v2, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InCell:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto :goto_d

    .line 707
    :cond_4b
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InSelect:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_5

    .line 705
    :cond_4c
    :goto_d
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InSelectInTable:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_5

    :pswitch_16
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 674
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 675
    invoke-virtual {v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;->isSelfClosing()Z

    move-result v2

    if-nez v2, :cond_34

    .line 676
    iget-object v2, v1, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->tokeniser:Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;

    sget-object v4, Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;->Rcdata:Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;

    invoke-virtual {v2, v4}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Tokeniser;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/TokeniserState;)V

    .line 677
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->markInsertionMode()V

    .line 678
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 679
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->Text:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    goto/16 :goto_5

    :pswitch_17
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 765
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 766
    invoke-virtual {v1, v13}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 767
    :cond_4d
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 768
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto/16 :goto_5

    :pswitch_18
    move-object/from16 v3, p0

    const/4 v15, 0x1

    .line 691
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    .line 692
    invoke-static {v2, v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2500(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)V

    goto/16 :goto_5

    :pswitch_19
    move-object/from16 v3, p0

    const/4 v4, 0x1

    .line 591
    invoke-virtual {v1, v15}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->inButtonScope(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 593
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 594
    invoke-virtual {v1, v15}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->processEndTag(Ljava/lang/String;)Z

    .line 595
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    goto :goto_f

    .line 597
    :cond_4e
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 598
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 599
    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_f

    :pswitch_1a
    move-object/from16 v3, p0

    const/4 v4, 0x1

    .line 555
    invoke-virtual {v1, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 556
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v5

    .line 557
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v6, v4, :cond_53

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x2

    if-le v6, v7, :cond_4f

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    invoke-virtual {v6}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_10

    .line 560
    :cond_4f
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v6

    if-nez v6, :cond_50

    return v0

    .line 563
    :cond_50
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 564
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->parent()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Node;

    move-result-object v6

    if-eqz v6, :cond_51

    .line 565
    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->remove()V

    .line 567
    :cond_51
    :goto_e
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_52

    .line 568
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_e

    .line 569
    :cond_52
    invoke-virtual {v1, v2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$StartTag;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 570
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->InFrameset:Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {v1, v0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->transition(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_f
    return v4

    :cond_53
    :goto_10
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x620c002b -> :sswitch_23
        -0x521dd8ce -> :sswitch_22
        -0x47007d5c -> :sswitch_21
        -0x3c35778b -> :sswitch_20
        -0x3bcc48c6 -> :sswitch_1f
        -0x3600cb04 -> :sswitch_1e
        -0x4d08054 -> :sswitch_1d
        0x61 -> :sswitch_1c
        0xc80 -> :sswitch_1b
        0xc90 -> :sswitch_1a
        0xcc9 -> :sswitch_19
        0xcca -> :sswitch_18
        0xccb -> :sswitch_17
        0xccc -> :sswitch_16
        0xccd -> :sswitch_15
        0xcce -> :sswitch_14
        0xd0a -> :sswitch_13
        0xd7d -> :sswitch_12
        0xe3e -> :sswitch_11
        0xe42 -> :sswitch_10
        0x1b2a3 -> :sswitch_f
        0x1be64 -> :sswitch_e
        0x1d01b -> :sswitch_d
        0x2e39a2 -> :sswitch_c
        0x300cc4 -> :sswitch_b
        0x3107ab -> :sswitch_a
        0x330708 -> :sswitch_9
        0x33add1 -> :sswitch_8
        0x35f74a -> :sswitch_7
        0x5faa95b -> :sswitch_6
        0x5fb57ca -> :sswitch_5
        0x6903bce -> :sswitch_4
        0xad8ba84 -> :sswitch_3
        0x759d29f7 -> :sswitch_2
        0x7ca6c5e8 -> :sswitch_1
        0x7e19b1b8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_17
        :pswitch_14
        :pswitch_13
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_e
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method anyOtherEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 5

    .line 941
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asEndTag()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;

    move-result-object p1

    iget-object p1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$EndTag;->normalName:Ljava/lang/String;

    .line 942
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->getStack()Ljava/util/ArrayList;

    move-result-object v0

    .line 943
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_3

    .line 944
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    .line 945
    invoke-virtual {v3}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 946
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags(Ljava/lang/String;)V

    .line 947
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->currentElement()Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 948
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    .line 949
    :cond_0
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;

    goto :goto_1

    .line 952
    :cond_1
    invoke-virtual {p2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->isSpecial(Lcom/itextpdf/styledxmlparser/jsoup/nodes/Element;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 953
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    const/4 p1, 0x0

    return p1

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method process(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z
    .locals 4

    .line 446
    sget-object v0, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$1;->$SwitchMap$com$itextpdf$styledxmlparser$jsoup$parser$Token$TokenType:[I

    iget-object v1, p1, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->type:Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;

    invoke-virtual {v1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$TokenType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_6

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_3

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asCharacter()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;

    move-result-object p1

    .line 449
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 450
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 452
    :cond_1
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;->access$2300(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 453
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 454
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    goto :goto_0

    .line 456
    :cond_2
    invoke-virtual {p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->reconstructFormattingElements()V

    .line 457
    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Character;)V

    .line 458
    invoke-virtual {p2, v3}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->framesetOk(Z)V

    goto :goto_0

    .line 473
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->inBodyEndTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 471
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState$InBodyBS;->inBodyStartTag(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;)Z

    move-result p1

    return p1

    .line 467
    :cond_5
    invoke-virtual {p2, p0}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->error(Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilderState;)V

    return v3

    .line 463
    :cond_6
    invoke-virtual {p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/Token;->asComment()Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/itextpdf/styledxmlparser/jsoup/parser/HtmlTreeBuilder;->insert(Lcom/itextpdf/styledxmlparser/jsoup/parser/Token$Comment;)V

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 442
    const-string v0, "InBody"

    return-object v0
.end method
