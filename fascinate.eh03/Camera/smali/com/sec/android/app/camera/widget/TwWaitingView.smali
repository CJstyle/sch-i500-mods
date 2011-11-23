.class public Lcom/sec/android/app/camera/widget/TwWaitingView;
.super Landroid/widget/ImageView;
.source "TwWaitingView.java"


# instance fields
.field private mAni:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 35
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 41
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 47
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->init()V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/widget/TwWaitingView;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method


# virtual methods
.method public init()V
    .locals 2

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    .line 52
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lcom/sec/android/app/camera/widget/TwWaitingView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/widget/TwWaitingView$1;-><init>(Lcom/sec/android/app/camera/widget/TwWaitingView;)V

    invoke-virtual {p0, v0}, Lcom/sec/android/app/camera/widget/TwWaitingView;->post(Ljava/lang/Runnable;)Z

    .line 63
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/sec/android/app/camera/widget/TwWaitingView;->mAni:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 68
    :cond_0
    return-void
.end method
