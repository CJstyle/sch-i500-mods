.class public Lcom/android/mms/ui/SlideView;
.super Landroid/widget/LinearLayout;
.source "SlideView.java"

# interfaces
.implements Lcom/android/mms/ui/AdaptableSlideViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideView$MovieView;
    }
.end annotation


# static fields
.field private static hasTextTop:Z


# instance fields
.field private final LANDSCAPE_LEFT_PADDING:I

.field private final LANDSCAPE_TOP_PADDING:I

.field private final MEDIA_ERROR_CURRUPT:I

.field private final MEDIA_ERROR_NOTSUPPORT:I

.field private MMS_SUBJECT_HEIGHT:F

.field private hasAudio:Z

.field private hasImage:Z

.field private hasText:Z

.field private hasVideo:Z

.field private mAleadyPasued:Z

.field private mAleadyResumed:Z

.field private mAudioInfoView:Landroid/view/View;

.field private mAudioPlayer:Landroid/media/MediaPlayer;

.field private mAudioViewHeight:I

.field private mBaseView:Landroid/widget/LinearLayout;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mDiffTime:J

.field private mDispatchDrawCalled:Z

.field private mImageHeight:I

.field private mImageTop:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImageWidth:I

.field private mIsPrepared:Z

.field private mMediaViewPort:Landroid/widget/LinearLayout;

.field private mMovie:Landroid/graphics/Movie;

.field private mMoviePlay:Z

.field private mMovieStart:J

.field private mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

.field mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mPageInfoView:Landroid/view/View;

.field private mPause:Z

.field mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field private mResume:Z

.field private mScale:F

.field private mScrollText:Landroid/widget/ScrollView;

.field private mSeekWhenPrepared:I

.field private mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field private mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

.field private mStartAgifImage:Z

.field private mStartWhenPrepared:Z

.field private mStopWhenPrepared:Z

.field private mSubject:Ljava/lang/String;

.field private mSubjectHeight:I

.field private mTextHeight:I

.field private mTextTop:I

.field private mTextView:Landroid/widget/TextView;

.field private mTextViewPort:Landroid/widget/LinearLayout;

.field private mVideoHeight:I

.field private mVideoTop:I

.field private mVideoView:Landroid/widget/VideoView;

.field private mVideoWrapper:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 69
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->LANDSCAPE_TOP_PADDING:I

    .line 72
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/SlideView;->LANDSCAPE_LEFT_PADDING:I

    .line 118
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    .line 127
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 151
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 157
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 194
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v2, 0x3f00

    .line 197
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_NOTSUPPORT:I

    .line 69
    const/16 v0, -0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MEDIA_ERROR_CURRUPT:I

    .line 71
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/mms/ui/SlideView;->LANDSCAPE_TOP_PADDING:I

    .line 72
    const/16 v0, 0x19

    iput v0, p0, Lcom/android/mms/ui/SlideView;->LANDSCAPE_LEFT_PADDING:I

    .line 118
    const/high16 v0, 0x41c8

    iput v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    .line 127
    new-instance v0, Lcom/android/mms/ui/SlideView$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$1;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 151
    new-instance v0, Lcom/android/mms/ui/SlideView$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$2;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 157
    new-instance v0, Lcom/android/mms/ui/SlideView$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideView$3;-><init>(Lcom/android/mms/ui/SlideView;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 199
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    .line 200
    iget v0, p0, Lcom/android/mms/ui/SlideView;->MMS_SUBJECT_HEIGHT:F

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    .line 201
    const/high16 v0, 0x42a4

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mScale:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    .line 202
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/SlideView;Landroid/graphics/Canvas;)Landroid/graphics/Canvas;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    return p1
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideView;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/SlideView;Lcom/android/mms/dom/smil/SmilPlayer;)Lcom/android/mms/dom/smil/SmilPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSmilPlayer:Lcom/android/mms/dom/smil/SmilPlayer;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/android/mms/ui/SlideView;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-wide p1, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideView;)Landroid/graphics/Movie;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideView;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/SlideView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/SlideView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/SlideView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/SlideView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private displayAudioInfo()V
    .locals 2

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 397
    :cond_0
    return-void
.end method

.method private hideAudioInfo()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->removeView(Landroid/view/View;)V

    .line 403
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 405
    :cond_0
    return-void
.end method

