.class public Lcom/sec/android/app/camera/ReviewImage;
.super Landroid/app/Activity;
.source "ReviewImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;
    }
.end annotation


# static fields
.field private static final IMAGE_THUMBNAIL_ALLOW_SIZE:I = 0x5

.field public static final KEY_IMAGE_LIST:Ljava/lang/String; = "image_list"

.field private static final STATE_SHOW_CONTROLS:Ljava/lang/String; = "show_controls"

.field private static final STATE_URI:Ljava/lang/String; = "uri"

.field private static final TAG:Ljava/lang/String; = "ReviewImage"

.field private static final sOrderAdjacents:[I


# instance fields
.field mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCache:Lcom/sec/android/app/camera/BitmapCache;

.field private mControlBar:Landroid/view/View;

.field mCurrentPosition:I

.field protected mDeletePhotoRunnable:Ljava/lang/Runnable;

.field private final mDismissOnScreenControlRunner:Ljava/lang/Runnable;

.field private mFullScreenInNormalMode:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mGetter:Lcom/sec/android/app/camera/ImageGetter;

.field final mHandler:Lcom/sec/android/app/camera/GetterHandler;

.field private mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

.field private mNextImageView:Landroid/view/View;

.field mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

.field mPaused:Z

.field private mPrevImageView:Landroid/view/View;

.field private mRootView:Landroid/view/View;

.field private mSavedUri:Landroid/net/Uri;

.field private mShowControls:Z

.field private mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

.field private mZoomController:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sec/android/app/camera/ReviewImage;->sOrderAdjacents:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 53
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 60
    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    .line 65
    new-instance v0, Lcom/sec/android/app/camera/GetterHandler;

    invoke-direct {v0}, Lcom/sec/android/app/camera/GetterHandler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 97
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$1;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    .line 104
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$2;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 405
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$7;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->hideOnScreenControls()V

    return-void
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ImageViewTouch2;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/ReviewImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/ReviewImage;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/ReviewImage;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/ReviewImage;)Lcom/sec/android/app/camera/BitmapCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    return-object v0
.end method

