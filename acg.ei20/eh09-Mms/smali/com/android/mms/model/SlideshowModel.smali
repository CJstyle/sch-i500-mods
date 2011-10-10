.class public Lcom/android/mms/model/SlideshowModel;
.super Lcom/android/mms/model/Model;
.source "SlideshowModel.java"

# interfaces
.implements Lcom/android/mms/model/IModelChangedObserver;
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/SlideModel;",
        ">;",
        "Lcom/android/mms/model/IModelChangedObserver;"
    }
.end annotation


# static fields
.field private static mCheckMessageSize:Z

.field private static mIsDrmContentsPresent:Z

.field private static mIsRawAttachmentsPresent:Z

.field private static mRawAttachmentAddSlide:Z

.field private static mRawAttachmentAddSlideforCompose:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentMessageSize:I

.field private mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

.field private final mLayout:Lcom/android/mms/model/LayoutModel;

.field private mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

.field public final mRawAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation
.end field

.field public final mSlides:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 81
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 82
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 83
    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 84
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 90
    new-instance v0, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v0}, Lcom/android/mms/model/LayoutModel;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 92
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 94
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V
    .locals 4
    .parameter "layouts"
    .parameter
    .parameter
    .parameter "documentCache"
    .parameter "pbCache"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/LayoutModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;",
            "Lorg/w3c/dom/smil/SMILDocument;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    .local p3, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    .line 102
    iput-object p2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    .line 103
    iput-object p6, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    .line 104
    iput-object p3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    .line 106
    iput-object p4, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 107
    iput-object p5, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 108
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/SlideModel;

    .line 109
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 110
    invoke-virtual {v2, p0}, Lcom/android/mms/model/SlideModel;->setParent(Lcom/android/mms/model/SlideshowModel;)V

    goto :goto_0

    .line 113
    .end local v2           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 114
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    goto :goto_1

    .line 116
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    :cond_1
    return-void
.end method

