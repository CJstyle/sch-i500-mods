.class public Lcom/android/mms/model/SlideModel;
.super Lcom/android/mms/model/Model;
.source "SlideModel.java"

# interfaces
.implements Ljava/util/List;
.implements Lorg/w3c/dom/events/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/mms/model/Model;",
        "Ljava/util/List",
        "<",
        "Lcom/android/mms/model/MediaModel;",
        ">;",
        "Lorg/w3c/dom/events/EventListener;"
    }
.end annotation


# instance fields
.field private mAudio:Lcom/android/mms/model/MediaModel;

.field private mCanAddAudio:Z

.field private mCanAddImage:Z

.field private mCanAddVideo:Z

.field private mDuration:I

.field private mFill:S

.field private mImage:Lcom/android/mms/model/MediaModel;

.field private final mMedia:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field public mParent:Lcom/android/mms/model/SlideshowModel;

.field private mSlideSize:I

.field private mText:Lcom/android/mms/model/MediaModel;

.field private mVideo:Lcom/android/mms/model/MediaModel;

.field private mVisible:Z


# direct methods
.method public constructor <init>(ILcom/android/mms/model/SlideshowModel;)V
    .locals 2
    .parameter "duration"
    .parameter "slideshow"

    .prologue
    const/4 v1, 0x1

    .line 65
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 51
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 52
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 53
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 56
    iput-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 66
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 67
    iput-object p2, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 68
    return-void
.end method

.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 6
    .parameter "duration"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, mediaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/model/MediaModel;>;"
    const/4 v5, 0x1

    .line 80
    invoke-direct {p0}, Lcom/android/mms/model/Model;-><init>()V

    .line 44
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    .line 51
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 52
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 53
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 56
    iput-boolean v5, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 81
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 83
    const/4 v1, 0x0

    .line 84
    .local v1, maxDur:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 85
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-direct {p0, v2}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 87
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v3

    .line 88
    .local v3, mediaDur:I
    if-le v3, v1, :cond_0

    .line 89
    move v1, v3

    goto :goto_0

    .line 93
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    .end local v3           #mediaDur:I
    :cond_1
    iget v4, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    if-lez v4, :cond_2

    .line 94
    iget v1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 97
    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Lcom/android/mms/model/SlideshowModel;)V
    .locals 1
    .parameter "slideshow"

    .prologue
    .line 62
    const/16 v0, 0x1388

    invoke-direct {p0, v0, p1}, Lcom/android/mms/model/SlideModel;-><init>(ILcom/android/mms/model/SlideshowModel;)V

    .line 63
    return-void
.end method

.method private internalAdd(Lcom/android/mms/model/MediaModel;)V
    .locals 4
    .parameter "media"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 101
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 107
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v0

    .line 108
    .local v0, contentType:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/plain"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "text/html"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    :cond_2
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 111
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    goto :goto_0

    .line 113
    :cond_3
    const-string v1, "Mms/slideshow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SlideModel] content type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isn\'t supported (as text)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    .end local v0           #contentType:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 117
    iget-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    if-eqz v1, :cond_5

    .line 118
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 119
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 120
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 122
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 124
    :cond_6
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 125
    iget-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    if-eqz v1, :cond_7

    .line 126
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 127
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 128
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 130
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 132
    :cond_8
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-boolean v1, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    if-eqz v1, :cond_9

    .line 134
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/SlideModel;->internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V

    .line 135
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 136
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 137
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto/16 :goto_0

    .line 139
    :cond_9
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method