.method private initAudioInfoView(Ljava/lang/String;)V
    .locals 11
    .parameter "name"

    .prologue
    .line 352
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 353
    .local v2, factory:Landroid/view/LayoutInflater;
    const v7, 0x7f030024

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    .line 354
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 355
    .local v3, height:I
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const v8, 0x7f080083

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 358
    .local v0, audioName:Landroid/widget/TextView;
    const/4 v1, 0x0

    .line 359
    .local v1, extension:Ljava/lang/String;
    const/16 v7, 0x2e

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 360
    .local v4, index:I
    if-ltz v4, :cond_0

    .line 361
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 363
    :cond_0
    const-string v7, "dm"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 364
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x0

    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".dcf"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 368
    :cond_1
    const-string v7, "cid:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "Cid:"

    invoke-virtual {p1, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 369
    :cond_2
    const/4 v7, 0x4

    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 372
    :cond_3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 374
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, -0x1

    iget v10, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    invoke-direct {v8, v9, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/SlideView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 380
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 381
    .local v6, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v7, 0x3f80

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 384
    const/4 v7, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_4

    iget-boolean v7, p0, Lcom/android/mms/ui/SlideView;->hasImage:Z

    if-eqz v7, :cond_4

    iget-boolean v7, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    if-eqz v7, :cond_4

    .line 385
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x4

    add-int/lit8 v5, v7, 0x32

    .line 386
    .local v5, left_pos:I
    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 388
    .end local v5           #left_pos:I
    :cond_4
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    iget-object v7, p0, Lcom/android/mms/ui/SlideView;->mAudioInfoView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 391
    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 761
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 763
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int v1, p2, v1

    invoke-interface {v0, p1, v1}, Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;->onSizeChanged(II)V

    .line 769
    :cond_0
    return-void
.end method

.method public pauseAudio()V
    .locals 1

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 642
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 643
    return-void
.end method

.method public pauseMovie()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 861
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 862
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 863
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    if-eqz v2, :cond_0

    .line 873
    :goto_0
    return-void

    .line 867
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 868
    .local v0, pauseTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 869
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 870
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 871
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 872
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    goto :goto_0
.end method

.method public pauseVideo()V
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 676
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 678
    :cond_0
    return-void
.end method

.method public regionsPresent(ZZZZ)V
    .locals 1
    .parameter "text"
    .parameter "audio"
    .parameter "image"
    .parameter "video"

    .prologue
    .line 744
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    .line 746
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    if-nez v0, :cond_0

    .line 747
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 750
    :cond_0
    iput-boolean p2, p0, Lcom/android/mms/ui/SlideView;->hasAudio:Z

    .line 751
    iput-boolean p3, p0, Lcom/android/mms/ui/SlideView;->hasImage:Z

    .line 752
    iput-boolean p4, p0, Lcom/android/mms/ui/SlideView;->hasVideo:Z

    .line 753
    return-void
.end method

.method public reset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 693
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 694
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 697
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 698
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 699
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 704
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 705
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopAudio()V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 716
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 717
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopVideo()V

    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, v2}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 721
    :cond_3
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 725
    :cond_4
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_5

    .line 726
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->stopMovie()V

    .line 729
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_6

    .line 730
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v2}, Lcom/android/mms/ui/SlideView$MovieView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 732
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 736
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->hideAudioInfo()V

    .line 738
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 739
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 741
    :cond_7
    return-void
.end method

.method public resetAgifState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 882
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 883
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 884
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 885
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    .line 887
    return-void
.end method