.method public static createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {p0, p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    return-object v0
.end method

.method public static createFromPduBody(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/model/SlideshowModel;
    .locals 25
    .parameter "context"
    .parameter "uri"
    .parameter "checkCRMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 129
    invoke-static/range {p0 .. p1}, Lcom/android/mms/model/SlideshowModel;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v20

    .line 130
    .local v20, pb:Lcom/google/android/mms/pdu/PduBody;
    const/16 p1, 0x0

    sput-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 131
    .end local p1
    const/16 p1, 0x0

    sput-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 132
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v19

    .line 135
    .local v19, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object p1

    .line 136
    .local p1, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v5

    .line 137
    .local v5, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v9

    .line 138
    .local v9, w:I
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v10

    .line 139
    .local v10, h:I
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 140
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v9

    .line 141
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v10

    .line 142
    invoke-interface {v5, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 143
    invoke-interface {v5, v10}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 145
    :cond_1
    new-instance v5, Lcom/android/mms/model/RegionModel;

    .end local v5           #srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 149
    .local v5, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 150
    .local v7, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 151
    .local v6, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    .line 153
    .local v8, regionsNum:I
    const/16 p1, 0x0

    .end local v9           #w:I
    .local p1, i:I
    :goto_0
    move/from16 v0, p1

    move v1, v8

    if-ge v0, v1, :cond_2

    .line 154
    move-object v0, v6

    move/from16 v1, p1

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 155
    .local v9, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v11, Lcom/android/mms/model/RegionModel;

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v14

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v15

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v16

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    invoke-interface {v9}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v11 .. v18}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 158
    .local v11, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 160
    .end local v9           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    .end local v11           #r:Lcom/android/mms/model/RegionModel;
    :cond_2
    new-instance v13, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v13, v5, v7}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 163
    .local v13, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object p1

    .line 164
    .local p1, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 165
    .local v18, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 166
    .local v21, slidesNum:I
    new-instance v14, Ljava/util/ArrayList;

    move-object v0, v14

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 168
    .local v14, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v5, 0x0

    .line 170
    .local v5, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 172
    .local v15, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/16 p1, 0x0

    .local p1, i:I
    move/from16 v7, p1

    .end local v6           #nlRegions:Lorg/w3c/dom/NodeList;
    .end local v8           #regionsNum:I
    .end local v10           #h:I
    .end local p1           #i:I
    .local v7, i:I
    :goto_1
    move v0, v7

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 175
    const/16 p1, 0x0

    .line 176
    .local p1, doNotAddSlide:Z
    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/smil/SMILParElement;

    .line 177
    .local v16, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v5

    .end local v5           #mediaCount:I
    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v17, v0

    .line 179
    .local v17, parDuration:I
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v10

    .line 180
    .local v10, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v10}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v11

    .line 181
    .local v11, mediaNum:I
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v12, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move v9, v11

    .line 183
    .local v9, mediaCount:I
    const/4 v5, 0x0

    .local v5, j:I
    move v8, v5

    .end local v5           #j:I
    .local v8, j:I
    move/from16 v5, p1

    .end local p1           #doNotAddSlide:Z
    .local v5, doNotAddSlide:Z
    :goto_2
    if-ge v8, v11, :cond_b

    .line 184
    invoke-interface {v10, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v22

    check-cast v22, Lorg/w3c/dom/smil/SMILMediaElement;

    .line 185
    .local v22, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    const/16 p1, 0x0

    .line 187
    .local p1, doNotAddMedia:Z
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v13

    move-object/from16 v3, v20

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v6

    .line 192
    .local v6, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 193
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 195
    :cond_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/x-vCard"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/x-vCalendar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_4

    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/x-vNote"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 199
    :cond_4
    const/4 v6, 0x0

    sput-boolean v6, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 183
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_5
    :goto_3
    add-int/lit8 p1, v8, 0x1

    .end local v8           #j:I
    .local p1, j:I
    move/from16 v8, p1

    .end local p1           #j:I
    .restart local v8       #j:I
    goto :goto_2

    .line 203
    .restart local v6       #media:Lcom/android/mms/model/MediaModel;
    .restart local v22       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local p1, doNotAddMedia:Z
    :cond_6
    const/16 v23, 0x1

    move v0, v9

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    sget-boolean v23, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz v23, :cond_7

    .line 204
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v23

    if-eqz v23, :cond_7

    const/16 v23, 0x1

    sub-int v23, v21, v23

    move v0, v7

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlideForCompose()Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v23

    if-nez v23, :cond_7

    .line 205
    const/16 p1, 0x1

    .line 206
    const/4 v5, 0x1

    .line 211
    :cond_7
    if-eqz p2, :cond_8

    .line 213
    :try_start_1
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 214
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/ImageModel;->checkCreationMode()V

    .line 215
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/ImageModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V
    :try_end_1
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_6

    .line 233
    :cond_8
    :goto_4
    if-nez p1, :cond_5

    .line 234
    :try_start_2
    check-cast v22, Lorg/w3c/dom/events/EventTarget;

    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v22

    move-object v1, v6

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 236
    invoke-virtual {v12, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6

    goto :goto_3

    .line 238
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    :catch_0
    move-exception v6

    .line 239
    .local v6, e:Landroid/drm/mobile2/OMADRMException;
    const-string v22, "Mms/slideshow"

    invoke-virtual {v6}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 216
    .local v6, media:Lcom/android/mms/model/MediaModel;
    .restart local v22       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_9
    :try_start_3
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v23

    if-eqz v23, :cond_a

    .line 217
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/AudioModel;->checkCreationMode()V

    .line 218
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/AudioModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/AudioModel;->checkContentRestriction()V

    goto :goto_4

    .line 223
    :catch_1
    move-exception v23

    goto :goto_4

    .line 219
    :cond_a
    invoke-virtual {v6}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v23

    if-eqz v23, :cond_8

    .line 220
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/VideoModel;->checkCreationMode()V

    .line 221
    move-object v0, v6

    check-cast v0, Lcom/android/mms/model/VideoModel;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/VideoModel;->checkContentRestriction()V
    :try_end_3
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_4

    .line 225
    :catch_2
    move-exception v23

    goto :goto_4

    .line 227
    :catch_3
    move-exception p1

    .line 228
    .local p1, e:Lcom/android/mms/ResolutionException;
    const/16 p1, 0x1

    .line 231
    .local p1, doNotAddMedia:Z
    goto :goto_4

    .line 229
    :catch_4
    move-exception p1

    .line 230
    .local p1, e:Lcom/android/mms/ContentRestrictionException;
    const/16 p1, 0x1

    .local p1, doNotAddMedia:Z
    goto :goto_4

    .line 240
    .end local v6           #media:Lcom/android/mms/model/MediaModel;
    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :catch_5
    move-exception v6

    .line 241
    .local v6, e:Ljava/io/IOException;
    const-string v22, "Mms/slideshow"

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 242
    .end local v6           #e:Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 243
    .local v6, e:Ljava/lang/IllegalArgumentException;
    const-string v22, "Mms/slideshow"

    invoke-virtual {v6}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 247
    .end local v6           #e:Ljava/lang/IllegalArgumentException;
    .end local p1           #doNotAddMedia:Z
    :cond_b
    new-instance p1, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    const/high16 v8, 0x447a

    mul-float/2addr v6, v8

    float-to-int v6, v6

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 248
    .end local v8           #j:I
    .local p1, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 249
    check-cast v16, Lorg/w3c/dom/events/EventTarget;

    .end local v16           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 253
    if-nez v5, :cond_c

    .line 254
    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    :cond_c
    add-int/lit8 p1, v7, 0x1

    .end local v7           #i:I
    .local p1, i:I
    move/from16 v7, p1

    .end local p1           #i:I
    .restart local v7       #i:I
    move v5, v9

    .end local v9           #mediaCount:I
    .local v5, mediaCount:I
    goto/16 :goto_1

    .line 260
    .end local v10           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v11           #mediaNum:I
    .end local v12           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v17           #parDuration:I
    :cond_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->trimToSize()V

    .line 261
    new-instance v12, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v16, v19

    move-object/from16 v17, v20

    move-object/from16 v18, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 263
    .end local v18           #slideNodes:Lorg/w3c/dom/NodeList;
    .local v12, slideshow:Lcom/android/mms/model/SlideshowModel;
    sget-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 264
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result p2

    .line 267
    .local p2, size:I
    new-instance v6, Lcom/android/mms/model/SlideModel;

    invoke-direct {v6, v12}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 269
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    new-instance v7, Lcom/android/mms/model/TextModel;

    .end local v7           #i:I
    const-string p1, "text/plain"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "cid:text_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v9

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v8

    move-object v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 272
    .local v7, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result p1

    .line 274
    .local p1, fileCount:I
    const/4 v8, 0x1

    move/from16 v0, p1

    move v1, v8

    if-ne v0, v1, :cond_11

    .line 275
    const p1, 0x7f0901aa

    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #fileCount:I
    move-result-object p0

    .line 280
    .local p0, detail:Ljava/lang/String;
    :goto_5
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object p1

    .line 281
    .local p1, name:Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #detail:Ljava/lang/String;
    const-string v8, "\n\n"

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 282
    .local p0, shown:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #shown:Ljava/lang/String;
    move-object v0, v7

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 283
    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 285
    const/16 p0, 0x1

    move/from16 v0, p2

    move/from16 v1, p0

    if-ne v0, v1, :cond_12

    if-nez v5, :cond_12

    .line 286
    const/16 p0, 0x1

    sub-int p0, p2, p0

    move-object v0, v12

    move/from16 v1, p0

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 287
    move-object v0, v12

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 291
    :goto_6
    const/16 p0, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 293
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result p0

    if-nez p0, :cond_e

    .line 294
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 300
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    .end local v7           #text:Lcom/android/mms/model/TextModel;
    .end local p1           #name:Ljava/lang/String;
    .end local p2           #size:I
    :cond_e
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 301
    const/16 p0, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 304
    :cond_f
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result p0

    if-nez p0, :cond_10

    .line 305
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 309
    :cond_10
    invoke-virtual {v12, v12}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 310
    return-object v12

    .line 278
    .restart local v6       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v7       #text:Lcom/android/mms/model/TextModel;
    .local p0, context:Landroid/content/Context;
    .local p1, fileCount:I
    .restart local p2       #size:I
    :cond_11
    const p1, 0x7f0901ab

    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #fileCount:I
    move-result-object p0

    .local p0, detail:Ljava/lang/String;
    goto :goto_5

    .line 289
    .end local p0           #detail:Ljava/lang/String;
    .local p1, name:Ljava/lang/String;
    :cond_12
    move-object v0, v12

    move/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_6
.end method

.method public static createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;
    .locals 26
    .parameter "context"
    .parameter "pb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 315
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .line 316
    const/4 v5, 0x0

    sput-boolean v5, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 317
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v19

    .line 320
    .local v19, document:Lorg/w3c/dom/smil/SMILDocument;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILDocument;->getLayout()Lorg/w3c/dom/smil/SMILLayoutElement;

    move-result-object v11

    .line 321
    .local v11, sle:Lorg/w3c/dom/smil/SMILLayoutElement;
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRootLayout()Lorg/w3c/dom/smil/SMILRootLayoutElement;

    move-result-object v5

    .line 322
    .local v5, srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getWidth()I

    move-result v9

    .line 323
    .local v9, w:I
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->getHeight()I

    move-result v10

    .line 324
    .local v10, h:I
    if-eqz v9, :cond_0

    if-nez v10, :cond_1

    .line 325
    :cond_0
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v9

    .line 326
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v10

    .line 327
    invoke-interface {v5, v9}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setWidth(I)V

    .line 328
    invoke-interface {v5, v10}, Lorg/w3c/dom/smil/SMILRootLayoutElement;->setHeight(I)V

    .line 330
    :cond_1
    new-instance v5, Lcom/android/mms/model/RegionModel;

    .end local v5           #srle:Lorg/w3c/dom/smil/SMILRootLayoutElement;
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    .line 334
    .local v5, rootLayout:Lcom/android/mms/model/RegionModel;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v8, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-interface {v11}, Lorg/w3c/dom/smil/SMILLayoutElement;->getRegions()Lorg/w3c/dom/NodeList;

    move-result-object v7

    .line 336
    .local v7, nlRegions:Lorg/w3c/dom/NodeList;
    invoke-interface {v7}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    .line 338
    .local v9, regionsNum:I
    const/4 v11, 0x0

    .line 342
    .local v11, sumOfRegionHeight:I
    const/4 v6, 0x0

    .local v6, i:I
    move/from16 v21, v11

    .end local v11           #sumOfRegionHeight:I
    .local v21, sumOfRegionHeight:I
    :goto_0
    if-ge v6, v9, :cond_2

    .line 343
    invoke-interface {v7, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v20

    check-cast v20, Lorg/w3c/dom/smil/SMILRegionElement;

    .line 344
    .local v20, sre:Lorg/w3c/dom/smil/SMILRegionElement;
    new-instance v11, Lcom/android/mms/model/RegionModel;

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getFit()Ljava/lang/String;

    move-result-object v13

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getLeft()I

    move-result v14

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getTop()I

    move-result v15

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getWidth()I

    move-result v16

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v17

    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getBackgroundColor()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v11 .. v18}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;Ljava/lang/String;IIIILjava/lang/String;)V

    .line 348
    .local v11, r:Lcom/android/mms/model/RegionModel;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/smil/SMILRegionElement;->getHeight()I

    move-result v12

    add-int v12, v12, v21

    .line 352
    .end local v21           #sumOfRegionHeight:I
    .local v12, sumOfRegionHeight:I
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    add-int/lit8 v6, v6, 0x1

    move/from16 v21, v12

    .end local v12           #sumOfRegionHeight:I
    .restart local v21       #sumOfRegionHeight:I
    goto :goto_0

    .line 355
    .end local v11           #r:Lcom/android/mms/model/RegionModel;
    .end local v20           #sre:Lorg/w3c/dom/smil/SMILRegionElement;
    :cond_2
    if-lez v10, :cond_3

    if-lez v21, :cond_3

    move/from16 v0, v21

    move v1, v10

    if-le v0, v1, :cond_3

    .line 356
    move-object v0, v5

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setHeight(I)V

    .line 362
    :cond_3
    new-instance v13, Lcom/android/mms/model/LayoutModel;

    invoke-direct {v13, v5, v8}, Lcom/android/mms/model/LayoutModel;-><init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V

    .line 365
    .local v13, layouts:Lcom/android/mms/model/LayoutModel;
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/smil/SMILDocument;->getBody()Lorg/w3c/dom/smil/SMILElement;

    move-result-object v5

    .line 366
    .local v5, docBody:Lorg/w3c/dom/smil/SMILElement;
    invoke-interface {v5}, Lorg/w3c/dom/smil/SMILElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v20

    .line 367
    .local v20, slideNodes:Lorg/w3c/dom/NodeList;
    invoke-interface/range {v20 .. v20}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v21

    .line 368
    .local v21, slidesNum:I
    new-instance v14, Ljava/util/ArrayList;

    move-object v0, v14

    move/from16 v1, v21

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 370
    .local v14, slides:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/SlideModel;>;"
    const/4 v6, 0x0

    .line 372
    .local v6, mediaCount:I
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 374
    .local v15, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v5, 0x0

    .local v5, i:I
    move v8, v5

    .end local v5           #i:I
    .local v8, i:I
    move v5, v6

    .end local v6           #mediaCount:I
    .end local v7           #nlRegions:Lorg/w3c/dom/NodeList;
    .end local v9           #regionsNum:I
    .end local v10           #h:I
    .local v5, mediaCount:I
    :goto_1
    move v0, v8

    move/from16 v1, v21

    if-ge v0, v1, :cond_d

    .line 377
    const/4 v6, 0x0

    .line 378
    .local v6, has_unsupported_attachment:Z
    const/4 v5, 0x0

    .line 379
    .local v5, has_null_text_attachment:Z
    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    check-cast v17, Lorg/w3c/dom/smil/SMILParElement;

    .line 380
    .local v17, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v7

    const/high16 v9, 0x447a

    mul-float/2addr v7, v9

    move v0, v7

    float-to-int v0, v0

    move/from16 v18, v0

    .line 382
    .local v18, parDuration:I
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v11

    .line 383
    .local v11, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v11}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 384
    .local v12, mediaNum:I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move v1, v12

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 385
    .local v16, mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    move v10, v12

    .line 386
    .local v10, mediaCount:I
    const/4 v7, 0x0

    .local v7, j:I
    move v9, v7

    .end local v7           #j:I
    .local v9, j:I
    move v7, v6

    .end local v6           #has_unsupported_attachment:Z
    .local v7, has_unsupported_attachment:Z
    move v6, v5

    .end local v5           #has_null_text_attachment:Z
    .local v6, has_null_text_attachment:Z
    :goto_2
    if-ge v9, v12, :cond_a

    .line 387
    invoke-interface {v11, v9}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-static {v5}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v22

    .line 389
    .local v22, sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v13

    move-object/from16 v3, p1

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/mms/model/MediaModelFactory;->getMediaModel(Landroid/content/Context;Lorg/w3c/dom/smil/SMILMediaElement;Lcom/android/mms/model/LayoutModel;Lcom/google/android/mms/pdu/PduBody;I)Lcom/android/mms/model/MediaModel;

    move-result-object v5

    .line 395
    .local v5, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 396
    const/16 v23, 0x1

    sput-boolean v23, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    .line 398
    :cond_4
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/x-vCard"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/x-vCalendar"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_5

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    const-string v24, "text/x-vNote"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 402
    :cond_5
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    move v5, v6

    .end local v6           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    move v6, v7

    .line 386
    .end local v7           #has_unsupported_attachment:Z
    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    .local v6, has_unsupported_attachment:Z
    :goto_3
    add-int/lit8 v7, v9, 0x1

    .end local v9           #j:I
    .local v7, j:I
    move v9, v7

    .end local v7           #j:I
    .restart local v9       #j:I
    move v7, v6

    .end local v6           #has_unsupported_attachment:Z
    .local v7, has_unsupported_attachment:Z
    move v6, v5

    .end local v5           #has_null_text_attachment:Z
    .local v6, has_null_text_attachment:Z
    goto :goto_2

    .line 407
    .local v5, media:Lcom/android/mms/model/MediaModel;
    .restart local v22       #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    :cond_6
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isSupportedType(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    .line 410
    const/4 v5, 0x1

    .end local v7           #has_unsupported_attachment:Z
    .local v5, has_unsupported_attachment:Z
    move/from16 v25, v6

    .end local v6           #has_null_text_attachment:Z
    .local v25, has_null_text_attachment:Z
    move v6, v5

    .end local v5           #has_unsupported_attachment:Z
    .local v6, has_unsupported_attachment:Z
    move/from16 v5, v25

    .line 411
    .end local v25           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    goto :goto_3

    .line 413
    .local v5, media:Lcom/android/mms/model/MediaModel;
    .local v6, has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    :cond_7
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v23

    if-eqz v23, :cond_9

    .line 415
    move-object v0, v5

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v23, v0

    .line 416
    .local v23, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v24

    if-nez v24, :cond_8

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v23}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v23

    .end local v23           #text:Lcom/android/mms/model/TextModel;
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_9

    .line 419
    :cond_8
    const/4 v5, 0x1

    .end local v6           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    move v6, v7

    .line 420
    .end local v7           #has_unsupported_attachment:Z
    .local v6, has_unsupported_attachment:Z
    goto :goto_3

    .line 423
    .local v5, media:Lcom/android/mms/model/MediaModel;
    .local v6, has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    :cond_9
    check-cast v22, Lorg/w3c/dom/events/EventTarget;

    .end local v22           #sme:Lorg/w3c/dom/smil/SMILMediaElement;
    move-object/from16 v0, v22

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addMediaElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/MediaModel;)V

    .line 425
    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move v5, v6

    .end local v6           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    move v6, v7

    .line 432
    .end local v7           #has_unsupported_attachment:Z
    .local v6, has_unsupported_attachment:Z
    goto/16 :goto_3

    .line 426
    .end local v5           #has_null_text_attachment:Z
    .local v6, has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    :catch_0
    move-exception v5

    .line 427
    .local v5, e:Landroid/drm/mobile2/OMADRMException;
    const-string v22, "Mms/slideshow"

    invoke-virtual {v5}, Landroid/drm/mobile2/OMADRMException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .end local v6           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    move v6, v7

    .line 432
    .end local v7           #has_unsupported_attachment:Z
    .local v6, has_unsupported_attachment:Z
    goto/16 :goto_3

    .line 428
    .end local v5           #has_null_text_attachment:Z
    .local v6, has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    :catch_1
    move-exception v5

    .line 429
    .local v5, e:Ljava/io/IOException;
    const-string v22, "Mms/slideshow"

    invoke-virtual {v5}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .end local v6           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    move v6, v7

    .line 432
    .end local v7           #has_unsupported_attachment:Z
    .local v6, has_unsupported_attachment:Z
    goto/16 :goto_3

    .line 430
    .end local v5           #has_null_text_attachment:Z
    .local v6, has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    :catch_2
    move-exception v5

    .line 431
    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v22, "Mms/slideshow"

    invoke-virtual {v5}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v5, v6

    .end local v6           #has_null_text_attachment:Z
    .local v5, has_null_text_attachment:Z
    move v6, v7

    .end local v7           #has_unsupported_attachment:Z
    .local v6, has_unsupported_attachment:Z
    goto/16 :goto_3

    .line 435
    .end local v5           #has_null_text_attachment:Z
    .local v6, has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    :cond_a
    if-nez v7, :cond_b

    if-eqz v6, :cond_c

    :cond_b
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 374
    .end local v6           #has_null_text_attachment:Z
    .end local v7           #has_unsupported_attachment:Z
    .end local v17           #par:Lorg/w3c/dom/smil/SMILParElement;
    :goto_4
    add-int/lit8 v5, v8, 0x1

    .end local v8           #i:I
    .local v5, i:I
    move v8, v5

    .end local v5           #i:I
    .restart local v8       #i:I
    move v5, v10

    .end local v10           #mediaCount:I
    .local v5, mediaCount:I
    goto/16 :goto_1

    .line 439
    .end local v5           #mediaCount:I
    .restart local v6       #has_null_text_attachment:Z
    .restart local v7       #has_unsupported_attachment:Z
    .restart local v10       #mediaCount:I
    .restart local v17       #par:Lorg/w3c/dom/smil/SMILParElement;
    :cond_c
    new-instance v5, Lcom/android/mms/model/SlideModel;

    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/smil/SMILParElement;->getDur()F

    move-result v6

    .end local v6           #has_null_text_attachment:Z
    const/high16 v7, 0x447a

    mul-float/2addr v6, v7

    float-to-int v6, v6

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/mms/model/SlideModel;-><init>(ILjava/util/ArrayList;)V

    .line 440
    .end local v7           #has_unsupported_attachment:Z
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/smil/SMILParElement;->getFill()S

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideModel;->setFill(S)V

    .line 441
    check-cast v17, Lorg/w3c/dom/events/EventTarget;

    .end local v17           #par:Lorg/w3c/dom/smil/SMILParElement;
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->addParElementEventListeners(Lorg/w3c/dom/events/EventTarget;Lcom/android/mms/model/SlideModel;)V

    .line 442
    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 446
    .end local v9           #j:I
    .end local v10           #mediaCount:I
    .end local v11           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v12           #mediaNum:I
    .end local v16           #mediaSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    .end local v18           #parDuration:I
    .local v5, mediaCount:I
    :cond_d
    invoke-virtual {v15}, Ljava/util/ArrayList;->trimToSize()V

    .line 447
    new-instance v12, Lcom/android/mms/model/SlideshowModel;

    move-object/from16 v16, v19

    move-object/from16 v17, p1

    move-object/from16 v18, p0

    invoke-direct/range {v12 .. v18}, Lcom/android/mms/model/SlideshowModel;-><init>(Lcom/android/mms/model/LayoutModel;Ljava/util/ArrayList;Ljava/util/ArrayList;Lorg/w3c/dom/smil/SMILDocument;Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)V

    .line 449
    .local v12, slideshow:Lcom/android/mms/model/SlideshowModel;
    sget-boolean p1, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .end local p1
    if-eqz p1, :cond_e

    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 450
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    .line 453
    .local v6, size:I
    new-instance v7, Lcom/android/mms/model/SlideModel;

    invoke-direct {v7, v12}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 455
    .local v7, slide:Lcom/android/mms/model/SlideModel;
    new-instance v8, Lcom/android/mms/model/TextModel;

    .end local v8           #i:I
    const-string p1, "text/plain"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "cid:text_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".txt"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;)V

    .line 458
    .local v8, text:Lcom/android/mms/model/TextModel;
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getRawAttachmentsSize()I

    move-result p1

    .line 460
    .local p1, fileCount:I
    const/4 v9, 0x1

    move/from16 v0, p1

    move v1, v9

    if-ne v0, v1, :cond_11

    .line 461
    const p1, 0x7f0901aa

    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #fileCount:I
    move-result-object p0

    .line 466
    .local p0, detail:Ljava/lang/String;
    :goto_5
    invoke-virtual {v12}, Lcom/android/mms/model/SlideshowModel;->getAttachmentList()Ljava/lang/String;

    move-result-object p1

    .line 467
    .local p1, name:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #detail:Ljava/lang/String;
    const-string v9, "\n\n"

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 468
    .local p0, shown:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #shown:Ljava/lang/String;
    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-virtual {v7, v8}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 471
    const/16 p0, 0x1

    move v0, v6

    move/from16 v1, p0

    if-ne v0, v1, :cond_12

    if-nez v5, :cond_12

    .line 472
    const/16 p0, 0x1

    sub-int p0, v6, p0

    move-object v0, v12

    move/from16 v1, p0

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    .line 473
    invoke-virtual {v12, v6}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 477
    :goto_6
    const/16 p0, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 479
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result p0

    if-nez p0, :cond_e

    .line 480
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 487
    .end local v6           #size:I
    .end local v7           #slide:Lcom/android/mms/model/SlideModel;
    .end local v8           #text:Lcom/android/mms/model/TextModel;
    .end local p1           #name:Ljava/lang/String;
    :cond_e
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getAddAttachmentSlide()Z

    move-result p0

    if-eqz p0, :cond_f

    .line 488
    const/16 p0, 0x0

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setAddAttachmentSlide(Z)V

    .line 491
    :cond_f
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result p0

    if-nez p0, :cond_10

    .line 492
    const/16 p0, 0x1

    invoke-static/range {p0 .. p0}, Lcom/android/mms/model/SlideshowModel;->setCheckMessageSizeforSlide(Z)V

    .line 496
    :cond_10
    invoke-virtual {v12, v12}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 497
    return-object v12

    .line 464
    .restart local v6       #size:I
    .restart local v7       #slide:Lcom/android/mms/model/SlideModel;
    .restart local v8       #text:Lcom/android/mms/model/TextModel;
    .local p0, context:Landroid/content/Context;
    .local p1, fileCount:I
    :cond_11
    const p1, 0x7f0901ab

    invoke-virtual/range {p0 .. p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p1           #fileCount:I
    move-result-object p0

    .local p0, detail:Ljava/lang/String;
    goto :goto_5

    .line 475
    .end local p0           #detail:Ljava/lang/String;
    .local p1, name:Ljava/lang/String;
    :cond_12
    invoke-virtual {v12, v6, v7}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    goto :goto_6
.end method

.method public static createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "context"

    .prologue
    .line 119
    new-instance v0, Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v0, p0}, Lcom/android/mms/model/SlideshowModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static getAddAttachmentSlide()Z
    .locals 2

    .prologue
    .line 690
    const/4 v0, 0x0

    .line 691
    .local v0, resultValue:Z
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    if-eqz v1, :cond_0

    .line 692
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 694
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 695
    return v0
