.class public Lcom/sec/android/app/videoplayer/util/VideoThumb;
.super Ljava/lang/Object;
.source "VideoThumb.java"


# instance fields
.field private bchecRretriever:Z

.field private thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "b"
    .parameter "check"

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 11
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 12
    iput-boolean p2, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 13
    return-void
.end method


# virtual methods
.method public getRretrieverChecked()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    return v0
.end method

.method public getThumbnail()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public setRretrieverChecked(Z)V
    .locals 0
    .parameter "check"

    .prologue
    .line 22
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->bchecRretriever:Z

    .line 23
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 17
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/util/VideoThumb;->thumbnail:Landroid/graphics/Bitmap;

    .line 18
    return-void
.end method
