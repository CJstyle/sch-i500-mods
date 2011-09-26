.class public Lcom/android/mms/ui/SlideEditorActivity;
.super Landroid/app/Activity;
.source "SlideEditorActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;
    }
.end annotation


# static fields
.field private static final CHECK_PROJECTION:[Ljava/lang/String;

.field private static isHideExplict:Z


# instance fields
.field private isSipVisible:Z

.field private mDirty:Z

.field private mDone:Landroid/widget/Button;

.field private final mDoneClickListener:Landroid/view/View$OnClickListener;

.field private mDraftSaveTime:J

.field protected final mHandler:Landroid/os/Handler;

.field private mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

.field private mMaxCharsInputToast:Landroid/widget/Toast;

.field private final mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

.field private mNextSlide:Landroid/widget/ImageButton;

.field private final mOnNavigateBackward:Landroid/view/View$OnClickListener;

.field private final mOnNavigateForward:Landroid/view/View$OnClickListener;

.field private final mOnPreview:Landroid/view/View$OnClickListener;

.field private final mOnRemoveSlide:Landroid/view/View$OnClickListener;

.field private final mOnReplaceImage:Landroid/view/View$OnClickListener;

.field private final mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

.field private mPosition:I

.field private mPreSlide:Landroid/widget/ImageButton;

.field private mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

.field private mPreview:Landroid/widget/Button;

.field private mRemoveSlide:Landroid/widget/Button;

.field private mReplaceImage:Landroid/widget/Button;

.field private mReplaceSelectorAdapter:Lcom/android/mms/ui/ReplaceSelectorAdapter;

.field private final mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

.field private mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

.field private mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

.field private mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

.field private mToast:Landroid/widget/Toast;

.field private mUri:Landroid/net/Uri;

.field private reqReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1312
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/SlideEditorActivity;->CHECK_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->isSipVisible:Z

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDraftSaveTime:J

    .line 323
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$1;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    .line 333
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$2;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    .line 352
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$3;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    .line 391
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$4;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    .line 401
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$5;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    .line 418
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mHandler:Landroid/os/Handler;

    .line 420
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$6;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    .line 438
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$7;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    .line 456
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$8;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    .line 964
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$11;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$11;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    .line 1071
    new-instance v0, Lcom/android/mms/ui/SlideEditorActivity$12;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideEditorActivity$12;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    .line 1218
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    return-object v0
.end method

.method static synthetic access$108(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$110(Lcom/android/mms/ui/SlideEditorActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/SlideEditorActivity;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/SlideEditorActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1502(Lcom/android/mms/ui/SlideEditorActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/mms/ui/SlideEditorActivity;->isSipVisible:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/ReplaceSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceSelectorAdapter:Lcom/android/mms/ui/ReplaceSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/SlideEditorActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->replace(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->changeImage(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->changeVideo(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideEditorActivity;->changeAudio(Landroid/net/Uri;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/SlideshowEditor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showToast()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/SlideEditorActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/SlideEditorActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/SlideEditorActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/mms/ui/SlideEditorActivity;->showReplaceDialog(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/SlideEditorActivity;)Lcom/android/mms/ui/BasicSlideEditorView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    return-object v0
.end method

.method private changeAudio(Landroid/net/Uri;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1289
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1305
    :goto_0
    return-void

    .line 1290
    :catch_0
    move-exception v0

    .line 1291
    const-string v1, "Mms/SlideEditorActivity"

    const-string v2, "add audio failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1292
    const-string v0, "add music failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1293
    const v0, 0x7f0901c8

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1296
    :catch_1
    move-exception v0

    .line 1297
    const v0, 0x7f0901c9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1300
    :catch_2
    move-exception v0

    .line 1301
    const v0, 0x7f090053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901cd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private changeImage(Landroid/net/Uri;Z)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1245
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;Z)V

    .line 1246
    const v0, 0x7f090073

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1264
    :goto_0
    return-void

    .line 1247
    :catch_0
    move-exception v0

    .line 1248
    const-string v1, "Mms/SlideEditorActivity"

    const-string v2, "add image failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1249
    const-string v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1250
    const v0, 0x7f0901c8

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1253
    :catch_1
    move-exception v0

    .line 1254
    const v0, 0x7f0901c9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1257
    :catch_2
    move-exception v0

    .line 1258
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    goto :goto_0

    .line 1260
    :catch_3
    move-exception v0

    .line 1261
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move-object v1, p1

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    goto :goto_0
.end method

.method private changeVideo(Landroid/net/Uri;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "add video failed"

    .line 1268
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;Z)V

    .line 1269
    const v0, 0x7f0901bd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 1285
    :goto_0
    return-void

    .line 1270
    :catch_0
    move-exception v0

    .line 1271
    const-string v1, "Mms/SlideEditorActivity"

    const-string v2, "add video failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1272
    const-string v0, "add video failed"

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 1273
    const v0, 0x7f0901c8

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1276
    :catch_1
    move-exception v0

    .line 1277
    const v0, 0x7f0901c9

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1280
    :catch_2
    move-exception v0

    .line 1281
    const v0, 0x7f090053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901cd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getMmsDraftDate()J
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 1317
    const-wide/16 v8, 0x0

    .line 1318
    .local v8, retDate:J
    move-object v0, p0

    .line 1319
    .local v0, mContext:Landroid/content/Context;
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 1320
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/SlideEditorActivity;->CHECK_PROJECTION:[Ljava/lang/String;

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1323
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 1329
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 1330
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1335
    .end local v7           #c:Landroid/database/Cursor;
    :cond_1
    return-wide v8

    .line 1326
    .restart local v7       #c:Landroid/database/Cursor;
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v8

    goto :goto_0

    .line 1329
    :catchall_0
    move-exception v1

    if-eqz v7, :cond_3

    .line 1330
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1
.end method

.method private getPictureString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1022
    const v0, 0x7f090108

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getResourcesString(I)Ljava/lang/String;
    .locals 2
    .parameter "id"

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1014
    .local v0, r:Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getResourcesString(ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"
    .parameter "mediaName"

    .prologue
    .line 1008
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1009
    .local v0, r:Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVideoCaptureDurationLimit()I
    .locals 2

    .prologue
    .line 1125
    const-string v0, "ro.media.enc.lprof.duration"

    const/16 v1, 0x3c

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleCreationMode(Landroid/net/Uri;II)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1198
    packed-switch p2, :pswitch_data_0

    .line 1216
    :cond_0
    :goto_0
    return-void

    .line 1201
    :pswitch_0
    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 1202
    :cond_1
    const v0, 0x7f090175

    new-instance v1, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;-><init>(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1203
    :cond_2
    const/4 v0, 0x5

    if-eq p3, v0, :cond_3

    const/4 v0, 0x7

    if-ne p3, v0, :cond_4

    .line 1204
    :cond_3
    const v0, 0x7f090176

    new-instance v1, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;-><init>(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1205
    :cond_4
    const/4 v0, 0x3

    if-eq p3, v0, :cond_5

    const/4 v0, 0x4

    if-ne p3, v0, :cond_0

    .line 1206
    :cond_5
    const v0, 0x7f090177

    new-instance v1, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;

    invoke-direct {v1, p0, p1, p3}, Lcom/android/mms/ui/SlideEditorActivity$AllowImageListener;-><init>(Lcom/android/mms/ui/SlideEditorActivity;Landroid/net/Uri;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 1211
    :pswitch_1
    const v0, 0x7f0901c9

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901ca

    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getPictureString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1198
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V
    .locals 3
    .parameter "savedInstanceState"
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    const-string v2, "slide_index"

    .line 211
    if-eqz p1, :cond_0

    .line 212
    const-string v0, "message_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 213
    const-string v0, "slide_index"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 218
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    .line 216
    const-string v0, "slide_index"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    goto :goto_0
.end method

.method private notifyUser(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    .line 1033
    return-void
.end method

.method private previewSlideshow()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {p0, v0, v1, v2, v2}, Lcom/android/mms/ui/MessageUtils;->viewMmsMessageAttachment(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/SlideshowModel;ZZ)V

    .line 467
    return-void
.end method

.method private replace(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 1160
    packed-switch p1, :pswitch_data_0

    .line 1181
    :goto_0
    return-void

    .line 1162
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->replaceImagefileFromGallery()V

    goto :goto_0

    .line 1167
    :pswitch_1
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->takePicture()V

    goto :goto_0

    .line 1170
    :pswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->replaceVideofileFromGallery()V

    goto :goto_0

    .line 1175
    :pswitch_3
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->takeVideo(Z)V

    goto :goto_0

    .line 1160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private replaceImagefileFromGallery()V
    .locals 2

    .prologue
    .line 472
    const-string v0, "image/*"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 474
    return-void
.end method

.method private replaceVideofileFromGallery()V
    .locals 2

    .prologue
    .line 476
    const-string v0, "video/*"

    const/4 v1, 0x5

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 478
    return-void
.end method

.method private setReplaceButtonText(I)V
    .locals 1
    .parameter "text"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 685
    return-void
.end method

.method private showCurrentSlide()V
    .locals 2

    .prologue
    .line 1037
    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return-void

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->setLocation(I)V

    .line 1041
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    invoke-virtual {v0}, Lcom/android/mms/ui/SlideshowPresenter;->present()V

    .line 1042
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->updateTitle()V

    .line 1048
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 1049
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/BasicSlideEditorView;->setMmsCounter(I)V

    .line 1051
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1052
    const v0, 0x7f090073

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 1053
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1055
    const v0, 0x7f0901bd

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 1057
    :cond_3
    const v0, 0x7f090039

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0
.end method

.method private showDurationDialog()V
    .locals 4

    .prologue
    .line 688
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 689
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020056

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 690
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 691
    .local v1, title:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 693
    const v2, 0x7f060002

    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$9;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$9;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 712
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 713
    return-void
.end method

.method private showLayoutSelectorDialog()V
    .locals 5

    .prologue
    .line 716
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 717
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f020057

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 719
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, title:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 722
    new-instance v0, Lcom/android/mms/ui/LayoutSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/LayoutSelectorAdapter;-><init>(Landroid/content/Context;)V

    .line 723
    .local v0, adapter:Lcom/android/mms/ui/LayoutSelectorAdapter;
    new-instance v3, Lcom/android/mms/ui/SlideEditorActivity$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideEditorActivity$10;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v1, v0, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 736
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 737
    return-void
.end method

.method private showReplaceDialog(Z)V
    .locals 3
    .parameter "isVideo"

    .prologue
    .line 1129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1131
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    if-eqz p1, :cond_0

    .line 1132
    const v1, 0x7f09003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1138
    :goto_0
    new-instance v1, Lcom/android/mms/ui/ReplaceSelectorAdapter;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/ReplaceSelectorAdapter;-><init>(Landroid/content/Context;Z)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceSelectorAdapter:Lcom/android/mms/ui/ReplaceSelectorAdapter;

    .line 1140
    if-eqz p1, :cond_1

    .line 1141
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceSelectorAdapter:Lcom/android/mms/ui/ReplaceSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$13;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideEditorActivity$13;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1156
    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1157
    return-void

    .line 1135
    :cond_0
    const v1, 0x7f090039

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1147
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceSelectorAdapter:Lcom/android/mms/ui/ReplaceSelectorAdapter;

    new-instance v2, Lcom/android/mms/ui/SlideEditorActivity$14;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/SlideEditorActivity$14;-><init>(Lcom/android/mms/ui/SlideEditorActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_1
.end method

.method private showSipExplict()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1062
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->getEditView()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v0}, Lcom/android/mms/ui/BasicSlideEditorView;->getEditView()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1064
    iget-boolean v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->isSipVisible:Z

    if-nez v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0, v1, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 1069
    :cond_0
    return-void
.end method

.method private showToast()V
    .locals 2

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 384
    :cond_0
    const v0, 0x7f0901c1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mMaxCharsInputToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 389
    :cond_1
    return-void
.end method

.method private takePicture()V
    .locals 3

    .prologue
    .line 1084
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1085
    const-string v1, "com.sec.android.app.camera"

    const-string v2, "com.sec.android.app.camera.Camera"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1086
    const-string v1, "return-uri"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1087
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1088
    return-void
.end method

.method private takeVideo(Z)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 1090
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxContentsSize()I

    move-result v0

    int-to-long v0, v0

    .line 1092
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_0

    .line 1093
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->getRemainContentsSize()I

    move-result v2

    .line 1094
    int-to-long v3, v2

    .line 1095
    if-eqz p1, :cond_2

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-ltz v5, :cond_2

    .line 1096
    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v6, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->getSlideSize()I

    move-result v5

    .line 1097
    if-lez v5, :cond_2

    .line 1098
    add-int/2addr v2, v5

    int-to-long v6, v2

    cmp-long v0, v6, v0

    if-gtz v0, :cond_2

    .line 1099
    int-to-long v0, v5

    add-long/2addr v0, v3

    .line 1103
    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 1107
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getVideoCaptureDurationLimit()I

    move-result v2

    .line 1108
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1109
    const-string v4, "android.intent.extra.videoQuality"

    invoke-virtual {v3, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1110
    const-string v4, "android.intent.extra.sizeLimit"

    invoke-virtual {v3, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1111
    const-string v0, "android.intent.extra.durationLimit"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1114
    const-string v0, "mms"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1115
    const/4 v0, 0x7

    invoke-virtual {p0, v3, v0}, Lcom/android/mms/ui/SlideEditorActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1123
    :goto_1
    return-void

    .line 1118
    :cond_1
    const v0, 0x7f090054

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    move-wide v0, v3

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 4

    .prologue
    .line 481
    const v0, 0x7f0901ac

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method


# virtual methods
.method public checkValidMessage()Z
    .locals 11

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const-string v0, "Mms"

    .line 1339
    .line 1341
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    if-eqz v0, :cond_5

    .line 1342
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/SlideEditorActivity;->CHECK_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1345
    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ne v1, v8, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1347
    :cond_0
    const-string v1, "Mms"

    const-string v2, "contaminated message"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v7

    .line 1365
    :goto_0
    if-eqz v0, :cond_3

    .line 1366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move v0, v1

    .line 1371
    :goto_1
    iput-wide v9, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDraftSaveTime:J

    .line 1372
    return v0

    .line 1349
    :cond_1
    :try_start_1
    iget-wide v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDraftSaveTime:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_4

    .line 1350
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1357
    iget-wide v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDraftSaveTime:J

    cmp-long v1, v3, v1

    if-gez v1, :cond_4

    .line 1359
    const-string v1, "Mms"

    const-string v2, "contaminated message : I check the saved time..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v7

    goto :goto_0

    .line 1365
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    .line 1366
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    move v1, v8

    goto :goto_0

    :cond_5
    move v0, v8

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const v9, 0x7f0901ca

    const v8, 0x7f0901c9

    const v6, 0x7f0901c8

    const/4 v4, 0x0

    const-string v7, "Mms/SlideEditorActivity"

    .line 742
    invoke-static {p0}, Lcom/android/mms/model/CarrierContentRestriction;->getMmsCreationMode(Landroid/content/Context;)I

    move-result v2

    .line 744
    const/4 v0, 0x2

    if-ge v2, v0, :cond_5

    .line 745
    const/4 v0, 0x1

    move v3, v0

    .line 748
    :goto_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 962
    :goto_1
    return-void

    .line 752
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 756
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeText(ILjava/lang/String;)V

    goto :goto_1

    .line 762
    :pswitch_1
    const-string v0, "uri-data"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 763
    if-nez v0, :cond_1

    .line 764
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 770
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 771
    if-nez v1, :cond_2

    .line 772
    const-string v0, "Mms/SlideEditorActivity"

    const-string v0, "imageUri is null!"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 780
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;Z)V

    .line 781
    const v0, 0x7f090073

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4

    goto :goto_1

    .line 782
    :catch_0
    move-exception v0

    .line 783
    const-string v1, "Mms/SlideEditorActivity"

    const-string v1, "add image failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 784
    const-string v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 785
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 789
    :catch_1
    move-exception v0

    .line 790
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 795
    :catch_2
    move-exception v0

    .line 796
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    goto :goto_1

    .line 798
    :catch_3
    move-exception v0

    .line 799
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    goto/16 :goto_1

    .line 801
    :catch_4
    move-exception v0

    .line 802
    invoke-direct {p0, v1, v2, p1}, Lcom/android/mms/ui/SlideEditorActivity;->handleCreationMode(Landroid/net/Uri;II)V

    goto/16 :goto_1

    .line 815
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 816
    if-nez v0, :cond_3

    .line 817
    const-string v0, "Mms/SlideEditorActivity"

    const-string v0, "VideoUri is null!"

    invoke-static {v7, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 825
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v5, v0, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;Z)V

    .line 828
    const v1, 0x7f0901bd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_8

    goto/16 :goto_1

    .line 829
    :catch_5
    move-exception v0

    .line 830
    const-string v1, "Mms/SlideEditorActivity"

    const-string v1, "add video failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    const-string v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 832
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 836
    :catch_6
    move-exception v0

    .line 837
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 842
    :catch_7
    move-exception v0

    .line 843
    const v0, 0x7f090053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901cd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 847
    :catch_8
    move-exception v1

    .line 848
    invoke-direct {p0, v0, v2, p1}, Lcom/android/mms/ui/SlideEditorActivity;->handleCreationMode(Landroid/net/Uri;II)V

    goto/16 :goto_1

    .line 856
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 858
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v0, v5, v1, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeImage(ILandroid/net/Uri;Z)V

    .line 860
    const v0, 0x7f090073

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_a
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_d

    goto/16 :goto_1

    .line 861
    :catch_9
    move-exception v0

    .line 862
    const-string v1, "Mms/SlideEditorActivity"

    const-string v1, "add image failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 863
    const-string v0, "add picture failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 864
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 868
    :catch_a
    move-exception v0

    .line 869
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 874
    :catch_b
    move-exception v0

    .line 875
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    goto/16 :goto_1

    .line 877
    :catch_c
    move-exception v0

    .line 878
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mResizeImageCallback:Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;

    move-object v0, p0

    move v5, v4

    invoke-static/range {v0 .. v5}, Lcom/android/mms/ui/MessageUtils;->resizeImageAsync(Landroid/content/Context;Landroid/net/Uri;Landroid/os/Handler;Lcom/android/mms/ui/MessageUtils$ResizeImageResultCallback;ZZ)V

    goto/16 :goto_1

    .line 880
    :catch_d
    move-exception v0

    .line 881
    invoke-direct {p0, v1, v2, p1}, Lcom/android/mms/ui/SlideEditorActivity;->handleCreationMode(Landroid/net/Uri;II)V

    goto/16 :goto_1

    .line 890
    :pswitch_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    .line 892
    const-string v0, "FILE_URI"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 901
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v5, v0, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeAudio(ILandroid/net/Uri;Z)V
    :try_end_3
    .catch Lcom/google/android/mms/MmsException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_3 .. :try_end_3} :catch_11

    goto/16 :goto_1

    .line 902
    :catch_e
    move-exception v0

    .line 903
    const-string v1, "Mms/SlideEditorActivity"

    const-string v1, "add audio failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 904
    const-string v0, "add music failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 905
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 897
    :cond_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    goto :goto_2

    .line 909
    :catch_f
    move-exception v0

    .line 910
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 915
    :catch_10
    move-exception v0

    .line 916
    const v0, 0x7f090053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901cd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 920
    :catch_11
    move-exception v1

    .line 921
    invoke-direct {p0, v0, v2, p1}, Lcom/android/mms/ui/SlideEditorActivity;->handleCreationMode(Landroid/net/Uri;II)V

    goto/16 :goto_1

    .line 928
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 930
    :try_start_4
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v5, v0, v3}, Lcom/android/mms/ui/SlideshowEditor;->changeVideo(ILandroid/net/Uri;Z)V

    .line 932
    const v1, 0x7f0901bd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V
    :try_end_4
    .catch Lcom/google/android/mms/MmsException; {:try_start_4 .. :try_end_4} :catch_12
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_4 .. :try_end_4} :catch_13
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_4 .. :try_end_4} :catch_15

    goto/16 :goto_1

    .line 934
    :catch_12
    move-exception v0

    .line 935
    const-string v1, "Mms/SlideEditorActivity"

    const-string v1, "add video failed"

    invoke-static {v7, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 936
    const-string v0, "add video failed"

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->notifyUser(Ljava/lang/String;)V

    .line 937
    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 941
    :catch_13
    move-exception v0

    .line 942
    invoke-direct {p0, v8}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v9}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 947
    :catch_14
    move-exception v0

    .line 948
    const v0, 0x7f090053

    invoke-direct {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0901cd

    invoke-direct {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getResourcesString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->showErrorDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 952
    :catch_15
    move-exception v1

    .line 953
    invoke-direct {p0, v0, v2, p1}, Lcom/android/mms/ui/SlideEditorActivity;->handleCreationMode(Landroid/net/Uri;II)V

    goto/16 :goto_1

    .line 958
    :pswitch_6
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->changeDuration(II)V

    goto/16 :goto_1

    :cond_5
    move v3, v4

    goto/16 :goto_0

    .line 752
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 153
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v1, 0x7f030014

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->setContentView(I)V

    .line 156
    const v1, 0x7f080052

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/BasicSlideEditorView;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    .line 157
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/BasicSlideEditorView;->setOnTextChangedListener(Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;)V

    .line 159
    const v1, 0x7f080056

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    .line 160
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateBackward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    const v1, 0x7f080057

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    .line 163
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mNextSlide:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnNavigateForward:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    .line 166
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 168
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnPreview:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    const v1, 0x7f080059

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    .line 171
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 172
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mReplaceImage:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnReplaceImage:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    const v1, 0x7f08005a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    .line 175
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 176
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mRemoveSlide:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnRemoveSlide:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    const v1, 0x7f08005c

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    .line 179
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->textScaleX(Landroid/widget/TextView;)V

    .line 180
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDone:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDoneClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/SlideEditorActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

    .line 184
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "ResponseAxT9Info"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/SlideEditorActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/mms/ui/SlideEditorActivity;->initActivityState(Landroid/os/Bundle;Landroid/content/Intent;)V

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-static {p0, v1}, Lcom/android/mms/model/SlideshowModel;->createFromMessageUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    .line 190
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->registerModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 191
    new-instance v1, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    .line 192
    const-string v1, "SlideshowPresenter"

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v1, p0, v2, v3}, Lcom/android/mms/ui/PresenterFactory;->getPresenter(Ljava/lang/String;Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)Lcom/android/mms/ui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/SlideshowPresenter;

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPresenter:Lcom/android/mms/ui/SlideshowPresenter;

    .line 196
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 197
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 202
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    .line 208
    :goto_1
    return-void

    .line 198
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    if-gez v1, :cond_0

    .line 199
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 204
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Mms/SlideEditorActivity"

    const-string v2, "Create SlideshowModel failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 294
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 296
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mModelChangedObserver:Lcom/android/mms/model/IModelChangedObserver;

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->unregisterModelChangedObserver(Lcom/android/mms/model/IModelChangedObserver;)V

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->reqReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/SlideEditorActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 302
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 315
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v1}, Lcom/android/mms/ui/BasicSlideEditorView;->getText()Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, text:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-interface {v1, v0}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 319
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const v5, 0x7f090039

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 584
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 680
    :cond_0
    :goto_0
    return v4

    .line 586
    :pswitch_0
    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 587
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->previewSlideshow()V

    goto :goto_0

    .line 591
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 592
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 593
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/mms/model/TextModel;->setText(Ljava/lang/CharSequence;)V

    .line 594
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->removeText()Z

    .line 595
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v1, v3}, Lcom/android/mms/ui/BasicSlideEditorView;->setMmsCounter(I)V

    goto :goto_0

    .line 602
    .end local v0           #slide:Lcom/android/mms/model/SlideModel;
    :pswitch_2
    const-string v1, "image/*"

    invoke-static {p0, v1, v4}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 611
    :pswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->takePicture()V

    goto :goto_0

    .line 615
    :pswitch_4
    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideEditorActivity;->takeVideo(Z)V

    goto :goto_0

    .line 619
    :pswitch_5
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeImage(I)Z

    .line 620
    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 625
    :pswitch_6
    const-string v1, "/sdcard/Sounds"

    const-string v2, "audio/*"

    const/4 v3, 0x3

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentFile(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 632
    :pswitch_7
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-static {p0, v1, v2, v3}, Lcom/android/mms/ui/MessageUtils;->recordSound(Landroid/content/Context;ILcom/android/mms/model/SlideshowModel;Z)V

    goto :goto_0

    .line 636
    :pswitch_8
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeAudio(I)Z

    goto :goto_0

    .line 642
    :pswitch_9
    const-string v1, "video/*"

    const/4 v2, 0x5

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->pickAttachmentImageOrVideoFile(Landroid/app/Activity;Ljava/lang/String;I)V

    goto :goto_0

    .line 652
    :pswitch_a
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->removeVideo(I)Z

    .line 653
    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideEditorActivity;->setReplaceButtonText(I)V

    goto :goto_0

    .line 657
    :pswitch_b
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 658
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowEditor:Lcom/android/mms/ui/SlideshowEditor;

    iget v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 660
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showCurrentSlide()V

    goto :goto_0

    .line 663
    :cond_1
    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    .line 664
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    .line 665
    :cond_2
    const v1, 0x7f090065

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mToast:Landroid/widget/Toast;

    .line 666
    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 672
    :pswitch_c
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showLayoutSelectorDialog()V

    goto/16 :goto_0

    .line 676
    :pswitch_d
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showDurationDialog()V

    goto/16 :goto_0

    .line 584
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method

.method protected onPause()V
    .locals 6

    .prologue
    .line 268
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 269
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_0

    .line 270
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->isSipVisible:Z

    if-eqz v3, :cond_0

    .line 271
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/BasicSlideEditorView;->hideSoftInputForm(Landroid/view/inputmethod/InputMethodManager;)V

    .line 272
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/mms/ui/SlideEditorActivity;->isHideExplict:Z

    .line 276
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v3}, Lcom/android/mms/ui/BasicSlideEditorView;->getText()Ljava/lang/String;

    move-result-object v2

    .line 277
    .local v2, text:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mOnTextChangedListener:Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;

    invoke-interface {v3, v2}, Lcom/android/mms/ui/BasicSlideEditorView$OnTextChangedListener;->onTextChanged(Ljava/lang/String;)V

    .line 279
    monitor-enter p0

    .line 280
    :try_start_0
    iget-boolean v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDirty:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    .line 282
    :try_start_1
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->toPduBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v1

    .line 283
    .local v1, pb:Lcom/google/android/mms/pdu/PduBody;
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v1}, Lcom/google/android/mms/pdu/PduPersister;->updateParts(Landroid/net/Uri;Lcom/google/android/mms/pdu/PduBody;)V

    .line 284
    iget-object v3, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v1}, Lcom/android/mms/model/SlideshowModel;->sync(Lcom/google/android/mms/pdu/PduBody;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 289
    .end local v1           #pb:Lcom/google/android/mms/pdu/PduBody;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 290
    return-void

    .line 285
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 286
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/SlideEditorActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot update the message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 289
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 11
    .parameter "menu"

    .prologue
    const v10, 0x7f02004a

    const v9, 0x7f020031

    const/16 v6, 0xc

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->isFinishing()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v7

    .line 579
    :goto_0
    return v4

    .line 492
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 494
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    iget v5, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {v4, v5}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    .line 497
    .local v2, slide:Lcom/android/mms/model/SlideModel;
    if-nez v2, :cond_1

    move v4, v7

    .line 498
    goto :goto_0

    .line 501
    :cond_1
    const/16 v4, 0xb

    const v5, 0x7f090072

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02004b

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 505
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 507
    const v4, 0x7f090038

    invoke-interface {p1, v7, v7, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02004e

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 512
    :cond_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 513
    const/4 v4, 0x3

    const v5, 0x7f09003a

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02004c

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 528
    :cond_3
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 529
    const/4 v4, 0x5

    const v5, 0x7f09003c

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02004d

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 544
    :cond_4
    :goto_2
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 545
    const/16 v4, 0x8

    const v5, 0x7f09003e

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02004f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 556
    :cond_5
    :goto_3
    const/4 v4, 0x7

    const v5, 0x7f090035

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f020030

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 560
    const-string v0, ""

    .line 561
    .local v0, duration:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v4

    div-int/lit16 v4, v4, 0x3e8

    if-ne v4, v8, :cond_a

    .line 562
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 566
    :goto_4
    const/16 v4, 0xa

    const-string v5, "%s"

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getDuration()I

    move-result v6

    div-int/lit16 v6, v6, 0x3e8

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    const v5, 0x7f02003f

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 572
    iget-object v4, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideshowModel:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getLayoutType()I

    move-result v4

    if-ne v4, v8, :cond_b

    .line 573
    const v1, 0x7f090077

    .line 578
    .local v1, resId:I
    :goto_5
    const/16 v4, 0x9

    invoke-interface {p1, v7, v4, v7, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move v4, v8

    .line 579
    goto/16 :goto_0

    .line 515
    .end local v0           #duration:Ljava/lang/String;
    .end local v1           #resId:I
    :cond_6
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_3

    .line 517
    const/16 v4, 0xf

    const v5, 0x7f090039

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 519
    .local v3, subMenu:Landroid/view/SubMenu;
    const v4, 0x7f0901bc

    invoke-interface {v3, v7, v8, v7, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 521
    const/4 v4, 0x2

    const v5, 0x7f0900f3

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 531
    .end local v3           #subMenu:Landroid/view/SubMenu;
    :cond_7
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v4

    if-nez v4, :cond_4

    .line 532
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAllowAttachAudio()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 533
    const/16 v4, 0xe

    const v5, 0x7f09003b

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 535
    .restart local v3       #subMenu:Landroid/view/SubMenu;
    const/4 v4, 0x4

    const v5, 0x7f0900f6

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 536
    const v4, 0x7f0900f7

    invoke-interface {v3, v7, v6, v7, v4}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 538
    .end local v3           #subMenu:Landroid/view/SubMenu;
    :cond_8
    const v4, 0x7f0900f7

    invoke-interface {p1, v7, v6, v7, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 547
    :cond_9
    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-nez v4, :cond_5

    .line 549
    const/16 v4, 0x10

    const v5, 0x7f09003d

    invoke-interface {p1, v7, v4, v7, v5}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v4

    const v5, 0x7f020049

    invoke-interface {v4, v5}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v3

    .line 551
    .restart local v3       #subMenu:Landroid/view/SubMenu;
    const/4 v4, 0x6

    const v5, 0x7f0901bc

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 552
    const/16 v4, 0xd

    const v5, 0x7f0900f5

    invoke-interface {v3, v7, v4, v7, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 564
    .end local v3           #subMenu:Landroid/view/SubMenu;
    .restart local v0       #duration:Ljava/lang/String;
    :cond_a
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    .line 575
    :cond_b
    const v1, 0x7f090078

    .restart local v1       #resId:I
    goto/16 :goto_5
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 239
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 243
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPreview:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setClickable(Z)V

    .line 245
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 246
    .local v0, config:Landroid/content/res/Configuration;
    iget v2, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v1, v4

    .line 247
    .local v1, isLandscape:Z
    :goto_0
    sget-boolean v2, Lcom/android/mms/ui/SlideEditorActivity;->isHideExplict:Z

    if-eqz v2, :cond_1

    if-nez v1, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mInputMethodMgr:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v2}, Lcom/android/mms/ui/BasicSlideEditorView;->getEditView()Landroid/widget/EditText;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 250
    iget-object v2, p0, Lcom/android/mms/ui/SlideEditorActivity;->mSlideView:Lcom/android/mms/ui/BasicSlideEditorView;

    invoke-virtual {v2}, Lcom/android/mms/ui/BasicSlideEditorView;->getEditView()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 252
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->showSipExplict()V

    .line 256
    :cond_1
    sput-boolean v5, Lcom/android/mms/ui/SlideEditorActivity;->isHideExplict:Z

    .line 259
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->checkValidMessage()Z

    move-result v2

    if-nez v2, :cond_2

    .line 260
    const-string v2, "Mms/SlideEditorActivity"

    const-string v3, "onResume: contaminated message : finish activity"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->finish()V

    .line 264
    :cond_2
    return-void

    .end local v1           #isLandscape:Z
    :cond_3
    move v1, v5

    .line 246
    goto :goto_0
.end method

.method public onSaveCheckDraftInfo()V
    .locals 2

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/mms/ui/SlideEditorActivity;->getMmsDraftDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/SlideEditorActivity;->mDraftSaveTime:J

    .line 1381
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 224
    const-string v0, "slide_index"

    iget v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    const-string v0, "message_uri"

    iget-object v1, p0, Lcom/android/mms/ui/SlideEditorActivity;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 230
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 233
    invoke-virtual {p0}, Lcom/android/mms/ui/SlideEditorActivity;->onSaveCheckDraftInfo()V

    .line 234
    return-void
.end method

.method public showWarningDialog(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1186
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1188
    const v1, 0x7f02002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1189
    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1190
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1191
    const v1, 0x1040013

    invoke-virtual {v0, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1192
    const v1, 0x1040009

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1193
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1194
    return-void
.end method
