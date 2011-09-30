.class public Lcom/android/mms/model/SmilHelper;
.super Ljava/lang/Object;
.source "SmilHelper.java"


# static fields
.field private static isMixedSmil:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method static addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "target"
    .parameter "media"

    .prologue
    const/4 v1, 0x0

    .line 440
    const-string v0, "SmilMediaStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 441
    const-string v0, "SmilMediaEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 442
    const-string v0, "SmilMediaPause"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 443
    const-string v0, "SmilMediaSeek"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 444
    return-void
.end method

.method public static addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;
    .locals 2
    .parameter "document"

    .prologue
    .line 156
    const-string v1, "par"

    invoke-interface {p0, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILParElement;

    .line 158
    .local v0, par:Lorg/w3c/dom/smil/SMILParElement;
    const/high16 v1, 0x4100

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 159
    invoke-interface {p0}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 160
    return-object v0
.end method

.method static addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "target"
    .parameter "slide"

    .prologue
    const/4 v1, 0x0

    .line 450
    const-string v0, "SmilSlideStart"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 451
    const-string v0, "SmilSlideEnd"

    invoke-interface {p0, v0, p1, v1}, Lorg/w3c/dom/events/EventTarget;->addEventListener(Ljava/lang/String;Lorg/w3c/dom/events/EventListener;Z)V

    .line 452
    return-void
.end method

.method public static createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 2
    .parameter "tag"
    .parameter "document"
    .parameter "src"

    .prologue
    .line 165
    invoke-interface {p1, p0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 167
    .local v0, mediaElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {p2}, Lcom/android/mms/model/SmilHelper;->escapeXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/smil/SMILMediaElement;->setSrc(Ljava/lang/String;)V

    .line 168
    return-object v0
.end method

.method private static createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 14
    .parameter "slideshow"

    .prologue
    .line 276
    new-instance v2, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v2}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 279
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v1, "smil"

    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/smil/SMILElement;

    .line 280
    .local v6, smilElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v2, v6}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 283
    const-string v1, "head"

    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 284
    .local v1, headElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 287
    const-string v3, "layout"

    invoke-interface {v2, v3}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v5

    check-cast v5, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 289
    .local v5, layoutElement:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v1, v5}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 292
    const-string v1, "root-layout"

    .end local v1           #headElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILRootLayoutElement;

    .line 294
    .local v4, rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v3

    .line 295
    .local v3, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutWidth()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 296
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getLayoutHeight()I

    move-result v1

    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 297
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v1

    .line 298
    .local v1, bgColor:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 299
    invoke-interface {v4, v1}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setBackgroundColor(Ljava/lang/String;)V

    .line 301
    :cond_0
    invoke-interface {v5, v4}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 304
    invoke-virtual {v3}, Lcom/android/mms/model/LayoutModel;->getRegions()Ljava/util/ArrayList;

    move-result-object v1

    .line 305
    .local v1, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v10, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3           #layouts:Lcom/android/mms/model/LayoutModel;
    .end local v4           #rootLayoutElement:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/RegionModel;

    .line 307
    .local v3, r:Lcom/android/mms/model/RegionModel;
    const-string v4, "region"

    invoke-interface {v2, v4}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v4

    check-cast v4, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 308
    .local v4, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setId(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setLeft(I)V

    .line 310
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setTop(I)V

    .line 311
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setWidth(I)V

    .line 312
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v7

    invoke-interface {v4, v7}, Lorg/w3c/dom/smil/SMILRegionElement;->setHeight(I)V

    .line 313
    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v3

    .end local v3           #r:Lcom/android/mms/model/RegionModel;
    invoke-interface {v4, v3}, Lorg/w3c/dom/smil/SMILRegionElement;->setFit(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 318
    .end local v4           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_1
    const-string v1, "body"

    .end local v1           #i$:Ljava/util/Iterator;
    invoke-interface {v2, v1}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILElement;

    .line 319
    .local v1, bodyElement:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v6, v1}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 321
    const/4 v4, 0x0

    .line 322
    .local v4, txtRegionPresentInLayout:Z
    const/4 v3, 0x0

    .line 323
    .local v3, imgRegionPresentInLayout:Z
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    move p0, v3

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #imgRegionPresentInLayout:Z
    .end local v6           #smilElement:Lorg/w3c/dom/smil/SMILElement;
    .local p0, imgRegionPresentInLayout:Z
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/SlideModel;

    .line 325
    .local v8, slide:Lcom/android/mms/model/SlideModel;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v7

    .line 326
    .local v7, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x447a

    div-float/2addr v3, v6

    invoke-interface {v7, v3}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 328
    move-object v0, v7

    check-cast v0, Lorg/w3c/dom/events/EventTarget;

    move-object v9, v0

    invoke-static {v9, v8}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 331
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v11, v4

    .end local v4           #txtRegionPresentInLayout:Z
    .local v11, txtRegionPresentInLayout:Z
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/MediaModel;

    .line 332
    .local v6, media:Lcom/android/mms/model/MediaModel;
    const/4 v4, 0x0

    .line 333
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, src:Ljava/lang/String;
    instance-of v9, v6, Lcom/android/mms/model/TextModel;

    if-eqz v9, :cond_5

    .line 335
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object v9, v0

    .line 336
    .local v9, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v9}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v9

    .end local v9           #text:Lcom/android/mms/model/TextModel;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 343
    const-string v9, "text"

    invoke-static {v9, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 344
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v9, v0

    const-string v12, "Text"

    invoke-static {v9, v10, v5, v12, v11}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result v9

    .end local v11           #txtRegionPresentInLayout:Z
    .local v9, txtRegionPresentInLayout:Z
    move v11, v9

    .end local v9           #txtRegionPresentInLayout:Z
    .restart local v11       #txtRegionPresentInLayout:Z
    move-object v9, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v9, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .line 372
    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    :goto_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getBegin()I

    move-result p0

    .line 373
    .local p0, begin:I
    if-eqz p0, :cond_3

    .line 374
    const-string v12, "begin"

    div-int/lit16 p0, p0, 0x3e8

    .end local p0           #begin:I
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v9, v12, p0}, Lorg/w3c/dom/smil/SMILMediaElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result p0

    .line 377
    .local p0, duration:I
    if-eqz p0, :cond_4

    .line 378
    int-to-float v12, p0

    const/high16 v13, 0x447a

    div-float/2addr v12, v13

    invoke-interface {v9, v12}, Lorg/w3c/dom/smil/SMILMediaElement;->setDur(F)V

    .line 381
    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v12

    if-ge v12, p0, :cond_4

    .line 382
    int-to-float p0, p0

    const/high16 v12, 0x447a

    div-float/2addr p0, v12

    invoke-interface {v7, p0}, Lorg/w3c/dom/smil/SMILParElement;->setDur(F)V

    .line 384
    .end local p0           #duration:I
    :cond_4
    invoke-interface {v7, v9}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 386
    check-cast v9, Lorg/w3c/dom/events/EventTarget;

    .end local v9           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-static {v9, v6}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    move p0, v4

    .line 387
    .end local v4           #imgRegionPresentInLayout:Z
    .local p0, imgRegionPresentInLayout:Z
    goto :goto_2

    .line 349
    .local v4, src:Ljava/lang/String;
    :cond_5
    instance-of v9, v6, Lcom/android/mms/model/ImageModel;

    if-eqz v9, :cond_6

    .line 350
    const-string v9, "img"

    invoke-static {v9, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 351
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v9, v0

    const-string v12, "Image"

    invoke-static {v9, v10, v5, v12, p0}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result p0

    move-object v9, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v9       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_3

    .line 356
    .end local v9           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_6
    instance-of v9, v6, Lcom/android/mms/model/VideoModel;

    if-eqz v9, :cond_7

    .line 357
    const-string v9, "video"

    invoke-static {v9, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .line 358
    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v0, v4

    check-cast v0, Lorg/w3c/dom/smil/SMILRegionMediaElement;

    move-object v9, v0

    const-string v12, "Image"

    invoke-static {v9, v10, v5, v12, p0}, Lcom/android/mms/model/SmilHelper;->setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z

    move-result p0

    move-object v9, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v9       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_3

    .line 363
    .end local v9           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_7
    instance-of v9, v6, Lcom/android/mms/model/AudioModel;

    if-eqz v9, :cond_8

    .line 364
    const-string v9, "audio"

    invoke-static {v9, v2, v4}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v4

    .local v4, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object v9, v4

    .end local v4           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .restart local v9       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move v4, p0

    .end local p0           #imgRegionPresentInLayout:Z
    .local v4, imgRegionPresentInLayout:Z
    goto :goto_3

    .line 366
    .end local v9           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v4, src:Ljava/lang/String;
    .restart local p0       #imgRegionPresentInLayout:Z
    :cond_8
    new-instance v4, Ljava/lang/StringBuffer;

    .end local v4           #src:Ljava/lang/String;
    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 367
    .local v4, s:Ljava/lang/StringBuffer;
    const-string v9, "Mms/smil"

    const-string v12, "Unsupport media: "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    .end local v4           #s:Ljava/lang/StringBuffer;
    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    :cond_9
    move v4, v11

    .line 388
    .end local v11           #txtRegionPresentInLayout:Z
    .local v4, txtRegionPresentInLayout:Z
    goto/16 :goto_1

    .line 409
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v7           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v8           #slide:Lcom/android/mms/model/SlideModel;
    :cond_a
    return-object v2
.end method

.method private static createSmilDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 11
    .parameter "pb"
    .parameter "context"

    .prologue
    .line 184
    new-instance v1, Lcom/android/mms/dom/smil/SmilDocumentImpl;

    invoke-direct {v1}, Lcom/android/mms/dom/smil/SmilDocumentImpl;-><init>()V

    .line 188
    .local v1, document:Lorg/w3c/dom/smil/SMILDocument;
    const-string v0, "smil"

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/smil/SMILElement;

    .line 189
    .local v3, smil:Lorg/w3c/dom/smil/SMILElement;
    const-string v0, "xmlns"

    const-string v2, "http://www.w3.org/2001/SMIL20/Language"

    invoke-interface {v3, v0, v2}, Lorg/w3c/dom/smil/SMILElement;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-interface {v1, v3}, Lorg/w3c/dom/smil/SMILDocument;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 193
    const-string v0, "head"

    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 194
    .local v0, head:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 196
    const-string v2, "layout"

    invoke-interface {v1, v2}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/smil/SMILLayoutElement;

    .line 197
    .local v2, layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v0, v2}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 200
    const-string v0, "body"

    .end local v0           #head:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v1, v0}, Lorg/w3c/dom/smil/SMILDocument;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/smil/SMILElement;

    .line 201
    .local v0, body:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v3, v0}, Lorg/w3c/dom/smil/SMILElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 202
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v4

    .line 205
    .local v4, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v8

    .line 206
    .local v8, partsNum:I
    if-nez v8, :cond_0

    move-object p1, v4

    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p1, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object p0, v1

    .line 268
    .end local v0           #body:Lorg/w3c/dom/smil/SMILElement;
    .end local v1           #document:Lorg/w3c/dom/smil/SMILDocument;
    .end local v2           #layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    .end local v3           #smil:Lorg/w3c/dom/smil/SMILElement;
    .local p0, document:Lcom/android/mms/dom/smil/SmilDocumentImpl;
    :goto_0
    return-object p0

    .line 210
    .restart local v0       #body:Lorg/w3c/dom/smil/SMILElement;
    .restart local v1       #document:Lorg/w3c/dom/smil/SMILDocument;
    .restart local v2       #layout:Lorg/w3c/dom/smil/SMILLayoutElement;
    .restart local v3       #smil:Lorg/w3c/dom/smil/SMILElement;
    .restart local v4       #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    .local p1, context:Landroid/content/Context;
    :cond_0
    const/4 v2, 0x0

    .line 211
    .local v2, hasText:Z
    const/4 v0, 0x0

    .line 212
    .local v0, hasMedia:Z
    const/4 v3, 0x0

    .local v3, i:I
    move v5, v3

    .end local v3           #i:I
    .local v5, i:I
    move-object v3, v4

    .end local v4           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_1
    if-ge v5, v8, :cond_a

    .line 214
    sget-boolean v4, Lcom/android/mms/model/SmilHelper;->isMixedSmil:Z

    if-eqz v4, :cond_4

    if-nez v0, :cond_1

    if-eqz v2, :cond_4

    .line 215
    :cond_1
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v3

    move v4, v2

    .end local v2           #hasText:Z
    .local v4, hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v6, par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .line 224
    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    :goto_2
    invoke-virtual {p0, v5}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v7

    .line 225
    .local v7, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 226
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 231
    :try_start_0
    new-instance v2, Lcom/android/mms/drm/DrmWrapper;

    invoke-direct {v2, v0, p1, v7}, Lcom/android/mms/drm/DrmWrapper;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/google/android/mms/pdu/PduPart;)V

    .line 232
    .local v2, dw:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual {v2}, Lcom/android/mms/drm/DrmWrapper;->getContentType()Ljava/lang/String;
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 240
    .end local v2           #dw:Lcom/android/mms/drm/DrmWrapper;
    :cond_2
    :goto_3
    const-string v2, "text/plain"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "application/vnd.wap.xhtml+xml"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "text/html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 243
    :cond_3
    const-string v0, "text"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 245
    .local v0, textElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 246
    const/4 v0, 0x1

    .end local v4           #hasText:Z
    .local v0, hasText:Z
    move v2, v0

    .end local v0           #hasText:Z
    .local v2, hasText:Z
    move v0, v3

    .line 212
    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    :goto_4
    add-int/lit8 v3, v5, 0x1

    .end local v5           #i:I
    .local v3, i:I
    move v5, v3

    .end local v3           #i:I
    .restart local v5       #i:I
    move-object v3, v6

    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    goto :goto_1

    .line 218
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_4
    if-eqz v3, :cond_5

    if-eqz v0, :cond_c

    if-eqz v2, :cond_b

    .line 219
    :cond_5
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->addPar(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILParElement;

    move-result-object v3

    .line 220
    const/4 v2, 0x0

    .line 221
    const/4 v0, 0x0

    move v4, v2

    .end local v2           #hasText:Z
    .restart local v4       #hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    goto :goto_2

    .line 233
    .local v0, contentType:Ljava/lang/String;
    .restart local v7       #part:Lcom/google/android/mms/pdu/PduPart;
    :catch_0
    move-exception v2

    .line 234
    .local v2, e:Landroid/drm/mobile2/OMADRMException;
    const-string v9, "Mms/smil"

    invoke-virtual {v2}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 235
    .end local v2           #e:Landroid/drm/mobile2/OMADRMException;
    :catch_1
    move-exception v2

    .line 236
    .local v2, e:Ljava/io/IOException;
    const-string v9, "Mms/smil"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 247
    .end local v2           #e:Ljava/io/IOException;
    :cond_6
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 248
    const-string v0, "img"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 250
    .local v0, imageElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 251
    const/4 v0, 0x1

    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    move v2, v4

    .line 252
    .end local v4           #hasText:Z
    .local v2, hasText:Z
    goto :goto_4

    .end local v2           #hasText:Z
    .local v0, contentType:Ljava/lang/String;
    .restart local v3       #hasMedia:Z
    .restart local v4       #hasText:Z
    :cond_7
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 253
    const-string v0, "video"

    .end local v0           #contentType:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 255
    .local v0, videoElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 256
    const/4 v0, 0x1

    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    move v2, v4

    .line 257
    .end local v4           #hasText:Z
    .restart local v2       #hasText:Z
    goto :goto_4

    .end local v2           #hasText:Z
    .local v0, contentType:Ljava/lang/String;
    .restart local v3       #hasMedia:Z
    .restart local v4       #hasText:Z
    :cond_8
    invoke-static {v0}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v0

    .end local v0           #contentType:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 258
    const-string v0, "audio"

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SmilHelper;->createMediaElement(Ljava/lang/String;Lorg/w3c/dom/smil/SMILDocument;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v0

    .line 260
    .local v0, audioElement:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v6, v0}, Lorg/w3c/dom/smil/SMILParElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 261
    const/4 v0, 0x1

    .end local v3           #hasMedia:Z
    .local v0, hasMedia:Z
    move v2, v4

    .line 262
    .end local v4           #hasText:Z
    .restart local v2       #hasText:Z
    goto :goto_4

    .line 264
    .end local v0           #hasMedia:Z
    .end local v2           #hasText:Z
    .restart local v3       #hasMedia:Z
    .restart local v4       #hasText:Z
    :cond_9
    const-string v0, "Mms/smil"

    const-string v2, "unsupport media type"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v3

    .end local v3           #hasMedia:Z
    .restart local v0       #hasMedia:Z
    move v2, v4

    .end local v4           #hasText:Z
    .restart local v2       #hasText:Z
    goto :goto_4

    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .end local v7           #part:Lcom/google/android/mms/pdu/PduPart;
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_a
    move-object p1, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p1, par:Lorg/w3c/dom/smil/SMILParElement;
    move-object p0, v1

    .line 268
    .local p0, document:Lcom/android/mms/dom/smil/SmilDocumentImpl;
    goto/16 :goto_0

    .restart local v3       #par:Lorg/w3c/dom/smil/SMILParElement;
    .local p0, pb:Lcom/google/android/mms/pdu/PduBody;
    .local p1, context:Landroid/content/Context;
    :cond_b
    move v4, v2

    .end local v2           #hasText:Z
    .restart local v4       #hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    goto/16 :goto_2

    .end local v4           #hasText:Z
    .end local v6           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v0       #hasMedia:Z
    .restart local v2       #hasText:Z
    .local v3, par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_c
    move v4, v2

    .end local v2           #hasText:Z
    .restart local v4       #hasText:Z
    move-object v6, v3

    .end local v3           #par:Lorg/w3c/dom/smil/SMILParElement;
    .restart local v6       #par:Lorg/w3c/dom/smil/SMILParElement;
    move v3, v0

    .end local v0           #hasMedia:Z
    .local v3, hasMedia:Z
    goto/16 :goto_2
.end method

.method public static escapeXML(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 172
    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "<"

    const-string v2, "&lt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "&quot;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\'"

    const-string v2, "&apos;"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;
    .locals 3
    .parameter
    .parameter "rId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/smil/SMILRegionElement;"
        }
    .end annotation

    .prologue
    .line 414
    .local p0, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 415
    .local v1, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    invoke-interface {v1}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 419
    .end local v1           #smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;
    .locals 5
    .parameter "body"

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v2

    .line 108
    .local v2, partNum:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 109
    invoke-virtual {p0, v0}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 110
    .local v1, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v3

    const-string v4, "application/smil"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v1

    .line 116
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :goto_1
    return-object v3

    .line 108
    .restart local v1       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    .end local v1           #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 1
    .parameter "model"

    .prologue
    .line 98
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    return-object v0
.end method

.method public static getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 4
    .parameter "pb"
    .parameter "context"

    .prologue
    .line 77
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->findSmilPart(Lcom/google/android/mms/pdu/PduBody;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v1

    .line 78
    .local v1, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const/4 v0, 0x0

    .line 81
    .local v0, document:Lorg/w3c/dom/smil/SMILDocument;
    if-nez v1, :cond_0

    .line 82
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/mms/model/SmilHelper;->isMixedSmil:Z

    .line 83
    const-string v2, "Mms/smil"

    const-string v3, "getDocument smilPart is null."

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_0
    if-eqz v1, :cond_1

    .line 86
    invoke-static {v1}, Lcom/android/mms/model/SmilHelper;->getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 89
    :cond_1
    if-nez v0, :cond_2

    .line 91
    invoke-static {p0, p1}, Lcom/android/mms/model/SmilHelper;->createSmilDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    .line 94
    :cond_2
    return-object v0
.end method

.method private static getSmilDocument(Lcom/google/android/mms/pdu/PduPart;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 8
    .parameter "smilPart"

    .prologue
    const-string v7, "Failed to parse SMIL document."

    const-string v6, "Mms/smil"

    .line 131
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .line 132
    .local v1, data:[B
    if-nez v1, :cond_0

    .line 133
    const-string v4, "Mms/smil"

    const-string v5, "getSmilDocument milPart.getData(); is null."

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_0
    if-eqz v1, :cond_1

    .line 139
    const-string v4, "Mms/smil"

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 142
    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v4, Lcom/android/mms/dom/smil/parser/SmilXmlParser;

    invoke-direct {v4}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;-><init>()V

    invoke-virtual {v4, v0}, Lcom/android/mms/dom/smil/parser/SmilXmlParser;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v2

    .line 143
    .local v2, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-static {v2}, Lcom/android/mms/model/SmilHelper;->validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 152
    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    .end local v1           #data:[B
    .end local v2           #document:Lorg/w3c/dom/smil/SMILDocument;
    :goto_0
    return-object v4

    .line 145
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 146
    .local v3, e:Ljava/io/IOException;
    const-string v4, "Mms/smil"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    .end local v3           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 147
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 148
    .local v3, e:Lorg/xml/sax/SAXException;
    const-string v4, "Mms/smil"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 149
    .end local v3           #e:Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v4

    move-object v3, v4

    .line 150
    .local v3, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/smil"

    const-string v4, "Failed to parse SMIL document."

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private static setRegion(Lorg/w3c/dom/smil/SMILRegionMediaElement;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILLayoutElement;Ljava/lang/String;Z)Z
    .locals 2
    .parameter "srme"
    .parameter
    .parameter "smilLayout"
    .parameter "regionId"
    .parameter "regionPresentInLayout"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/smil/SMILRegionMediaElement;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/w3c/dom/smil/SMILRegionElement;",
            ">;",
            "Lorg/w3c/dom/smil/SMILLayoutElement;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, smilRegions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/w3c/dom/smil/SMILRegionElement;>;"
    invoke-static {p1, p3}, Lcom/android/mms/model/SmilHelper;->findRegionElementById(Ljava/util/ArrayList;Ljava/lang/String;)Lorg/w3c/dom/smil/SMILRegionElement;

    move-result-object v0

    .line 428
    .local v0, smilRegion:Lorg/w3c/dom/smil/SMILRegionElement;
    if-nez p4, :cond_0

    if-eqz v0, :cond_0

    .line 429
    invoke-interface {p0, v0}, Lorg/w3c/dom/smil/SMILRegionMediaElement;->setRegion(Lorg/w3c/dom/smil/SMILRegionElement;)V

    .line 430
    invoke-interface {p2, v0}, Lorg/w3c/dom/smil/SMILLayoutElement;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 431
    const/4 v1, 0x1

    .line 433
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static validate(Lorg/w3c/dom/smil/SMILDocument;)Lorg/w3c/dom/smil/SMILDocument;
    .locals 0
    .parameter "in"

    .prologue
    .line 121
    return-object p0
.end method
