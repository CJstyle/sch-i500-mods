.class public Lcom/android/music/discplus/view/PanelSwitcher;
.super Landroid/widget/FrameLayout;
.source "PanelSwitcher.java"


# instance fields
.field private children:[Landroid/view/View;

.field private mCurrentView:I

.field private mDataManager:Lcom/android/music/discplus/util/DiscPlusManager;

.field private mDiscView:Lcom/android/music/discplus/view/DiscView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mMinimumVelocity:I

.field private mMove:Z

.field private mPreviousMove:I

.field private mTopView:Lcom/android/music/discplus/view/TopView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDataManager:Lcom/android/music/discplus/util/DiscPlusManager;

    .line 32
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mPreviousMove:I

    .line 33
    iput-boolean v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mMove:Z

    .line 37
    iput v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    .line 38
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 39
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mMinimumVelocity:I

    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->createInstance(Landroid/content/Context;)Lcom/android/music/discplus/util/DiscPlusManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDataManager:Lcom/android/music/discplus/util/DiscPlusManager;

    .line 42
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/music/discplus/view/PanelSwitcher$1;

    invoke-direct {v2, p0}, Lcom/android/music/discplus/view/PanelSwitcher$1;-><init>(Lcom/android/music/discplus/view/PanelSwitcher;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/android/music/discplus/view/PanelSwitcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mMove:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/music/discplus/view/PanelSwitcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mMove:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/music/discplus/view/PanelSwitcher;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/DiscView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/music/discplus/view/PanelSwitcher;)Lcom/android/music/discplus/view/TopView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mTopView:Lcom/android/music/discplus/view/TopView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/music/discplus/view/PanelSwitcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mMinimumVelocity:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/music/discplus/view/PanelSwitcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    return v0
.end method

.method static synthetic access$508(Lcom/android/music/discplus/view/PanelSwitcher;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    return v0
.end method

.method static synthetic access$510(Lcom/android/music/discplus/view/PanelSwitcher;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 18
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    return v0
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .prologue
    .line 221
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    return v0
.end method

.method public isManagerStop()Z
    .locals 2

    .prologue
    .line 225
    const/4 v0, 0x1

    .line 226
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDataManager:Lcom/android/music/discplus/util/DiscPlusManager;

    if-eqz v1, :cond_0

    .line 227
    iget-object v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDataManager:Lcom/android/music/discplus/util/DiscPlusManager;

    invoke-virtual {v1}, Lcom/android/music/discplus/util/DiscPlusManager;->isManagerStop()Z

    move-result v0

    .line 230
    :cond_0
    return v0
.end method

.method public moveDown()Z
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 180
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mPreviousMove:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->DISC_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v0, v1, :cond_0

    .line 191
    iput v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mPreviousMove:I

    .line 193
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 194
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    new-instance v1, Lcom/android/music/discplus/view/PanelSwitcher$3;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/view/PanelSwitcher$3;-><init>(Lcom/android/music/discplus/view/PanelSwitcher;)V

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_DISCTOTOP:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 209
    const/4 v0, 0x1

    .line 212
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveUp()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 141
    iget v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mPreviousMove:I

    if-eq v0, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/music/discplus/view/PanelSwitcher;->isManagerStop()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->isAllowSwitchMove()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getAnimationStatus()Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationStatus;->ANIMATION_FINISHED:Lcom/android/music/discplus/view/DiscView$AniMationStatus;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->getCurrentView()Lcom/android/music/discplus/view/DiscView$CurrentView;

    move-result-object v0

    sget-object v1, Lcom/android/music/discplus/view/DiscView$CurrentView;->TOP_VIEW:Lcom/android/music/discplus/view/DiscView$CurrentView;

    if-ne v0, v1, :cond_0

    .line 153
    iput v3, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mPreviousMove:I

    .line 154
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0, v2}, Lcom/android/music/discplus/view/DiscView;->setVisibility(I)V

    .line 155
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mTopView:Lcom/android/music/discplus/view/TopView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/TopView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    sget-object v1, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1}, Lcom/android/music/discplus/view/DiscView;->preAnimationEffect(Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 160
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    new-instance v1, Lcom/android/music/discplus/view/PanelSwitcher$2;

    invoke-direct {v1, p0}, Lcom/android/music/discplus/view/PanelSwitcher$2;-><init>(Lcom/android/music/discplus/view/PanelSwitcher;)V

    sget-object v2, Lcom/android/music/discplus/view/DiscView$AniMationEffect;->ANIMATION_CHANGEVIEW_TOPTODISC:Lcom/android/music/discplus/view/DiscView$AniMationEffect;

    invoke-virtual {v0, v1, v2}, Lcom/android/music/discplus/view/DiscView;->showChangeDiscAnimation(Ljava/lang/Runnable;Lcom/android/music/discplus/view/DiscView$AniMationEffect;)V

    .line 173
    const/4 v0, 0x1

    .line 176
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 81
    invoke-virtual {p0}, Lcom/android/music/discplus/view/PanelSwitcher;->getChildCount()I

    move-result v0

    .line 82
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 84
    iget-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/music/discplus/view/PanelSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 85
    iget-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/android/music/discplus/view/DiscView;

    if-eqz v2, :cond_0

    .line 86
    iget-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/music/discplus/view/DiscView;

    iput-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    .line 87
    iput v1, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    .line 90
    :cond_0
    iget-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    instance-of v2, v2, Lcom/android/music/discplus/view/TopView;

    if-eqz v2, :cond_1

    .line 91
    iget-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    check-cast v2, Lcom/android/music/discplus/view/TopView;

    iput-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mTopView:Lcom/android/music/discplus/view/TopView;

    .line 83
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 96
    iget v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mCurrentView:I

    if-eq v1, v2, :cond_3

    .line 97
    iget-object v2, p0, Lcom/android/music/discplus/view/PanelSwitcher;->children:[Landroid/view/View;

    aget-object v2, v2, v1

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 95
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 100
    :cond_4
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public resetRenderMode()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/music/discplus/view/PanelSwitcher;->mDiscView:Lcom/android/music/discplus/view/DiscView;

    invoke-virtual {v0}, Lcom/android/music/discplus/view/DiscView;->resetRenderMode()V

    .line 218
    :cond_0
    return-void
.end method