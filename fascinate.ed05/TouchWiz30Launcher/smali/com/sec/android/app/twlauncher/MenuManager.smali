.class public Lcom/sec/android/app/twlauncher/MenuManager;
.super Landroid/view/ViewGroup;
.source "MenuManager.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DragScroller;
.implements Lcom/sec/android/app/twlauncher/DragController$DragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;,
        Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;,
        Lcom/sec/android/app/twlauncher/MenuManager$SavedState;,
        Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;
    }
.end annotation


# static fields
.field public static final ANIMATION_IN_TIME:I = 0x258

.field public static final ANIMATION_OUT_TIME:I = 0x190

.field public static final ANIMATION_TIME:I = 0x1f4

.field private static final DEBUG:Z = false

.field private static final DEBUG_TOUCH:Z = false

.field public static final EDIT_MODE:I = 0x2

.field private static final INVALID_SCREEN:I = -0x1

.field public static final ITEM_ANIMATION_TIME:I = 0x12c

.field public static final LAUNCH_MODE_DEFAULT:I = 0x0

.field public static final LAUNCH_MODE_LIST:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "Launcher.MenuManager"

.field private static final MENU_PAGE_LOOPING:Z = false

.field private static final SCROLL_DOWN:Z = true

.field private static final SNAPTOSCREEN_DURATION:I = 0x190

.field private static final SNAPTOSCREEN_DURATION_HORIZONTAL:I = 0x258

.field private static final TEST_AUTOSCROLL:Z = false

.field private static final TOUCH_STATE_REST:I = 0x0

.field private static final TOUCH_STATE_SCROLLING:I = 0x1


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

.field private mIsScroll:Z

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

.field private mSettingsBg:Landroid/graphics/drawable/Drawable;

.field private mSettingsButton:Landroid/widget/ImageView;

.field private mSettingsIcon:Landroid/graphics/drawable/Drawable;

.field private mSnapToScreenDuration:I

.field private mTempPage:I

.field private mTextSize:I

.field private mTopOffset:I

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedPageIndicatorIndex:I

.field private mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

