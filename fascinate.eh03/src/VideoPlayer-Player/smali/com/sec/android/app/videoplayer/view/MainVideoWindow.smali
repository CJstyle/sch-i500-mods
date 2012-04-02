.class public Lcom/sec/android/app/videoplayer/view/MainVideoWindow;
.super Landroid/widget/RelativeLayout;
.source "MainVideoWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;
    }
.end annotation


# instance fields
.field private mControlPostion:I

.field private mIsBeingDragged:Z

.field private mOnViewChangeListener:Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;

.field private mTouchListener:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mIsBeingDragged:Z

    .line 14
    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mControlPostion:I

    .line 63
    new-instance v0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;-><init>(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 18
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->initView()V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->initView()V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 13
    iput-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mIsBeingDragged:Z

    .line 14
    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mControlPostion:I

    .line 63
    new-instance v0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$1;-><init>(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)V

    iput-object v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    .line 28
    invoke-direct {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->initView()V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mIsBeingDragged:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mIsBeingDragged:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/videoplayer/view/MainVideoWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 11
    iget v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mControlPostion:I

    return v0
.end method

.method private initView()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 33
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 34
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setFocusable(Z)V

    .line 35
    invoke-virtual {p0, v1}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->setFocusableInTouchMode(Z)V

    .line 36
    invoke-virtual {p0}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->requestFocus()Z

    .line 38
    const-string v0, "800x480"

    const-string v1, "400x240"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    const/16 v0, 0x96

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mControlPostion:I

    .line 42
    :goto_0
    return-void

    .line 41
    :cond_0
    const/16 v0, 0x15e

    iput v0, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mControlPostion:I

    goto :goto_0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 46
    sub-int v2, p4, p2

    .line 47
    .local v2, w:I
    sub-int v0, p5, p3

    .line 48
    .local v0, h:I
    const/4 v1, 0x0

    .line 50
    .local v1, orientation:I
    if-ge v0, v2, :cond_0

    .line 51
    const/4 v1, 0x1

    .line 53
    :cond_0
    if-eqz p1, :cond_1

    .line 54
    iget-object v3, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mOnViewChangeListener:Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;

    invoke-interface {v3, v1}, Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;->onViewChange(I)V

    .line 56
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 57
    return-void
.end method

.method public setOnViewChangeListener(Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/view/MainVideoWindow;->mOnViewChangeListener:Lcom/sec/android/app/videoplayer/view/MainVideoWindow$OnViewChangeListener;

    .line 111
    return-void
.end method
