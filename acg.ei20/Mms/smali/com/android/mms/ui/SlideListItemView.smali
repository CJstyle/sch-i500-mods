.class public Lcom/android/mms/ui/SlideListItemView;
.super Landroid/widget/LinearLayout;
.source "SlideListItemView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mAttachmentIcon:Landroid/widget/ImageView;

.field private mAttachmentName:Landroid/widget/TextView;

.field private mImagePreview:Landroid/widget/ImageView;

.field private mTextPreview:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    const v0, 0x7f0800cd

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 64
    const v0, 0x7f0800c7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    .line 65
    const v0, 0x7f0800cc

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    .line 66
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideListItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    .line 67
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 179
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 213
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 189
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 194
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
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
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 78
    if-eqz p2, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v1, 0x7f02005d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 81
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 90
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 95
    if-nez p2, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020094

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 101
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideListItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 107
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 111
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 4
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 200
    if-nez p2, :cond_0

    .line 201
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020094

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 204
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 206
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideListItemView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OutOfMemoryError"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 230
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 2
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/android/mms/ui/SlideListItemView;->mTextPreview:Landroid/widget/TextView;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    return-void

    .line 115
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 120
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 7
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    const-string v3, "Mms/SlideListItemView"

    .line 124
    if-eqz p1, :cond_1

    .line 125
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const v4, 0x7f020077

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 127
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    :goto_0
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 138
    .local v2, mp:Landroid/media/MediaPlayer;
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 140
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mContext:Landroid/content/Context;

    invoke-static {v3, p2}, Lcom/android/mms/ui/VideoAttachmentView;->createVideoThumbnail(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 141
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideListItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020095

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 145
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mImagePreview:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 154
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 130
    .end local v2           #mp:Landroid/media/MediaPlayer;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentName:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object v3, p0, Lcom/android/mms/ui/SlideListItemView;->mAttachmentIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 147
    .restart local v2       #mp:Landroid/media/MediaPlayer;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 148
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    const-string v3, "Mms/SlideListItemView"

    const-string v4, "Unexpected IOException."

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .line 149
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 150
    .local v1, e:Ljava/lang/OutOfMemoryError;
    :try_start_2
    const-string v3, "Mms/SlideListItemView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OutOfMemoryError"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    goto :goto_1

    .end local v1           #e:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    throw v3
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 158
    return-void
.end method

.method public startAudio()V
    .locals 0

    .prologue
    .line 71
    return-void
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public stopAudio()V
    .locals 0

    .prologue
    .line 162
    return-void
.end method

.method public stopMovie()V
    .locals 0

    .prologue
    .line 223
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 166
    return-void
.end method