.end method

.method public static getAddAttachmentSlideForCompose()Z
    .locals 2

    .prologue
    .line 715
    const/4 v0, 0x0

    .line 716
    .local v0, resultValue:Z
    sget-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    if-eqz v1, :cond_0

    .line 717
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 719
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 720
    return v0
.end method

.method private static getAttachmentList(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;Lorg/w3c/dom/NodeList;)Ljava/util/ArrayList;
    .locals 21
    .parameter "context"
    .parameter "pb"
    .parameter "slideNodes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/mms/pdu/PduBody;",
            "Lorg/w3c/dom/NodeList;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 525
    const/4 v7, 0x0

    .line 526
    .local v7, slideMediaCount:I
    invoke-interface/range {p2 .. p2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v12

    .line 527
    .local v12, slidesNum:I
    const/4 v5, 0x0

    .line 529
    .local v5, bHaveVItem:Z
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v19, slideMediaSrc:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, i:I
    move v11, v7

    .end local v7           #slideMediaCount:I
    .local v11, slideMediaCount:I
    :goto_0
    if-ge v6, v12, :cond_1

    .line 532
    move-object/from16 v0, p2

    move v1, v6

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lorg/w3c/dom/smil/SMILParElement;

    .line 533
    .local v7, par:Lorg/w3c/dom/smil/SMILParElement;
    invoke-interface {v7}, Lorg/w3c/dom/smil/SMILParElement;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v9

    .line 534
    .local v9, mediaNodes:Lorg/w3c/dom/NodeList;
    invoke-interface {v9}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v10

    .line 535
    .local v10, mediaNum:I
    const/4 v7, 0x0

    .local v7, j:I
    :goto_1
    if-ge v7, v10, :cond_0

    .line 537
    invoke-interface {v9, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-static {v8}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v8

    .line 538
    .local v8, media:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v8}, Lorg/w3c/dom/smil/SMILMediaElement;->getSrc()Ljava/lang/String;

    move-result-object v8

    .line 539
    .local v8, src:Ljava/lang/String;
    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 540
    const-string v13, "Mms/slideshow"

    invoke-static {v13, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 543
    .end local v8           #src:Ljava/lang/String;
    :cond_0
    add-int v7, v11, v10

    .line 531
    .end local v11           #slideMediaCount:I
    .local v7, slideMediaCount:I
    add-int/lit8 v6, v6, 0x1

    move v11, v7

    .end local v7           #slideMediaCount:I
    .restart local v11       #slideMediaCount:I
    goto :goto_0

    .line 546
    .end local v9           #mediaNodes:Lorg/w3c/dom/NodeList;
    .end local v10           #mediaNum:I
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v15

    .line 547
    .local v15, numOfParts:I
    new-instance p2, Ljava/util/ArrayList;

    .end local p2
    move-object/from16 v0, p2

    move v1, v15

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 551
    .local p2, attachments:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/AttachmentModel;>;"
    const/4 v6, 0x0

    .local v6, j:I
    move v12, v6

    .end local v6           #j:I
    .end local v11           #slideMediaCount:I
    .local v12, j:I
    :goto_2
    if-ge v12, v15, :cond_18

    .line 552
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v16

    .line 553
    .local v16, p:Lcom/google/android/mms/pdu/PduPart;
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 554
    .local v6, contentType:Ljava/lang/String;
    const/4 v7, 0x0

    .line 555
    .local v7, mediaName:Ljava/lang/String;
    const-string v8, "application/smil"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 551
    :goto_3
    add-int/lit8 v6, v12, 0x1

    .end local v12           #j:I
    .local v6, j:I
    move v12, v6

    .end local v6           #j:I
    .restart local v12       #j:I
    goto :goto_2

    .line 558
    .local v6, contentType:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    if-eqz v8, :cond_3

    .line 559
    new-instance v7, Ljava/lang/String;

    .end local v7           #mediaName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .line 562
    .restart local v7       #mediaName:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_21

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    if-eqz v8, :cond_21

    .line 563
    new-instance v7, Ljava/lang/String;

    .end local v7           #mediaName:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V

    .restart local v7       #mediaName:Ljava/lang/String;
    move-object v14, v7

    .line 567
    .end local v7           #mediaName:Ljava/lang/String;
    .local v14, mediaName:Ljava/lang/String;
    :goto_4
    if-eqz v14, :cond_20

    .line 568
    const-string v7, ".vcf"

    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 569
    const-string v6, "text/x-vCard"

    .end local v6           #contentType:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 570
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v6       #contentType:Ljava/lang/String;
    move-object v9, v6

    .line 581
    .end local v6           #contentType:Ljava/lang/String;
    .local v9, contentType:Ljava/lang/String;
    :goto_5
    const/4 v6, 0x0

    .line 582
    .local v6, contentLoc:Ljava/lang/String;
    if-nez v6, :cond_1f

    .line 583
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v6

    .end local v6           #contentLoc:Ljava/lang/String;
    if-eqz v6, :cond_a

    .line 584
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v6       #contentLoc:Ljava/lang/String;
    move-object v8, v6

    .line 591
    .end local v6           #contentLoc:Ljava/lang/String;
    .local v8, contentLoc:Ljava/lang/String;
    :goto_6
    const/4 v6, 0x0

    .line 592
    .local v6, contentId:Ljava/lang/String;
    if-nez v6, :cond_1e

    .line 593
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v7

    if-eqz v7, :cond_4

    .line 594
    new-instance v6, Ljava/lang/String;

    .end local v6           #contentId:Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentId()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 596
    .restart local v6       #contentId:Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_1e

    const-string v7, "<"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    const-string v7, ">"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 597
    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-virtual {v6, v7, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .line 600
    .end local v6           #contentId:Ljava/lang/String;
    .local v7, contentId:Ljava/lang/String;
    :goto_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 601
    .local v18, slideMediaNum:I
    const/4 v6, 0x0

    .line 602
    .local v6, isSlideMedia:Z
    const/4 v10, 0x0

    .local v10, k:I
    move v13, v10

    .end local v10           #k:I
    .local v13, k:I
    move v11, v6

    .end local v6           #isSlideMedia:Z
    .local v11, isSlideMedia:Z
    :goto_8
    move v0, v13

    move/from16 v1, v18

    if-ge v0, v1, :cond_13

    .line 603
    if-eqz v8, :cond_1d

    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_1d

    .line 604
    move-object/from16 v0, v19

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 605
    .local v6, slideMediaName:Ljava/lang/String;
    const-string v10, "cid:"

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 606
    const-string v10, "cid:"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v17, v6

    .line 609
    .end local v6           #slideMediaName:Ljava/lang/String;
    .local v17, slideMediaName:Ljava/lang/String;
    :goto_9
    move-object v6, v8

    .line 610
    .local v6, compareContentLoc:Ljava/lang/String;
    const-string v10, "\""

    invoke-virtual {v6, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    const-string v10, "\""

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 611
    const-string v10, "\""

    invoke-virtual {v6, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    .line 612
    .local v10, endIndex:I
    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    move v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 616
    .end local v10           #endIndex:I
    :cond_5
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    .line 617
    const-string v10, ".vcf"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".vcs"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    const-string v10, ".vnt"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 618
    :cond_6
    const/4 v10, 0x0

    .line 642
    .end local v11           #isSlideMedia:Z
    .local v10, isSlideMedia:Z
    :goto_a
    if-eqz v6, :cond_1a

    if-nez v10, :cond_19

    .line 643
    const-string v11, "[^a-zA-Z0-9.]"

    .line 644
    .local v11, pattern:Ljava/lang/String;
    const-string v20, ""

    move-object/from16 v0, v17

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 645
    .local v17, tempSlideMedia:Ljava/lang/String;
    const-string v20, ""

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 646
    .local v6, tempContentLoc:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .end local v6           #tempContentLoc:Ljava/lang/String;
    if-eqz v6, :cond_19

    .line 647
    const-string v6, ".vcf"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, ".vcs"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, ".vnt"

    move-object/from16 v0, v17

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 648
    :cond_7
    const/4 v6, 0x0

    .line 602
    .end local v10           #isSlideMedia:Z
    .end local v11           #pattern:Ljava/lang/String;
    .end local v17           #tempSlideMedia:Ljava/lang/String;
    .local v6, isSlideMedia:Z
    :goto_b
    add-int/lit8 v10, v13, 0x1

    .end local v13           #k:I
    .local v10, k:I
    move v13, v10

    .end local v10           #k:I
    .restart local v13       #k:I
    move v11, v6

    .end local v6           #isSlideMedia:Z
    .local v11, isSlideMedia:Z
    goto/16 :goto_8

    .line 571
    .end local v7           #contentId:Ljava/lang/String;
    .end local v8           #contentLoc:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    .end local v11           #isSlideMedia:Z
    .end local v13           #k:I
    .end local v18           #slideMediaNum:I
    .local v6, contentType:Ljava/lang/String;
    :cond_8
    const-string v7, ".vcs"

    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 572
    const-string v6, "text/x-vCalendar"

    .end local v6           #contentType:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 573
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v6       #contentType:Ljava/lang/String;
    move-object v9, v6

    .end local v6           #contentType:Ljava/lang/String;
    .restart local v9       #contentType:Ljava/lang/String;
    goto/16 :goto_5

    .line 574
    .end local v9           #contentType:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    :cond_9
    const-string v7, ".vnt"

    invoke-virtual {v14, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 575
    const-string v6, "text/x-vNote"

    .end local v6           #contentType:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    move-object/from16 v0, v16

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 576
    new-instance v6, Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .restart local v6       #contentType:Ljava/lang/String;
    move-object v9, v6

    .end local v6           #contentType:Ljava/lang/String;
    .restart local v9       #contentType:Ljava/lang/String;
    goto/16 :goto_5

    .line 586
    :cond_a
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->generateLocation()Ljava/lang/String;

    move-result-object v6

    .local v6, contentLoc:Ljava/lang/String;
    move-object v8, v6

    .end local v6           #contentLoc:Ljava/lang/String;
    .restart local v8       #contentLoc:Ljava/lang/String;
    goto/16 :goto_6

    .line 620
    .local v6, compareContentLoc:Ljava/lang/String;
    .restart local v7       #contentId:Ljava/lang/String;
    .restart local v11       #isSlideMedia:Z
    .restart local v13       #k:I
    .local v17, slideMediaName:Ljava/lang/String;
    .restart local v18       #slideMediaNum:I
    :cond_b
    const/4 v10, 0x1

    .end local v11           #isSlideMedia:Z
    .local v10, isSlideMedia:Z
    goto/16 :goto_a

    .line 622
    .end local v10           #isSlideMedia:Z
    .restart local v11       #isSlideMedia:Z
    :cond_c
    if-eqz v7, :cond_1b

    .line 623
    move-object v0, v7

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 624
    const-string v10, ".vcf"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, ".vcs"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, ".vnt"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e

    .line 625
    :cond_d
    const/4 v10, 0x0

    .end local v11           #isSlideMedia:Z
    .restart local v10       #isSlideMedia:Z
    goto/16 :goto_a

    .line 627
    .end local v10           #isSlideMedia:Z
    .restart local v11       #isSlideMedia:Z
    :cond_e
    const/4 v10, 0x1

    .end local v11           #isSlideMedia:Z
    .restart local v10       #isSlideMedia:Z
    goto/16 :goto_a

    .line 629
    .end local v10           #isSlideMedia:Z
    .restart local v11       #isSlideMedia:Z
    :cond_f
    const-string v10, "."

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    if-lez v10, :cond_1b

    .line 630
    const/4 v10, 0x0

    const-string v20, "."

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, v17

    move v1, v10

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 631
    .local v10, tempMediaName:Ljava/lang/String;
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    .end local v10           #tempMediaName:Ljava/lang/String;
    if-eqz v10, :cond_1b

    .line 632
    const-string v10, ".vcf"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, ".vcs"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, ".vnt"

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_11

    .line 633
    :cond_10
    const/4 v10, 0x0

    .end local v11           #isSlideMedia:Z
    .local v10, isSlideMedia:Z
    goto/16 :goto_a

    .line 635
    .end local v10           #isSlideMedia:Z
    .restart local v11       #isSlideMedia:Z
    :cond_11
    const/4 v10, 0x1

    .end local v11           #isSlideMedia:Z
    .restart local v10       #isSlideMedia:Z
    goto/16 :goto_a

    .line 650
    .end local v6           #compareContentLoc:Ljava/lang/String;
    .local v11, pattern:Ljava/lang/String;
    .local v17, tempSlideMedia:Ljava/lang/String;
    :cond_12
    const/4 v6, 0x1

    .end local v10           #isSlideMedia:Z
    .local v6, isSlideMedia:Z
    goto/16 :goto_b

    .line 658
    .end local v6           #isSlideMedia:Z
    .end local v17           #tempSlideMedia:Ljava/lang/String;
    .local v11, isSlideMedia:Z
    :cond_13
    if-nez v11, :cond_16

    .line 660
    const/4 v7, 0x0

    .line 661
    .local v7, object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v6

    if-nez v6, :cond_17

    .line 663
    :try_start_0
    new-instance v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v10

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v8

    move-object v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 676
    .end local v7           #object:Lcom/android/mms/model/AttachmentModel;
    .local v6, object:Lcom/android/mms/model/AttachmentModel;
    :cond_14
    :goto_c
    if-eqz v6, :cond_15

    .line 677
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object/from16 v0, p2

    move v1, v7

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 679
    :cond_15
    if-nez v5, :cond_16

    .line 680
    const/4 v6, 0x1

    sput-boolean v6, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    .end local v6           #object:Lcom/android/mms/model/AttachmentModel;
    :cond_16
    move-object v7, v14

    .end local v14           #mediaName:Ljava/lang/String;
    .local v7, mediaName:Ljava/lang/String;
    move-object v6, v9

    .end local v9           #contentType:Ljava/lang/String;
    .local v6, contentType:Ljava/lang/String;
    goto/16 :goto_3

    .line 665
    .end local v6           #contentType:Ljava/lang/String;
    .local v7, object:Lcom/android/mms/model/AttachmentModel;
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v14       #mediaName:Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 667
    .local v6, e:Lcom/google/android/mms/MmsException;
    invoke-virtual {v6}, Lcom/google/android/mms/MmsException;->printStackTrace()V

    move-object v6, v7

    .line 668
    .end local v7           #object:Lcom/android/mms/model/AttachmentModel;
    .local v6, object:Lcom/android/mms/model/AttachmentModel;
    goto :goto_c

    .line 670
    .end local v6           #object:Lcom/android/mms/model/AttachmentModel;
    .restart local v7       #object:Lcom/android/mms/model/AttachmentModel;
    :cond_17
    new-instance v6, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v7

    .end local v7           #object:Lcom/android/mms/model/AttachmentModel;
    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v9

    move-object v3, v8

    move-object v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/mms/model/AttachmentModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[B)V

    .line 672
    .restart local v6       #object:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_14

    .line 673
    invoke-virtual/range {v16 .. v16}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_c

    .line 686
    .end local v6           #object:Lcom/android/mms/model/AttachmentModel;
    .end local v8           #contentLoc:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    .end local v11           #isSlideMedia:Z
    .end local v13           #k:I
    .end local v14           #mediaName:Ljava/lang/String;
    .end local v16           #p:Lcom/google/android/mms/pdu/PduPart;
    .end local v18           #slideMediaNum:I
    :cond_18
    return-object p2

    .local v7, contentId:Ljava/lang/String;
    .restart local v8       #contentLoc:Ljava/lang/String;
    .restart local v9       #contentType:Ljava/lang/String;
    .restart local v10       #isSlideMedia:Z
    .restart local v13       #k:I
    .restart local v14       #mediaName:Ljava/lang/String;
    .restart local v16       #p:Lcom/google/android/mms/pdu/PduPart;
    .restart local v18       #slideMediaNum:I
    :cond_19
    move v6, v10

    .end local v10           #isSlideMedia:Z
    .local v6, isSlideMedia:Z
    goto/16 :goto_b

    .local v6, compareContentLoc:Ljava/lang/String;
    .restart local v10       #isSlideMedia:Z
    .local v17, slideMediaName:Ljava/lang/String;
    :cond_1a
    move v6, v10

    .end local v10           #isSlideMedia:Z
    .local v6, isSlideMedia:Z
    goto/16 :goto_b

    .local v6, compareContentLoc:Ljava/lang/String;
    .restart local v11       #isSlideMedia:Z
    :cond_1b
    move v10, v11

    .end local v11           #isSlideMedia:Z
    .restart local v10       #isSlideMedia:Z
    goto/16 :goto_a

    .end local v10           #isSlideMedia:Z
    .end local v17           #slideMediaName:Ljava/lang/String;
    .local v6, slideMediaName:Ljava/lang/String;
    .restart local v11       #isSlideMedia:Z
    :cond_1c
    move-object/from16 v17, v6

    .end local v6           #slideMediaName:Ljava/lang/String;
    .restart local v17       #slideMediaName:Ljava/lang/String;
    goto/16 :goto_9

    .end local v17           #slideMediaName:Ljava/lang/String;
    :cond_1d
    move v6, v11

    .end local v11           #isSlideMedia:Z
    .local v6, isSlideMedia:Z
    goto/16 :goto_b

    .end local v7           #contentId:Ljava/lang/String;
    .end local v13           #k:I
    .end local v18           #slideMediaNum:I
    .local v6, contentId:Ljava/lang/String;
    :cond_1e
    move-object v7, v6

    .end local v6           #contentId:Ljava/lang/String;
    .restart local v7       #contentId:Ljava/lang/String;
    goto/16 :goto_7

    .end local v7           #contentId:Ljava/lang/String;
    .end local v8           #contentLoc:Ljava/lang/String;
    .local v6, contentLoc:Ljava/lang/String;
    :cond_1f
    move-object v8, v6

    .end local v6           #contentLoc:Ljava/lang/String;
    .restart local v8       #contentLoc:Ljava/lang/String;
    goto/16 :goto_6

    .end local v8           #contentLoc:Ljava/lang/String;
    .end local v9           #contentType:Ljava/lang/String;
    .local v6, contentType:Ljava/lang/String;
    :cond_20
    move-object v9, v6

    .end local v6           #contentType:Ljava/lang/String;
    .restart local v9       #contentType:Ljava/lang/String;
    goto/16 :goto_5

    .end local v9           #contentType:Ljava/lang/String;
    .end local v14           #mediaName:Ljava/lang/String;
    .restart local v6       #contentType:Ljava/lang/String;
    .local v7, mediaName:Ljava/lang/String;
    :cond_21
    move-object v14, v7

    .end local v7           #mediaName:Ljava/lang/String;
    .restart local v14       #mediaName:Ljava/lang/String;
    goto/16 :goto_4
.end method

.method public static getCheckMessageSizeforSlide()Z
    .locals 1

    .prologue
    .line 706
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 707
    .local v0, resultValue:Z
    return v0
.end method

.method public static getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;
    .locals 4
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 907
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 908
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v1, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 910
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v0

    .line 911
    .local v0, msgType:I
    const/16 v3, 0x80

    if-eq v0, v3, :cond_0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_1

    .line 913
    :cond_0
    check-cast v2, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v3

    return-object v3

    .line 915
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_1
    new-instance v3, Lcom/google/android/mms/MmsException;

    invoke-direct {v3}, Lcom/google/android/mms/MmsException;-><init>()V

    throw v3
.end method

.method private static getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;
    .locals 7
    .parameter "node"

    .prologue
    .line 503
    move-object v3, p0

    .line 507
    .local v3, mNode:Lorg/w3c/dom/Node;
    const/4 v5, 0x0

    .line 509
    .local v5, mSME:Lorg/w3c/dom/smil/SMILMediaElement;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 510
    .local v4, mNodeList:Lorg/w3c/dom/NodeList;
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 512
    .local v2, mChildCount:I
    instance-of v6, v3, Lorg/w3c/dom/smil/SMILMediaElement;

    if-eqz v6, :cond_1

    .line 513
    move-object v0, v3

    check-cast v0, Lorg/w3c/dom/smil/SMILMediaElement;

    move-object v5, v0

    .line 519
    :cond_0
    return-object v5

    .line 515
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 516
    invoke-interface {v4, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-static {v6}, Lcom/android/mms/model/SlideshowModel;->getSmilMediaElement(Lorg/w3c/dom/Node;)Lorg/w3c/dom/smil/SMILMediaElement;

    move-result-object v5

    .line 515
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getSubject(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 921
    const/4 v1, 0x0

    .line 923
    .local v1, subStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .line 926
    .local v0, pdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    if-eqz v0, :cond_1

    .line 927
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    .line 928
    .local v2, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v2, :cond_0

    .line 929
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    .line 935
    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :goto_0
    return-object v3

    .restart local v2       #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    move-object v3, v4

    .line 932
    goto :goto_0

    .end local v2           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_1
    move-object v3, v4

    .line 935
    goto :goto_0
.end method

.method private makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;
    .locals 34
    .parameter "context"
    .parameter "document"
    .parameter "isMakingCopy"

    .prologue
    .line 739
    new-instance v23, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct/range {v23 .. v23}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .line 741
    .local v23, pb:Lcom/google/android/mms/pdu/PduBody;
    const/4 v12, 0x0

    .line 742
    .local v12, hasForwardLock:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_d

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/mms/model/SlideModel;

    .line 743
    .local v25, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual/range {v25 .. v25}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/mms/model/MediaModel;

    .line 744
    .local v19, media:Lcom/android/mms/model/MediaModel;
    if-eqz p3, :cond_2

    .line 746
    :try_start_0
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v31

    if-eqz v31, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isAllowedToForward()Z
    :try_end_0
    .catch Landroid/drm/mobile2/OMADRMException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v31

    if-nez v31, :cond_2

    .line 747
    const/4 v12, 0x1

    goto :goto_0

    .line 750
    :catch_0
    move-exception v31

    move-object/from16 v9, v31

    .line 752
    .local v9, e:Landroid/drm/mobile2/OMADRMException;
    invoke-virtual {v9}, Landroid/drm/mobile2/OMADRMException;->printStackTrace()V

    .line 759
    .end local v9           #e:Landroid/drm/mobile2/OMADRMException;
    :cond_2
    :goto_1
    new-instance v22, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v22 .. v22}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 761
    .local v22, part:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v31

    if-eqz v31, :cond_3

    .line 762
    move-object/from16 v0, v19

    check-cast v0, Lcom/android/mms/model/TextModel;

    move-object/from16 v29, v0

    .line 766
    .local v29, text:Lcom/android/mms/model/TextModel;
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v31

    if-nez v31, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v31

    const-string v32, "text/x-vCalendar"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v31

    const-string v32, "text/x-vCard"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v31

    const-string v32, "text/x-vNote"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v31

    if-nez v31, :cond_1

    .line 776
    invoke-virtual/range {v29 .. v29}, Lcom/android/mms/model/TextModel;->getCharset()I

    move-result v31

    move-object/from16 v0, v22

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    .line 779
    .end local v29           #text:Lcom/android/mms/model/TextModel;
    :cond_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    .line 780
    .local v27, src:Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v7

    .line 781
    .local v7, contentType:Ljava/lang/String;
    const/16 v31, 0x2e

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    .line 782
    .local v8, dotPos:I
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10}, Ljava/lang/String;-><init>()V

    .line 783
    .local v10, extension:Ljava/lang/String;
    if-ltz v8, :cond_4

    .line 784
    add-int/lit8 v31, v8, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .line 786
    :cond_4
    const-string v31, "dcf"

    move-object v0, v10

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_5

    .line 787
    invoke-static {}, Lcom/android/mms/util/MessageMimeTypeMap;->getSingleton()Lcom/android/mms/util/MessageMimeTypeMap;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/mms/util/MessageMimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 788
    .local v5, changeExtension:Ljava/lang/String;
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "."

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 789
    .local v11, fileName:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    .line 790
    const-string v7, "application/vnd.oma.drm.content"

    .line 795
    .end local v5           #changeExtension:Ljava/lang/String;
    .end local v11           #fileName:Ljava/lang/String;
    :cond_5
    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 799
    const-string v31, "cid:"

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v28

    .line 800
    .local v28, startWithContentId:Z
    if-eqz v28, :cond_6

    .line 801
    const-string v31, "cid:"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v31

    move-object/from16 v0, v27

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v18

    .line 806
    .local v18, location:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 809
    if-eqz v28, :cond_7

    .line 811
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 820
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isDrmProtected()Z

    move-result v31

    if-eqz v31, :cond_9

    .line 821
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getDrmObject()Lcom/android/mms/drm/DrmWrapper;

    move-result-object v30

    .line 822
    .local v30, wrapper:Lcom/android/mms/drm/DrmWrapper;
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/drm/DrmWrapper;->getOriginalUri()Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 823
    invoke-virtual/range {v30 .. v30}, Lcom/android/mms/drm/DrmWrapper;->getOriginalData()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 833
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v30           #wrapper:Lcom/android/mms/drm/DrmWrapper;
    :goto_4
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    goto/16 :goto_0

    .line 753
    .end local v7           #contentType:Ljava/lang/String;
    .end local v8           #dotPos:I
    .end local v10           #extension:Ljava/lang/String;
    .end local v18           #location:Ljava/lang/String;
    .end local v22           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v27           #src:Ljava/lang/String;
    .end local v28           #startWithContentId:Z
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    :catch_1
    move-exception v31

    move-object/from16 v9, v31

    .line 755
    .local v9, e:Ljava/io/IOException;
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 803
    .end local v9           #e:Ljava/io/IOException;
    .restart local v7       #contentType:Ljava/lang/String;
    .restart local v8       #dotPos:I
    .restart local v10       #extension:Ljava/lang/String;
    .restart local v22       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v27       #src:Ljava/lang/String;
    .restart local v28       #startWithContentId:Z
    :cond_6
    move-object/from16 v18, v27

    .restart local v18       #location:Ljava/lang/String;
    goto :goto_2

    .line 814
    :cond_7
    const-string v31, "."

    move-object/from16 v0, v18

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 815
    .local v16, index:I
    const/16 v31, -0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-ne v0, v1, :cond_8

    move-object/from16 v6, v18

    .line 817
    .local v6, contentId:Ljava/lang/String;
    :goto_5
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    goto :goto_3

    .line 815
    .end local v6           #contentId:Ljava/lang/String;
    :cond_8
    const/16 v31, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v31

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v6, v31

    goto :goto_5

    .line 824
    .end local v16           #index:I
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v31

    if-eqz v31, :cond_a

    .line 825
    check-cast v19, Lcom/android/mms/model/TextModel;

    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    goto :goto_4

    .line 826
    .restart local v19       #media:Lcom/android/mms/model/MediaModel;
    :cond_a
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v31

    if-nez v31, :cond_b

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v31

    if-nez v31, :cond_b

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v31

    if-eqz v31, :cond_c

    .line 827
    :cond_b
    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v31

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    goto :goto_4

    .line 829
    :cond_c
    new-instance v24, Ljava/lang/StringBuffer;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuffer;-><init>()V

    .line 830
    .local v24, s:Ljava/lang/StringBuffer;
    const-string v31, "Mms/slideshow"

    const-string v32, "Unsupport media: "

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 837
    .end local v7           #contentType:Ljava/lang/String;
    .end local v8           #dotPos:I
    .end local v10           #extension:Ljava/lang/String;
    .end local v15           #i$:Ljava/util/Iterator;
    .end local v18           #location:Ljava/lang/String;
    .end local v19           #media:Lcom/android/mms/model/MediaModel;
    .end local v22           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v24           #s:Ljava/lang/StringBuffer;
    .end local v25           #slide:Lcom/android/mms/model/SlideModel;
    .end local v27           #src:Ljava/lang/String;
    .end local v28           #startWithContentId:Z
    :cond_d
    if-eqz v12, :cond_e

    if-eqz p3, :cond_e

    if-eqz p1, :cond_e

    .line 838
    const v31, 0x7f090060

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    const/16 v32, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Landroid/widget/Toast;->show()V

    .line 841
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/google/android/mms/pdu/PduBody;Landroid/content/Context;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object p2

    .line 845
    :cond_e
    const/16 v17, 0x0

    .end local p1
    .local v17, j:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move/from16 v0, v17

    move/from16 v1, v31

    if-ge v0, v1, :cond_13

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/AttachmentModel;

    .line 847
    .local v4, attachment:Lcom/android/mms/model/AttachmentModel;
    new-instance v3, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 848
    .local v3, attachPart:Lcom/google/android/mms/pdu/PduPart;
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v27

    .line 849
    .restart local v27       #src:Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, i:I
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v31

    move v0, v13

    move/from16 v1, v31

    if-ge v0, v1, :cond_11

    .line 850
    move v0, v13

    move/from16 v1, v17

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/mms/model/AttachmentModel;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 851
    const-string v31, "."

    move-object/from16 v0, v27

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    .line 852
    .restart local v16       #index:I
    const/16 v31, -0x1

    move/from16 v0, v16

    move/from16 v1, v31

    if-eq v0, v1, :cond_10

    .line 853
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v32, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v32

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 849
    .end local v16           #index:I
    :cond_f
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 855
    .restart local v16       #index:I
    :cond_10
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "_"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    goto :goto_8

    .line 858
    .end local v16           #index:I
    :cond_11
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 859
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 860
    move-object v0, v4

    iget-object v0, v0, Lcom/android/mms/model/AttachmentModel;->mContentType:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 861
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getData()[B

    move-result-object v31

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 862
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v31

    if-eqz v31, :cond_12

    .line 863
    invoke-virtual {v4}, Lcom/android/mms/model/AttachmentModel;->getUri()Landroid/net/Uri;

    move-result-object v31

    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setDataUri(Landroid/net/Uri;)V

    .line 864
    :cond_12
    move-object/from16 v0, v23

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    .line 845
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 870
    .end local v3           #attachPart:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v13           #i:I
    .end local v27           #src:Ljava/lang/String;
    :cond_13
    const/16 v20, 0x0

    .line 872
    .local v20, out:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    .end local v20           #out:Ljava/io/ByteArrayOutputStream;
    .local v21, out:Ljava/io/ByteArrayOutputStream;
    :try_start_2
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/dom/smil/parser/SmilXmlSerializer;->serialize(Lorg/w3c/dom/smil/SMILDocument;Ljava/io/OutputStream;)V

    .line 874
    new-instance v26, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct/range {v26 .. v26}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .line 875
    .local v26, smilPart:Lcom/google/android/mms/pdu/PduPart;
    const-string v31, "smil"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 876
    const-string v31, "smil.xml"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 877
    const-string v31, "application/smil"

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->getBytes()[B

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    .line 878
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v31

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    .line 881
    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 883
    if-eqz v21, :cond_14

    .line 885
    :try_start_3
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 892
    :cond_14
    :goto_9
    return-object v23

    .line 886
    :catch_2
    move-exception v9

    .line 887
    .restart local v9       #e:Ljava/io/IOException;
    const-string v31, "Mms/slideshow"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 883
    .end local v9           #e:Ljava/io/IOException;
    .end local v21           #out:Ljava/io/ByteArrayOutputStream;
    .end local v26           #smilPart:Lcom/google/android/mms/pdu/PduPart;
    .restart local v20       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v31

    :goto_a
    if-eqz v20, :cond_15

    .line 885
    :try_start_4
    invoke-virtual/range {v20 .. v20}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 888
    :cond_15
    :goto_b
    throw v31

    .line 886
    :catch_3
    move-exception v9

    .line 887
    .restart local v9       #e:Ljava/io/IOException;
    const-string v32, "Mms/slideshow"

    invoke-virtual {v9}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v32

    move-object/from16 v1, v33

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 883
    .end local v9           #e:Ljava/io/IOException;
    .end local v20           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v21       #out:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v31

    move-object/from16 v20, v21

    .end local v21           #out:Ljava/io/ByteArrayOutputStream;
    .restart local v20       #out:Ljava/io/ByteArrayOutputStream;
    goto :goto_a
.end method

.method private makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "document"

    .prologue
    .line 735
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public static setAddAttachmentSlide(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 698
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlide:Z

    .line 699
    return-void
.end method

.method public static setAddAttachmentSlideForCompose(Z)V
    .locals 0
    .parameter "addSlide"

    .prologue
    .line 723
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachmentAddSlideforCompose:Z

    .line 724
    return-void
.end method

.method public static setCheckMessageSizeforSlide(Z)V
    .locals 0
    .parameter "checkSize"

    .prologue
    .line 703
    sput-boolean p0, Lcom/android/mms/model/SlideshowModel;->mCheckMessageSize:Z

    .line 704
    return-void
.end method


# virtual methods
.method public add(ILcom/android/mms/model/SlideModel;)V
    .locals 4
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1056
    if-eqz p2, :cond_1

    .line 1057
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 1058
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1060
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1061
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1062
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1063
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1064
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1066
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1068
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #increaseSize:I
    :cond_1
    return-void
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->add(ILcom/android/mms/model/SlideModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/SlideModel;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x1

    .line 975
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    .line 976
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 978
    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 979
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 980
    invoke-virtual {p1, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 981
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 982
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p1, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 984
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v3, v4

    .line 987
    .end local v0           #i$:Ljava/util/Iterator;
    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    check-cast p1, Lcom/android/mms/model/SlideModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1072
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/SlideModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAttachment(ILcom/android/mms/model/AttachmentModel;)V
    .locals 4
    .parameter "location"
    .parameter "object"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1280
    if-eqz p2, :cond_1

    .line 1281
    invoke-virtual {p2}, Lcom/android/mms/model/AttachmentModel;->getMediaSize()I

    move-result v1

    .line 1283
    .local v1, increaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1284
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v3, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1285
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1286
    invoke-virtual {p2, p0}, Lcom/android/mms/model/AttachmentModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1287
    iget-object v3, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1288
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/AttachmentModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1290
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1292
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #increaseSize:I
    :cond_1
    return-void
.end method

.method public addAttachment(Lcom/android/mms/model/AttachmentModel;)V
    .locals 1
    .parameter "object"

    .prologue
    .line 1275
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/model/SlideshowModel;->addAttachment(ILcom/android/mms/model/AttachmentModel;)V

    .line 1276
    return-void
.end method

.method public checkMessageSize(I)V
    .locals 3
    .parameter "increaseSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 1209
    invoke-static {}, Lcom/android/mms/model/SlideshowModel;->getCheckMessageSizeforSlide()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1213
    :cond_0
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 1214
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v0, v1, p1, v2}, Lcom/android/mms/model/ContentRestriction;->checkMessageSize(IILandroid/content/ContentResolver;)V

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .line 995
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 996
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 997
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3, p0}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 998
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 999
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1002
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .end local v3           #slide:Lcom/android/mms/model/SlideModel;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 1003
    iget-object v4, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1004
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1006
    :cond_2
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1013
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 954
    if-lez p1, :cond_0

    .line 955
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 957
    :cond_0
    return-void
.end method

.method public finalResize(Landroid/net/Uri;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Lcom/android/mms/ExceedMessageSizeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 1374
    .line 1376
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    move v3, v7

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1377
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1378
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1379
    add-int/lit8 v0, v3, 0x1

    move v8, v2

    move v2, v0

    move v0, v8

    :goto_1
    move v3, v2

    move v2, v0

    .line 1381
    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v3

    goto :goto_1

    .line 1385
    :cond_2
    if-lez v3, :cond_a

    .line 1386
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    sub-int/2addr v0, v2

    const/16 v1, 0x400

    sub-int/2addr v0, v1

    .line 1387
    if-gtz v0, :cond_3

    .line 1388
    new-instance v0, Lcom/android/mms/ExceedMessageSizeException;

    const-string v1, "No room for pictures"

    invoke-direct {v0, v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1390
    :cond_3
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1391
    div-int v3, v0, v3

    .line 1393
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1394
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1395
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaResizable()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1396
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/mms/model/MediaModel;->resizeMedia(IJ)V

    goto :goto_2

    .line 1402
    :cond_6
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1403
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 1404
    invoke-virtual {v0}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    add-int/2addr v0, v2

    move v2, v0

    goto :goto_3

    .line 1410
    :cond_8
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxMessageSize()I

    move-result v0

    if-le v2, v0, :cond_9

    .line 1411
    new-instance v0, Lcom/android/mms/ExceedMessageSizeException;

    const-string v1, "After compressing pictures, message too big"

    invoke-direct {v0, v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1413
    :cond_9
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 1415
    const/4 v0, 0x1

    invoke-virtual {p0, p0, v0}, Lcom/android/mms/model/SlideshowModel;->onModelChanged(Lcom/android/mms/model/Model;Z)V

    .line 1416
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1420
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 1422
    :cond_a
    return-void
.end method

.method public get(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1078
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1079
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/SlideModel;

    move-object v0, p0

    .line 1085
    :goto_0
    return-object v0

    .line 1081
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/SlideModel;

    move-object v0, p0

    goto :goto_0

    .line 1085
    .restart local p0
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public getAttachmentList()Ljava/lang/String;
    .locals 8

    .prologue
    const-string v7, ".vcf"

    .line 1319
    const-string v4, ""

    .line 1320
    .local v4, str:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1321
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1322
    .local v0, attach:Lcom/android/mms/model/AttachmentModel;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1323
    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1325
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 1326
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 1327
    .local v1, contentType:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 1328
    const-string v5, "text/x-vCard"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, ".vcf"

    invoke-virtual {v2, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1329
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".vcf"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1333
    :cond_1
    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1334
    goto :goto_0

    .line 1336
    .end local v0           #attach:Lcom/android/mms/model/AttachmentModel;
    .end local v1           #contentType:Ljava/lang/String;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    return-object v4
.end method

.method public getCurrentMessageSize()I
    .locals 1

    .prologue
    .line 944
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    return v0
.end method

.method public getLayout()Lcom/android/mms/model/LayoutModel;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    return-object v0
.end method

.method public getRawAttachmentsList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/AttachmentModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1353
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRawAttachmentsSize()I
    .locals 1

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getRemainContentsSize()I
    .locals 2

    .prologue
    .line 964
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    iget v1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public getSlides()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    return-object v0
.end method

.method public increaseMessageSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 948
    if-lez p1, :cond_0

    .line 949
    iget v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 951
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDrmContentsPresent()Z
    .locals 1

    .prologue
    .line 1345
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsDrmContentsPresent:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isRawAttachmentPresent()Z
    .locals 1

    .prologue
    .line 1340
    sget-boolean v0, Lcom/android/mms/model/SlideshowModel;->mIsRawAttachmentsPresent:Z

    return v0
.end method

.method public isSimple()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1226
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-eq v1, v4, :cond_0

    move v1, v3

    .line 1242
    :goto_0
    return v1

    .line 1229
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1231
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v1

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v2

    xor-int/2addr v1, v2

    if-nez v1, :cond_2

    .line 1232
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->isCanAddVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v3

    .line 1233
    goto :goto_0

    :cond_1
    move v1, v4

    .line 1235
    goto :goto_0

    .line 1238
    :cond_2
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v3

    .line 1239
    goto :goto_0

    :cond_3
    move v1, v4

    .line 1242
    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1098
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public makeCopy(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduBody;
    .locals 2
    .parameter "context"

    .prologue
    .line 896
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Landroid/content/Context;Lorg/w3c/dom/smil/SMILDocument;Z)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    return-object v0
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 1
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    const/4 v0, 0x0

    .line 1181
    if-eqz p2, :cond_0

    .line 1182
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 1183
    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 1185
    :cond_0
    return-void
.end method

.method public prepareForSend()V
    .locals 3

    .prologue
    .line 1265
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1266
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v0

    .line 1267
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {v0}, Lcom/android/mms/model/TextModel;->cloneText()V

    .line 1271
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    :cond_0
    return-void
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1154
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1156
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1157
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1159
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/SlideModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 1106
    iget-object v1, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/SlideModel;

    .line 1107
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 1108
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1109
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1110
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1112
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 1025
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1026
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v1, v0

    .line 1027
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1028
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1029
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 1032
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1036
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAttachment(Ljava/lang/Object;)Z
    .locals 4
    .parameter "object"

    .prologue
    const/4 v3, 0x1

    .line 1295
    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1296
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1297
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v2, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1298
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1299
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 1302
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeAttachment(Ljava/lang/Object;I)Z
    .locals 4
    .parameter "object"
    .parameter "position"

    .prologue
    const/4 v3, 0x1

    .line 1307
    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p2, v2, :cond_0

    .line 1308
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1309
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    move-object v1, v0

    .line 1310
    .local v1, attach:Lcom/android/mms/model/AttachmentModel;
    iget v2, v1, Lcom/android/mms/model/AttachmentModel;->mSize:I

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    .line 1311
    invoke-virtual {v1}, Lcom/android/mms/model/AttachmentModel;->unregisterAllModelChangedObservers()V

    .line 1312
    invoke-virtual {p0, v3}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    move v2, v3

    .line 1315
    .end local v1           #attach:Lcom/android/mms/model/AttachmentModel;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 1040
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;
    .locals 6
    .parameter "location"
    .parameter "object"

    .prologue
    .line 1116
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 1117
    .local v4, slide:Lcom/android/mms/model/SlideModel;
    if-eqz p2, :cond_1

    .line 1118
    const/4 v3, 0x0

    .line 1119
    .local v3, removeSize:I
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v0

    .line 1120
    .local v0, addSize:I
    if-eqz v4, :cond_0

    .line 1121
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v3

    .line 1123
    :cond_0
    if-le v0, v3, :cond_3

    .line 1124
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1125
    sub-int v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->increaseMessageSize(I)V

    .line 1131
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_1
    :goto_0
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v5, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #slide:Lcom/android/mms/model/SlideModel;
    check-cast v4, Lcom/android/mms/model/SlideModel;

    .line 1132
    .restart local v4       #slide:Lcom/android/mms/model/SlideModel;
    if-eqz v4, :cond_2

    .line 1133
    invoke-virtual {v4}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    .line 1136
    :cond_2
    if-eqz p2, :cond_4

    .line 1137
    invoke-virtual {p2, p0}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1138
    iget-object v5, p0, Lcom/android/mms/model/SlideshowModel;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 1139
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/SlideModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 1127
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    .restart local v0       #addSize:I
    .restart local v3       #removeSize:I
    :cond_3
    sub-int v5, v3, v0

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 1143
    .end local v0           #addSize:I
    .end local v3           #removeSize:I
    :cond_4
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/model/SlideshowModel;->notifyModelChanged(Z)V

    .line 1144
    return-object v4
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    check-cast p2, Lcom/android/mms/model/SlideModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideshowModel;->set(ILcom/android/mms/model/SlideModel;)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentMessageSize(I)V
    .locals 0
    .parameter "size"

    .prologue
    .line 940
    iput p1, p0, Lcom/android/mms/model/SlideshowModel;->mCurrentMessageSize:I

    .line 941
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/android/mms/model/SlideModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1148
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public sync(Lcom/google/android/mms/pdu/PduBody;)V
    .locals 8
    .parameter "pb"

    .prologue
    .line 1188
    iget-object v7, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/model/SlideModel;

    .line 1189
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/model/MediaModel;

    .line 1190
    .local v4, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v4}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1191
    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    if-eqz v5, :cond_2

    .line 1192
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/android/mms/model/MediaModel;->setUri(Landroid/net/Uri;)V

    goto :goto_0

    .line 1194
    :cond_2
    iget-object v7, v6, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, v7, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 1195
    iget-object v7, v6, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, v7, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/AttachmentModel;

    .line 1196
    .local v0, attachment:Lcom/android/mms/model/AttachmentModel;
    invoke-virtual {v0}, Lcom/android/mms/model/AttachmentModel;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Lcom/google/android/mms/pdu/PduBody;->getPartByContentLocation(Ljava/lang/String;)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .line 1197
    if-eqz v5, :cond_3

    .line 1198
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/mms/model/AttachmentModel;->setUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 1205
    .end local v0           #attachment:Lcom/android/mms/model/AttachmentModel;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #media:Lcom/android/mms/model/MediaModel;
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v6           #slide:Lcom/android/mms/model/SlideModel;
    :cond_4
    return-void
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 1052
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toPduBody()Lcom/google/android/mms/pdu/PduBody;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mRawAttachments:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 728
    :cond_0
    invoke-static {p0}, Lcom/android/mms/model/SmilHelper;->getDocument(Lcom/android/mms/model/SlideshowModel;)Lorg/w3c/dom/smil/SMILDocument;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    .line 729
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mDocumentCache:Lorg/w3c/dom/smil/SMILDocument;

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideshowModel;->makePduBody(Lorg/w3c/dom/smil/SMILDocument;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    .line 731
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/SlideshowModel;->mPduBodyCache:Lcom/google/android/mms/pdu/PduBody;

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 1173
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2}, Lcom/android/mms/model/LayoutModel;->unregisterAllModelChangedObservers()V

    .line 1175
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1176
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 1178
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 1164
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mLayout:Lcom/android/mms/model/LayoutModel;

    invoke-virtual {v2, p1}, Lcom/android/mms/model/LayoutModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 1166
    iget-object v2, p0, Lcom/android/mms/model/SlideshowModel;->mSlides:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/SlideModel;

    .line 1167
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/SlideModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 1169
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_0
    return-void
.end method
