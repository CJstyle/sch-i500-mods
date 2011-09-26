.class public Lcom/android/mms/model/LayoutModel;
.super Lcom/android/mms/model/Model;
.source "LayoutModel.java"


# instance fields
.field private mImageRegion:Lcom/android/mms/model/RegionModel;

.field private mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

.field private mLayoutType:I

.field private mNonStdRegions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation
.end field

.field private mRootLayout:Lcom/android/mms/model/RegionModel;

.field private mTextRegion:Lcom/android/mms/model/RegionModel;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 48
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 50
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 51
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 52
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/RegionModel;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "rootLayout"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/model/RegionModel;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p2, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 40
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 56
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 57
    iput-object p1, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 58
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    .line 59
    const/4 v5, 0x0

    .line 60
    .local v5, textRegionTop:I
    const/4 v1, 0x0

    .line 62
    .local v1, imageRegionTop:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/RegionModel;

    .line 63
    .local v2, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v2}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, rId:Ljava/lang/String;
    const-string v6, "Image"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 65
    iput-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 66
    iget-object v6, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v6}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v1

    goto :goto_0

    .line 67
    :cond_0
    const-string v6, "Text"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    iput-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 73
    iget-object v6, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v6}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v5

    goto :goto_0

    .line 80
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 81
    .local v4, s:Ljava/lang/StringBuffer;
    const-string v6, "Mms/slideshow"

    const-string v7, "Found non-standard region: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v6, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 87
    .end local v2           #r:Lcom/android/mms/model/RegionModel;
    .end local v3           #rId:Ljava/lang/String;
    .end local v4           #s:Ljava/lang/StringBuffer;
    :cond_2
    if-ge v5, v1, :cond_3

    .line 88
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 91
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->validateLayouts()V

    .line 92
    return-void
.end method

.method private createDefaultImageRegion()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Image"

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 106
    return-void
.end method

.method private createDefaultRootLayout()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getWidth()I

    move-result v4

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getHeight()I

    move-result v5

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    .line 97
    return-void
.end method

.method private createDefaultTextRegion()V
    .locals 6

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_0
    new-instance v0, Lcom/android/mms/model/RegionModel;

    const-string v1, "Text"

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v3}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v4}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v5}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/RegionModel;-><init>(Ljava/lang/String;IIII)V

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    .line 116
    return-void
.end method

.method private validateLayouts()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 120
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultRootLayout()V

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_1

    .line 124
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultImageRegion()V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_2

    .line 128
    invoke-direct {p0}, Lcom/android/mms/model/LayoutModel;->createDefaultTextRegion()V

    .line 130
    :cond_2
    return-void
.end method


# virtual methods
.method public changeTo(I)V
    .locals 5
    .parameter "layout"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "Mms/slideshow"

    .line 202
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-nez v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root-Layout uninitialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    if-nez v0, :cond_1

    .line 207
    invoke-static {}, Lcom/android/mms/layout/LayoutManager;->getInstance()Lcom/android/mms/layout/LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/layout/LayoutManager;->getLayoutParameters()Lcom/android/mms/layout/LayoutParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    .line 210
    :cond_1
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    if-eq v0, p1, :cond_2

    .line 211
    packed-switch p1, :pswitch_data_0

    .line 227
    const-string v0, "Mms/slideshow"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown layout type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_0
    return-void

    .line 213
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 214
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getImageHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 215
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 216
    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    .line 220
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutParams:Lcom/android/mms/layout/LayoutParameters;

    invoke-interface {v1}, Lcom/android/mms/layout/LayoutParameters;->getTextHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 221
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v2}, Lcom/android/mms/model/RegionModel;->setTop(I)V

    .line 222
    iput p1, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    .line 223
    invoke-virtual {p0, v3}, Lcom/android/mms/model/LayoutModel;->notifyModelChanged(Z)V

    goto :goto_0

    .line 232
    :cond_2
    const-string v0, "Mms/slideshow"

    const-string v0, "Skip changing layout."

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public findRegionById(Ljava/lang/String;)Lcom/android/mms/model/RegionModel;
    .locals 5
    .parameter "rId"

    .prologue
    .line 171
    const-string v2, "Image"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    .line 185
    :goto_0
    return-object v2

    .line 173
    :cond_0
    const-string v2, "Text"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 174
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    goto :goto_0

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/android/mms/model/LayoutModel;->mNonStdRegions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/RegionModel;

    .line 177
    .local v1, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {v1}, Lcom/android/mms/model/RegionModel;->getRegionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    .line 178
    goto :goto_0

    .line 183
    .end local v1           #r:Lcom/android/mms/model/RegionModel;
    :cond_3
    const-string v2, "Mms/slideshow"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Region not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getBackgroundColor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getBackgroundColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v0

    return v0
.end method

.method public getLayoutType()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/android/mms/model/LayoutModel;->mLayoutType:I

    return v0
.end method

.method public getLayoutWidth()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v0

    return v0
.end method

.method public getRegions()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/RegionModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, regions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/RegionModel;>;"
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    :cond_0
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v1, :cond_1

    .line 165
    iget-object v1, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_1
    return-object v0
.end method

.method public getTextRegion()Lcom/android/mms/model/RegionModel;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 249
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 252
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 253
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 255
    :cond_2
    return-void
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 280
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0}, Lcom/android/mms/model/RegionModel;->unregisterAllModelChangedObservers()V

    .line 286
    :cond_2
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mRootLayout:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mImageRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 268
    :cond_1
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    if-eqz v0, :cond_2

    .line 269
    iget-object v0, p0, Lcom/android/mms/model/LayoutModel;->mTextRegion:Lcom/android/mms/model/RegionModel;

    invoke-virtual {v0, p1}, Lcom/android/mms/model/RegionModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 271
    :cond_2
    return-void
.end method
