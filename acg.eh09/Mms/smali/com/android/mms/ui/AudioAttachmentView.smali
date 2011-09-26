.class public Lcom/android/mms/ui/AudioAttachmentView;
.super Landroid/widget/LinearLayout;
.source "AudioAttachmentView.java"

# interfaces
.implements Lcom/android/mms/ui/SlideViewInterface;


# instance fields
.field private mAlbumView:Landroid/widget/TextView;

.field private mArtistView:Landroid/widget/TextView;

.field private mAudioUri:Landroid/net/Uri;

.field private mErrorMsgView:Landroid/widget/TextView;

.field private mIsPlaying:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mNameView:Landroid/widget/TextView;

.field private final mRes:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/AudioAttachmentView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->onPlaybackError()V

    return-void
.end method

.method private cleanupMediaPlayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 83
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 88
    :cond_0
    return-void

    .line 85
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    throw v0
.end method

.method private onPlaybackError()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "Mms/AudioAttachmentView"

    const-string v1, "Error occurred while playing audio."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f090070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->showErrorMessage(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 77
    return-void
.end method

.method private showErrorMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 195
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 67
    const v0, 0x7f080008

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f080009

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    .line 69
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    .line 70
    const v0, 0x7f08000b

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/AudioAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    .line 71
    return-void
.end method

.method public pauseAudio()V
    .locals 0

    .prologue
    .line 200
    return-void
.end method

.method public pauseMovie()V
    .locals 0

    .prologue
    .line 220
    return-void
.end method

.method public pauseVideo()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/mms/ui/AudioAttachmentView;->stopAudio()V

    .line 183
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mErrorMsgView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    return-void

    .line 183
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public seekAudio(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 210
    return-void
.end method

.method public seekVideo(I)V
    .locals 0
    .parameter "seekTo"

    .prologue
    .line 215
    return-void
.end method

.method public setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
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
    .line 119
    .local p3, extras:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    monitor-enter p0

    .line 120
    :try_start_0
    iput-object p1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    .line 121
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAlbumView:Landroid/widget/TextView;

    const-string v0, "album"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mArtistView:Landroid/widget/TextView;

    const-string v1, "artist"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    return-void

    .line 121
    .restart local p0
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 132
    return-void
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 137
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 142
    return-void
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    .line 227
    return-void
.end method

.method public setPageNumber(II)V
    .locals 0
    .parameter "currentSlide"
    .parameter "totalSlide"

    .prologue
    .line 244
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    .line 147
    return-void
.end method

.method public setTextVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 152
    return-void
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    .line 158
    return-void
.end method

.method public setVideoVisibility(Z)V
    .locals 0
    .parameter "visible"

    .prologue
    .line 163
    return-void
.end method

.method public declared-synchronized startAudio()V
    .locals 2

    .prologue
    .line 91
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mAudioUri:Landroid/net/Uri;

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 93
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 95
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$1;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcom/android/mms/ui/AudioAttachmentView$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/AudioAttachmentView$2;-><init>(Lcom/android/mms/ui/AudioAttachmentView;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 107
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    .line 108
    iget-object v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    :cond_0
    monitor-exit p0

    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startMovie()V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public startVideo()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public declared-synchronized stopAudio()V
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/mms/ui/AudioAttachmentView;->cleanupMediaPlayer()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 171
    monitor-exit p0

    return-void

    .line 169
    :catchall_0
    move-exception v0

    const/4 v1, 0x0

    :try_start_2
    iput-boolean v1, p0, Lcom/android/mms/ui/AudioAttachmentView;->mIsPlaying:Z

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 167
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopMovie()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public stopVideo()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
