.class Lcom/android/mms/dom/smil/SmilParElementImpl$1;
.super Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;
.source "SmilParElementImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/dom/smil/SmilParElementImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;


# direct methods
.method constructor <init>(Lcom/android/mms/dom/smil/SmilParElementImpl;Lorg/w3c/dom/smil/SMILElement;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-direct {p0, p2}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;-><init>(Lorg/w3c/dom/smil/SMILElement;)V

    return-void
.end method


# virtual methods
.method public beginElement()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilParElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 63
    .local v0, doc:Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 64
    .local v1, startEvent:Lorg/w3c/dom/events/Event;
    const-string v2, "SmilSlideStart"

    invoke-interface {v1, v2, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 65
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v2, v1}, Lcom/android/mms/dom/smil/SmilParElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 66
    const/4 v2, 0x1

    return v2
.end method

.method public endElement()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v2}, Lcom/android/mms/dom/smil/SmilParElementImpl;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/events/DocumentEvent;

    .line 71
    .local v0, doc:Lorg/w3c/dom/events/DocumentEvent;
    const-string v2, "Event"

    invoke-interface {v0, v2}, Lorg/w3c/dom/events/DocumentEvent;->createEvent(Ljava/lang/String;)Lorg/w3c/dom/events/Event;

    move-result-object v1

    .line 72
    .local v1, endEvent:Lorg/w3c/dom/events/Event;
    const-string v2, "SmilSlideEnd"

    invoke-interface {v1, v2, v3, v3}, Lorg/w3c/dom/events/Event;->initEvent(Ljava/lang/String;ZZ)V

    .line 73
    iget-object v2, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v2, v1}, Lcom/android/mms/dom/smil/SmilParElementImpl;->dispatchEvent(Lorg/w3c/dom/events/Event;)Z

    .line 74
    const/4 v2, 0x1

    return v2
.end method

.method public getBegin()Lorg/w3c/dom/smil/TimeList;
    .locals 4

    .prologue
    .line 48
    invoke-super {p0}, Lcom/android/mms/dom/smil/ElementParallelTimeContainerImpl;->getBegin()Lorg/w3c/dom/smil/TimeList;

    move-result-object v0

    .line 49
    .local v0, beginTimeList:Lorg/w3c/dom/smil/TimeList;
    invoke-interface {v0}, Lorg/w3c/dom/smil/TimeList;->getLength()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v1, singleTimeContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/TimeList;->item(I)Lorg/w3c/dom/smil/Time;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v0, Lcom/android/mms/dom/smil/TimeListImpl;

    .end local v0           #beginTimeList:Lorg/w3c/dom/smil/TimeList;
    invoke-direct {v0, v1}, Lcom/android/mms/dom/smil/TimeListImpl;-><init>(Ljava/util/ArrayList;)V

    .line 54
    .end local v1           #singleTimeContainer:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/Time;>;"
    .restart local v0       #beginTimeList:Lorg/w3c/dom/smil/TimeList;
    :cond_0
    return-object v0
.end method

.method getParentElementTime()Lorg/w3c/dom/smil/ElementTime;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->mSmilElement:Lorg/w3c/dom/smil/SMILElement;

    invoke-interface {v0}, Lorg/w3c/dom/smil/SMILElement;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilDocumentImpl;->mSeqTimeContainer:Lorg/w3c/dom/smil/ElementSequentialTimeContainer;

    return-object v0
.end method

.method public getTimeChildren()Lorg/w3c/dom/NodeList;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/mms/dom/smil/SmilParElementImpl$1;->this$0:Lcom/android/mms/dom/smil/SmilParElementImpl;

    invoke-virtual {v0}, Lcom/android/mms/dom/smil/SmilParElementImpl;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    return-object v0
.end method

.method public pauseElement()V
    .locals 0

    .prologue
    .line 80
    return-void
.end method

.method public resumeElement()V
    .locals 0

    .prologue
    .line 85
    return-void
.end method

.method public seekElement(F)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 90
    return-void
.end method
