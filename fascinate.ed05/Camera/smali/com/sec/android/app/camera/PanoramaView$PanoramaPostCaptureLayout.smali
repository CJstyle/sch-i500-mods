.class public Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;
.super Landroid/widget/RelativeLayout;
.source "PanoramaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/PanoramaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PanoramaPostCaptureLayout"
.end annotation


# instance fields
.field private mPostCaptureProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

.field private mPostCaptureTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/sec/android/app/camera/PanoramaView;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 526
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 527
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 528
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->init()V

    .line 529
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 521
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 522
    invoke-direct {p0, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 523
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->init()V

    .line 524
    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 516
    iput-object p1, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    .line 517
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 518
    invoke-direct {p0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->init()V

    .line 519
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 532
    const v2, 0x7f020218

    invoke-virtual {p0, v2}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->setBackgroundResource(I)V

    .line 536
    new-instance v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    iget-object v3, v3, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v3}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureTextView:Landroid/widget/TextView;

    .line 537
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureTextView:Landroid/widget/TextView;

    const-string v3, "Please wait, while \npanorama is created"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 539
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v3}, Lcom/sec/android/app/camera/PanoramaView;->access$200(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 540
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 543
    .local v1, textParams:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v2}, Lcom/sec/android/app/camera/PanoramaView;->access$300(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 544
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v2}, Lcom/sec/android/app/camera/PanoramaView;->access$400(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 545
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 546
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    new-instance v2, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    iget-object v4, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    iget-object v4, v4, Lcom/sec/android/app/camera/PanoramaView;->mActivityContext:Lcom/sec/android/app/camera/AbstractCameraActivity;

    invoke-virtual {v4}, Lcom/sec/android/app/camera/AbstractCameraActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;-><init>(Lcom/sec/android/app/camera/PanoramaView;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    .line 553
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v2}, Lcom/sec/android/app/camera/PanoramaView;->access$500(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v3}, Lcom/sec/android/app/camera/PanoramaView;->access$600(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 555
    .local v0, panoramaProgressBarLP:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v2}, Lcom/sec/android/app/camera/PanoramaView;->access$700(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 556
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->this$0:Lcom/sec/android/app/camera/PanoramaView;

    invoke-static {v2}, Lcom/sec/android/app/camera/PanoramaView;->access$800(Lcom/sec/android/app/camera/PanoramaView;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 557
    iget-object v2, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    invoke-virtual {p0, v2, v0}, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 558
    return-void
.end method


# virtual methods
.method public setSavingProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/camera/PanoramaView$PanoramaPostCaptureLayout;->mPostCaptureProgressBar:Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/PanoramaView$PanoramaProgressBar;->setProgress(I)V

    .line 562
    return-void
.end method
