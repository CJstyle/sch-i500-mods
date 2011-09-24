.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Landroid/view/ViewGroup;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
    }
.end annotation


# static fields
.field private static DRAW_SETTING_INFO:Z


# instance fields
.field private SNAP_VELOCITY:I

.field private isSettingsButtonTouched:Z

.field private mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAniFadeIn:Landroid/view/animation/Animation;

.field private mAniFadeOut:Landroid/view/animation/Animation;

.field private mAnimating:Z

.field private mAnimationStartTime:J

.field private mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

.field private mCloseAnimations:[Landroid/view/animation/Animation;

.field private final mColumnNum:I

.field private mCurrentScreen:I

.field private mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

.field private mDeleteIcon:Landroid/graphics/Bitmap;

.field private mDownX:F

.field mDragCell:I

.field private mDragRect:Landroid/graphics/Rect;

.field mDragView:Landroid/view/View;

.field private mDragger:Lcom/sec/android/app/twlauncher/DragController;

.field mDropCell:I

.field private mEditMenuBg:Landroid/graphics/Bitmap;

.field private mEditTopBg:Landroid/graphics/Bitmap;

.field private mEnablePageIndicatorShowHide:Z

.field private mFirstLayout:Z

.field private mHideIndicator:Ljava/lang/Runnable;

.field private mIsClosing:Z

.field private mIsSingleTap:Z

.field private mItemNumOfPage:I

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mLocked:Z

.field private mMaximumVelocity:I

.field private mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

.field mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

.field mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

.field private mMode:I

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mNextScreen:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private mOpenAnimations:[Landroid/view/animation/Animation;

.field private mOpenFlag:Z

.field public final mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

.field private mOrientation:I

.field private mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

.field private mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

.field private mPageIndicatorGap:I

.field private mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorLeft:I

.field private mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorMoreGap:I

.field private mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

.field private mPageIndicatorTop:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPoint:[I

.field private mRightOffset:I

.field private mScroller:Landroid/widget/Scroller;

.field private mSnapToScreenDuration:I

.field private mTempPage:I

.field private mTextSize:I

.field private mTopOffset:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedPageIndicatorIndex:I

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

.field private final mUseLargeDrawablesOnlyForPageIndicator:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sec/android/app/twlauncher/MenuManager;->DRAW_SETTING_INFO:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4080

    const/4 v1, 0x0

    .line 210
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 96
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 103
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    .line 110
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 123
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 132
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    .line 160
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 161
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    .line 163
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    .line 164
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    .line 169
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 175
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    .line 176
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    .line 178
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 179
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    .line 195
    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 196
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 204
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    .line 206
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    .line 1761
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1777
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2293
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 2365
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 2396
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 2399
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 212
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 213
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    .line 214
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 216
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    .line 217
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    .line 219
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->init()V

    .line 220
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/twlauncher/MenuManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/MenuManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    return-void
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private addBlankPage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2280
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2290
    :cond_0
    :goto_0
    return-void

    .line 2282
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 2283
    .local v2, pageCount:I
    if-eqz v2, :cond_0

    .line 2285
    sub-int v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2286
    .local v1, lastPage:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2287
    .local v0, itemCount:I
    if-ne v0, v5, :cond_0

    .line 2288
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 5
    .parameter "adapter"
    .parameter "info"

    .prologue
    .line 1952
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 1970
    :goto_0
    return-object v3

    .line 1953
    :cond_1
    const/4 v1, 0x0

    .line 1954
    .local v1, adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 1955
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1956
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1957
    .restart local v1       #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    iget-object v4, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1960
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1961
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1962
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1964
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1965
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1966
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    :cond_2
    move-object v3, v1

    .line 1970
    goto :goto_0

    .line 1955
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object v6, v0

    .line 494
    .local v6, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    .line 495
    .local v10, pageCount:I
    if-lez v10, :cond_0

    if-nez v6, :cond_1

    .line 568
    :cond_0
    :goto_0
    return-void

    .line 499
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v15

    .line 501
    .local v15, updatedScreen:I
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 502
    if-gez v15, :cond_8

    .line 503
    const/16 v16, 0x1

    sub-int v15, v10, v16

    .line 509
    :cond_2
    :goto_1
    const/16 v8, 0x9

    .line 510
    .local v8, max:I
    const/4 v3, 0x4

    .line 511
    .local v3, centerIndex:I
    const/4 v5, 0x0

    .line 512
    .local v5, firstIndex:I
    const/4 v7, 0x0

    .line 513
    .local v7, isCenterSort:Z
    const/4 v4, 0x0

    .line 514
    .local v4, drawMore:Z
    const/16 v16, 0x9

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 515
    sub-int v5, v15, v3

    .line 516
    if-gez v5, :cond_9

    .line 517
    const/4 v5, 0x0

    .line 523
    :goto_2
    const/4 v4, 0x1

    .line 526
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move v11, v0

    .line 527
    .local v11, pageIndicatorTop:I
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v16, :cond_5

    .line 528
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_5

    .line 529
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 530
    .local v13, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v13

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43c8

    div-float v9, v16, v17

    .line 531
    .local v9, normalized:F
    const/high16 v16, 0x3f80

    cmpl-float v16, v9, v16

    if-ltz v16, :cond_4

    .line 532
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    .line 533
    const/high16 v9, 0x3f80

    .line 535
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_b

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v9

    .line 537
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    mul-float v16, v16, v9

    move/from16 v0, v16

    float-to-int v0, v0

    move v11, v0

    .line 545
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_5
    :goto_3
    invoke-virtual {v6, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setFirstTextNum(I)V

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object v0, v6

    move/from16 v1, v16

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setOffset(II)V

    .line 548
    if-eqz v7, :cond_c

    .line 549
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v16, v0

    move-object v0, v6

    move v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 554
    :goto_4
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 555
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 556
    if-eqz v4, :cond_7

    .line 557
    if-lez v15, :cond_6

    if-lez v5, :cond_6

    .line 558
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 561
    :cond_6
    const/16 v16, 0x1

    sub-int v16, v10, v16

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_7

    add-int/lit8 v16, v5, 0x9

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_7

    .line 563
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 566
    :cond_7
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v12

    .line 567
    .local v12, redraw:Z
    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto/16 :goto_0

    .line 504
    .end local v3           #centerIndex:I
    .end local v4           #drawMore:Z
    .end local v5           #firstIndex:I
    .end local v7           #isCenterSort:Z
    .end local v8           #max:I
    .end local v11           #pageIndicatorTop:I
    .end local v12           #redraw:Z
    :cond_8
    if-lt v15, v10, :cond_2

    .line 505
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 518
    .restart local v3       #centerIndex:I
    .restart local v4       #drawMore:Z
    .restart local v5       #firstIndex:I
    .restart local v7       #isCenterSort:Z
    .restart local v8       #max:I
    :cond_9
    add-int v16, v15, v3

    move/from16 v0, v16

    move v1, v10

    if-lt v0, v1, :cond_a

    .line 519
    const/16 v16, 0x9

    sub-int v5, v10, v16

    goto/16 :goto_2

    .line 521
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 538
    .restart local v9       #normalized:F
    .restart local v11       #pageIndicatorTop:I
    .restart local v13       #startTime:J
    :cond_b
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-gez v16, :cond_5

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/AnticipateInterpolator;->getInterpolation(F)F

    move-result v9

    .line 540
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v9

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    sub-int v11, v16, v17

    goto/16 :goto_3

    .line 551
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_c
    sub-int v16, v15, v5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v17, v0

    move-object v0, v6

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    goto/16 :goto_4
.end method

.method private static findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 2617
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2618
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2619
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2620
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2621
    .local v3, x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 2625
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_1
    return v4

    .line 2619
    .restart local v3       #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2625
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 4
    .parameter "num"

    .prologue
    .line 1532
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1533
    .local v0, count:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1534
    const/4 v2, 0x0

    .line 1535
    .local v2, page:Lcom/sec/android/app/twlauncher/AppMenu;
    if-lt p1, v0, :cond_1

    .line 1536
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    .line 1537
    move p1, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1546
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, p0

    :goto_0
    return-object v3

    .line 1539
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1540
    .restart local v2       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 1541
    .local v1, itemNum:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-lt v1, v3, :cond_0

    .line 1542
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    goto :goto_0
.end method

.method private getXDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x42c8

    const/high16 v6, 0x4248

    const/4 v5, 0x0

    const/high16 v4, -0x3d38

    const/high16 v3, -0x3db8

    .line 2429
    .line 2430
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v0, p1, v0

    .line 2432
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2433
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 2483
    :goto_1
    return v0

    .line 2435
    :pswitch_0
    const/high16 v0, -0x3d10

    .line 2436
    goto :goto_1

    .line 2438
    :pswitch_1
    const/high16 v0, -0x3d90

    .line 2439
    goto :goto_1

    .line 2441
    :pswitch_2
    const/high16 v0, 0x4270

    .line 2442
    goto :goto_1

    .line 2444
    :pswitch_3
    const/high16 v0, 0x42f0

    goto :goto_1

    .line 2448
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1

    .line 2449
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_4
    move v0, v4

    .line 2452
    goto :goto_1

    :pswitch_5
    move v0, v3

    .line 2455
    goto :goto_1

    :pswitch_6
    move v0, v5

    .line 2458
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 2461
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 2463
    goto :goto_1

    .line 2467
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    :pswitch_9
    move v0, v4

    .line 2470
    goto :goto_1

    :pswitch_a
    move v0, v3

    .line 2473
    goto :goto_1

    :pswitch_b
    move v0, v6

    .line 2476
    goto :goto_1

    :pswitch_c
    move v0, v7

    .line 2478
    goto :goto_1

    .line 2433
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2449
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2467
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .locals 8
    .parameter

    .prologue
    const/high16 v7, 0x430c

    const/high16 v6, 0x428c

    const/4 v5, 0x0

    const/high16 v4, -0x3cf4

    const/high16 v3, -0x3d74

    .line 2487
    .line 2488
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v0, p1, v0

    .line 2490
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 2491
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    .line 2492
    packed-switch v0, :pswitch_data_0

    :goto_0
    move v0, v5

    .line 2541
    :goto_1
    return v0

    :pswitch_0
    move v0, v4

    .line 2495
    goto :goto_1

    :pswitch_1
    move v0, v3

    .line 2498
    goto :goto_1

    :pswitch_2
    move v0, v5

    .line 2501
    goto :goto_1

    :pswitch_3
    move v0, v6

    .line 2504
    goto :goto_1

    :pswitch_4
    move v0, v7

    .line 2506
    goto :goto_1

    .line 2510
    :cond_0
    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :pswitch_5
    move v0, v4

    .line 2513
    goto :goto_1

    :pswitch_6
    move v0, v3

    .line 2516
    goto :goto_1

    :pswitch_7
    move v0, v6

    .line 2519
    goto :goto_1

    :pswitch_8
    move v0, v7

    .line 2521
    goto :goto_1

    .line 2526
    :cond_1
    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2528
    :pswitch_9
    const/high16 v0, -0x3d60

    .line 2529
    goto :goto_1

    .line 2531
    :pswitch_a
    const/high16 v0, -0x3de0

    .line 2532
    goto :goto_1

    .line 2534
    :pswitch_b
    const/high16 v0, 0x4220

    .line 2535
    goto :goto_1

    .line 2537
    :pswitch_c
    const/high16 v0, 0x42a0

    goto :goto_1

    .line 2492
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2510
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2526
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 225
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 226
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 228
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 230
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 231
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 233
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    .line 234
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 236
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 237
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    .line 238
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    .line 239
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 240
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 241
    const v2, 0x7f02001a

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    .line 244
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 245
    const v2, 0x7f02001b

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    .line 248
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 249
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    .line 252
    :cond_2
    const v2, 0x7f02002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 253
    const v2, 0x7f02002a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 254
    const v2, 0x7f020029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 255
    const v2, 0x7f02002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    .line 257
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 258
    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    .line 259
    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    .line 260
    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    .line 262
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 268
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    .line 270
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    .line 271
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    .line 273
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 274
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 276
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 277
    const/16 v2, 0x190

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 282
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 296
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    .line 298
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    .line 300
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 301
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 302
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 303
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 304
    return-void

    .line 279
    :cond_3
    const/16 v2, 0x258

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    goto :goto_0
.end method

.method private initAnimation()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f80

    const/4 v9, 0x0

    .line 2300
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v7, :cond_1

    .line 2301
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v7, :cond_0

    .line 2302
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v1

    .line 2303
    .local v1, deltaX:F
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v2

    .line 2305
    .local v2, deltaY:F
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v1, v9, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2306
    .local v6, openTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2307
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2308
    .local v4, openAlpha:Landroid/view/animation/AlphaAnimation;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2309
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2310
    .local v5, openAniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2311
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2312
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v5, v7, v3

    .line 2314
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2315
    .local v0, closeAniSet:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v9, v1, v9, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2316
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2317
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v0, v7, v3

    .line 2318
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v8, v10}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2300
    .end local v0           #closeAniSet:Landroid/view/animation/AnimationSet;
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v4           #openAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v5           #openAniSet:Landroid/view/animation/AnimationSet;
    .end local v6           #openTrans:Landroid/view/animation/TranslateAnimation;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2320
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2321
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2322
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2323
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 2327
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    .line 2328
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    .line 2329
    return-void
.end method

.method private initPageIndicator()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 456
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 457
    .local v3, indicatorWidth:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 459
    .local v1, indicatorHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 460
    .local v5, pageCount:I
    if-gtz v5, :cond_0

    .line 490
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v6, :cond_1

    .line 463
    new-instance v6, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 466
    :cond_1
    const/16 v4, 0x9

    .line 467
    .local v4, max:I
    const/16 v6, 0x9

    if-le v5, v6, :cond_2

    .line 468
    const/16 v5, 0x9

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 472
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 473
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setMoreDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 474
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 475
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(II)V

    .line 476
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 477
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v6, :cond_5

    .line 478
    invoke-virtual {v0, v9}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 483
    :goto_1
    mul-int v6, v3, v5

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    if-lez v5, :cond_3

    sub-int v8, v5, v9

    :cond_3
    mul-int/2addr v7, v8

    add-int v2, v6, v7

    .line 484
    .local v2, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    .line 485
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 486
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    goto :goto_0

    .line 480
    .end local v2           #indicatorTotalWidth:I
    :cond_5
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_1

    .line 488
    .restart local v2       #indicatorTotalWidth:I
    :cond_6
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    sub-int/2addr v6, v1

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    goto :goto_0
.end method

.method private isListChild()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2545
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 2546
    .local v1, count:I
    if-ne v1, v4, :cond_0

    .line 2547
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2548
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    move v2, v4

    .line 2552
    .end local v0           #child:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1516
    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    .line 1517
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1519
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1521
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1522
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 1528
    :goto_0
    return-object v0

    .line 1524
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1525
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1526
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 1024
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1025
    return-void
.end method

.method private updateMenu()V
    .locals 14

    .prologue
    const/4 v8, -0x1

    const/4 v13, 0x2

    const v12, 0xffff

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1578
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1579
    if-nez v1, :cond_1

    .line 1759
    :cond_0
    :goto_0
    return-void

    .line 1580
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v2

    .line 1581
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1582
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1583
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v4

    .line 1585
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1587
    if-ne v3, v13, :cond_2

    .line 1588
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1589
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1590
    invoke-virtual {v4, v11}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 1597
    :goto_1
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1598
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 1600
    if-lez v2, :cond_0

    .line 1602
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    if-ne v3, v11, :cond_6

    .line 1605
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1606
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    move v6, v10

    .line 1608
    :goto_2
    if-ge v6, v2, :cond_4

    .line 1609
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1610
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v7, v12, :cond_3

    .line 1611
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1608
    :goto_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_2

    .line 1592
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1593
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1594
    invoke-virtual {v4, v10}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    goto :goto_1

    .line 1614
    :cond_3
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1617
    :cond_4
    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1618
    new-instance v1, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1619
    sget-object v2, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->sort(Ljava/util/Comparator;)V

    .line 1620
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1622
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1624
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$2;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1635
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$3;

    invoke-direct {v2, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1648
    iput v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1649
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1651
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1652
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v1, v10

    .line 1653
    :goto_4
    if-ge v1, v0, :cond_5

    .line 1654
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1655
    iget v2, p0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-virtual {v4, p0, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1653
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1657
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1662
    :cond_6
    invoke-virtual {v1, v10}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 1663
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 1664
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    move v6, v10

    .line 1667
    :goto_5
    if-ge v6, v2, :cond_d

    .line 1668
    invoke-virtual {v1, v6}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1669
    if-ne v3, v13, :cond_a

    .line 1670
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    if-eq v7, v12, :cond_8

    .line 1671
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1667
    :cond_7
    :goto_6
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_5

    .line 1676
    :cond_8
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    if-ne v7, v12, :cond_9

    .line 1677
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    .line 1679
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1680
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1685
    :goto_7
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1686
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1687
    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1689
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    .line 1690
    iget v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    sub-int v9, v7, v11

    if-eq v8, v9, :cond_7

    .line 1691
    sub-int/2addr v7, v11

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_6

    .line 1682
    :cond_9
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    goto :goto_7

    .line 1694
    :cond_a
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1695
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1696
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1698
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    if-eq v7, v12, :cond_b

    .line 1699
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1704
    :cond_b
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    if-ne v7, v12, :cond_c

    .line 1705
    invoke-direct {p0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    .line 1707
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1708
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1710
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1711
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1713
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1718
    :goto_8
    invoke-virtual {p0, v6, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 1719
    invoke-virtual {v8, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1720
    invoke-virtual {v7, v8}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1722
    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v7

    .line 1723
    iget v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    sub-int v9, v7, v11

    if-eq v8, v9, :cond_7

    .line 1724
    sub-int v8, v7, v11

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1725
    sub-int/2addr v7, v11

    iput v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1726
    iput-boolean v10, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    goto/16 :goto_6

    .line 1715
    :cond_c
    iget v7, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    invoke-direct {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v7

    goto :goto_8

    .line 1731
    :cond_d
    if-ne v3, v13, :cond_e

    .line 1732
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1735
    :cond_e
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1736
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v10

    .line 1737
    :goto_9
    if-ge v2, v1, :cond_10

    .line 1738
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1739
    if-ne v3, v13, :cond_f

    .line 1740
    iget v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1737
    :goto_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    .line 1742
    :cond_f
    iget v6, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    invoke-virtual {v4, v0, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    goto :goto_a

    .line 1745
    :cond_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1747
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1748
    if-lez v0, :cond_12

    .line 1749
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v1, v0, :cond_11

    .line 1750
    sub-int/2addr v0, v11

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1751
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v1

    mul-int/2addr v0, v1

    invoke-virtual {p0, v0, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1758
    :cond_11
    :goto_b
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto/16 :goto_0

    .line 1754
    :cond_12
    iput v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1755
    invoke-virtual {p0, v10, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto :goto_b
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2561
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2563
    .local v0, N:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 2564
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2565
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2566
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 2568
    .local v2, index:I
    if-gez v2, :cond_0

    .line 2569
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 2571
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2564
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2574
    .end local v2           #index:I
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v4, :cond_2

    .line 2575
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2576
    :cond_2
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 4
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v3, 0x1

    .line 2205
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2206
    .local v0, childCount:I
    if-le v0, v3, :cond_4

    .line 2207
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 2208
    .local v1, currentScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2209
    const/16 v2, 0x11

    if-ne p2, v2, :cond_2

    .line 2210
    if-lez v1, :cond_1

    .line 2211
    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2225
    .end local v1           #currentScreen:I
    :cond_0
    :goto_0
    return-void

    .line 2212
    .restart local v1       #currentScreen:I
    :cond_1
    if-nez v1, :cond_0

    .line 2213
    sub-int v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2215
    :cond_2
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 2216
    sub-int v2, v0, v3

    if-ge v1, v2, :cond_3

    .line 2217
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2218
    :cond_3
    sub-int v2, v0, v3

    if-ne v1, v2, :cond_0

    .line 2219
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2223
    .end local v1           #currentScreen:I
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 1872
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v2

    .line 1873
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1874
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1875
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1876
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    .line 1877
    if-gez v4, :cond_4

    .line 1878
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v4, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v1

    .line 1879
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 1907
    :goto_0
    return-object v0

    .line 1880
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    move v7, v4

    move-object v4, v1

    move v1, v7

    .line 1883
    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1884
    invoke-virtual {v5, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1886
    if-ge v3, p2, :cond_2

    .line 1887
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1891
    :goto_2
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1892
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v3, v1, :cond_1

    .line 1893
    const/4 v1, 0x1

    sub-int v1, v3, v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1894
    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1895
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 1899
    :cond_1
    const/4 v1, 0x0

    move v4, v1

    :goto_3
    if-ge v4, v3, :cond_3

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v4, v1, :cond_3

    .line 1900
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1901
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1902
    const v6, 0xffff

    iput v6, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1903
    iput v2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1904
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1899
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    .line 1889
    :cond_2
    invoke-virtual {v0, v5, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    move-object v0, v5

    .line 1907
    goto :goto_0

    :cond_4
    move v7, v4

    move-object v4, v1

    move v1, v7

    goto :goto_1
.end method

.method public animateClose()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1188
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1189
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1190
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1191
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1194
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v3, v6}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1196
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1197
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1198
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1197
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1200
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1201
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1202
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundClose()V

    .line 1203
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1204
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1205
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1206
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1207
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1210
    :cond_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1211
    .local v0, child:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 1212
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1213
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1214
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1216
    :cond_3
    return-void
.end method

.method public animateOpen()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1154
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v5, v8}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1156
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1157
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1158
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1161
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1162
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1163
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1164
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1165
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1166
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1167
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1168
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1170
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1172
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1173
    .local v0, child:Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 1174
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1175
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1179
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    .line 1180
    .local v4, width:I
    if-eqz v4, :cond_4

    .line 1181
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 1182
    .local v3, scroller:Landroid/widget/Scroller;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1183
    :cond_3
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v4

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1185
    .end local v3           #scroller:Landroid/widget/Scroller;
    :cond_4
    return-void
.end method

.method clearChildrenCache()V
    .locals 4

    .prologue
    .line 1107
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1108
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1109
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1110
    .local v2, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1113
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1241
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1242
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1243
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1245
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1247
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1248
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1249
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1251
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1252
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1253
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1254
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1255
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1256
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1258
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 1259
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 939
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v1, v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 940
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 941
    :cond_1
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 988
    :cond_2
    :goto_0
    return-void

    .line 945
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 946
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 947
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    .line 949
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 958
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0

    .line 959
    .end local v0           #count:I
    :cond_4
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-eq v1, v4, :cond_2

    .line 960
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 961
    .restart local v0       #count:I
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v3, v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 977
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v1, v5, :cond_5

    .line 978
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 981
    :cond_5
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 982
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 983
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0
.end method

.method public discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 4

    .prologue
    .line 2630
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 2631
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2632
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2633
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2634
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2635
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 2631
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2638
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    const/4 v3, 0x0

    return-object v3
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 370
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 371
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v8

    if-gez v8, :cond_0

    .line 375
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 376
    sub-int v8, v0, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v9

    mul-int v7, v8, v9

    .line 378
    .local v7, maxScrollX:I
    if-le v0, v11, :cond_2

    .line 379
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-gez v8, :cond_7

    .line 380
    sub-int v8, v0, v11

    iput v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 386
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    if-eqz v8, :cond_5

    .line 387
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 388
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v8, :cond_4

    .line 389
    new-instance v8, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    .line 396
    :cond_4
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 397
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    :cond_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v8, v11, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v5, v11

    .line 402
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_9

    .line 403
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-ge v8, v0, :cond_6

    .line 404
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 443
    :cond_6
    :goto_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v8, v11, :cond_0

    .line 444
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 381
    .end local v5           #fastDraw:Z
    :cond_7
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v8, v0, :cond_2

    .line 382
    iput v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_1

    :cond_8
    move v5, v12

    .line 400
    goto :goto_2

    .line 406
    .restart local v5       #fastDraw:Z
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v3

    .line 409
    .local v3, drawingTime:J
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v2, v8, v9

    .line 410
    .local v2, diff:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ltz v8, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ge v8, v0, :cond_a

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v11, :cond_b

    .line 424
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 425
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 426
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 425
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 415
    .end local v1           #count:I
    .end local v6           #i:I
    :cond_b
    if-lez v2, :cond_d

    .line 416
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v9, v0, v11

    if-ge v8, v9, :cond_c

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 420
    :cond_c
    :goto_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 421
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 418
    :cond_d
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lez v8, :cond_c

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v8, v11

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_5
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    .line 2656
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2657
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2658
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2659
    .local v0, action:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 2661
    packed-switch v0, :pswitch_data_0

    .line 2689
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3

    .line 2661
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 2229
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2230
    .local v0, childCount:I
    if-le v0, v3, :cond_1

    .line 2231
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 2232
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-nez v1, :cond_1

    .line 2233
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2243
    :goto_0
    return v1

    .line 2236
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 2237
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 2238
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2239
    goto :goto_0

    .line 2243
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v1

    goto :goto_0
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromScreen"
    .parameter "toScreen"

    .prologue
    const/4 v5, 0x1

    .line 1074
    if-le p1, p2, :cond_0

    .line 1075
    move p1, p2

    .line 1076
    move p2, p1

    .line 1079
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1080
    .local v1, count:I
    const/4 v0, -0x1

    .line 1081
    .local v0, cached:I
    if-le v1, v5, :cond_1

    .line 1082
    if-gez p1, :cond_2

    .line 1083
    sub-int v0, v1, v5

    .line 1084
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1085
    .local v3, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1086
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    .line 1095
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1096
    sub-int v4, v1, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1098
    move v2, p1

    .local v2, i:I
    :goto_1
    if-gt v2, p2, :cond_4

    .line 1099
    if-ne v0, v2, :cond_3

    .line 1098
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1087
    .end local v2           #i:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 1088
    const/4 v0, 0x0

    .line 1089
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1090
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1091
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 1100
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1101
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1102
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_2

    .line 1104
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4
    return-void
.end method

.method public getAnimateStatus()Z
    .locals 1

    .prologue
    .line 1292
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 2252
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    return v0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 1491
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    .line 1492
    const/4 v0, 0x0

    .line 1494
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    goto :goto_0
.end method

.method getDropScreen()I
    .locals 1

    .prologue
    .line 1812
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    goto :goto_0
.end method

.method getIndexOfCell(II)I
    .locals 12
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v11, 0x1

    .line 1816
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1817
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    .line 1818
    .local v4, childWidth:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    .line 1819
    .local v3, childHeight:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    .line 1822
    .local v6, padding:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1823
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    .line 1825
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1827
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 1829
    .local v5, col:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_3

    .line 1830
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-ne v9, v11, :cond_2

    .line 1831
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, 0x1

    .line 1839
    .local v8, row:I
    :goto_0
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1840
    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    .line 1841
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    .line 1843
    if-gez p1, :cond_4

    const/4 p1, 0x0

    move v1, p1

    .line 1844
    .local v1, cellX:I
    :goto_1
    div-int v2, p2, v3

    .line 1846
    .local v2, cellY:I
    sub-int v9, v5, v11

    if-le v1, v9, :cond_0

    sub-int v1, v5, v11

    .line 1847
    :cond_0
    sub-int v9, v8, v11

    if-le v2, v9, :cond_1

    sub-int v2, v8, v11

    .line 1849
    :cond_1
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    .line 1851
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :goto_2
    return v9

    .line 1833
    .end local v8           #row:I
    :cond_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    sub-int v8, v9, v11

    .restart local v8       #row:I
    goto :goto_0

    .line 1836
    .end local v8           #row:I
    :cond_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .restart local v8       #row:I
    goto :goto_0

    .line 1843
    :cond_4
    div-int v9, p1, v4

    move v1, v9

    goto :goto_1

    .line 1851
    :cond_5
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1288
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 587
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 588
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/sec/android/app/twlauncher/PageIndicator;->getPageTouchArea(II)I

    move-result v0

    goto :goto_0
.end method

.method public getWhichScreen()I
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 991
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v3

    .line 992
    .local v3, screenWidth:I
    const/4 v5, 0x0

    .line 993
    .local v5, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 994
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 1003
    .local v4, scrollX:I
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1004
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 1005
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 1006
    .local v0, availableToScroll:I
    if-gez v4, :cond_1

    .line 1007
    const/4 v5, 0x0

    .line 1020
    .end local v0           #availableToScroll:I
    :cond_0
    :goto_0
    return v5

    .line 1008
    .restart local v0       #availableToScroll:I
    :cond_1
    if-gtz v0, :cond_2

    .line 1009
    sub-int v5, v1, v8

    goto :goto_0

    .line 1011
    :cond_2
    if-lez v3, :cond_3

    .line 1012
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    .line 1014
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 2397
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 1300
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1301
    return-void
.end method

.method public makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "parent"

    .prologue
    .line 1550
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1551
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1552
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v3, -0x1

    .line 1554
    .local v3, oldOrientation:I
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v5, v6, :cond_0

    .line 1555
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1556
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1558
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1559
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1562
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1564
    .local v0, app:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1565
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1566
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1568
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1569
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1570
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1571
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1574
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 1472
    return-void
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1311
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1316
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 25
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1321
    const/16 v3, 0x32

    move/from16 v0, p2

    move v1, v3

    if-lt v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getWidth()I

    move-result v3

    const/16 v4, 0x32

    sub-int/2addr v3, v4

    move/from16 v0, p2

    move v1, v3

    if-le v0, v1, :cond_1

    .line 1322
    :cond_0
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1408
    :goto_0
    return-void

    .line 1326
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 1327
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    move-object/from16 v20, v0

    .line 1329
    .local v20, point:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v23

    .line 1330
    .local v23, target:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1332
    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1334
    move-object/from16 v0, v23

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v15, v0

    .line 1335
    .local v15, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v16

    .line 1336
    .local v16, index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 1337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1338
    .local v24, v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1339
    .local v19, parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_3

    .line 1340
    move-object v0, v15

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeItem(Landroid/view/View;I)V

    .line 1368
    :goto_1
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1384
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto :goto_0

    .line 1342
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1344
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1345
    .local v17, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v12

    .line 1347
    .local v12, addView:Landroid/view/View;
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibleChildCount()I

    move-result v3

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1348
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    .line 1351
    :cond_4
    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    .line 1352
    .local v22, shiftView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1354
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1355
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1356
    .local v4, animationView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1357
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1359
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1360
    .local v18, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 1361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLeft()I

    move-result v5

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    const/4 v6, 0x0

    aget v6, v20, v6

    int-to-float v6, v6

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTop()I

    move-result v7

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {v18 .. v18}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v20, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v10, v0

    int-to-float v10, v10

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    .line 1366
    .end local v4           #animationView:Landroid/view/View;
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_5
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_1

    .line 1369
    .end local v12           #addView:Landroid/view/View;
    .end local v17           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v19           #parent:Landroid/view/View;
    .end local v22           #shiftView:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_6
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_2

    .line 1370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1371
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1372
    .restart local v19       #parent:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1373
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1374
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1375
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1376
    .local v13, dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1378
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1379
    .local v14, dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1380
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1381
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_2

    .line 1387
    .end local v13           #dragView:Landroid/view/View;
    .end local v14           #dropIndex:I
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    .end local v16           #index:I
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v16

    .line 1388
    .restart local v16       #index:I
    const/4 v3, -0x1

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    move v3, v0

    move/from16 v0, v16

    move v1, v3

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-eqz v3, :cond_8

    .line 1389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1390
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1391
    .restart local v19       #parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_9

    .line 1392
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1393
    .restart local v15       #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1397
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1398
    .restart local v13       #dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1400
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1401
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1402
    .restart local v14       #dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1403
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1404
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1406
    .end local v13           #dragView:Landroid/view/View;
    .end local v14           #dropIndex:I
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_8
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto/16 :goto_0

    .line 1395
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_9
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_3
.end method

.method public onDragStart(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V
    .locals 4
    .parameter "v"
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 1475
    instance-of v3, p2, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v3, :cond_1

    .line 1476
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v2, v0

    .line 1477
    .local v2, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1478
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1479
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1488
    .end local v2           #shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_0
    :goto_0
    return-void

    .line 1481
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1482
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v1, :cond_0

    .line 1483
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1484
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1485
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    goto :goto_0
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 22
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 1452
    :cond_0
    :goto_0
    return-void

    .line 1414
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 1416
    .local v19, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v20

    .line 1417
    .local v20, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1421
    .local v16, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 1422
    .local v17, parent:Landroid/view/ViewGroup;
    if-eqz v17, :cond_0

    .line 1424
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1426
    .local v18, point:[I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_2

    .line 1427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    sub-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getLeft()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, p3, p5

    int-to-float v7, v7

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getTop()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    goto :goto_0

    .line 1430
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 1431
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v15

    .line 1432
    .local v15, index:I
    const/4 v3, -0x1

    if-eq v15, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_4

    :cond_3
    move-object/from16 v0, v19

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1434
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1435
    .local v21, v:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_6

    .line 1436
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1437
    .local v14, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1441
    .end local v14           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1442
    .local v13, dropView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1443
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 1444
    .local v12, dropCell:I
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1445
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1448
    .end local v12           #dropCell:I
    .end local v13           #dropView:Landroid/view/View;
    .end local v15           #index:I
    .end local v21           #v:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(Landroid/view/View;[I)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v4, v0

    sub-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/AppMenu;->getLeft()I

    move-result v6

    const/4 v7, 0x0

    aget v7, v18, v7

    add-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    sub-int v7, p3, p5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v8, v0

    add-int/2addr v7, v8

    int-to-float v7, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v8

    const/4 v9, 0x1

    aget v9, v18, v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v9, v0

    int-to-float v9, v9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move v10, v0

    int-to-float v10, v10

    const/16 v11, 0x12c

    invoke-interface/range {v3 .. v11}, Lcom/sec/android/app/twlauncher/DragController;->startAnimation(Landroid/view/View;FFFFFFI)V

    goto/16 :goto_0

    .line 1439
    .restart local v15       #index:I
    .restart local v21       #v:Landroid/view/View;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 3
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    const/4 v2, -0x1

    .line 1459
    if-eqz p2, :cond_1

    .line 1460
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 1465
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1466
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1467
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1468
    return-void

    .line 1462
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .parameter "ev"

    .prologue
    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 597
    const/16 v16, 0x1

    .line 773
    :goto_0
    return v16

    .line 600
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 601
    const/16 v16, 0x1

    goto :goto_0

    .line 604
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v16, 0x0

    goto :goto_0

    .line 618
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 619
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 621
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 623
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 624
    .local v3, action:I
    const/16 v16, 0x2

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 625
    const/16 v16, 0x1

    goto :goto_0

    .line 629
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 630
    .local v6, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 631
    .local v11, y:F
    const/4 v12, 0x0

    .local v12, y1:I
    const/4 v13, 0x0

    .local v13, y2:I
    const/4 v7, 0x0

    .local v7, x1:I
    const/4 v8, 0x0

    .line 633
    .local v8, x2:I
    packed-switch v3, :pswitch_data_0

    .line 771
    :cond_5
    :goto_1
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_13

    const/16 v16, 0x1

    move/from16 v4, v16

    .local v4, ret:Z
    :goto_2
    move/from16 v16, v4

    .line 773
    goto :goto_0

    .line 644
    .end local v4           #ret:Z
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 645
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 646
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 647
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 648
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 650
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinchStart:I

    move/from16 v16, v0

    sub-int v17, v12, v13

    sub-int v18, v12, v13

    mul-int v17, v17, v18

    sub-int v18, v7, v8

    sub-int v19, v7, v8

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-nez v16, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v16

    if-ltz v16, :cond_7

    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 655
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 656
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 659
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 666
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 670
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    move/from16 v16, v0

    sub-float v16, v6, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v9, v0

    .line 675
    .local v9, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v16, v0

    sub-float v16, v11, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v14, v0

    .line 679
    .local v14, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v5, v0

    .line 680
    .local v5, touchSlop:I
    if-le v9, v5, :cond_b

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 681
    .local v10, xMoved:Z
    :goto_3
    if-le v14, v5, :cond_c

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 683
    .local v15, yMoved:Z
    :goto_4
    if-nez v10, :cond_a

    if-eqz v15, :cond_e

    .line 685
    :cond_a
    if-eqz v10, :cond_d

    .line 687
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 680
    .end local v10           #xMoved:Z
    .end local v15           #yMoved:Z
    :cond_b
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_3

    .line 681
    .restart local v10       #xMoved:Z
    :cond_c
    const/16 v16, 0x0

    move/from16 v15, v16

    goto :goto_4

    .line 691
    .restart local v15       #yMoved:Z
    :cond_d
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 694
    :cond_e
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 702
    .end local v5           #touchSlop:I
    .end local v9           #xDiff:I
    .end local v10           #xMoved:Z
    .end local v14           #yDiff:I
    .end local v15           #yMoved:Z
    :pswitch_2
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 703
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 705
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v16, v0

    const/16 v17, 0x1

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Scroller;->isFinished()Z

    move-result v16

    if-eqz v16, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v16, v0

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    add-int v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v17, v0

    move v0, v11

    float-to-int v0, v0

    move/from16 v18, v0

    add-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    :cond_f
    const/16 v16, 0x1

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    :cond_10
    const/16 v16, 0x0

    goto :goto_5

    .line 719
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 720
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 722
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 723
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v16

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v16

    if-ltz v16, :cond_12

    :cond_11
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 726
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    goto/16 :goto_1

    .line 746
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 750
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 751
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 752
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 753
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 755
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 756
    sub-int v16, v12, v13

    sub-int v17, v12, v13

    mul-int v16, v16, v17

    sub-int v17, v7, v8

    sub-int v18, v7, v8

    mul-int v17, v17, v18

    add-int v16, v16, v17

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinchStart:I

    goto/16 :goto_1

    .line 771
    :cond_13
    const/16 v16, 0x0

    move/from16 v4, v16

    goto/16 :goto_2

    .line 633
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 340
    const/4 v1, 0x0

    .line 342
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 343
    .local v3, count:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 344
    .local v5, topPadding:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 345
    const/4 v5, 0x0

    .line 348
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 349
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 350
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 351
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 352
    .local v2, childWidth:I
    add-int v6, v1, v2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 353
    add-int/2addr v1, v2

    .line 348
    .end local v2           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 357
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator()V

    .line 359
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const-string v8, "Menulayout can only be used in EXACTLY mode."

    .line 308
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 310
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 311
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 312
    .local v4, widthMode:I
    if-eq v4, v7, :cond_0

    .line 313
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 316
    :cond_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 317
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRightOffset:I

    sub-int/2addr v3, v5

    .line 318
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 321
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 322
    .local v1, heightMode:I
    if-eq v1, v7, :cond_2

    .line 323
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 328
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 329
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 332
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    if-eqz v5, :cond_4

    .line 333
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 336
    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2188
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2190
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2191
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2196
    .local v1, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2197
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 2200
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2193
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 779
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 780
    const/16 v21, 0x1

    .line 934
    :goto_0
    return v21

    .line 783
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 784
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 786
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 788
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 789
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 790
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 792
    .local v18, y:F
    packed-switch v3, :pswitch_data_0

    .line 934
    :cond_2
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    .line 799
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_3

    .line 800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 804
    :cond_3
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 805
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto :goto_1

    .line 811
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 812
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move/from16 v21, v0

    sub-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 813
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 814
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move v8, v0

    .line 815
    .local v8, deltaY:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_4

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_2

    .line 816
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    .line 823
    .end local v8           #deltaY:I
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 825
    :cond_6
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    .line 829
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    .line 830
    .local v4, childCount:I
    const/16 v21, 0x1

    sub-int v21, v4, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    mul-int v10, v21, v22

    .line 834
    .local v10, maxScrollX:I
    if-gez v7, :cond_8

    .line 835
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    neg-int v0, v0

    move v11, v0

    .line 836
    .local v11, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v11

    if-le v0, v1, :cond_2

    .line 837
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    if-lez v21, :cond_7

    .line 838
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 840
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    sub-int v21, v11, v21

    move/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 843
    .end local v11           #minScrollX:I
    :cond_8
    if-lez v7, :cond_2

    .line 844
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 845
    .local v6, cv:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 846
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v10, v21, v22

    .line 847
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 848
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    sub-int v21, v10, v21

    move/from16 v0, v21

    move v1, v7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v21

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 856
    .end local v4           #childCount:I
    .end local v6           #cv:Landroid/view/View;
    .end local v7           #deltaX:I
    .end local v10           #maxScrollX:I
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    move/from16 v21, v0

    sub-float v21, v15, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v16, v0

    .line 861
    .local v16, xDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v18, v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v19, v0

    .line 865
    .local v19, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v12, v0

    .line 866
    .local v12, touchSlop:I
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_b

    const/16 v21, 0x1

    move/from16 v17, v21

    .line 867
    .local v17, xMoved:Z
    :goto_2
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_c

    const/16 v21, 0x1

    move/from16 v20, v21

    .line 869
    .local v20, yMoved:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    if-lez v21, :cond_e

    if-nez v17, :cond_a

    if-eqz v20, :cond_e

    .line 871
    :cond_a
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 875
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 866
    .end local v17           #xMoved:Z
    .end local v20           #yMoved:Z
    :cond_b
    const/16 v21, 0x0

    move/from16 v17, v21

    goto :goto_2

    .line 867
    .restart local v17       #xMoved:Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v20, v21

    goto :goto_3

    .line 879
    .restart local v20       #yMoved:Z
    :cond_d
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 882
    :cond_e
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 888
    .end local v12           #touchSlop:I
    .end local v16           #xDiff:I
    .end local v17           #xMoved:Z
    .end local v19           #yDiff:I
    .end local v20           #yMoved:Z
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 889
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move v0, v15

    float-to-int v0, v0

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    move/from16 v22, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getPageIndicatorArea(II)I

    move-result v9

    .line 891
    .local v9, index:I
    const/16 v21, -0x1

    move v0, v9

    move/from16 v1, v21

    if-eq v0, v1, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchedPageIndicatorIndex:I

    move/from16 v21, v0

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 892
    const/16 v21, -0x2

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x9

    sub-int v9, v21, v22

    .line 894
    if-gez v9, :cond_f

    const/4 v9, 0x0

    .line 901
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 903
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 895
    :cond_11
    const/16 v21, -0x3

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 896
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v9, v21, 0x9

    .line 897
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 898
    .local v5, count:I
    if-lt v9, v5, :cond_f

    const/16 v21, 0x1

    sub-int v9, v5, v21

    goto :goto_4

    .line 907
    .end local v5           #count:I
    .end local v9           #index:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v0

    .line 908
    .local v13, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v21, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v13

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 909
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v14, v0

    .line 913
    .local v14, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    .line 914
    .restart local v4       #childCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-le v0, v1, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    if-ltz v21, :cond_14

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 924
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 925
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 927
    .end local v4           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :cond_13
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 917
    .restart local v4       #childCount:I
    .restart local v13       #velocityTracker:Landroid/view/VelocityTracker;
    .restart local v14       #velocityX:I
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move v0, v14

    move/from16 v1, v21

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v22, v4, v22

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_15

    .line 919
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    goto :goto_5

    .line 921
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto :goto_5

    .line 931
    .end local v4           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 792
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public open()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1219
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1220
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1221
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1223
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1225
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1226
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1227
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1229
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1230
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1231
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1232
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1233
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1234
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1235
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1236
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1238
    :cond_1
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2579
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 2580
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2581
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2582
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v3, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v3

    .line 2583
    if-ltz v3, :cond_0

    .line 2584
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2580
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 2586
    :cond_0
    const-string v3, "Launcher.MenuManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "couldn\'t find a match for item \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2591
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_2

    .line 2592
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2593
    :cond_2
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1860
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1861
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1862
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1863
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1864
    .local v0, child:Landroid/view/View;
    if-ne v0, v3, :cond_1

    .line 1865
    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1869
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 1862
    .restart local v0       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 2177
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2178
    .local v1, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    .line 2179
    .local v0, currentScreen:I
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2180
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 2181
    const/4 v2, 0x1

    .line 2183
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method resume()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    .line 2257
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2258
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2259
    .local v1, screen:I
    if-le v0, v4, :cond_0

    .line 2260
    if-gez v1, :cond_3

    .line 2261
    sub-int v1, v0, v4

    .line 2262
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2269
    :cond_0
    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2271
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    .line 2272
    .local v3, width:I
    if-eqz v3, :cond_2

    .line 2273
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 2274
    .local v2, scroller:Landroid/widget/Scroller;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2275
    :cond_1
    mul-int v4, v1, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 2277
    .end local v2           #scroller:Landroid/widget/Scroller;
    :cond_2
    return-void

    .line 2263
    .end local v3           #width:I
    :cond_3
    if-lt v1, v0, :cond_0

    .line 2264
    const/4 v1, 0x0

    .line 2265
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1979
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1980
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1983
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 1992
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1994
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1997
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1503
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1506
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1507
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1508
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 1509
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1511
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1513
    :cond_1
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2556
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2557
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2558
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 2248
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2249
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1455
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1456
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1498
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1499
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1266
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v0, p1, :cond_2

    .line 1267
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1269
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1270
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1272
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1273
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1274
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1283
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1285
    :cond_2
    return-void

    .line 1276
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1277
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1280
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method shiftItem(Landroid/view/View;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1915
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1917
    if-gt v0, p2, :cond_1

    .line 1918
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v0

    move-object v1, v0

    .line 1923
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1924
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    .line 1925
    if-gez v2, :cond_4

    .line 1926
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v0

    .line 1927
    if-nez v0, :cond_2

    .line 1949
    :cond_0
    return-void

    .line 1920
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v1, v0

    goto :goto_0

    .line 1928
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v2

    move v5, v2

    move-object v2, v0

    move v0, v5

    .line 1930
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1931
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1932
    invoke-virtual {v1, v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 1934
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v2

    .line 1935
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v2, v0, :cond_3

    .line 1936
    const/4 v0, 0x1

    sub-int v0, v2, v0

    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1937
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1938
    add-int/lit8 v3, p2, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    :cond_3
    move v3, v4

    .line 1942
    :goto_2
    if-ge v3, v2, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v0, :cond_0

    .line 1943
    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1944
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1945
    const v4, 0xffff

    iput v4, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1946
    iput p2, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1947
    iput v3, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1942
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    move v5, v2

    move-object v2, v0

    move v0, v5

    goto :goto_1
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1028
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(II)V

    .line 1029
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1032
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1071
    :goto_0
    return-void

    .line 1034
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 1035
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1036
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1043
    .local v7, childCount:I
    sub-int v0, v7, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1046
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-eq p1, v0, :cond_5

    move v6, v4

    .line 1048
    .local v6, changingScreens:Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1049
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_2

    .line 1050
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1053
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 1054
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    sub-int v3, v9, v0

    .line 1056
    .local v3, delta:I
    if-gez p1, :cond_6

    .line 1057
    sub-int p1, v7, v4

    .line 1062
    :cond_3
    :goto_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 1064
    if-gez p2, :cond_4

    .line 1065
    iget p2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 1067
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1068
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1070
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_5
    move v6, v2

    .line 1046
    goto :goto_1

    .line 1058
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_6
    if-lt p1, v7, :cond_3

    .line 1059
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public startFullUpdateDB()V
    .locals 4

    .prologue
    .line 2150
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    .line 2151
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2152
    return-void
.end method

.method public startUpdateDB()V
    .locals 4

    .prologue
    .line 2068
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 2069
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2070
    return-void
.end method

.method public stopFullUpdateDB()V
    .locals 2

    .prologue
    .line 2143
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 2144
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateFullDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateFullDBTask;->cancel(Z)Z

    .line 2146
    :cond_0
    return-void
.end method

.method public stopUpdateDB()V
    .locals 2

    .prologue
    .line 2062
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 2063
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->cancel(Z)Z

    .line 2065
    :cond_0
    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1296
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1297
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/twlauncher/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2602
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2603
    .local v0, N:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2605
    .local v1, appList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 2606
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2608
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2609
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeApps(Ljava/util/ArrayList;)V

    .line 2610
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2612
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 2605
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2614
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    return-void
.end method

.method public updateDrawingCacheForApplicationBadgeCountChange(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1132
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 1134
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1151
    :cond_0
    return-void

    .line 1137
    :cond_1
    const/4 v7, 0x0

    .local v7, page:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .local v5, count:I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 1138
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1139
    .local v3, child:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, cell:I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .local v6, count2:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 1140
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1142
    .local v4, childchild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1143
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 1145
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 1146
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 1147
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1139
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1137
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v4           #childchild:Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
