.class public Lcom/android/mms/ui/VideoAttachmentView;
.super Landroid/widget/LinearLayout;
.source "VideoAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mThumbnailView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public static createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 110
    .local v1, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    invoke-virtual {v1, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 111
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 116
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 121
    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v2

    .line 116
    :try_start_2
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 117
    :catch_1
    move-exception v2

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    .line 116
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_3

    .line 119
    :goto_1
    throw v2

    .line 117
    :catch_2
    move-exception v2

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 55
    const v0, 0x7f0800d6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/VideoAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    .line 56
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 157
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 162
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "audio"
    .parameter "name"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    return-void
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 73
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 77
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 81
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 169
    return-void
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 191
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 85
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 89
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    .line 94
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/VideoAttachmentView;->mContext:Landroid/content/Context;

    invoke-static {v2, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 95
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lcom/android/mms/ui/VideoAttachmentView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020095

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 99
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/VideoAttachmentView;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 101
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "Mms/VideoAttachmentView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OutOfMemoryError"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 126
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public stopMovie()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 134
    return-void
.end method