.method public seekAudio(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 647
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 651
    :goto_0
    return-void

    .line 649
    :cond_0
    iput p1, p0, Lcom/android/mms/ui/SlideView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public seekVideo(I)V
    .locals 1
    .parameter "seekTo"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 682
    if-lez p1, :cond_0

    .line 686
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 689
    :cond_0
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
    const/4 v3, 0x0

    .line 408
    if-nez p1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Audio URI may not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_2

    .line 418
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 419
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 421
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 422
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 423
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 425
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    .line 428
    :try_start_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 429
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 430
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 431
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 432
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 433
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/mms/ui/SlideView;->initAudioInfoView(Ljava/lang/String;)V

    .line 440
    return-void

    .line 434
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 435
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Mms/SlideView"

    const-string v2, "Unexpected IOException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 436
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 437
    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    goto :goto_0
.end method

.method public setImage(Ljava/lang/String;Landroid/graphics/Bitmap;Z)V
    .locals 6
    .parameter "name"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const v3, 0x7f080099

    .line 229
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_2

    .line 231
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 240
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    .line 241
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    .line 242
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 248
    :cond_0
    if-nez p2, :cond_1

    .line 249
    :try_start_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020090

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 252
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_1
    return-void

    .line 233
    :cond_2
    if-eqz p3, :cond_3

    .line 234
    const v1, 0x7f08009a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 253
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 254
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "Mms/SlideView"

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

    goto :goto_1
.end method

.method public setImageRegion(IIII)V
    .locals 6
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 260
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 261
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 262
    iget v4, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v4, p2

    iput v4, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 263
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    .line 277
    iget v4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    add-int/2addr v4, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 278
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    sub-int p4, v4, v5

    .line 281
    :cond_0
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_3

    .line 283
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v2

    .line 284
    .local v2, layoutHeight:I
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v3

    .line 288
    .local v3, layoutWidth:I
    iget-boolean v4, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    if-nez v4, :cond_2

    .line 289
    iget v4, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/lit8 v4, v4, 0x52

    sub-int v0, v2, v4

    .line 290
    .local v0, imageHeight:I
    const/16 v4, 0x32

    sub-int v1, v3, v4

    .line 298
    .local v1, imageWidth:I
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    .end local v0           #imageHeight:I
    .end local v1           #imageWidth:I
    .end local v2           #layoutHeight:I
    .end local v3           #layoutWidth:I
    :cond_1
    :goto_1
    return-void

    .line 294
    .restart local v2       #layoutHeight:I
    .restart local v3       #layoutWidth:I
    :cond_2
    iget v4, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/lit8 v4, v4, 0x52

    sub-int v0, v2, v4

    .line 295
    .restart local v0       #imageHeight:I
    div-int/lit8 v1, v3, 0x2

    .restart local v1       #imageWidth:I
    goto :goto_0

    .line 300
    .end local v0           #imageHeight:I
    .end local v1           #imageWidth:I
    .end local v2           #layoutHeight:I
    .end local v3           #layoutWidth:I
    :cond_3
    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public setImageRegionFit(Ljava/lang/String;)V
    .locals 0
    .parameter "fit"

    .prologue
    .line 308
    return-void
.end method

.method public setImageVisibility(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 587
    :cond_0
    return-void

    .line 585
    :cond_1
    const/4 v1, 0x4

    goto :goto_0
.end method

.method public setMovie(Landroid/graphics/Movie;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "movie"
    .parameter "bitmap"
    .parameter "toptext"

    .prologue
    const-wide/16 v6, 0x0

    const v2, 0x7f080099

    const/4 v5, 0x1

    .line 781
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 783
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 792
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-nez v0, :cond_0

    .line 793
    new-instance v0, Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/SlideView$MovieView;-><init>(Lcom/android/mms/ui/SlideView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    .line 794
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    .line 801
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 802
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 803
    iput-wide v6, p0, Lcom/android/mms/ui/SlideView;->mMovieStart:J

    .line 804
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 805
    iput-boolean v5, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 806
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->resetAgifState()V

    .line 808
    :cond_1
    return-void

    .line 785
    :cond_2
    if-eqz p3, :cond_3

    .line 786
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 788
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setMovieRegion(IIII)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 812
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    .line 813
    iput p3, p0, Lcom/android/mms/ui/SlideView;->mImageWidth:I

    .line 814
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mImageTop:I

    .line 815
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    if-eqz v0, :cond_2

    .line 818
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 819
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    sub-int p4, v0, v1

    .line 822
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    .line 823
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    if-nez v0, :cond_3

    .line 824
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/lit8 v1, v1, 0x52

    sub-int p4, v0, v1

    .line 825
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v0

    const/16 v1, 0x32

    sub-int p3, v0, v1

    .line 833
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideView$MovieView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 835
    :cond_2
    return-void

    .line 828
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/lit8 v1, v1, 0x52

    sub-int p4, v0, v1

    .line 829
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v0

    div-int/lit8 p3, v0, 0x2

    goto :goto_0
.end method

.method public setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 772
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 773
    return-void
.end method

.method public setOrientationBaseView()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBaseView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 207
    const v0, 0x7f080098

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mBaseView:Landroid/widget/LinearLayout;

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBaseView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 211
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 212
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBaseView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 219
    :cond_1
    :goto_0
    return-void

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mBaseView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0
.end method

.method public setPageNumber(II)V
    .locals 7
    .parameter "current"
    .parameter "total"

    .prologue
    .line 893
    const v5, 0x7f080097

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    .line 894
    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v6, 0x7f08008a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 895
    .local v0, pageNumber:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const v6, 0x7f080089

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 896
    .local v2, subject:Landroid/widget/TextView;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .local v3, textToSpannify:Ljava/lang/StringBuilder;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 898
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 899
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 902
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 903
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 904
    .local v4, text_spannable:Landroid/text/SpannableStringBuilder;
    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 905
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 906
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 912
    iget-object v5, p0, Lcom/android/mms/ui/SlideView;->mPageInfoView:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 913
    return-void
.end method

.method public setSlideViewSubject(Ljava/lang/String;)V
    .locals 0
    .parameter "subject"

    .prologue
    .line 915
    iput-object p1, p0, Lcom/android/mms/ui/SlideView;->mSubject:Ljava/lang/String;

    .line 916
    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 9
    .parameter "name"
    .parameter "text"
    .parameter "isAttachment"
    .parameter "toptext"

    .prologue
    const v5, 0x7f08009a

    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 445
    sput-boolean p4, Lcom/android/mms/ui/SlideView;->hasTextTop:Z

    .line 447
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_2

    .line 448
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    .line 449
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    .line 458
    :cond_0
    :goto_0
    new-instance v3, Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    .line 459
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    const/high16 v4, 0x300

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->setScrollBarStyle(I)V

    .line 460
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    .line 466
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/HideReturnsTransformationMethod;->getInstance()Landroid/text/method/HideReturnsTransformationMethod;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 467
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 469
    if-nez p3, :cond_1

    .line 470
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 471
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 475
    :cond_1
    sget v0, Lcom/android/mms/ui/SlideshowActivity;->displayDensity:F

    .line 477
    .local v0, density:F
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4190

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 478
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4000

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x3f80

    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 480
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const-string v4, "#00AEEF"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLinkTextColor(I)V

    .line 481
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    const/high16 v4, 0x4150

    mul-float/2addr v4, v0

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/high16 v5, 0x4040

    mul-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-virtual {v3, v4, v8, v5, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 483
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    invoke-virtual {v3}, Landroid/widget/ScrollView;->requestFocus()Z

    .line 486
    invoke-static {}, Lcom/android/mms/util/SmileyParser;->getInstance()Lcom/android/mms/util/SmileyParser;

    move-result-object v1

    .line 487
    .local v1, parser:Lcom/android/mms/util/SmileyParser;
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 488
    .local v2, text_spannable:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p2}, Lcom/android/mms/util/SmileyParser;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 489
    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 493
    return-void

    .line 451
    .end local v0           #density:F
    .end local v1           #parser:Lcom/android/mms/util/SmileyParser;
    .end local v2           #text_spannable:Landroid/text/SpannableStringBuilder;
    :cond_2
    if-eqz p4, :cond_3

    .line 452
    const v3, 0x7f080099

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 454
    :cond_3
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    goto/16 :goto_0
.end method

.method public setTextRegion(IIIIZ)V
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "hasaudio"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_3

    .line 498
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mTextHeight:I

    .line 499
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/android/mms/ui/SlideView;->mTextTop:I

    .line 500
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int/2addr p4, v0

    .line 517
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_4

    .line 518
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->hasImage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->hasVideo:Z

    if-eqz v0, :cond_1

    .line 519
    :cond_0
    const-string v0, "Mms/SlideView"

    const-string v1, "set TEXT REGION HAS IMAGE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    const/16 v1, 0x19

    sub-int p3, v0, v1

    .line 522
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    .line 523
    if-eqz p5, :cond_2

    .line 524
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int/2addr p4, v0

    .line 546
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 549
    :cond_3
    return-void

    .line 527
    :cond_4
    sget-boolean v0, Lcom/android/mms/ui/SlideView;->hasTextTop:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0xc8

    if-gt v0, v1, :cond_5

    .line 528
    const/4 p4, -0x2

    goto :goto_0

    .line 530
    :cond_5
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    if-lez v0, :cond_7

    .line 531
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 532
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mImageHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    .line 541
    :cond_6
    :goto_1
    if-eqz p5, :cond_2

    .line 542
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mAudioViewHeight:I

    sub-int/2addr p4, v0

    goto :goto_0

    .line 535
    :cond_7
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    if-lez v0, :cond_6

    .line 536
    iget v0, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    add-int/2addr v0, p4

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 537
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    sub-int p4, v0, v1

    goto :goto_1
.end method

.method public setTextVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 590
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mScrollText:Landroid/widget/ScrollView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 592
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mTextViewPort:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 594
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 591
    goto :goto_0

    :cond_2
    move v1, v3

    .line 592
    goto :goto_1
.end method

.method public setVideo(Ljava/lang/String;Landroid/net/Uri;Z)V
    .locals 5
    .parameter "name"
    .parameter "video"
    .parameter "toptext"

    .prologue
    const v2, 0x7f080099

    const/4 v4, -0x1

    const/4 v3, -0x2

    .line 316
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 317
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    .line 318
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 321
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 323
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 333
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 337
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-nez v0, :cond_1

    .line 338
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0, p2}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 349
    return-void

    .line 325
    :cond_2
    if-eqz p3, :cond_3

    .line 326
    const v0, 0x7f08009a

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/SlideView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mMediaViewPort:Landroid/widget/LinearLayout;

    goto :goto_0
.end method

.method public setVideoRegion(IIII)V
    .locals 8
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 552
    iput p4, p0, Lcom/android/mms/ui/SlideView;->mVideoHeight:I

    .line 553
    iput p2, p0, Lcom/android/mms/ui/SlideView;->mVideoTop:I

    .line 554
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_0

    .line 556
    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    iget v7, v7, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v7, :cond_2

    .line 557
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getHeight()I

    move-result v0

    .line 558
    .local v0, layoutHeight:I
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v1

    .line 559
    .local v1, layoutWidth:I
    iget v6, p0, Lcom/android/mms/ui/SlideView;->mSubjectHeight:I

    add-int/lit8 v6, v6, 0xa

    sub-int v4, v0, v6

    .line 561
    .local v4, videoHeight:I
    const/4 v2, 0x0

    .line 563
    .local v2, leftPos:I
    iget-boolean v6, p0, Lcom/android/mms/ui/SlideView;->hasText:Z

    if-nez v6, :cond_1

    .line 565
    const/16 v5, 0x1e0

    .line 566
    .local v5, videoWidth:I
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 567
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 568
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideView;->getWidth()I

    move-result v6

    sub-int/2addr v6, v5

    div-int/lit8 v6, v6, 0x2

    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 569
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 581
    .end local v0           #layoutHeight:I
    .end local v1           #layoutWidth:I
    .end local v2           #leftPos:I
    .end local v3           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v4           #videoHeight:I
    .end local v5           #videoWidth:I
    :cond_0
    :goto_0
    return-void

    .line 572
    .restart local v0       #layoutHeight:I
    .restart local v1       #layoutWidth:I
    .restart local v2       #leftPos:I
    .restart local v4       #videoHeight:I
    :cond_1
    div-int/lit8 v5, v1, 0x2

    .line 573
    .restart local v5       #videoWidth:I
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 578
    .end local v0           #layoutHeight:I
    .end local v1           #layoutWidth:I
    .end local v2           #leftPos:I
    .end local v4           #videoHeight:I
    .end local v5           #videoWidth:I
    :cond_2
    iget-object v6, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, p3, p4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setVideoVisibility(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 598
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz p1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setVisibility(I)V

    .line 600
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoWrapper:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 602
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 599
    goto :goto_0

    :cond_2
    move v1, v3

    .line 600
    goto :goto_1
.end method

.method public startAudio()V
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_0

    .line 615
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 616
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    .line 617
    invoke-direct {p0}, Lcom/android/mms/ui/SlideView;->displayAudioInfo()V

    .line 621
    :goto_0
    return-void

    .line 619
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartWhenPrepared:Z

    goto :goto_0
.end method

.method public startMovie()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 838
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 839
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mAleadyPasued:Z

    .line 840
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mAleadyResumed:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 844
    :cond_1
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    if-eqz v2, :cond_2

    .line 846
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 847
    iput-boolean v4, p0, Lcom/android/mms/ui/SlideView;->mResume:Z

    .line 848
    iput-boolean v3, p0, Lcom/android/mms/ui/SlideView;->mPause:Z

    .line 850
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 851
    .local v0, resumeTime:J
    iget-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/android/mms/ui/SlideView;->mDiffTime:J

    .line 854
    .end local v0           #resumeTime:J
    :cond_2
    iget-boolean v2, p0, Lcom/android/mms/ui/SlideView;->mDispatchDrawCalled:Z

    if-eqz v2, :cond_0

    .line 855
    iget-object v2, p0, Lcom/android/mms/ui/SlideView;->mMovieView:Lcom/android/mms/ui/SlideView$MovieView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/SlideView$MovieView;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public startVideo()V
    .locals 1

    .prologue
    .line 654
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 660
    :cond_0
    return-void
.end method

.method public stopAudio()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 625
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 626
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mAudioPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mIsPrepared:Z

    if-nez v0, :cond_0

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStopWhenPrepared:Z

    goto :goto_0
.end method

.method public stopMovie()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mMoviePlay:Z

    .line 878
    iput-boolean v0, p0, Lcom/android/mms/ui/SlideView;->mStartAgifImage:Z

    .line 879
    return-void
.end method

.method public stopVideo()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/mms/ui/SlideView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 669
    :cond_0
    return-void
.end method
