.class Lcom/sec/android/app/camera/ReviewImage$7;
.super Ljava/lang/Object;
.source "ReviewImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/ReviewImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/ReviewImage;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter

    .prologue
    .line 406
    iput-object p1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 407
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v1, v1, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v2, v2, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->removeImageAt(I)Z

    .line 409
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.UPDATE_GALLERY_CACHE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, updCache:Landroid/content/Intent;
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/camera/ReviewImage;->sendBroadcast(Landroid/content/Intent;)V

    .line 413
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v1, v1, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 414
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    .line 425
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v1, v1, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v2, v2, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 418
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v2, v1, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/ImageViewTouch2;->clear()V

    .line 422
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    invoke-static {v1}, Lcom/sec/android/app/camera/ReviewImage;->access$800(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/BitmapCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/camera/BitmapCache;->clear()V

    .line 423
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage$7;->this$0:Lcom/sec/android/app/camera/ReviewImage;

    iget v2, v2, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    goto :goto_0
.end method