.method static synthetic access$900()[I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/sec/android/app/camera/ReviewImage;->sOrderAdjacents:[I

    return-object v0
.end method

.method private actionInBounds(IILandroid/view/View;)Z
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 842
    if-ltz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    move v0, v1

    .line 848
    :goto_0
    return v0

    .line 845
    :cond_1
    if-ltz p2, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v0

    if-le p2, v0, :cond_3

    :cond_2
    move v0, v1

    .line 846
    goto :goto_0

    .line 848
    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private buildImageListFromUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;
    .locals 2
    .parameter "uri"

    .prologue
    .line 609
    const/4 v0, 0x1

    .line 610
    .local v0, sort:I
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Landroid/net/Uri;I)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    return-object v1
.end method

.method private chkImageSizeForThumbnail()Z
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 633
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentImageWidth()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentImageHeight()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 635
    :cond_0
    const/4 v0, 0x0

    .line 637
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCurrentImageHeight()I
    .locals 3

    .prologue
    .line 647
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 648
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->getHeight()I

    move-result v1

    return v1
.end method

.method private getCurrentImageWidth()I
    .locals 3

    .prologue
    .line 642
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 643
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->getWidth()I

    move-result v1

    return v1
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 625
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v3

    .line 629
    :goto_0
    return-object v1

    .line 626
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 627
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_1

    move-object v1, v3

    .line 628
    goto :goto_0

    .line 629
    :cond_1
    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    goto :goto_0
.end method

.method private hideOnScreenControls()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 230
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 252
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 253
    return-void
.end method

.method private init(Landroid/net/Uri;)Z
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 614
    if-nez p1, :cond_0

    move v1, v3

    .line 621
    :goto_0
    return v1

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    if-nez v1, :cond_1

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage;->buildImageListFromUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 618
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 619
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_2

    move v1, v3

    goto :goto_0

    .line 615
    .end local v0           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    invoke-static {v1, v2}, Lcom/sec/android/app/camera/ImageManager;->makeImageList(Landroid/content/ContentResolver;Lcom/sec/android/app/camera/ImageManager$ImageListParam;)Lcom/sec/android/app/camera/gallery/IImageList;

    move-result-object v1

    goto :goto_1

    .line 620
    .restart local v0       #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 621
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private makeGetter()V
    .locals 2

    .prologue
    .line 605
    new-instance v0, Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ImageGetter;-><init>(Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    .line 606
    return-void
.end method

.method private moveNextOrPrevious(I)V
    .locals 4
    .parameter "delta"

    .prologue
    const-string v3, "ReviewImage"

    .line 852
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    add-int v0, v1, p1

    .line 853
    .local v0, nextImagePos:I
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-nez v1, :cond_0

    .line 854
    const-string v1, "ReviewImage"

    const-string v1, "moveNextOrPrevious - mAllImage is null"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    :goto_0
    return-void

    .line 857
    :cond_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 858
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 859
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    goto :goto_0

    .line 862
    :cond_1
    const-string v1, "ReviewImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "moveNextOrPrevious - nextImagePos("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private scheduleDismissOnScreenControls()V
    .locals 4

    .prologue
    .line 256
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/GetterHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 257
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mDismissOnScreenControlRunner:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/sec/android/app/camera/GetterHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 258
    return-void
.end method

.method private setButtonPanelVisibility(II)V
    .locals 2
    .parameter "id"
    .parameter "visibility"

    .prologue
    .line 580
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 581
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 582
    return-void
.end method

.method private setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .parameter "rootView"
    .parameter "ownerView"

    .prologue
    .line 292
    const v0, 0x7f0a00ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    .line 293
    const v0, 0x7f0a00cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    .line 295
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/ReviewImage;->setupZoomButtonController(Landroid/view/View;)V

    .line 299
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/ReviewImage;->setupOnTouchListeners(Landroid/view/View;)V

    .line 300
    return-void
.end method

.method private setupOnTouchListeners(Landroid/view/View;)V
    .locals 5
    .parameter "rootView"

    .prologue
    .line 326
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sec/android/app/camera/ReviewImage$MyGestureListener;-><init>(Lcom/sec/android/app/camera/ReviewImage;Lcom/sec/android/app/camera/ReviewImage$1;)V

    invoke-direct {v2, p0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 332
    new-instance v0, Lcom/sec/android/app/camera/ReviewImage$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/ReviewImage$5;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 339
    .local v0, buttonListener:Landroid/view/View$OnTouchListener;
    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$6;

    invoke-direct {v1, p0, v0}, Lcom/sec/android/app/camera/ReviewImage$6;-><init>(Lcom/sec/android/app/camera/ReviewImage;Landroid/view/View$OnTouchListener;)V

    .line 351
    .local v1, rootListener:Landroid/view/View$OnTouchListener;
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 352
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 353
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 354
    return-void
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .locals 3
    .parameter "ownerView"

    .prologue
    .line 303
    new-instance v0, Lcom/sec/android/app/camera/ZoomButtonsController;

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    .line 304
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 305
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomSpeed(J)V

    .line 306
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    new-instance v1, Lcom/sec/android/app/camera/ReviewImage$4;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/ReviewImage$4;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setOnZoomListener(Lcom/sec/android/app/camera/ZoomButtonsController$OnZoomListener;)V

    .line 323
    return-void
.end method

.method private showOnScreenControls()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    const-string v1, "ReviewImage"

    const-string v2, "showOnScreenControls"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-nez v1, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    const/4 v0, 0x0

    .line 200
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_2

    .line 201
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    new-instance v2, Lcom/sec/android/app/camera/ReviewImage$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/ReviewImage$3;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/GetterHandler;->postGetterCallback(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 210
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateNextPrevControls()V

    .line 212
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 214
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 216
    if-eqz v0, :cond_0

    .line 218
    invoke-static {v0}, Lcom/sec/android/app/camera/ImageManager;->isImage(Lcom/sec/android/app/camera/gallery/IImage;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 219
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 220
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 221
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 223
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-virtual {v1, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 224
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private startPlayVideoActivity()V
    .locals 6

    .prologue
    .line 748
    iget-object v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    .line 749
    .local v1, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v1, :cond_0

    .line 750
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 752
    .local v2, intent:Landroid/content/Intent;
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 757
    .end local v2           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 753
    .restart local v2       #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 754
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v3, "ReviewImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t view video "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private startShareMediaActivity(Lcom/sec/android/app/camera/gallery/IImage;)V
    .locals 5
    .parameter "image"

    .prologue
    .line 731
    instance-of v2, p1, Lcom/sec/android/app/camera/gallery/VideoObject;

    .line 732
    .local v2, isVideo:Z
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 733
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->getMimeType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    const-string v3, "android.intent.extra.STREAM"

    invoke-interface {p1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 737
    if-eqz v2, :cond_0

    const v3, 0x7f0700f7

    :goto_0
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ReviewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 745
    :goto_1
    return-void

    .line 737
    :cond_0
    const v3, 0x7f0700f6

    goto :goto_0

    .line 739
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 740
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    if-eqz v2, :cond_1

    const v3, 0x7f0700f2

    :goto_2
    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_1
    const v3, 0x7f0700f3

    goto :goto_2
.end method

.method private updateActionIcons()V
    .locals 8

    .prologue
    const v7, 0x7f0a00c3

    const v6, 0x7f0a00c7

    const v5, 0x7f0a00c5

    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 585
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->isPickIntent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 602
    :goto_0
    return-void

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 588
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    instance-of v1, v0, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-eqz v1, :cond_1

    .line 589
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 590
    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 591
    invoke-direct {p0, v7, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_0

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->chkImageSizeForThumbnail()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 594
    invoke-direct {p0, v5, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 595
    invoke-direct {p0, v6, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 600
    :goto_1
    invoke-direct {p0, v7, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_0

    .line 597
    :cond_2
    invoke-direct {p0, v5, v3}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    .line 598
    invoke-direct {p0, v6, v4}, Lcom/sec/android/app/camera/ReviewImage;->setButtonPanelVisibility(II)V

    goto :goto_1
.end method

.method private updateNextPrevControls()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-lez v4, :cond_2

    move v2, v7

    .line 158
    .local v2, showNext:Z
    :goto_0
    iget v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-object v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v5

    sub-int/2addr v5, v7

    if-ge v4, v5, :cond_3

    move v3, v7

    .line 160
    .local v3, showPrev:Z
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_4

    move v1, v7

    .line 161
    .local v1, prevIsVisible:Z
    :goto_2
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    move v0, v7

    .line 163
    .local v0, nextIsVisible:Z
    :goto_3
    if-eqz v3, :cond_6

    if-nez v1, :cond_6

    .line 167
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 175
    :cond_0
    :goto_4
    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    .line 179
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 186
    :cond_1
    :goto_5
    return-void

    .end local v0           #nextIsVisible:Z
    .end local v1           #prevIsVisible:Z
    .end local v2           #showNext:Z
    .end local v3           #showPrev:Z
    :cond_2
    move v2, v6

    .line 157
    goto :goto_0

    .restart local v2       #showNext:Z
    :cond_3
    move v3, v6

    .line 158
    goto :goto_1

    .restart local v3       #showPrev:Z
    :cond_4
    move v1, v6

    .line 160
    goto :goto_2

    .restart local v1       #prevIsVisible:Z
    :cond_5
    move v0, v6

    .line 161
    goto :goto_3

    .line 168
    .restart local v0       #nextIsVisible:Z
    :cond_6
    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 172
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 180
    :cond_7
    if-nez v2, :cond_1

    if-eqz v0, :cond_1

    .line 184
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "m"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    .line 265
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public getImageView()Lcom/sec/android/app/camera/ImageViewTouch2;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    return-object v0
.end method

.method isPickIntent()Z
    .locals 2

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 869
    packed-switch p1, :pswitch_data_0

    .line 891
    :cond_0
    :goto_0
    return-void

    .line 871
    :pswitch_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 874
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 878
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v0

    .line 881
    .local v0, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-nez v0, :cond_1

    .line 882
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 884
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1, v0}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageIndex(Lcom/sec/android/app/camera/gallery/IImage;)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 885
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    goto :goto_0

    .line 869
    :pswitch_data_0
    .packed-switch 0x1ea
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 760
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 818
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 764
    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v4, :cond_0

    .line 767
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 768
    .local v2, image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 770
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 771
    .local v0, curentImageUri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v4, v2}, Lcom/sec/android/app/camera/MenuHelper;->deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/sec/android/app/camera/gallery/IImage;)V

    .line 772
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v4, v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 779
    .end local v0           #curentImageUri:Landroid/net/Uri;
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :pswitch_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->startPlayVideoActivity()V

    goto :goto_0

    .line 783
    :pswitch_3
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v4, :cond_0

    .line 784
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 785
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 786
    invoke-interface {v2}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/app/camera/MenuHelper;->isWhiteListUri(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 789
    invoke-direct {p0, v2}, Lcom/sec/android/app/camera/ReviewImage;->startShareMediaActivity(Lcom/sec/android/app/camera/gallery/IImage;)V

    goto :goto_0

    .line 796
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :pswitch_4
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v4, :cond_0

    .line 797
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v4, v5}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v2

    .line 798
    .restart local v2       #image:Lcom/sec/android/app/camera/gallery/IImage;
    if-eqz v2, :cond_0

    .line 799
    invoke-static {v2}, Lcom/sec/android/app/camera/Util;->createSetAsIntent(Lcom/sec/android/app/camera/gallery/IImage;)Landroid/content/Intent;

    move-result-object v3

    .line 801
    .local v3, intent:Landroid/content/Intent;
    const v4, 0x7f0700f8

    :try_start_0
    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 803
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 804
    .local v1, ex:Landroid/content/ActivityNotFoundException;
    const v4, 0x7f0700f3

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 812
    .end local v1           #ex:Landroid/content/ActivityNotFoundException;
    .end local v2           #image:Lcom/sec/android/app/camera/gallery/IImage;
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_5
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->moveNextOrPrevious(I)V

    goto :goto_0

    .line 815
    :pswitch_6
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/app/camera/ReviewImage;->moveNextOrPrevious(I)V

    goto :goto_0

    .line 760
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00c0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "instanceState"

    .prologue
    const v10, 0x7f0a00ca

    const/4 v9, 0x1

    .line 516
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 518
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 519
    .local v3, intent:Landroid/content/Intent;
    const-string v7, "android.intent.extra.fullScreen"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mFullScreenInNormalMode:Z

    .line 522
    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->setDefaultKeyMode(I)V

    .line 523
    invoke-virtual {p0, v9}, Lcom/sec/android/app/camera/ReviewImage;->requestWindowFeature(I)Z

    .line 524
    const v7, 0x7f03002b

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->setContentView(I)V

    .line 526
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mRootView:Landroid/view/View;

    .line 527
    const v7, 0x7f0a00cf

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    .line 528
    const v7, 0x7f0a00cb

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomController:Landroid/view/View;

    .line 529
    const v7, 0x7f0a006c

    invoke-virtual {p0, v7}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ImageViewTouch2;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    .line 530
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/camera/ImageViewTouch2;->setEnableTrackballScroll(Z)V

    .line 531
    new-instance v7, Lcom/sec/android/app/camera/BitmapCache;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lcom/sec/android/app/camera/BitmapCache;-><init>(I)V

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    .line 532
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    iget-object v8, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v7, v8}, Lcom/sec/android/app/camera/ImageViewTouch2;->setRecycler(Lcom/sec/android/app/camera/ImageViewTouchBase$Recycler;)V

    .line 539
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->makeGetter()V

    .line 551
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "image_list"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mParam:Lcom/sec/android/app/camera/ImageManager$ImageListParam;

    .line 553
    if-eqz p1, :cond_0

    .line 554
    const-string v7, "uri"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 555
    const-string v7, "show_controls"

    invoke-virtual {p1, v7, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    .line 560
    :goto_0
    const/4 v7, 0x4

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    .line 562
    .local v5, reviewIds:[I
    move-object v0, v5

    .local v0, arr$:[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v4, :cond_1

    aget v2, v0, v1

    .line 563
    .local v2, id:I
    iget-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mControlBar:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 564
    .local v6, view:Landroid/view/View;
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 565
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 566
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 568
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 562
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 557
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #id:I
    .end local v4           #len$:I
    .end local v5           #reviewIds:[I
    .end local v6           #view:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    iput-object v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    goto :goto_0

    .line 571
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v4       #len$:I
    .restart local v5       #reviewIds:[I
    :cond_1
    iget-boolean v7, p0, Lcom/sec/android/app/camera/ReviewImage;->mFullScreenInNormalMode:Z

    if-eqz v7, :cond_2

    .line 572
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/16 v8, 0x400

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 576
    :cond_2
    invoke-virtual {p0, v10}, Lcom/sec/android/app/camera/ReviewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-direct {p0, v7, v8}, Lcom/sec/android/app/camera/ReviewImage;->setupOnScreenControls(Landroid/view/View;Landroid/view/View;)V

    .line 577
    return-void

    .line 560
    nop

    :array_0
    .array-data 0x4
        0xc1t 0x0t 0xat 0x7ft
        0xc5t 0x0t 0xat 0x7ft
        0xc3t 0x0t 0xat 0x7ft
        0xc9t 0x0t 0xat 0x7ft
    .end array-data
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 279
    const-string v0, "ReviewImage"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/camera/ZoomButtonsController;->setVisible(Z)V

    .line 286
    :cond_0
    invoke-static {}, Lcom/sec/android/app/camera/MenuHelper;->closeDialog()V

    .line 288
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 289
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 119
    const-string v0, "ReviewImage"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 123
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 127
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/ReviewImage;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const-string v3, "ReviewImage"

    .line 134
    const-string v1, "ReviewImage"

    const-string v1, "onResume"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 137
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 138
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 140
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    const-string v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 146
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/ReviewImage;->init(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const-string v1, "ReviewImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/camera/ReviewImage;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "b"

    .prologue
    .line 657
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 658
    const-string v0, "uri"

    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 660
    const-string v0, "show_controls"

    iget-boolean v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 661
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "ReviewImage"

    .line 665
    const-string v1, "ReviewImage"

    const-string v1, "onStart"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 667
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 669
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/ReviewImage;->init(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 670
    const-string v1, "ReviewImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    .line 693
    :goto_0
    return-void

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v1}, Lcom/sec/android/app/camera/gallery/IImageList;->getCount()I

    move-result v0

    .line 679
    .local v0, count:I
    if-nez v0, :cond_1

    .line 680
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->finish()V

    goto :goto_0

    .line 682
    :cond_1
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    if-gt v0, v1, :cond_2

    .line 683
    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 686
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-nez v1, :cond_3

    .line 687
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->makeGetter()V

    .line 691
    :cond_3
    iget v1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    iget-boolean v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/camera/ReviewImage;->setImage(IZ)V

    .line 692
    iput-boolean v3, p0, Lcom/sec/android/app/camera/ReviewImage;->mShowControls:Z

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 697
    const-string v0, "ReviewImage"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 699
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mPaused:Z

    .line 703
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-eqz v0, :cond_0

    .line 704
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageGetter;->cancelCurrent()V

    .line 705
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageGetter;->stop()V

    .line 706
    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/GetterHandler;->removeAllGetterCallbacks()V

    .line 713
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    if-eqz v0, :cond_1

    .line 714
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mSavedUri:Landroid/net/Uri;

    .line 715
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v0}, Lcom/sec/android/app/camera/gallery/IImageList;->close()V

    .line 716
    iput-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    .line 719
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->hideOnScreenControls()V

    .line 720
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->clear()V

    .line 721
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/BitmapCache;->clear()V

    .line 728
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 821
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v1, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v2, v0}, Lcom/sec/android/app/camera/ReviewImage;->actionInBounds(IILandroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    move v0, v3

    .line 838
    :goto_0
    return v0

    .line 825
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move v0, v3

    .line 838
    goto :goto_0

    .line 830
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->setPressed(Z)V

    :cond_1
    :goto_1
    move v0, v4

    .line 836
    goto :goto_0

    .line 832
    .restart local p0
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 833
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setPressed(Z)V

    .line 834
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    goto :goto_1

    .line 825
    :pswitch_data_0
    .packed-switch 0x7f0a00c1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method setImage(IZ)V
    .locals 8
    .parameter "pos"
    .parameter "showControls"

    .prologue
    const/4 v7, 0x0

    .line 429
    iput p1, p0, Lcom/sec/android/app/camera/ReviewImage;->mCurrentPosition:I

    .line 431
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mCache:Lcom/sec/android/app/camera/BitmapCache;

    invoke-virtual {v4, p1}, Lcom/sec/android/app/camera/BitmapCache;->getBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 432
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 433
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 434
    .local v3, image:Lcom/sec/android/app/camera/gallery/IImage;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v0, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 436
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    .line 455
    :cond_0
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/ReviewImage$8;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/ReviewImage$8;-><init>(Lcom/sec/android/app/camera/ReviewImage;)V

    .line 506
    .local v2, cb:Lcom/sec/android/app/camera/ImageGetterCallback;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    if-eqz v4, :cond_1

    .line 507
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mGetter:Lcom/sec/android/app/camera/ImageGetter;

    iget-object v5, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    iget-object v6, p0, Lcom/sec/android/app/camera/ReviewImage;->mHandler:Lcom/sec/android/app/camera/GetterHandler;

    invoke-virtual {v4, p1, v2, v5, v6}, Lcom/sec/android/app/camera/ImageGetter;->setPosition(ILcom/sec/android/app/camera/ImageGetterCallback;Lcom/sec/android/app/camera/gallery/IImageList;Lcom/sec/android/app/camera/GetterHandler;)V

    .line 509
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateActionIcons()V

    .line 510
    if-eqz p2, :cond_2

    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->showOnScreenControls()V

    .line 511
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/ReviewImage;->scheduleDismissOnScreenControls()V

    .line 512
    return-void

    .line 438
    .end local v2           #cb:Lcom/sec/android/app/camera/ImageGetterCallback;
    .end local v3           #image:Lcom/sec/android/app/camera/gallery/IImage;
    :cond_3
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mAllImages:Lcom/sec/android/app/camera/gallery/IImageList;

    invoke-interface {v4, p1}, Lcom/sec/android/app/camera/gallery/IImageList;->getImageAt(I)Lcom/sec/android/app/camera/gallery/IImage;

    move-result-object v3

    .line 439
    .restart local v3       #image:Lcom/sec/android/app/camera/gallery/IImage;
    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->miniThumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_0

    .line 441
    instance-of v4, v3, Lcom/sec/android/app/camera/gallery/VideoObject;

    if-eqz v4, :cond_4

    .line 442
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020058

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 443
    .local v1, broken_bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 445
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_0

    .line 447
    .end local v1           #broken_bitmap:Landroid/graphics/Bitmap;
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020063

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 448
    .restart local v1       #broken_bitmap:Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    new-instance v5, Lcom/sec/android/app/camera/RotateBitmap;

    invoke-interface {v3}, Lcom/sec/android/app/camera/gallery/IImage;->getDegreesRotated()I

    move-result v6

    invoke-direct {v5, v1, v6}, Lcom/sec/android/app/camera/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-virtual {v4, v5, v7}, Lcom/sec/android/app/camera/ImageViewTouch2;->setImageRotateBitmapResetBase(Lcom/sec/android/app/camera/RotateBitmap;Z)V

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/camera/ReviewImage;->updateZoomButtonsEnabled()V

    goto :goto_0
.end method

.method protected updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 270
    iget-object v0, p0, Lcom/sec/android/app/camera/ReviewImage;->mImageView:Lcom/sec/android/app/camera/ImageViewTouch2;

    .line 271
    .local v0, imageView:Lcom/sec/android/app/camera/ImageViewTouch2;
    invoke-virtual {v0}, Lcom/sec/android/app/camera/ImageViewTouch2;->getScale()F

    move-result v1

    .line 272
    .local v1, scale:F
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    iget v3, v0, Lcom/sec/android/app/camera/ImageViewTouch2;->mMaxZoom:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_0

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/camera/ReviewImage;->mZoomButtonsController:Lcom/sec/android/app/camera/ZoomButtonsController;

    const/high16 v3, 0x3f80

    cmpl-float v3, v1, v3

    if-lez v3, :cond_1

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sec/android/app/camera/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 274
    return-void

    :cond_0
    move v3, v4

    .line 272
    goto :goto_0

    :cond_1
    move v3, v4

    .line 273
    goto :goto_1
.end method
