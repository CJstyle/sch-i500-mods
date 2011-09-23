.class public Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;
.super Landroid/widget/FrameLayout;
.source "SamsungAppWidgetView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;
    }
.end annotation


# instance fields
.field private mHasPerformedLongPress:Z

.field private mInflater:Landroid/view/LayoutInflater;

.field private mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->init()V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Landroid/view/ViewParent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mParent:Landroid/view/ViewParent;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getWindowAttachCount()I

    move-result v0

    return v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    .line 44
    return-void
.end method

.method private postCheckForLongClick()V
    .locals 3

    .prologue
    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 99
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;-><init>(Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;->rememberWindowAttachCount()V

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 111
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 114
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "canvas"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 35
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, arg0:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 39
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public dumpSamsungWidgetAppInfo()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 128
    .local v0, tag:Ljava/lang/Object;
    instance-of v1, v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v1, :cond_0

    .line 129
    const-string v1, "SamsungAppWidgetView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    .end local v0           #tag:Ljava/lang/Object;
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    return-void
.end method

.method public getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    const/4 v1, 0x0

    .line 52
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    if-eqz v0, :cond_0

    .line 53
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 54
    const/4 v0, 0x1

    .line 75
    :goto_0
    return v0

    .line 59
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v1

    .line 75
    goto :goto_0

    .line 61
    :pswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->postCheckForLongClick()V

    goto :goto_1

    .line 67
    :pswitch_2
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mHasPerformedLongPress:Z

    .line 68
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    if-eqz v0, :cond_1

    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->mPendingCheckForLongPress:Lcom/sec/android/app/twlauncher/SamsungAppWidgetView$CheckForLongPress;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/SamsungAppWidgetView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 59
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