.field private final mUseLargeDrawablesOnlyForPageIndicator:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x4080

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    const/16 v0, 0xc8

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 95
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 115
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 124
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    .line 152
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 153
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    .line 155
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    .line 161
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 167
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    .line 168
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    .line 170
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    .line 171
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0, v2}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    .line 185
    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 186
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 194
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    .line 196
    new-instance v0, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-direct {v0}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    .line 1735
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$4;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$4;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1751
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$5;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$5;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 2184
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$6;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$6;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    .line 2256
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$7;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$7;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 2287
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 2290
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$8;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$8;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    .line 202
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getColumnNo(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 203
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getItemNoOfPage(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    .line 204
    invoke-static {p1}, Lcom/sec/android/app/twlauncher/LauncherConfig;->pageIndicator_getUseLargeDrawablesOnly(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    .line 206
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    .line 207
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    new-array v0, v0, [Landroid/view/animation/Animation;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    .line 209
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->init()V

    .line 210
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/PageIndicator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/twlauncher/MenuManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-wide p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/sec/android/app/twlauncher/MenuManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/MenuManager;)Lcom/sec/android/app/twlauncher/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/twlauncher/MenuManager;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/twlauncher/MenuManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    return v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/twlauncher/MenuManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    return-void
.end method

.method static synthetic access$800(Lcom/sec/android/app/twlauncher/MenuManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/sec/android/app/twlauncher/MenuManager;)[Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method private addBlankPage()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2171
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 2181
    :cond_0
    :goto_0
    return-void

    .line 2173
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    .line 2174
    .local v2, pageCount:I
    if-eqz v2, :cond_0

    .line 2176
    sub-int v3, v2, v5

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2177
    .local v1, lastPage:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2178
    .local v0, itemCount:I
    if-ne v0, v5, :cond_0

    .line 2179
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    goto :goto_0
.end method

.method private copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .locals 5
    .parameter "adapter"
    .parameter "info"

    .prologue
    .line 1926
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v3, 0x0

    .line 1944
    :goto_0
    return-object v3

    .line 1927
    :cond_1
    const/4 v1, 0x0

    .line 1928
    .local v1, adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    invoke-virtual {p1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 1929
    .local v0, adapterCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 1930
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #adapterInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1931
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

    .line 1934
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    .line 1935
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1936
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1938
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1939
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1940
    iget v3, p2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    iput v3, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    :cond_2
    move-object v3, v1

    .line 1944
    goto :goto_0

    .line 1929
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private drawPageIndicator(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    move-object v6, v0

    .line 475
    .local v6, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v10

    .line 476
    .local v10, pageCount:I
    if-lez v10, :cond_0

    if-nez v6, :cond_1

    .line 549
    :cond_0
    :goto_0
    return-void

    .line 480
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v15

    .line 482
    .local v15, updatedScreen:I
    const/16 v16, 0x1

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 483
    if-gez v15, :cond_8

    .line 484
    const/16 v16, 0x1

    sub-int v15, v10, v16

    .line 490
    :cond_2
    :goto_1
    const/16 v8, 0x9

    .line 491
    .local v8, max:I
    const/4 v3, 0x4

    .line 492
    .local v3, centerIndex:I
    const/4 v5, 0x0

    .line 493
    .local v5, firstIndex:I
    const/4 v7, 0x0

    .line 494
    .local v7, isCenterSort:Z
    const/4 v4, 0x0

    .line 495
    .local v4, drawMore:Z
    const/16 v16, 0x9

    move v0, v10

    move/from16 v1, v16

    if-le v0, v1, :cond_3

    .line 496
    sub-int v5, v15, v3

    .line 497
    if-gez v5, :cond_9

    .line 498
    const/4 v5, 0x0

    .line 504
    :goto_2
    const/4 v4, 0x1

    .line 507
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    move v11, v0

    .line 508
    .local v11, pageIndicatorTop:I
    sget-boolean v16, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v16, :cond_5

    .line 509
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_5

    .line 510
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    .line 511
    .local v13, startTime:J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    sub-long v16, v16, v13

    move-wide/from16 v0, v16

    long-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x43c8

    div-float v9, v16, v17

    .line 512
    .local v9, normalized:F
    const/high16 v16, 0x3f80

    cmpl-float v16, v9, v16

    if-ltz v16, :cond_4

    .line 513
    const-wide/16 v16, 0x0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    .line 514
    const/high16 v9, 0x3f80

    .line 516
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimationStartTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-lez v16, :cond_b

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOvershootInterpolator:Landroid/view/animation/OvershootInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/OvershootInterpolator;->getInterpolation(F)F

    move-result v9

    .line 518
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

    .line 526
    .end local v9           #normalized:F
    .end local v13           #startTime:J
    :cond_5
    :goto_3
    invoke-virtual {v6, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setFirstTextNum(I)V

    .line 527
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

    .line 529
    if-eqz v7, :cond_c

    .line 530
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mUseLargeDrawablesOnlyForPageIndicator:Z

    move/from16 v16, v0

    move-object v0, v6

    move v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/PageIndicator;->setCurrentPage(IZ)V

    .line 535
    :goto_4
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 536
    const/16 v16, 0x0

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 537
    if-eqz v4, :cond_7

    .line 538
    if-lez v15, :cond_6

    if-lez v5, :cond_6

    .line 539
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableLeftMore(Z)V

    .line 542
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

    .line 544
    const/16 v16, 0x1

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableRightMore(Z)V

    .line 547
    :cond_7
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->draw(Landroid/graphics/Canvas;)Z

    move-result v12

    .line 548
    .local v12, redraw:Z
    if-eqz v12, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto/16 :goto_0

    .line 485
    .end local v3           #centerIndex:I
    .end local v4           #drawMore:Z
    .end local v5           #firstIndex:I
    .end local v7           #isCenterSort:Z
    .end local v8           #max:I
    .end local v11           #pageIndicatorTop:I
    .end local v12           #redraw:Z
    :cond_8
    if-lt v15, v10, :cond_2

    .line 486
    const/4 v15, 0x0

    goto/16 :goto_1

    .line 499
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

    .line 500
    const/16 v16, 0x9

    sub-int v5, v10, v16

    goto/16 :goto_2

    .line 502
    :cond_a
    const/4 v7, 0x1

    goto/16 :goto_2

    .line 519
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

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnticipateInterpolator:Landroid/view/animation/AnticipateInterpolator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move v1, v9

    invoke-virtual {v0, v1}, Landroid/view/animation/AnticipateInterpolator;->getInterpolation(F)F

    move-result v9

    .line 521
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

    .line 532
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

.method private drawSettingButton(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 553
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 555
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 556
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 557
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 558
    return-void
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
    .line 2493
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 2494
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2495
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 2496
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2497
    .local v3, x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 2501
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :goto_1
    return v4

    .line 2495
    .restart local v3       #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2501
    .end local v3           #x:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 4
    .parameter "num"

    .prologue
    .line 1506
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1507
    .local v0, count:I
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1508
    const/4 v2, 0x0

    .line 1509
    .local v2, page:Lcom/sec/android/app/twlauncher/AppMenu;
    if-lt p1, v0, :cond_1

    .line 1510
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v2

    .line 1511
    move p1, v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    .line 1520
    :cond_0
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/app/twlauncher/AppMenu;

    move-object v3, p0

    :goto_0
    return-object v3

    .line 1513
    .restart local p0
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1514
    .restart local v2       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v1

    .line 1515
    .local v1, itemNum:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-lt v1, v3, :cond_0

    .line 1516
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v3

    goto :goto_0
.end method

.method private getXDeltaValue(I)F
    .locals 4
    .parameter "index"

    .prologue
    .line 2320
    const/4 v0, 0x0

    .line 2321
    .local v0, returnVal:F
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    rem-int v1, p1, v2

    .line 2323
    .local v1, sector:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 2324
    packed-switch v1, :pswitch_data_0

    .line 2374
    :goto_0
    return v0

    .line 2326
    :pswitch_0
    const/high16 v0, -0x3d10

    .line 2327
    goto :goto_0

    .line 2329
    :pswitch_1
    const/high16 v0, -0x3d90

    .line 2330
    goto :goto_0

    .line 2332
    :pswitch_2
    const/high16 v0, 0x4270

    .line 2333
    goto :goto_0

    .line 2335
    :pswitch_3
    const/high16 v0, 0x42f0

    goto :goto_0

    .line 2339
    :cond_0
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_1

    .line 2340
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 2342
    :pswitch_4
    const/high16 v0, -0x3d38

    .line 2343
    goto :goto_0

    .line 2345
    :pswitch_5
    const/high16 v0, -0x3db8

    .line 2346
    goto :goto_0

    .line 2348
    :pswitch_6
    const/4 v0, 0x0

    .line 2349
    goto :goto_0

    .line 2351
    :pswitch_7
    const/high16 v0, 0x4248

    .line 2352
    goto :goto_0

    .line 2354
    :pswitch_8
    const/high16 v0, 0x42c8

    goto :goto_0

    .line 2358
    :cond_1
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 2360
    :pswitch_9
    const/high16 v0, -0x3d38

    .line 2361
    goto :goto_0

    .line 2363
    :pswitch_a
    const/high16 v0, -0x3db8

    .line 2364
    goto :goto_0

    .line 2366
    :pswitch_b
    const/high16 v0, 0x4248

    .line 2367
    goto :goto_0

    .line 2369
    :pswitch_c
    const/high16 v0, 0x42c8

    goto :goto_0

    .line 2324
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 2340
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2358
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private getYDeltaValue(I)F
    .locals 4
    .parameter "index"

    .prologue
    .line 2378
    const/4 v0, 0x0

    .line 2379
    .local v0, returnVal:F
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    div-int v1, p1, v2

    .line 2381
    .local v1, sector:I
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 2382
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    .line 2383
    packed-switch v1, :pswitch_data_0

    .line 2432
    :goto_0
    return v0

    .line 2385
    :pswitch_0
    const/high16 v0, -0x3cf4

    .line 2386
    goto :goto_0

    .line 2388
    :pswitch_1
    const/high16 v0, -0x3d74

    .line 2389
    goto :goto_0

    .line 2391
    :pswitch_2
    const/4 v0, 0x0

    .line 2392
    goto :goto_0

    .line 2394
    :pswitch_3
    const/high16 v0, 0x428c

    .line 2395
    goto :goto_0

    .line 2397
    :pswitch_4
    const/high16 v0, 0x430c

    goto :goto_0

    .line 2401
    :cond_0
    packed-switch v1, :pswitch_data_1

    goto :goto_0

    .line 2403
    :pswitch_5
    const/high16 v0, -0x3cf4

    .line 2404
    goto :goto_0

    .line 2406
    :pswitch_6
    const/high16 v0, -0x3d74

    .line 2407
    goto :goto_0

    .line 2409
    :pswitch_7
    const/high16 v0, 0x428c

    .line 2410
    goto :goto_0

    .line 2412
    :pswitch_8
    const/high16 v0, 0x430c

    goto :goto_0

    .line 2417
    :cond_1
    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 2419
    :pswitch_9
    const/high16 v0, -0x3d60

    .line 2420
    goto :goto_0

    .line 2422
    :pswitch_a
    const/high16 v0, -0x3de0

    .line 2423
    goto :goto_0

    .line 2425
    :pswitch_b
    const/high16 v0, 0x4220

    .line 2426
    goto :goto_0

    .line 2428
    :pswitch_c
    const/high16 v0, 0x42a0

    goto :goto_0

    .line 2383
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 2401
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 2417
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

    .line 215
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 216
    .local v1, res:Landroid/content/res/Resources;
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setClipChildren(Z)V

    .line 218
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    .line 220
    new-instance v2, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 221
    iput v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 223
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    .line 224
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 226
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 227
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    .line 228
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMaximumVelocity:I

    .line 229
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x6

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->SNAP_VELOCITY:I

    .line 230
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    if-nez v2, :cond_0

    .line 231
    const v2, 0x7f020021

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    .line 234
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    if-nez v2, :cond_1

    .line 235
    const v2, 0x7f020022

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    .line 238
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    if-nez v2, :cond_2

    .line 239
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    .line 242
    :cond_2
    const v2, 0x7f020035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    .line 243
    const v2, 0x7f020034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    .line 244
    const v2, 0x7f020033

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    .line 245
    const v2, 0x7f020036

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    .line 247
    const v2, 0x7f08000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 248
    const v2, 0x7f080026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    .line 249
    const v2, 0x7f080027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    .line 250
    const v2, 0x7f080029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    .line 252
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorSmall:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 253
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMiddle:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 254
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 255
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 258
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    .line 260
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    .line 261
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f040001

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    .line 263
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x258

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 264
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    const-wide/16 v3, 0x190

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 266
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 267
    const/16 v2, 0x190

    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 272
    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 275
    const v2, 0x7f020045

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    .line 276
    const v2, 0x7f020044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    .line 277
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    .line 279
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 280
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 282
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initAnimation()V

    .line 284
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setAnimationCacheEnabled(Z)V

    .line 286
    new-instance v2, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 287
    new-instance v2, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v2, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 288
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 289
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 290
    return-void

    .line 269
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

    .line 2191
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v3, v7, :cond_1

    .line 2192
    sget-boolean v7, Lcom/sec/android/app/twlauncher/Launcher;->USE_MAINMENU_CONCENTRATION_EFFECT:Z

    if-eqz v7, :cond_0

    .line 2193
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getXDeltaValue(I)F

    move-result v1

    .line 2194
    .local v1, deltaX:F
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getYDeltaValue(I)F

    move-result v2

    .line 2196
    .local v2, deltaY:F
    new-instance v6, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v6, v1, v9, v2, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 2197
    .local v6, openTrans:Landroid/view/animation/TranslateAnimation;
    new-instance v7, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v7, v10}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    invoke-virtual {v6, v7}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2198
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v4, v9, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 2199
    .local v4, openAlpha:Landroid/view/animation/AlphaAnimation;
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAlphaAnimationInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2200
    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v5, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2201
    .local v5, openAniSet:Landroid/view/animation/AnimationSet;
    invoke-virtual {v5, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2202
    invoke-virtual {v5, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2203
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aput-object v5, v7, v3

    .line 2205
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x1

    invoke-direct {v0, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2206
    .local v0, closeAniSet:Landroid/view/animation/AnimationSet;
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v7, v9, v1, v9, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2207
    new-instance v7, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v7, v10, v10}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2208
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aput-object v0, v7, v3

    .line 2209
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v8, v10}, Landroid/view/animation/AnticipateInterpolator;-><init>(F)V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2191
    .end local v0           #closeAniSet:Landroid/view/animation/AnimationSet;
    .end local v1           #deltaX:F
    .end local v2           #deltaY:F
    .end local v4           #openAlpha:Landroid/view/animation/AlphaAnimation;
    .end local v5           #openAniSet:Landroid/view/animation/AnimationSet;
    .end local v6           #openTrans:Landroid/view/animation/TranslateAnimation;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2211
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2212
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    new-instance v8, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v8, v9, v9, v9, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    aput-object v8, v7, v3

    .line 2213
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2214
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCloseAnimations:[Landroid/view/animation/Animation;

    aget-object v7, v7, v3

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v7, v8}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_1

    .line 2218
    :cond_1
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;->setDelay(F)V

    .line 2219
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v7, v9}, Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;->setDelay(F)V

    .line 2220
    return-void
.end method

.method private initPageIndicator()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 437
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 438
    .local v3, indicatorWidth:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 440
    .local v1, indicatorHeight:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 441
    .local v5, pageCount:I
    if-gtz v5, :cond_0

    .line 471
    :goto_0
    return-void

    .line 443
    :cond_0
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v6, :cond_1

    .line 444
    new-instance v6, Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-direct {v6}, Lcom/sec/android/app/twlauncher/PageIndicator;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 447
    :cond_1
    const/16 v4, 0x9

    .line 448
    .local v4, max:I
    const/16 v6, 0x9

    if-le v5, v6, :cond_2

    .line 449
    const/16 v5, 0x9

    .line 452
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    .line 453
    .local v0, indicator:Lcom/sec/android/app/twlauncher/PageIndicator;
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLarge:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 454
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMore:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setMoreDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 455
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/PageIndicator;->setPageCount(I)V

    .line 456
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorMoreGap:I

    invoke-virtual {v0, v6, v7}, Lcom/sec/android/app/twlauncher/PageIndicator;->setGap(II)V

    .line 457
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTextSize:I

    invoke-virtual {v0, v6}, Lcom/sec/android/app/twlauncher/PageIndicator;->setTextSize(I)V

    .line 458
    iget-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v6, :cond_5

    .line 459
    invoke-virtual {v0, v9}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    .line 464
    :goto_1
    mul-int v6, v3, v5

    iget v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorGap:I

    if-lez v5, :cond_3

    sub-int v8, v5, v9

    :cond_3
    mul-int/2addr v7, v8

    add-int v2, v6, v7

    .line 465
    .local v2, indicatorTotalWidth:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v6

    sub-int/2addr v6, v2

    div-int/lit8 v6, v6, 0x2

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    .line 466
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    if-eqz v6, :cond_4

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 467
    :cond_4
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080025

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    goto :goto_0

    .line 461
    .end local v2           #indicatorTotalWidth:I
    :cond_5
    invoke-virtual {v0, v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->enableShowHide(Z)V

    goto :goto_1

    .line 469
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

    .line 2436
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 2437
    .local v1, count:I
    if-ne v1, v4, :cond_0

    .line 2438
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2439
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    move v2, v4

    .line 2443
    .end local v0           #child:Landroid/view/View;
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private isSettingsButtonArea(II)Z
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 2521
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2522
    .local v0, rect:Landroid/graphics/Rect;
    iput v3, v0, Landroid/graphics/Rect;->top:I

    .line 2523
    iput v3, v0, Landroid/graphics/Rect;->left:I

    .line 2524
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorLeft:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 2525
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicatorTop:I

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSettingsButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 2526
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2527
    const/4 v1, 0x1

    .line 2529
    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 1490
    new-instance v0, Lcom/sec/android/app/twlauncher/AppMenu;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;-><init>(Landroid/content/Context;I)V

    .line 1491
    .local v0, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1493
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1494
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1495
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditMenuBg:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1496
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    .line 1502
    :goto_0
    return-object v0

    .line 1498
    :cond_0
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1499
    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1500
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEnabledChildAnimation(Z)V

    goto :goto_0
.end method

.method private snapToDestination()V
    .locals 1

    .prologue
    .line 999
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1000
    return-void
.end method

.method private updateMenu()V
    .locals 23

    .prologue
    .line 1552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-object v3, v0

    .line 1553
    .local v3, adapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    if-nez v3, :cond_1

    .line 1733
    :cond_0
    :goto_0
    return-void

    .line 1554
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v5

    .line 1555
    .local v5, appNum:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move v14, v0

    .line 1556
    .local v14, mode:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v10, v0

    .line 1557
    .local v10, launcher:Lcom/sec/android/app/twlauncher/Launcher;
    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v6

    .line 1559
    .local v6, appShortcutZone:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->removeAllViews()V

    .line 1561
    const/16 v20, 0x2

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 1562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDeleteIcon:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mEditTopBg:Landroid/graphics/Bitmap;

    move-object/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1564
    const/16 v20, 0x1

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    .line 1571
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1572
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->invalidate()V

    .line 1574
    if-lez v5, :cond_0

    .line 1576
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 1578
    .local v18, topApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/16 v20, 0x1

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 1579
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 1580
    .local v11, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1582
    const/4 v7, 0x0

    .local v7, i:I
    :goto_2
    if-ge v7, v5, :cond_4

    .line 1583
    invoke-virtual {v3, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1584
    .local v8, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v20, v0

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_3

    .line 1585
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1582
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1566
    .end local v7           #i:I
    .end local v8           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v18           #topApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_2
    const/16 v20, 0x0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 1567
    const/16 v20, 0x0

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditBg(Landroid/graphics/Bitmap;)V

    .line 1568
    const/16 v20, 0x0

    move-object v0, v6

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEnabledChildAnimation(Z)V

    goto :goto_1

    .line 1588
    .restart local v7       #i:I
    .restart local v8       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v11       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .restart local v18       #topApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    :cond_3
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1591
    .end local v8           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_4
    new-instance v13, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 1592
    .local v13, listview:Landroid/widget/ListView;
    new-instance v12, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getContext()Landroid/content/Context;

    move-result-object v20

    move-object v0, v12

    move-object/from16 v1, v20

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    .line 1593
    .local v12, listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;
    sget-object v20, Lcom/sec/android/app/twlauncher/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;->sort(Ljava/util/Comparator;)V

    .line 1594
    invoke-virtual {v13, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1596
    new-instance v20, Landroid/view/ViewGroup$LayoutParams;

    const/16 v21, -0x1

    const/16 v22, -0x1

    invoke-direct/range {v20 .. v22}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, p0

    move-object v1, v13

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1598
    new-instance v20, Lcom/sec/android/app/twlauncher/MenuManager$2;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager$2;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1609
    new-instance v20, Lcom/sec/android/app/twlauncher/MenuManager$3;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager$3;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;)V

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 1622
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1623
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1625
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1626
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1627
    .local v17, size:I
    const/4 v7, 0x0

    :goto_4
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 1628
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1629
    .local v19, topInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1627
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 1631
    .end local v19           #topInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0

    .line 1636
    .end local v7           #i:I
    .end local v11           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    .end local v12           #listadapter:Lcom/sec/android/app/twlauncher/ApplicationsListAdapter;
    .end local v13           #listview:Landroid/widget/ListView;
    .end local v17           #size:I
    :cond_6
    const/16 v20, 0x0

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->setNotifyOnChange(Z)V

    .line 1637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 1638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    move-object/from16 v20, v0

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->sort(Ljava/util/Comparator;)V

    .line 1641
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_5
    if-ge v7, v5, :cond_d

    .line 1642
    invoke-virtual {v3, v7}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1643
    .restart local v8       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/16 v20, 0x2

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1644
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    move/from16 v20, v0

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_8

    .line 1645
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1641
    :cond_7
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1649
    :cond_8
    const/4 v15, 0x0

    .line 1650
    .local v15, page:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    move/from16 v20, v0

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 1651
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v15

    .line 1653
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1654
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1659
    :goto_7
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1660
    .local v4, app:Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1661
    invoke-virtual {v15, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1663
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    .line 1664
    .local v9, itemCount:I
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v9, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 1665
    const/16 v20, 0x1

    sub-int v20, v9, v20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    goto :goto_6

    .line 1656
    .end local v4           #app:Landroid/view/View;
    .end local v9           #itemCount:I
    :cond_9
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v15

    goto :goto_7

    .line 1668
    .end local v15           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_a
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1669
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1670
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1672
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v20, v0

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_b

    .line 1673
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1677
    :cond_b
    const/4 v15, 0x0

    .line 1678
    .restart local v15       #page:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    move/from16 v20, v0

    const v21, 0xffff

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 1679
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v15

    .line 1681
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    .line 1682
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1684
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTempPage:I

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1685
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1687
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v8

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    .line 1692
    :goto_8
    move-object/from16 v0, p0

    move v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 1693
    .restart local v4       #app:Landroid/view/View;
    invoke-virtual {v4, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1694
    invoke-virtual {v15, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1696
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v9

    .line 1697
    .restart local v9       #itemCount:I
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    move/from16 v20, v0

    const/16 v21, 0x1

    sub-int v21, v9, v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_7

    .line 1698
    const/16 v20, 0x1

    sub-int v20, v9, v20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    .line 1699
    const/16 v20, 0x1

    sub-int v20, v9, v20

    move/from16 v0, v20

    move-object v1, v8

    iput v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1700
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object v1, v8

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->isUpdated:Z

    goto/16 :goto_6

    .line 1689
    .end local v4           #app:Landroid/view/View;
    .end local v9           #itemCount:I
    :cond_c
    move-object v0, v8

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getEmptyPageView(I)Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v15

    goto :goto_8

    .line 1705
    .end local v8           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v15           #page:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_d
    const/16 v20, 0x2

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_e

    .line 1706
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1709
    :cond_e
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->clearApplications()V

    .line 1710
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 1711
    .restart local v17       #size:I
    const/4 v7, 0x0

    :goto_9
    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_10

    .line 1712
    move-object/from16 v0, v18

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1713
    .restart local v19       #topInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const/16 v20, 0x2

    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_f

    .line 1714
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    move/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    .line 1711
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1716
    :cond_f
    move-object/from16 v0, v19

    iget v0, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    move/from16 v20, v0

    move-object v0, v6

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->updateApplication(Lcom/sec/android/app/twlauncher/ApplicationInfo;I)V

    goto :goto_a

    .line 1719
    .end local v19           #topInfo:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_10
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1721
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v16

    .line 1722
    .local v16, pageNum:I
    if-lez v16, :cond_12

    .line 1723
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v20, v0

    move/from16 v0, v20

    move/from16 v1, v16

    if-lt v0, v1, :cond_11

    .line 1724
    const/16 v20, 0x1

    sub-int v20, v16, v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1725
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v21

    mul-int v20, v20, v21

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1732
    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/app/twlauncher/Launcher;->updateWorkspaceBadge()V

    goto/16 :goto_0

    .line 1728
    :cond_12
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 1729
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    goto :goto_b
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 1279
    const/4 v0, 0x1

    return v0
.end method

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
    .line 2452
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2454
    .local v0, N:I
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    invoke-virtual {v4, v5}, Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;->setMode(I)V

    .line 2455
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2456
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2457
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrderComparator:Lcom/sec/android/app/twlauncher/LauncherModel$ApplicationInfoComparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 2459
    .local v2, index:I
    if-gez v2, :cond_0

    .line 2460
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 2462
    :cond_0
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 2455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2465
    .end local v2           #index:I
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v4, :cond_2

    .line 2466
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2467
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

    .line 2096
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2097
    .local v0, childCount:I
    if-le v0, v3, :cond_4

    .line 2098
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v1

    .line 2099
    .local v1, currentScreen:I
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2100
    const/16 v2, 0x11

    if-ne p2, v2, :cond_2

    .line 2101
    if-lez v1, :cond_1

    .line 2102
    sub-int v2, v1, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    .line 2116
    .end local v1           #currentScreen:I
    :cond_0
    :goto_0
    return-void

    .line 2103
    .restart local v1       #currentScreen:I
    :cond_1
    if-nez v1, :cond_0

    .line 2104
    sub-int v2, v0, v3

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2106
    :cond_2
    const/16 v2, 0x42

    if-ne p2, v2, :cond_0

    .line 2107
    sub-int v2, v0, v3

    if-ge v1, v2, :cond_3

    .line 2108
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2109
    :cond_3
    sub-int v2, v0, v3

    if-ne v1, v2, :cond_0

    .line 2110
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;I)V

    goto :goto_0

    .line 2114
    .end local v1           #currentScreen:I
    :cond_4
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 11
    .parameter "v"
    .parameter "index"

    .prologue
    .line 1846
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v8

    .line 1847
    .local v8, screen:I
    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1848
    .local v6, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1849
    .local v3, count:I
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1850
    .local v5, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 1851
    .local v7, pos:I
    if-gez v7, :cond_1

    .line 1852
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v10, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v5

    .line 1853
    if-nez v5, :cond_0

    const/4 v10, 0x0

    .line 1881
    :goto_0
    return-object v10

    .line 1854
    :cond_0
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v7

    .line 1857
    :cond_1
    invoke-virtual {p0, v7, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1858
    .local v0, addView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1860
    if-ge v3, p2, :cond_3

    .line 1861
    invoke-virtual {v6, v0}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;)V

    .line 1865
    :goto_1
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1866
    iget v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v3, v10, :cond_2

    .line 1867
    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-virtual {v6, v10}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1868
    .local v9, shiftView:Landroid/view/View;
    invoke-virtual {v6, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1869
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 1873
    .end local v9           #shiftView:Landroid/view/View;
    :cond_2
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v3, :cond_4

    iget v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v4, v10, :cond_4

    .line 1874
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1875
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1876
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const v10, 0xffff

    iput v10, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1877
    iput v8, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1878
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1873
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1863
    .end local v1           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v2           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_3
    invoke-virtual {v6, v0, p2}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    goto :goto_1

    .restart local v4       #i:I
    :cond_4
    move-object v10, v0

    .line 1881
    goto :goto_0
.end method

.method public animateClose()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1162
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1163
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1164
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1165
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    mul-int/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1168
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v3, v6}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1170
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1171
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1172
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1171
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1174
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeOut:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1175
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1176
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundClose()V

    .line 1177
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1178
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1179
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v3

    invoke-virtual {v3, v5, v6}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1180
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1181
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1184
    :cond_2
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1185
    .local v0, child:Landroid/view/ViewGroup;
    if-eqz v0, :cond_3

    .line 1186
    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1187
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuCloseAnimationController;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1188
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1190
    :cond_3
    return-void
.end method

.method public animateOpen()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1129
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v5, v8}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1131
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1132
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1133
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1132
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1136
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1137
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAniFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1138
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1139
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1140
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1141
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v5

    invoke-virtual {v5, v7, v7}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1142
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 1143
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1145
    :cond_1
    iput-boolean v7, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1147
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1148
    .local v0, child:Landroid/view/ViewGroup;
    if-eqz v0, :cond_2

    .line 1149
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAni:Lcom/sec/android/app/twlauncher/MenuManager$MenuOpenAnimationController;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1150
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1153
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v4

    .line 1154
    .local v4, width:I
    if-eqz v4, :cond_4

    .line 1155
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 1156
    .local v3, scroller:Landroid/widget/Scroller;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1157
    :cond_3
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v4

    invoke-virtual {p0, v5, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 1159
    .end local v3           #scroller:Landroid/widget/Scroller;
    :cond_4
    return-void
.end method

.method clearChildrenCache()V
    .locals 4

    .prologue
    .line 1082
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1083
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1084
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1085
    .local v2, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1083
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1088
    .end local v2           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 1215
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1216
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1217
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1219
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1221
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1222
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1223
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1226
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1227
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1228
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1229
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1230
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1232
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->setShowIndicator()V

    .line 1233
    return-void
.end method

.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 913
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v1, v5, :cond_0

    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 914
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 915
    :cond_1
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 962
    :cond_2
    :goto_0
    return-void

    .line 919
    :cond_3
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 920
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 921
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollY:I

    .line 923
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 932
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0

    .line 933
    .end local v0           #count:I
    :cond_4
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-eq v1, v4, :cond_2

    .line 934
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 935
    .restart local v0       #count:I
    const/4 v1, 0x0

    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v3, v0, v5

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 951
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v1, v5, :cond_5

    .line 952
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/PageIndicator;->hide()V

    .line 955
    :cond_5
    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 956
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 957
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->postInvalidate()V

    goto :goto_0
.end method

.method public discardMenuEdit()Lcom/sec/android/app/twlauncher/ApplicationsAdapter;
    .locals 4

    .prologue
    .line 2506
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getCount()I

    move-result v0

    .line 2507
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2508
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2509
    .local v2, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->topNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 2510
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->pageNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 2511
    iget v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->cellNum:I

    iput v3, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 2507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2514
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

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 357
    .local v0, childCount:I
    if-gtz v0, :cond_1

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 359
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

    .line 361
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v8

    invoke-virtual {v8, v12}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 362
    sub-int v8, v0, v11

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v9

    mul-int v7, v8, v9

    .line 364
    .local v7, maxScrollX:I
    if-le v0, v11, :cond_2

    .line 365
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-gez v8, :cond_7

    .line 366
    sub-int v8, v0, v11

    iput v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 372
    :cond_2
    :goto_1
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mEnablePageIndicatorShowHide:Z

    if-eqz v8, :cond_5

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    if-eqz v8, :cond_5

    .line 373
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 374
    :cond_3
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    if-nez v8, :cond_4

    .line 375
    new-instance v8, Lcom/sec/android/app/twlauncher/MenuManager$1;

    invoke-direct {v8, p0}, Lcom/sec/android/app/twlauncher/MenuManager$1;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    .line 382
    :cond_4
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 383
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mHideIndicator:Ljava/lang/Runnable;

    const-wide/16 v9, 0x3e8

    invoke-virtual {p0, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 386
    :cond_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    if-eq v8, v11, :cond_8

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_8

    move v5, v11

    .line 388
    .local v5, fastDraw:Z
    :goto_2
    if-eqz v5, :cond_9

    .line 389
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-ge v8, v0, :cond_6

    .line 390
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v9

    invoke-virtual {p0, p1, v8, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 429
    :cond_6
    :goto_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v8, v11, :cond_0

    .line 430
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawPageIndicator(Landroid/graphics/Canvas;)V

    .line 432
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->drawSettingButton(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 367
    .end local v5           #fastDraw:Z
    :cond_7
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lt v8, v0, :cond_2

    .line 368
    iput v12, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_1

    :cond_8
    move v5, v12

    .line 386
    goto :goto_2

    .line 392
    .restart local v5       #fastDraw:Z
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDrawingTime()J

    move-result-wide v3

    .line 395
    .local v3, drawingTime:J
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    sub-int v2, v8, v9

    .line 396
    .local v2, diff:I
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ltz v8, :cond_a

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    if-ge v8, v0, :cond_a

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v11, :cond_b

    .line 410
    :cond_a
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 411
    .local v1, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4
    if-ge v6, v1, :cond_6

    .line 412
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 411
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 401
    .end local v1           #count:I
    .end local v6           #i:I
    :cond_b
    if-lez v2, :cond_d

    .line 402
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v9, v0, v11

    if-ge v8, v9, :cond_c

    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 406
    :cond_c
    :goto_5
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 407
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0, p1, v8, v3, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_3

    .line 404
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
    .locals 7
    .parameter "event"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 2534
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 2535
    .local v2, y:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2536
    .local v0, action:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    if-eq v3, v4, :cond_0

    .line 2538
    packed-switch v0, :pswitch_data_0

    .line 2558
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    :goto_1
    return v3

    .line 2540
    :pswitch_0
    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonArea(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2541
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    goto :goto_0

    .line 2545
    :pswitch_1
    iget-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    if-eqz v3, :cond_0

    invoke-direct {p0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonArea(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2546
    iput-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->isSettingsButtonTouched:Z

    .line 2547
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMode()I

    move-result v3

    if-ne v3, v6, :cond_1

    .line 2548
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->menusave()V

    .line 2549
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    :goto_2
    move v3, v4

    .line 2553
    goto :goto_1

    .line 2551
    :cond_1
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->setMode(I)V

    goto :goto_2

    .line 2538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/4 v3, 0x1

    .line 2120
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2121
    .local v0, childCount:I
    if-le v0, v3, :cond_1

    .line 2122
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 2123
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-nez v1, :cond_1

    .line 2124
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2134
    :goto_0
    return v1

    .line 2127
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 2128
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int v2, v0, v3

    if-ne v1, v2, :cond_1

    .line 2129
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    move v1, v3

    .line 2130
    goto :goto_0

    .line 2134
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

    .line 1049
    if-le p1, p2, :cond_0

    .line 1050
    move p1, p2

    .line 1051
    move p2, p1

    .line 1054
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1055
    .local v1, count:I
    const/4 v0, -0x1

    .line 1056
    .local v0, cached:I
    if-le v1, v5, :cond_1

    .line 1057
    if-gez p1, :cond_2

    .line 1058
    sub-int v0, v1, v5

    .line 1059
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1060
    .local v3, layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1061
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    .line 1070
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_1
    :goto_0
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1071
    sub-int v4, v1, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1073
    move v2, p1

    .local v2, i:I
    :goto_1
    if-gt v2, p2, :cond_4

    .line 1074
    if-ne v0, v2, :cond_3

    .line 1073
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1062
    .end local v2           #i:I
    :cond_2
    if-lt p2, v1, :cond_1

    .line 1063
    const/4 v0, 0x0

    .line 1064
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1065
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1066
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_0

    .line 1075
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    .restart local v2       #i:I
    :cond_3
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1076
    .restart local v3       #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1077
    invoke-virtual {v3, v5}, Lcom/sec/android/app/twlauncher/AppMenu;->setChildrenDrawingCacheEnabled(Z)V

    goto :goto_2

    .line 1079
    .end local v3           #layout:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_4
    return-void
.end method

.method public getAnimateStatus()Z
    .locals 1

    .prologue
    .line 1266
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    return v0
.end method

.method public getCurrentScreen()I
    .locals 1

    .prologue
    .line 2143
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    return v0
.end method

.method public getDragAnimationXOffset(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 1465
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v0, :cond_0

    .line 1466
    const/4 v0, 0x0

    .line 1468
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    goto :goto_0
.end method

.method getDropScreen()I
    .locals 1

    .prologue
    .line 1786
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

    .line 1790
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v9

    invoke-virtual {p0, v9}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1791
    .local v0, appMenu:Lcom/sec/android/app/twlauncher/AppMenu;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildWidth()I

    move-result v4

    .line 1792
    .local v4, childWidth:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildHeight()I

    move-result v3

    .line 1793
    .local v3, childHeight:I
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getLRPadding()I

    move-result v6

    .line 1796
    .local v6, padding:I
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 1797
    .local v7, r:Landroid/graphics/Rect;
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getHitRect(Landroid/graphics/Rect;)V

    .line 1799
    iget v9, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/AppMenu;->getTop()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, v7, Landroid/graphics/Rect;->top:I

    .line 1801
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .line 1803
    .local v5, col:I
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    const/16 v10, 0x14

    if-ne v9, v10, :cond_3

    .line 1804
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-ne v9, v11, :cond_2

    .line 1805
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    add-int/lit8 v8, v9, 0x1

    .line 1813
    .local v8, row:I
    :goto_0
    invoke-virtual {v7, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1814
    iget v9, v7, Landroid/graphics/Rect;->left:I

    sub-int v9, p1, v9

    sub-int p1, v9, v6

    .line 1815
    iget v9, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, v9

    .line 1817
    if-gez p1, :cond_4

    const/4 p1, 0x0

    move v1, p1

    .line 1818
    .local v1, cellX:I
    :goto_1
    div-int v2, p2, v3

    .line 1820
    .local v2, cellY:I
    sub-int v9, v5, v11

    if-le v1, v9, :cond_0

    sub-int v1, v5, v11

    .line 1821
    :cond_0
    sub-int v9, v8, v11

    if-le v2, v9, :cond_1

    sub-int v2, v8, v11

    .line 1823
    :cond_1
    mul-int v9, v2, v5

    add-int/2addr v9, v1

    .line 1825
    .end local v1           #cellX:I
    .end local v2           #cellY:I
    :goto_2
    return v9

    .line 1807
    .end local v8           #row:I
    :cond_2
    iget v9, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    sub-int v8, v9, v11

    .restart local v8       #row:I
    goto :goto_0

    .line 1810
    .end local v8           #row:I
    :cond_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mColumnNum:I

    .restart local v8       #row:I
    goto :goto_0

    .line 1817
    :cond_4
    div-int v9, p1, v4

    move v1, v9

    goto :goto_1

    .line 1825
    :cond_5
    const/4 v9, -0x1

    goto :goto_2
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 1262
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    return v0
.end method

.method getMovePinch()I
    .locals 1

    .prologue
    .line 1829
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    return v0
.end method

.method getPageIndicatorArea(II)I
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 562
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

    .line 965
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getMeasuredWidth()I

    move-result v3

    .line 966
    .local v3, screenWidth:I
    const/4 v5, 0x0

    .line 967
    .local v5, whichScreen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 968
    .local v1, count:I
    iget v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    .line 977
    .local v4, scrollX:I
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 978
    .local v2, cv:Landroid/view/View;
    if-eqz v2, :cond_0

    .line 980
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v7

    sub-int v0, v6, v7

    .line 981
    .local v0, availableToScroll:I
    if-gez v4, :cond_1

    .line 982
    const/4 v5, 0x0

    .line 995
    .end local v0           #availableToScroll:I
    :cond_0
    :goto_0
    return v5

    .line 983
    .restart local v0       #availableToScroll:I
    :cond_1
    if-gtz v0, :cond_2

    .line 984
    sub-int v5, v1, v8

    goto :goto_0

    .line 986
    :cond_2
    if-lez v3, :cond_3

    .line 987
    div-int/lit8 v6, v3, 0x2

    add-int/2addr v6, v4

    div-int v5, v6, v3

    goto :goto_0

    .line 989
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public isClosing()Z
    .locals 1

    .prologue
    .line 2288
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    return v0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1236
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
    .line 1274
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1275
    return-void
.end method

.method public makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "index"
    .parameter "parent"

    .prologue
    .line 1524
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1525
    .local v4, res:Landroid/content/res/Resources;
    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 1526
    .local v1, config:Landroid/content/res/Configuration;
    const/4 v3, -0x1

    .line 1528
    .local v3, oldOrientation:I
    iget v5, v1, Landroid/content/res/Configuration;->orientation:I

    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    if-eq v5, v6, :cond_0

    .line 1529
    iget v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1530
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOrientation:I

    iput v5, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1532
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1533
    .local v2, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1536
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6, p2}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1538
    .local v0, app:Landroid/view/View;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 1539
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1540
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1542
    const/4 v5, -0x1

    if-eq v3, v5, :cond_1

    .line 1543
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 1544
    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    iput v3, v1, Landroid/content/res/Configuration;->orientation:I

    .line 1545
    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1548
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v0
.end method

.method public onDragEnd()V
    .locals 0

    .prologue
    .line 1446
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
    .line 1285
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
    .line 1290
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
    .line 1295
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

    .line 1296
    :cond_0
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1382
    :goto_0
    return-void

    .line 1300
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    .line 1301
    .local v21, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mPoint:[I

    move-object/from16 v20, v0

    .line 1303
    .local v20, point:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v23

    .line 1304
    .local v23, target:Landroid/view/View;
    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1306
    move-object/from16 v0, v21

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1308
    move-object/from16 v0, v23

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v15, v0

    .line 1309
    .local v15, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getIndexOfCell(II)I

    move-result v16

    .line 1310
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

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1312
    .local v24, v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1313
    .local v19, parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_3

    .line 1314
    move-object v0, v15

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeItem(Landroid/view/View;I)V

    .line 1342
    :goto_1
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1358
    .end local v19           #parent:Landroid/view/View;
    .end local v24           #v:Landroid/view/View;
    :cond_2
    :goto_2
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    goto :goto_0

    .line 1316
    .restart local v19       #parent:Landroid/view/View;
    .restart local v24       #v:Landroid/view/View;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1318
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1319
    .local v17, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->makeItemView(Lcom/sec/android/app/twlauncher/ApplicationInfo;)Landroid/view/View;

    move-result-object v12

    .line 1321
    .local v12, addView:Landroid/view/View;
    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getVisibleChildCount()I

    move-result v3

    invoke-virtual {v15}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 1322
    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->arrangeItem(I)V

    .line 1325
    :cond_4
    move-object v0, v15

    move-object v1, v12

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v22

    .line 1326
    .local v22, shiftView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1328
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1329
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    .line 1330
    .local v4, animationView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1331
    const/4 v3, 0x4

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1333
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1334
    .local v18, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v3, 0x0

    move-object/from16 v0, v18

    move v1, v3

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/AppMenu;->cellToPoint(I[I)V

    .line 1335
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

    .line 1340
    .end local v4           #animationView:Landroid/view/View;
    .end local v18           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    :cond_5
    move-object v0, v12

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_1

    .line 1343
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

    .line 1344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1345
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1346
    .restart local v19       #parent:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1347
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-nez v3, :cond_2

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 1348
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeItem(Landroid/view/View;)V

    .line 1349
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1350
    .local v13, dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1352
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1353
    .local v14, dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1354
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1355
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    goto/16 :goto_2

    .line 1361
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

    .line 1362
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

    .line 1363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v24, v0

    .line 1364
    .restart local v24       #v:Landroid/view/View;
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/View;

    .line 1365
    .restart local v19       #parent:Landroid/view/View;
    move-object/from16 v0, v19

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_9

    .line 1366
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1367
    .restart local v15       #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v15

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1371
    .end local v15           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1372
    .restart local v13       #dragView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1375
    .restart local v18       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v14

    .line 1376
    .restart local v14       #dropIndex:I
    move-object/from16 v0, v18

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1377
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1378
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1380
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

    .line 1369
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
    .line 1449
    instance-of v3, p2, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    if-eqz v3, :cond_1

    .line 1450
    move-object v0, p2

    check-cast v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-object v2, v0

    .line 1451
    .local v2, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1452
    invoke-virtual {v2, p1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1453
    iget v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->setEditIndex(I)V

    .line 1462
    .end local v2           #shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :cond_0
    :goto_0
    return-void

    .line 1455
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1456
    .local v1, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-eqz v1, :cond_0

    .line 1457
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1458
    invoke-virtual {v1, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1459
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
    .line 1386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    if-nez v3, :cond_1

    .line 1426
    :cond_0
    :goto_0
    return-void

    .line 1388
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragRect:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    .line 1390
    .local v19, r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v20

    .line 1391
    .local v20, shortcut:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 1393
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1395
    .local v16, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Landroid/view/ViewGroup;

    .line 1396
    .local v17, parent:Landroid/view/ViewGroup;
    if-eqz v17, :cond_0

    .line 1398
    const/4 v3, 0x2

    move v0, v3

    new-array v0, v0, [I

    move-object/from16 v18, v0

    .line 1400
    .local v18, point:[I
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_2

    .line 1401
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

    .line 1404
    :cond_2
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    if-eq v0, v1, :cond_5

    .line 1405
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getIndexOfCell(II)I

    move-result v15

    .line 1406
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

    .line 1408
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    move-object/from16 v21, v0

    .line 1409
    .local v21, v:Landroid/view/View;
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move v3, v0

    if-eqz v3, :cond_6

    .line 1410
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/twlauncher/AppShortcutZone;

    .line 1411
    .local v14, handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    move-object v0, v14

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->removeItem(Landroid/view/View;)I

    .line 1415
    .end local v14           #handle:Lcom/sec/android/app/twlauncher/AppShortcutZone;
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->addItem(Landroid/view/View;I)Landroid/view/View;

    move-result-object v13

    .line 1416
    .local v13, dropView:Landroid/view/View;
    const/4 v3, 0x4

    invoke-virtual {v13, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->indexOfChild(Landroid/view/View;)I

    move-result v12

    .line 1418
    .local v12, dropCell:I
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/AppMenu;->setEditIndex(I)V

    .line 1419
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1422
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

    .line 1423
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

    .line 1413
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

    .line 1433
    if-eqz p2, :cond_1

    .line 1434
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->addBlankPage()V

    .line 1439
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragView:Landroid/view/View;

    .line 1440
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragCell:I

    .line 1441
    iput v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDropCell:I

    .line 1442
    return-void

    .line 1436
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
    .line 570
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 571
    const/16 v16, 0x1

    .line 747
    :goto_0
    return v16

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mAnimating:Z

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 575
    const/16 v16, 0x1

    goto :goto_0

    .line 578
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

    .line 592
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    .line 593
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 595
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 597
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 598
    .local v3, action:I
    const/16 v16, 0x2

    move v0, v3

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 599
    const/16 v16, 0x1

    goto :goto_0

    .line 603
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 604
    .local v6, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 605
    .local v11, y:F
    const/4 v12, 0x0

    .local v12, y1:I
    const/4 v13, 0x0

    .local v13, y2:I
    const/4 v7, 0x0

    .local v7, x1:I
    const/4 v8, 0x0

    .line 607
    .local v8, x2:I
    sparse-switch v3, :sswitch_data_0

    .line 745
    :cond_5
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v16, v0

    if-eqz v16, :cond_13

    const/16 v16, 0x1

    move/from16 v4, v16

    .local v4, ret:Z
    :goto_2
    move/from16 v16, v4

    .line 747
    goto :goto_0

    .line 618
    .end local v4           #ret:Z
    :sswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 619
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 620
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 621
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 622
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 624
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

    .line 627
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

    .line 629
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_8

    .line 630
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 631
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    .line 633
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 640
    :cond_8
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 644
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

    .line 649
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

    .line 653
    .local v14, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v5, v0

    .line 654
    .local v5, touchSlop:I
    if-le v9, v5, :cond_b

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 655
    .local v10, xMoved:Z
    :goto_3
    if-le v14, v5, :cond_c

    const/16 v16, 0x1

    move/from16 v15, v16

    .line 657
    .local v15, yMoved:Z
    :goto_4
    if-nez v10, :cond_a

    if-eqz v15, :cond_e

    .line 659
    :cond_a
    if-eqz v10, :cond_d

    .line 661
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 654
    .end local v10           #xMoved:Z
    .end local v15           #yMoved:Z
    :cond_b
    const/16 v16, 0x0

    move/from16 v10, v16

    goto :goto_3

    .line 655
    .restart local v10       #xMoved:Z
    :cond_c
    const/16 v16, 0x0

    move/from16 v15, v16

    goto :goto_4

    .line 665
    .restart local v15       #yMoved:Z
    :cond_d
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 668
    :cond_e
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 676
    .end local v5           #touchSlop:I
    .end local v9           #xDiff:I
    .end local v10           #xMoved:Z
    .end local v14           #yDiff:I
    .end local v15           #yMoved:Z
    :sswitch_1
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 677
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 679
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

    .line 685
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

    .line 693
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->clearChildrenCache()V

    .line 694
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    .line 696
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 697
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 698
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

    .line 700
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMovePinch:I

    move/from16 v16, v0

    const/16 v17, 0x64

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 701
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->drawOpenAnimation()V

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/sec/android/app/twlauncher/Launcher;->openQuickViewMainMenu()V

    goto/16 :goto_1

    .line 720
    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    .line 724
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v12, v0

    .line 725
    const/16 v16, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v7, v0

    .line 726
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v13, v0

    .line 727
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v16

    move/from16 v0, v16

    float-to-int v0, v0

    move v8, v0

    .line 729
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mMultiTouchUsed:Z

    .line 730
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

    .line 745
    :cond_13
    const/16 v16, 0x0

    move/from16 v4, v16

    goto/16 :goto_2

    .line 607
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_2
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x105 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, childLeft:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v3

    .line 329
    .local v3, count:I
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mTopOffset:I

    .line 330
    .local v5, topPadding:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 331
    const/4 v5, 0x0

    .line 334
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 335
    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 336
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-eq v6, v7, :cond_1

    .line 337
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 338
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

    .line 339
    add-int/2addr v1, v2

    .line 334
    .end local v2           #childWidth:I
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    .end local v0           #child:Landroid/view/View;
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->initPageIndicator()V

    .line 345
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    const-string v8, "Menulayout can only be used in EXACTLY mode."

    .line 294
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 296
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 297
    .local v3, width:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 298
    .local v4, widthMode:I
    if-eq v4, v7, :cond_0

    .line 299
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 302
    :cond_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 303
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mRightOffset:I

    sub-int/2addr v3, v5

    .line 304
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 307
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 308
    .local v1, heightMode:I
    if-eq v1, v7, :cond_2

    .line 309
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Menulayout can only be used in EXACTLY mode."

    invoke-direct {v5, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 313
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 314
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 315
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 318
    :cond_3
    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mFirstLayout:Z

    if-eqz v5, :cond_4

    .line 319
    iget v5, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    mul-int/2addr v5, v3

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 322
    :cond_4
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 2079
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 2081
    iget v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 2082
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2087
    .local v1, focusableScreen:I
    :goto_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2088
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    .line 2091
    .end local v0           #child:Landroid/view/View;
    .end local v1           #focusableScreen:I
    :cond_0
    const/4 v2, 0x0

    return v2

    .line 2084
    :cond_1
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .restart local v1       #focusableScreen:I
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter "ev"

    .prologue
    .line 753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 754
    const/16 v21, 0x1

    .line 908
    :goto_0
    return v21

    .line 757
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    .line 758
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 760
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 762
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    .line 763
    .local v3, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v15

    .line 764
    .local v15, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    .line 766
    .local v18, y:F
    packed-switch v3, :pswitch_data_0

    .line 908
    :cond_2
    :goto_1
    const/16 v21, 0x1

    goto :goto_0

    .line 773
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->isFinished()Z

    move-result v21

    if-nez v21, :cond_3

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/widget/Scroller;->abortAnimation()V

    .line 778
    :cond_3
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mDownX:F

    .line 779
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    .line 781
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

    .line 785
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 786
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    move/from16 v21, v0

    sub-float v21, v21, v15

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 787
    .local v7, deltaX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 788
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionY:F

    move/from16 v21, v0

    sub-float v21, v21, v18

    move/from16 v0, v21

    float-to-int v0, v0

    move v8, v0

    .line 789
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

    .line 790
    :cond_4
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    .line 797
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

    .line 799
    :cond_6
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    .line 803
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    .line 804
    .local v4, childCount:I
    const/16 v21, 0x1

    sub-int v21, v4, v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    mul-int v10, v21, v22

    .line 808
    .local v10, maxScrollX:I
    if-gez v7, :cond_8

    .line 809
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    neg-int v0, v0

    move v11, v0

    .line 810
    .local v11, minScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v11

    if-le v0, v1, :cond_2

    .line 811
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    if-lez v21, :cond_7

    .line 812
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollBy(II)V

    goto/16 :goto_1

    .line 814
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

    .line 817
    .end local v11           #minScrollX:I
    :cond_8
    if-lez v7, :cond_2

    .line 818
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 819
    .local v6, cv:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 820
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    sub-int v21, v21, v22

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v10, v21, v22

    .line 821
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move/from16 v21, v0

    move/from16 v0, v21

    move v1, v10

    if-ge v0, v1, :cond_2

    .line 822
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

    .line 830
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

    .line 835
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

    .line 839
    .local v19, yDiff:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchSlop:I

    move v12, v0

    .line 840
    .local v12, touchSlop:I
    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_b

    const/16 v21, 0x1

    move/from16 v17, v21

    .line 841
    .local v17, xMoved:Z
    :goto_2
    move/from16 v0, v19

    move v1, v12

    if-le v0, v1, :cond_c

    const/16 v21, 0x1

    move/from16 v20, v21

    .line 843
    .local v20, yMoved:Z
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v21

    if-lez v21, :cond_e

    if-nez v17, :cond_a

    if-eqz v20, :cond_e

    .line 845
    :cond_a
    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_d

    .line 849
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 840
    .end local v17           #xMoved:Z
    .end local v20           #yMoved:Z
    :cond_b
    const/16 v21, 0x0

    move/from16 v17, v21

    goto :goto_2

    .line 841
    .restart local v17       #xMoved:Z
    :cond_c
    const/16 v21, 0x0

    move/from16 v20, v21

    goto :goto_3

    .line 853
    .restart local v20       #yMoved:Z
    :cond_d
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 856
    :cond_e
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mLastMotionX:F

    goto/16 :goto_1

    .line 862
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

    .line 863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    move/from16 v21, v0

    if-eqz v21, :cond_12

    .line 864
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

    .line 865
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

    .line 866
    const/16 v21, -0x2

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 867
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x9

    sub-int v9, v21, v22

    .line 868
    if-gez v9, :cond_f

    const/4 v9, 0x0

    .line 875
    :cond_f
    :goto_4
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 877
    :cond_10
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mIsSingleTap:Z

    goto/16 :goto_1

    .line 869
    :cond_11
    const/16 v21, -0x3

    move v0, v9

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    .line 870
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v9, v21, 0x9

    .line 871
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .line 872
    .local v5, count:I
    if-lt v9, v5, :cond_f

    const/16 v21, 0x1

    sub-int v9, v5, v21

    goto :goto_4

    .line 881
    .end local v5           #count:I
    .end local v9           #index:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v13, v0

    .line 882
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

    .line 883
    invoke-virtual {v13}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move v14, v0

    .line 887
    .local v14, velocityX:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v4

    .line 888
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

    .line 890
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 898
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/view/VelocityTracker;->recycle()V

    .line 899
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 901
    .end local v4           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :cond_13
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 891
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

    .line 893
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    move/from16 v21, v0

    add-int/lit8 v21, v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    goto :goto_5

    .line 895
    :cond_15
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToDestination()V

    goto :goto_5

    .line 905
    .end local v4           #childCount:I
    .end local v13           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v14           #velocityX:I
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/MenuManager;->mTouchState:I

    goto/16 :goto_1

    .line 766
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

    .line 1193
    iput-boolean v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mIsClosing:Z

    .line 1194
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuCloseAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1195
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMenuOpenAnimationListener:Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;

    invoke-interface {v2}, Lcom/sec/android/app/twlauncher/MenuManager$InterruptableAnimationListener;->interrupt()V

    .line 1197
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {v2, v3}, Lcom/sec/android/app/twlauncher/SamsungUtils;->setWallpaperVisibility(Landroid/app/WallpaperManager;Z)V

    .line 1199
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 1200
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1201
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1203
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundImage()V

    .line 1204
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setVisibility(I)V

    .line 1205
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 1206
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->changeApplicationsIcon()V

    .line 1207
    iput-boolean v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mOpenFlag:Z

    .line 1208
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getAppShortcutZone()Lcom/sec/android/app/twlauncher/AppShortcutZone;

    move-result-object v2

    invoke-virtual {v2, v4, v3}, Lcom/sec/android/app/twlauncher/AppShortcutZone;->drawBg(ZZ)V

    .line 1209
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1210
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getTopFourZone()Lcom/sec/android/app/twlauncher/TopFourZone;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->setVisibility(I)V

    .line 1212
    :cond_1
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 2470
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2471
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 2472
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 2473
    .local v3, item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->findAppByComponent(Ljava/util/ArrayList;Lcom/sec/android/app/twlauncher/ApplicationInfo;)I

    move-result v2

    .line 2474
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 2475
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2471
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2477
    :cond_0
    const-string v4, "Launcher.MenuManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t find a match for item \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2482
    .end local v2           #index:I
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    :cond_1
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v4, :cond_2

    .line 2483
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    .line 2484
    :cond_2
    return-void
.end method

.method removeItem(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v1

    .line 1835
    .local v1, count:I
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/AppMenu;

    .line 1836
    .local v3, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1837
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1838
    .local v0, child:Landroid/view/View;
    if-ne v0, v3, :cond_1

    .line 1839
    invoke-virtual {v3, p1}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1843
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void

    .line 1836
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
    .line 2068
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 2069
    .local v1, screen:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v0

    .line 2070
    .local v0, currentScreen:I
    if-ne v1, v0, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_1

    .line 2071
    :cond_0
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 2072
    const/4 v2, 0x1

    .line 2074
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

    .line 2148
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2149
    .local v0, count:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2150
    .local v1, screen:I
    if-le v0, v4, :cond_0

    .line 2151
    if-gez v1, :cond_3

    .line 2152
    sub-int v1, v0, v4

    .line 2153
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2160
    :cond_0
    :goto_0
    const/4 v4, -0x1

    iput v4, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 2162
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v3

    .line 2163
    .local v3, width:I
    if-eqz v3, :cond_2

    .line 2164
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    .line 2165
    .local v2, scroller:Landroid/widget/Scroller;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2166
    :cond_1
    mul-int v4, v1, v3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->scrollTo(II)V

    .line 2168
    .end local v2           #scroller:Landroid/widget/Scroller;
    :cond_2
    return-void

    .line 2154
    .end local v3           #width:I
    :cond_3
    if-lt v1, v0, :cond_0

    .line 2155
    const/4 v1, 0x0

    .line 2156
    iput v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0
.end method

.method public scrollLeft()V
    .locals 2

    .prologue
    .line 1953
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1954
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1957
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 3

    .prologue
    .line 1966
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

    .line 1968
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    .line 1971
    :cond_0
    return-void
.end method

.method public setAdapter(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 1476
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 1477
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1480
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    .line 1481
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1482
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    .line 1483
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDataSetObserver:Lcom/sec/android/app/twlauncher/MenuManager$AdapterDataSetObserver;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 1485
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1487
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
    .line 2447
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2448
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2449
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 2139
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2140
    return-void
.end method

.method public setDragger(Lcom/sec/android/app/twlauncher/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 1429
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    .line 1430
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 1472
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 1473
    return-void
.end method

.method public setMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1240
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    if-eq v0, p1, :cond_2

    .line 1241
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    .line 1242
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1244
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->computeScroll()V

    .line 1246
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    invoke-virtual {v0, p0}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1248
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->updateMenu()V

    .line 1257
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/Launcher;->saveMenuMode(I)V

    .line 1259
    :cond_2
    return-void

    .line 1250
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mDragger:Lcom/sec/android/app/twlauncher/DragController;

    check-cast v0, Lcom/sec/android/app/twlauncher/DragLayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->setDragMenuListener(Lcom/sec/android/app/twlauncher/DragController$DragListener;)V

    .line 1251
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    if-eqz v0, :cond_1

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method shiftItem(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1885
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getDropScreen()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 1886
    return-void
.end method

.method shiftItem(Landroid/view/View;I)V
    .locals 11
    .parameter "v"
    .parameter "page"

    .prologue
    .line 1889
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1890
    .local v7, pageCount:I
    const/4 v6, 0x0

    .line 1891
    .local v6, menu:Lcom/sec/android/app/twlauncher/AppMenu;
    if-gt v7, p2, :cond_1

    .line 1892
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->makeMenuView()Lcom/sec/android/app/twlauncher/AppMenu;

    move-result-object v6

    .line 1897
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1898
    .local v5, info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v8

    .line 1899
    .local v8, pos:I
    if-gez v8, :cond_3

    .line 1900
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-direct {p0, v10, v5}, Lcom/sec/android/app/twlauncher/MenuManager;->copyAdapterInfo(Lcom/sec/android/app/twlauncher/ApplicationsAdapter;Lcom/sec/android/app/twlauncher/ApplicationInfo;)Lcom/sec/android/app/twlauncher/ApplicationInfo;

    move-result-object v5

    .line 1901
    if-nez v5, :cond_2

    .line 1923
    :cond_0
    return-void

    .line 1894
    .end local v5           #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v8           #pos:I
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    check-cast v6, Lcom/sec/android/app/twlauncher/AppMenu;

    .restart local v6       #menu:Lcom/sec/android/app/twlauncher/AppMenu;
    goto :goto_0

    .line 1902
    .restart local v5       #info:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .restart local v8       #pos:I
    :cond_2
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    invoke-virtual {v10, v5}, Lcom/sec/android/app/twlauncher/ApplicationsAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v8

    .line 1904
    :cond_3
    invoke-virtual {p0, v8, v6}, Lcom/sec/android/app/twlauncher/MenuManager;->makeItemView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1905
    .local v0, addView:Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1906
    const/4 v10, 0x0

    invoke-virtual {v6, v0, v10}, Lcom/sec/android/app/twlauncher/AppMenu;->addView(Landroid/view/View;I)V

    .line 1908
    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildCount()I

    move-result v3

    .line 1909
    .local v3, count:I
    iget v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-le v3, v10, :cond_4

    .line 1910
    const/4 v10, 0x1

    sub-int v10, v3, v10

    invoke-virtual {v6, v10}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 1911
    .local v9, shiftView:Landroid/view/View;
    invoke-virtual {v6, v9}, Lcom/sec/android/app/twlauncher/AppMenu;->removeView(Landroid/view/View;)V

    .line 1912
    add-int/lit8 v10, p2, 0x1

    invoke-virtual {p0, v9, v10}, Lcom/sec/android/app/twlauncher/MenuManager;->shiftItem(Landroid/view/View;I)V

    .line 1916
    .end local v9           #shiftView:Landroid/view/View;
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_0

    iget v10, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mItemNumOfPage:I

    if-ge v4, v10, :cond_0

    .line 1917
    invoke-virtual {v6, v4}, Lcom/sec/android/app/twlauncher/AppMenu;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1918
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1919
    .local v1, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    const v10, 0xffff

    iput v10, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editTopNum:I

    .line 1920
    iput p2, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editPageNum:I

    .line 1921
    iput v4, v1, Lcom/sec/android/app/twlauncher/ApplicationInfo;->editCellNum:I

    .line 1916
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method snapToScreen(I)V
    .locals 1
    .parameter "whichScreen"

    .prologue
    .line 1003
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    invoke-virtual {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(II)V

    .line 1004
    return-void
.end method

.method snapToScreen(II)V
    .locals 10
    .parameter "whichScreen"
    .parameter "duration"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 1007
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->isListChild()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1009
    :cond_0
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->enableChildrenCache(II)V

    .line 1010
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mPageIndicator:Lcom/sec/android/app/twlauncher/PageIndicator;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/PageIndicator;->show()V

    .line 1011
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v7

    .line 1018
    .local v7, childCount:I
    sub-int v0, v7, v4

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1021
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    if-eq p1, v0, :cond_5

    move v6, v4

    .line 1023
    .local v6, changingScreens:Z
    :goto_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getFocusedChild()Landroid/view/View;

    move-result-object v8

    .line 1024
    .local v8, focusedChild:Landroid/view/View;
    if-eqz v8, :cond_2

    if-eqz v6, :cond_2

    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-ne v8, v0, :cond_2

    .line 1025
    invoke-virtual {v8}, Landroid/view/View;->clearFocus()V

    .line 1028
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getWidth()I

    move-result v0

    mul-int v9, p1, v0

    .line 1029
    .local v9, newX:I
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    sub-int v3, v9, v0

    .line 1031
    .local v3, delta:I
    if-gez p1, :cond_6

    .line 1032
    sub-int p1, v7, v4

    .line 1037
    :cond_3
    :goto_2
    iput p1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    .line 1039
    if-gez p2, :cond_4

    .line 1040
    iget p2, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mSnapToScreenDuration:I

    .line 1042
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mScrollX:I

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1043
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->invalidate()V

    .line 1045
    iget v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mNextScreen:I

    iput v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    goto :goto_0

    .end local v3           #delta:I
    .end local v6           #changingScreens:Z
    .end local v8           #focusedChild:Landroid/view/View;
    .end local v9           #newX:I
    :cond_5
    move v6, v2

    .line 1021
    goto :goto_1

    .line 1033
    .restart local v3       #delta:I
    .restart local v6       #changingScreens:Z
    .restart local v8       #focusedChild:Landroid/view/View;
    .restart local v9       #newX:I
    :cond_6
    if-lt p1, v7, :cond_3

    .line 1034
    const/4 p1, 0x0

    goto :goto_2
.end method

.method public startUpdateDB()V
    .locals 4

    .prologue
    .line 2042
    new-instance v0, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;-><init>(Lcom/sec/android/app/twlauncher/MenuManager;Lcom/sec/android/app/twlauncher/MenuManager$1;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    .line 2043
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mAdapter:Lcom/sec/android/app/twlauncher/ApplicationsAdapter;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2044
    return-void
.end method

.method public stopUpdateDB()V
    .locals 2

    .prologue
    .line 2036
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mUpdateDBTask:Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/MenuManager$UpdateDBTask;->cancel(Z)Z

    .line 2039
    :cond_0
    return-void
.end method

.method testAutoScroll()V
    .locals 3

    .prologue
    .line 2022
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 2023
    .local v0, count:I
    const/4 v2, 0x1

    if-gt v0, v2, :cond_0

    .line 2033
    :goto_0
    return-void

    .line 2025
    :cond_0
    iget v1, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mCurrentScreen:I

    .line 2026
    .local v1, nextscreen:I
    if-nez v1, :cond_1

    .line 2027
    const/4 v1, 0x1

    .line 2032
    :goto_1
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    goto :goto_0

    .line 2029
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 1270
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLocked:Z

    .line 1271
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 2488
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->removeApps(Ljava/util/ArrayList;)V

    .line 2489
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/MenuManager;->addApps(Ljava/util/ArrayList;)V

    .line 2490
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
    .line 1107
    .local p1, updatedApps:Ljava/util/List;,"Ljava/util/List<Landroid/content/ComponentName;>;"
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    .line 1109
    .local v1, badgeCache:Lcom/sec/android/app/twlauncher/BadgeCache;
    iget v8, p0, Lcom/sec/android/app/twlauncher/MenuManager;->mMode:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1

    .line 1126
    :cond_0
    return-void

    .line 1112
    :cond_1
    const/4 v7, 0x0

    .local v7, page:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v5

    .local v5, count:I
    :goto_0
    if-ge v7, v5, :cond_0

    .line 1113
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1114
    .local v3, child:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, cell:I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .local v6, count2:I
    :goto_1
    if-ge v2, v6, :cond_2

    .line 1115
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1117
    .local v4, childchild:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 1118
    .local v0, ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v8}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/Intent;)I

    move-result v8

    iput v8, v0, Lcom/sec/android/app/twlauncher/ApplicationInfo;->badgeCount:I

    .line 1120
    invoke-virtual {v4}, Landroid/view/View;->destroyDrawingCache()V

    .line 1121
    invoke-virtual {v4}, Landroid/view/View;->buildDrawingCache()V

    .line 1122
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 1114
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1112
    .end local v0           #ai:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v4           #childchild:Landroid/view/View;
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