.method private internalAddOrReplace(Lcom/android/mms/model/MediaModel;Lcom/android/mms/model/MediaModel;)V
    .locals 6
    .parameter "old"
    .parameter "media"

    .prologue
    .line 149
    invoke-virtual {p2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 151
    .local v0, addSize:I
    if-nez p1, :cond_1

    .line 152
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4, v0}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 155
    :cond_0
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 157
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 174
    :goto_0
    iget-object v4, p0, Lcom/android/mms/model/Model;->mModelChangedObservers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/IModelChangedObserver;

    .line 175
    .local v2, observer:Lcom/android/mms/model/IModelChangedObserver;
    invoke-virtual {p2, v2}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_1

    .line 159
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #observer:Lcom/android/mms/model/IModelChangedObserver;
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v3

    .line 160
    .local v3, removeSize:I
    if-le v0, v3, :cond_3

    .line 161
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_2

    .line 162
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    sub-int v5, v0, v3

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 164
    :cond_2
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseSlideSize(I)V

    .line 165
    sub-int v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->increaseMessageSize(I)V

    .line 170
    :goto_2
    iget-object v4, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual {v4, v5, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-virtual {p1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 167
    :cond_3
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 168
    sub-int v4, v3, v0

    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_2

    .line 177
    .end local v3           #removeSize:I
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private internalRemove(Ljava/lang/Object;)Z
    .locals 5
    .parameter "object"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 180
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    instance-of v2, p1, Lcom/android/mms/model/TextModel;

    if-eqz v2, :cond_2

    .line 182
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 199
    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v1

    .line 200
    .local v1, decreaseSize:I
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 201
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    .line 204
    iget v2, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    if-nez v2, :cond_1

    .line 205
    const/16 v2, 0x1388

    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->setDuration(I)V

    .line 209
    :cond_1
    check-cast p1, Lcom/android/mms/model/Model;

    .end local p1
    invoke-virtual {p1}, Lcom/android/mms/model/Model;->unregisterAllModelChangedObservers()V

    move v2, v3

    .line 214
    .end local v1           #decreaseSize:I
    :goto_1
    return v2

    .line 183
    .restart local p1
    :cond_2
    instance-of v2, p1, Lcom/android/mms/model/ImageModel;

    if-eqz v2, :cond_3

    .line 184
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 185
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 186
    :cond_3
    instance-of v2, p1, Lcom/android/mms/model/AudioModel;

    if-eqz v2, :cond_4

    .line 187
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 188
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    goto :goto_0

    .line 189
    :cond_4
    instance-of v2, p1, Lcom/android/mms/model/VideoModel;

    if-eqz v2, :cond_0

    .line 190
    iput-object v4, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 191
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 192
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    goto :goto_0

    .line 214
    :cond_5
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public add(ILcom/android/mms/model/MediaModel;)V
    .locals 2
    .parameter "location"
    .parameter "object"

    .prologue
    .line 364
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic add(ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->add(ILcom/android/mms/model/MediaModel;)V

    return-void
.end method

.method public add(Lcom/android/mms/model/MediaModel;)Z
    .locals 1
    .parameter "object"

    .prologue
    const/4 v0, 0x1

    .line 286
    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalAdd(Lcom/android/mms/model/MediaModel;)V

    .line 287
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 288
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    check-cast p1, Lcom/android/mms/model/MediaModel;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    move-result v0

    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 2
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+",
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 369
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
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
            "Lcom/android/mms/model/MediaModel;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+Lcom/android/mms/model/MediaModel;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 296
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 297
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 298
    .local v2, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    .line 299
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaSize()I

    move-result v0

    .line 300
    .local v0, decreaseSize:I
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseSlideSize(I)V

    .line 301
    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->decreaseMessageSize(I)V

    goto :goto_0

    .line 303
    .end local v0           #decreaseSize:I
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    iget-object v3, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 305
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .line 306
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .line 307
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .line 308
    iput-object v5, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .line 310
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddImage:Z

    .line 311
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddAudio:Z

    .line 312
    iput-boolean v4, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    .line 314
    invoke-virtual {p0, v4}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 316
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter "object"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

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
    .line 323
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public decreaseMessageSize(I)V
    .locals 2
    .parameter "decreaseSize"

    .prologue
    .line 261
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 263
    .local v0, size:I
    sub-int/2addr v0, p1

    .line 264
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 266
    .end local v0           #size:I
    :cond_0
    return-void
.end method

.method public decreaseSlideSize(I)V
    .locals 1
    .parameter "decreaseSize"

    .prologue
    .line 243
    if-lez p1, :cond_0

    .line 244
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 246
    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/mms/model/MediaModel;
    .locals 1
    .parameter "location"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 374
    const/4 v0, 0x0

    .line 377
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/mms/model/MediaModel;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lcom/android/mms/model/AudioModel;
    .locals 0

    .prologue
    .line 523
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/AudioModel;

    return-object p0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    return v0
.end method

.method public getImage()Lcom/android/mms/model/ImageModel;
    .locals 0

    .prologue
    .line 519
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/ImageModel;

    return-object p0
.end method

.method public getSlideSize()I
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    return v0
.end method

.method public getText()Lcom/android/mms/model/TextModel;
    .locals 0

    .prologue
    .line 515
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/TextModel;

    return-object p0
.end method

.method public getVideo()Lcom/android/mms/model/VideoModel;
    .locals 0

    .prologue
    .line 527
    iget-object p0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    .end local p0
    check-cast p0, Lcom/android/mms/model/VideoModel;

    return-object p0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 467
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilSlideStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    iput-boolean v3, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    .line 479
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 480
    return-void

    .line 472
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 476
    iput-boolean v2, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    goto :goto_0
.end method

.method public hasAudio()Z
    .locals 1

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasVideo()Z
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public increaseMessageSize(I)V
    .locals 2
    .parameter "increaseSize"

    .prologue
    .line 253
    if-lez p1, :cond_0

    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentMessageSize()I

    move-result v0

    .line 255
    .local v0, size:I
    add-int/2addr v0, p1

    .line 256
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->setCurrentMessageSize(I)V

    .line 258
    .end local v0           #size:I
    :cond_0
    return-void
.end method

.method public increaseSlideSize(I)V
    .locals 1
    .parameter "increaseSize"

    .prologue
    .line 237
    if-lez p1, :cond_0

    .line 238
    iget v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/mms/model/SlideModel;->mSlideSize:I

    .line 240
    :cond_0
    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isCanAddVideo()Z
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mCanAddVideo:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 416
    iget-boolean v0, p0, Lcom/android/mms/model/SlideModel;->mVisible:Z

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .parameter "object"

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

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
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

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
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method protected registerModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 445
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 446
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 448
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public remove(I)Lcom/android/mms/model/MediaModel;
    .locals 2
    .parameter "location"

    .prologue
    .line 397
    iget-object v1, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/model/MediaModel;

    .line 398
    .local v0, media:Lcom/android/mms/model/MediaModel;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 401
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/mms/model/SlideModel;->remove(I)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    const/4 v1, 0x1

    .line 335
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/mms/model/SlideModel;->internalRemove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p0, v1}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    move v0, v1

    .line 340
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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
    .line 344
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAudio()Z
    .locals 1

    .prologue
    .line 507
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mAudio:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeImage()Z
    .locals 1

    .prologue
    .line 503
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mImage:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeText()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mText:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeVideo()Z
    .locals 1

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mVideo:Lcom/android/mms/model/MediaModel;

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 348
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;
    .locals 2
    .parameter "location"
    .parameter "object"

    .prologue
    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation not supported."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    check-cast p2, Lcom/android/mms/model/MediaModel;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/mms/model/SlideModel;->set(ILcom/android/mms/model/MediaModel;)Lcom/android/mms/model/MediaModel;

    move-result-object v0

    return-object v0
.end method

.method public setDuration(I)V
    .locals 1
    .parameter "duration"

    .prologue
    .line 228
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    .line 229
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 230
    return-void
.end method

.method public setFill(S)V
    .locals 1
    .parameter "fill"

    .prologue
    .line 438
    iput-short p1, p0, Lcom/android/mms/model/SlideModel;->mFill:S

    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/model/SlideModel;->notifyModelChanged(Z)V

    .line 440
    return-void
.end method

.method public setParent(Lcom/android/mms/model/SlideshowModel;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/mms/model/SlideModel;->mParent:Lcom/android/mms/model/SlideshowModel;

    .line 250
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

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
            "Lcom/android/mms/model/MediaModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

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
    .line 360
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected unregisterAllModelChangedObserversInDescendants()V
    .locals 3

    .prologue
    .line 460
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 461
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1}, Lcom/android/mms/model/MediaModel;->unregisterAllModelChangedObservers()V

    goto :goto_0

    .line 463
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method protected unregisterModelChangedObserverInDescendants(Lcom/android/mms/model/IModelChangedObserver;)V
    .locals 3
    .parameter "observer"

    .prologue
    .line 453
    iget-object v2, p0, Lcom/android/mms/model/SlideModel;->mMedia:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/model/MediaModel;

    .line 454
    .local v1, media:Lcom/android/mms/model/MediaModel;
    invoke-virtual {v1, p1}, Lcom/android/mms/model/MediaModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    goto :goto_0

    .line 456
    .end local v1           #media:Lcom/android/mms/model/MediaModel;
    :cond_0
    return-void
.end method

.method public updateDuration(I)V
    .locals 0
    .parameter "duration"

    .prologue
    .line 531
    if-gtz p1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 535
    :cond_0
    iput p1, p0, Lcom/android/mms/model/SlideModel;->mDuration:I

    goto :goto_0
.end method
