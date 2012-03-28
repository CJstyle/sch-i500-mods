.class public Lcom/sec/android/app/twlauncher/QuickViewWorkspace;
.super Landroid/widget/FrameLayout;
.source "QuickViewWorkspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;
    }
.end annotation


# static fields
.field private static final ADD_BTN_TAG:Ljava/lang/Object;


# instance fields
.field private mAddDrawable:Landroid/graphics/drawable/Drawable;

.field private mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

.field private mAnimationDuration:I

.field private mAnimationStartTime:J

.field private mAnimationState:I

.field private mAnimationStyle:I

.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

.field private mChildRects:[Landroid/graphics/Rect;

.field private mCurrentPage:I

.field private mCurrentRects:[Landroid/graphics/Rect;

.field private mDeleteIndex:I

.field private mDeleteView:Landroid/view/View;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private final mDragPaint:Landroid/graphics/Paint;

.field private mDragState:I

.field private mDraggingIndex:I

.field private mDraggingView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mFinishRects:[Landroid/graphics/Rect;

.field private mIsSetButtonPressed:Z

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mMovePinch:I

.field private mMovePinchStart:I

.field private mMultiTouchUsed:Z

.field private mOrientation:I

.field private mOriginDragIndex:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPinchIndex:I

.field private mPinchOutIndex:I

.field private mPinchOutProcess:Z

.field private mPressBitmap:Landroid/graphics/Bitmap;

.field private mPressedDefaultButton:I

.field private mPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

.field private mScreenBgDrawablePadding:Landroid/graphics/Rect;

.field private mScreenRect:Landroid/graphics/Rect;

.field private mSkipSetButtonAction:Z

.field private mStartRects:[Landroid/graphics/Rect;

.field private mTempRects:[Landroid/graphics/Rect;

.field private mTmpLocation:[I

.field private mTmpLocation2:[I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchedView:Landroid/view/View;

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mUseFullScreenInLandScapeMode:Z

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWorkspaceScreenCountOnOpen:I

.field private mWorkspaceScreenIndexOnOpen:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 185
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 189
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 192
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    .line 99
    sget v0, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    new-array v0, v0, [Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    .line 114
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 115
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 131
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 132
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 134
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 135
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    .line 137
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    .line 151
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDefaultButton:I

    .line 153
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mIsSetButtonPressed:Z

    .line 154
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mSkipSetButtonAction:Z

    .line 155
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPaint:Landroid/graphics/Paint;

    .line 158
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    .line 159
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    .line 161
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 162
    iput-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 172
    const/4 v0, 0x7

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1068
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    .line 1069
    new-array v0, v3, [I

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    .line 194
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->init()V

    .line 195
    return-void
.end method

.method private addScreen()V
    .locals 5

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1129
    .local v1, count:I
    const/4 v4, 0x1

    sub-int v2, v1, v4

    .line 1130
    .local v2, index:I
    if-gez v2, :cond_0

    const/4 v2, 0x0

    .line 1131
    :cond_0
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1133
    .local v0, add:Landroid/view/View;
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v3

    .line 1134
    .local v3, screen:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1136
    sget v4, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-lt v1, v4, :cond_1

    .line 1137
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1140
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onAdd()V

    .line 1141
    return-void
.end method

.method private applyDeleteZone()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1086
    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 1087
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 1088
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1089
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1090
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1092
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1093
    .local v5, scale:Landroid/graphics/Matrix;
    const/high16 v7, 0x3f80

    .line 1094
    .local v7, scaleFactor:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    move v2, v1

    .line 1096
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 1097
    return-void
.end method

.method private drop(II)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    const-string v4, "QuickViewWorkspace"

    .line 1007
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1008
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 1011
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1030
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1031
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {p0, v1, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 1032
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    .line 1034
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 1035
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1037
    invoke-direct {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 1039
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isIncludeItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1040
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->showDeleteWorkScreen()V

    .line 1066
    :goto_0
    return-void

    .line 1043
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeScreen()V

    goto :goto_0

    .line 1048
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v0

    .line 1049
    .local v0, dropedIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 1055
    const-string v1, "QuickViewWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drop index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    invoke-direct {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0

    .line 1063
    :cond_2
    const-string v1, "QuickViewWorkspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid drop index:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->swapScreen(I)V

    goto :goto_0
.end method

.method private enableWorkspaceScreensCache()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 770
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 771
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 773
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 774
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 775
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 776
    invoke-virtual {v0, v5}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 773
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 778
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 991
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 992
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 993
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 994
    iput-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 995
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 996
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 997
    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 1004
    return-void
.end method

.method private getTouchedIndex(II)I
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, -0x1

    .line 822
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v2, :cond_0

    move v2, v5

    .line 830
    :goto_0
    return v2

    .line 823
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v0, v2

    .line 824
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 825
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    if-nez v2, :cond_2

    .line 824
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 826
    :cond_2
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    add-int/2addr v4, p2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    .line 827
    goto :goto_0

    :cond_3
    move v2, v5

    .line 830
    goto :goto_0
.end method

.method private getViewLayout(I)V
    .locals 12
    .parameter

    .prologue
    .line 1553
    new-array v0, p1, [Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    .line 1556
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 1557
    invoke-static {v0}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 1558
    const-string v2, "quickviewlayout"

    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 1560
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v2

    .line 1564
    :cond_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v2, :cond_5

    :cond_1
    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    .line 1566
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1569
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1570
    const-string v4, "quickviewset"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1571
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 1572
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1573
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    .line 1574
    const/4 v4, 0x0

    .line 1576
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_4

    :cond_3
    const/4 v6, 0x1

    if-eq v5, v6, :cond_4

    .line 1577
    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    .line 1578
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "quickviewset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1594
    :cond_4
    if-eq v4, p1, :cond_0

    .line 1595
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xml item count mismatch : item "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", count "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1600
    :catch_0
    move-exception v0

    .line 1601
    const-string v1, "QuickViewWorkspace"

    const-string v2, "Got exception parsing quickviews."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1602
    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1607
    :cond_5
    :goto_1
    return-void

    .line 1581
    :cond_6
    :try_start_1
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1582
    const-string v6, "quickview"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1583
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/sec/android/app/twlauncher/R$styleable;->QuickView:[I

    invoke-virtual {v5, v1, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 1584
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 1585
    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 1586
    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1587
    const/4 v9, 0x3

    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1588
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    if-nez v10, :cond_7

    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    aput-object v11, v10, v4

    .line 1589
    :cond_7
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v10, v10, v4

    invoke-virtual {v10, v6, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1590
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1591
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 1603
    :catch_1
    move-exception v0

    .line 1604
    const-string v1, "QuickViewWorkspace"

    const-string v2, "Got exception parsing quickviews."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1605
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v6

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 200
    new-instance v6, Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    invoke-direct {v6}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;-><init>()V

    iput-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    .line 201
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    new-instance v7, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v7}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v7}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 204
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 205
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/app/twlauncher/LauncherConfig;->landscapeScreen_isUseFullScreenQuickView(Landroid/content/Context;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    .line 208
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 210
    .local v1, context:Landroid/content/Context;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 211
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v6

    iput v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 213
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070004

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 214
    .local v4, srcColor:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v4, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 216
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07000b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 217
    .local v5, srcColor2:I
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffColorFilter;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v5, v8}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 219
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget v6, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge v2, v6, :cond_0

    .line 220
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    new-instance v7, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    invoke-direct {v7, p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;-><init>(Lcom/sec/android/app/twlauncher/QuickViewWorkspace;)V

    aput-object v7, v6, v2

    .line 219
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setClipChildren(Z)V

    .line 224
    return-void
.end method

.method private isAvailableRect(Landroid/graphics/Rect;)Z
    .locals 2
    .parameter "rect"

    .prologue
    .line 1530
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_1

    .line 1534
    :cond_0
    const/4 v0, 0x0

    .line 1536
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isDeleteZone(II)Z
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1073
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 1074
    .local v0, dz:Lcom/sec/android/app/twlauncher/DeleteZone;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getDeleteAreaRect(Landroid/graphics/Rect;)V

    .line 1077
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/DeleteZone;->getLocationOnScreen([I)V

    .line 1078
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationInWindow([I)V

    .line 1079
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v3, v3, v4

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation2:[I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 1081
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method private isIncludeItem()Z
    .locals 13

    .prologue
    .line 1100
    const/4 v5, 0x0

    .line 1101
    .local v5, ret:Z
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v9}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 1103
    .local v8, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    invoke-virtual {v8, v9}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1104
    .local v4, layout:Lcom/sec/android/app/twlauncher/CellLayout;
    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v1

    .line 1106
    .local v1, childCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1107
    invoke-virtual {v4, v2}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 1108
    .local v7, view:Landroid/view/View;
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .line 1110
    .local v6, tag:Ljava/lang/Object;
    move-object v0, v6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v3, v0

    .line 1112
    .local v3, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x1

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    .line 1113
    const/4 v5, 0x0

    .line 1124
    .end local v3           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v6           #tag:Ljava/lang/Object;
    .end local v7           #view:Landroid/view/View;
    :cond_0
    :goto_1
    return v5

    .line 1117
    .restart local v3       #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v6       #tag:Ljava/lang/Object;
    .restart local v7       #view:Landroid/view/View;
    :cond_1
    iget-wide v9, v3, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v11, -0x64

    cmp-long v9, v9, v11

    if-nez v9, :cond_2

    .line 1119
    const/4 v5, 0x1

    .line 1120
    goto :goto_1

    .line 1106
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private makeAddBtn()Landroid/view/View;
    .locals 2

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    move-result-object v0

    .line 953
    .local v0, v:Landroid/view/View;
    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 954
    return-object v0
.end method

.method private makeScreen(I)Landroid/view/View;
    .locals 2
    .parameter "index"

    .prologue
    .line 958
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 959
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 961
    invoke-virtual {p0, v0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 962
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 964
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 965
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    return-object v0
.end method

.method private onAdd()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1204
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1205
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 1207
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f030013

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1208
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0, v3}, Lcom/sec/android/app/twlauncher/CellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1209
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3, v1}, Lcom/sec/android/app/twlauncher/Launcher;->getCellLayoutId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/CellLayout;->setId(I)V

    .line 1210
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/CellLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1211
    if-nez v1, :cond_0

    .line 1212
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1214
    :cond_0
    invoke-virtual {v2, v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1216
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1218
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 1219
    return-void
.end method

.method private onRemove()V
    .locals 12

    .prologue
    .line 1223
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    .line 1227
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {v5, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 1228
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildCount()I

    move-result v6

    .line 1229
    const/4 v2, 0x0

    move v7, v2

    :goto_0
    if-ge v7, v6, :cond_b

    .line 1230
    invoke-virtual {v1, v7}, Lcom/sec/android/app/twlauncher/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1231
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1233
    instance-of v2, v2, Lcom/sec/android/app/twlauncher/Folder;

    if-eqz v2, :cond_0

    .line 1229
    :goto_1
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_0

    .line 1239
    :cond_0
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v2, v0

    .line 1241
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v10

    if-nez v4, :cond_1

    .line 1298
    :goto_2
    return-void

    .line 1243
    :cond_1
    iget-wide v8, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v10, -0x64

    cmp-long v4, v8, v10

    if-nez v4, :cond_8

    .line 1244
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_4

    .line 1245
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeSamsungAppWidget(Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    .line 1264
    :cond_2
    :goto_3
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    if-eqz v3, :cond_9

    .line 1265
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    move-object v3, v0

    .line 1266
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v4, v3}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/UserFolderInfo;)V

    .line 1267
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    .line 1279
    :cond_3
    :goto_4
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v3, v2}, Lcom/sec/android/app/twlauncher/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    goto :goto_1

    .line 1246
    :cond_4
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_5

    .line 1247
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeAppWidget(Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;)V

    goto :goto_3

    .line 1248
    :cond_5
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v3, :cond_6

    .line 1249
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_3

    .line 1250
    :cond_6
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/FolderInfo;

    if-eqz v3, :cond_7

    .line 1251
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/FolderInfo;

    move-object v3, v0

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/Launcher;->removeFolder(Lcom/sec/android/app/twlauncher/FolderInfo;)V

    goto :goto_3

    .line 1253
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "What\'s that????? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_8
    instance-of v4, v3, Lcom/sec/android/app/twlauncher/UserFolder;

    if-eqz v4, :cond_2

    .line 1257
    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolder;

    .line 1258
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/UserFolder;->getInfo()Lcom/sec/android/app/twlauncher/FolderInfo;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/twlauncher/UserFolderInfo;

    .line 1261
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sec/android/app/twlauncher/UserFolderInfo;->remove(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_3

    .line 1268
    :cond_9
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    if-eqz v3, :cond_a

    .line 1269
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;

    move-object v3, v0

    .line 1270
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getAppWidgetHost()Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;

    move-result-object v4

    .line 1271
    if-eqz v4, :cond_3

    .line 1272
    iget v3, v3, Lcom/sec/android/app/twlauncher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v4, v3}, Lcom/sec/android/app/twlauncher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_4

    .line 1274
    :cond_a
    instance-of v3, v2, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    if-eqz v3, :cond_3

    .line 1275
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;

    move-object v3, v0

    .line 1276
    invoke-static {}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->getInstance()Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;

    move-result-object v4

    .line 1277
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4, v8, v3}, Lcom/sec/android/app/twlauncher/SamsungWidgetPackageManager;->destroyWidget(Landroid/app/ActivityGroup;Lcom/sec/android/app/twlauncher/SamsungAppWidgetInfo;)V

    goto/16 :goto_4

    .line 1282
    :cond_b
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {v5, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1283
    invoke-virtual {v5, v1}, Lcom/sec/android/app/twlauncher/Workspace;->removeView(Landroid/view/View;)V

    .line 1285
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1286
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1288
    const/4 v1, -0x1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 1289
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1291
    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 1292
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v2

    if-gt v1, v2, :cond_c

    .line 1293
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Workspace;->setCurrentScreen(I)V

    .line 1294
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    invoke-static {v1}, Lcom/sec/android/app/twlauncher/Launcher;->setScreen(I)V

    .line 1297
    :cond_c
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    goto/16 :goto_2
.end method

.method private onSwap(I)V
    .locals 4
    .parameter "dropedIndex"

    .prologue
    .line 1187
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    .line 1189
    .local v1, workspace:Lcom/sec/android/app/twlauncher/Workspace;
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1193
    .local v0, v:Landroid/view/View;
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v2, p1, v3}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 1195
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 1198
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateAppInfoInDatabase()V

    .line 1199
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->saveScreenInfo()V

    .line 1200
    return-void
.end method

.method private setCloseEndRect(I)V
    .locals 14
    .parameter

    .prologue
    .line 1428
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1430
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1431
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1434
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1436
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1437
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1438
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1439
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1440
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1442
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    .line 1443
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1444
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 1447
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 1448
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1449
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1450
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1452
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    array-length v11, v11

    if-eq v11, v0, :cond_1

    .line 1453
    :cond_0
    new-array v11, v0, [Landroid/graphics/Rect;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 1454
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    .line 1455
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 1454
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1459
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    sub-int v7, v5, v7

    sub-int v9, v2, v9

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    invoke-virtual {v11, v7, v9, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1465
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v2, :cond_2

    .line 1467
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sub-int v1, v6, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1470
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v1, :cond_8

    .line 1472
    :cond_3
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 1473
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setCloseEndRect : 9:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1475
    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    const/4 v1, 0x3

    .line 1477
    :goto_1
    div-int v2, p1, v1

    .line 1478
    rem-int v3, p1, v1

    .line 1480
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_a

    .line 1481
    if-ne v4, p1, :cond_5

    .line 1480
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1475
    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    .line 1483
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1484
    div-int v5, v4, v1

    .line 1485
    rem-int v6, v4, v1

    .line 1487
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    sub-int/2addr v6, v3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v6, v8

    sub-int/2addr v5, v2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v5, v8

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1490
    :cond_6
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setCloseEndRect : X"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    const/4 v1, 0x1

    sub-int v1, p1, v1

    :goto_4
    if-ltz v1, :cond_7

    .line 1493
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1494
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1492
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1497
    :cond_7
    add-int/lit8 v1, p1, 0x1

    :goto_5
    if-ge v1, v0, :cond_a

    .line 1498
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1499
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1497
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1503
    :cond_8
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setCloseEndRect : NEW:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    .line 1505
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    .line 1512
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1513
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1515
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v0, :cond_a

    .line 1516
    if-ne v5, p1, :cond_9

    .line 1515
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1517
    :cond_9
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v5

    .line 1518
    iget v7, v6, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    .line 1519
    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    .line 1521
    int-to-float v7, v7

    mul-float/2addr v7, v3

    float-to-int v7, v7

    .line 1522
    int-to-float v6, v6

    mul-float/2addr v6, v4

    float-to-int v6, v6

    .line 1523
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v5

    iget v9, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v9, v7

    iget v10, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v6

    iget v11, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v11

    iget v11, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v11

    invoke-virtual {v8, v9, v10, v7, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 1527
    :cond_a
    return-void
.end method

.method private setDeleteZoneState(Z)V
    .locals 1
    .parameter "dragOver"

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sec/android/app/twlauncher/DeleteZone;->setDragEnterForced(Z)V

    .line 1302
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->invalidate()V

    .line 1303
    return-void
.end method

.method private setOpenStartRect(I)V
    .locals 14
    .parameter

    .prologue
    .line 1328
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1330
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getLocationOnScreen([I)V

    .line 1331
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 1334
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1336
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v2, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1337
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1338
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1339
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 1340
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 1342
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    .line 1343
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    invoke-virtual {v6, v7}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1344
    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpLocation:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050004

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    add-int/2addr v6, v7

    .line 1347
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    .line 1348
    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 1349
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    .line 1350
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 1352
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    array-length v11, v11

    if-eq v11, v0, :cond_1

    .line 1353
    :cond_0
    new-array v11, v0, [Landroid/graphics/Rect;

    iput-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 1354
    const/4 v11, 0x0

    :goto_0
    if-ge v11, v0, :cond_1

    .line 1355
    iget-object v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    aput-object v13, v12, v11

    .line 1354
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1359
    :cond_1
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v11, v11, p1

    sub-int v7, v5, v7

    sub-int v9, v2, v9

    add-int/2addr v3, v5

    add-int/2addr v3, v8

    add-int/2addr v2, v4

    add-int/2addr v2, v10

    invoke-virtual {v11, v7, v9, v3, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 1366
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mUseFullScreenInLandScapeMode:Z

    if-eqz v2, :cond_2

    .line 1368
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    sub-int v1, v6, v1

    invoke-virtual {v2, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 1371
    :cond_2
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStyle:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-nez v1, :cond_8

    .line 1373
    :cond_3
    sget v1, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_6

    .line 1374
    const/4 v1, 0x4

    if-le v0, v1, :cond_4

    const/4 v1, 0x3

    .line 1376
    :goto_1
    div-int v2, p1, v1

    .line 1377
    rem-int v3, p1, v1

    .line 1379
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v0, :cond_a

    .line 1380
    if-ne v4, p1, :cond_5

    .line 1379
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1374
    :cond_4
    const/4 v1, 0x2

    goto :goto_1

    .line 1382
    :cond_5
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1383
    div-int v5, v4, v1

    .line 1384
    rem-int v6, v4, v1

    .line 1386
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    sub-int/2addr v6, v3

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    mul-int/2addr v6, v8

    sub-int/2addr v5, v2

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v8, v8, p1

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    mul-int/2addr v5, v8

    invoke-virtual {v7, v6, v5}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 1389
    :cond_6
    const/4 v1, 0x1

    sub-int v1, p1, v1

    :goto_4
    if-ltz v1, :cond_7

    .line 1390
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1391
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    neg-int v3, v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1389
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    .line 1394
    :cond_7
    add-int/lit8 v1, p1, 0x1

    :goto_5
    if-ge v1, v0, :cond_a

    .line 1395
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    const/4 v4, 0x1

    sub-int v4, v1, v4

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1396
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 1394
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1400
    :cond_8
    const-string v1, "QuickViewWorkspace"

    const-string v2, "setOpenStartRect : NEW:"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v1, v1, p1

    .line 1402
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v2, v2, p1

    .line 1409
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 1410
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 1412
    const/4 v4, 0x0

    :goto_6
    if-ge v4, v0, :cond_a

    .line 1413
    if-ne v4, p1, :cond_9

    .line 1412
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 1414
    :cond_9
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v4

    .line 1415
    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    .line 1416
    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v7

    .line 1418
    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    .line 1419
    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-int v5, v5

    .line 1420
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v4

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v6

    iget v9, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v9, v5

    iget v10, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v10

    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v10

    invoke-virtual {v7, v8, v9, v6, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_7

    .line 1425
    :cond_a
    return-void
.end method

.method private startDrag(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v1, 0x0

    .line 970
    const/4 v2, 0x2

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 971
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 972
    iget v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 973
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 974
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 976
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 977
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 978
    .local v0, viewBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 979
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 981
    .local v4, height:I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 982
    .local v5, scale:Landroid/graphics/Matrix;
    const/high16 v7, 0x3f80

    .line 983
    .local v7, scaleFactor:F
    invoke-virtual {v5, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 985
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 988
    return-void
.end method

.method private swapScreen(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/sec/android/app/twlauncher/Utilities;->zOrderTweakMoveChild(Landroid/view/ViewGroup;IIZ)V

    .line 1183
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onSwap(I)V

    .line 1184
    return-void
.end method

.method private updateAppInfoInDatabase()V
    .locals 11

    .prologue
    .line 1306
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v10}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v8

    .line 1307
    .local v8, work:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v8}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v9

    .line 1310
    .local v9, workCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v9, :cond_2

    .line 1311
    invoke-virtual {v8, v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 1312
    .local v1, child:Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 1313
    .local v2, childCount:I
    const/4 v6, 0x0

    .local v6, j:I
    :goto_1
    if-ge v6, v2, :cond_1

    .line 1314
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1315
    .local v5, itemView:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    .line 1316
    .local v7, tag:Ljava/lang/Object;
    if-eqz v7, :cond_0

    .line 1317
    move-object v0, v7

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v4, v0

    .line 1318
    .local v4, item:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v10, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    if-eq v10, v3, :cond_0

    .line 1319
    iput v3, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->screen:I

    .line 1320
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-static {v10, v4}, Lcom/sec/android/app/twlauncher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;)V

    .line 1313
    .end local v4           #item:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1310
    .end local v5           #itemView:Landroid/view/View;
    .end local v7           #tag:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1325
    .end local v1           #child:Landroid/view/ViewGroup;
    .end local v2           #childCount:I
    .end local v6           #j:I
    :cond_2
    return-void
.end method

.method private updateTag()V
    .locals 5

    .prologue
    .line 1144
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 1145
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 1146
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1147
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 1148
    .local v3, tag:Ljava/lang/Object;
    sget-object v4, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v3, v4, :cond_0

    .line 1149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1145
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1152
    .end local v0           #child:Landroid/view/View;
    .end local v3           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private updateWallpaperOffset(IIF)V
    .locals 7
    .parameter "newCurScreenIndex"
    .parameter "newScreenCount"
    .parameter "progress"

    .prologue
    const/4 v6, 0x1

    .line 341
    const/high16 v2, 0x3f00

    .line 342
    .local v2, wallpaperOffsetOnOpen:F
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    if-le v4, v6, :cond_0

    .line 343
    iget v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    int-to-float v4, v4

    iget v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v2, v4, v5

    .line 346
    :cond_0
    const/high16 v0, 0x3f00

    .line 347
    .local v0, targetWallpaperOffsetOnClose:F
    if-le p2, v6, :cond_1

    .line 348
    int-to-float v4, p1

    sub-int v5, p2, v6

    int-to-float v5, v5

    div-float v0, v4, v5

    .line 351
    :cond_1
    sub-float v4, v0, v2

    mul-float/2addr v4, p3

    add-float v3, v2, v4

    .line 354
    .local v3, woffset:F
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/sec/android/app/twlauncher/Workspace;->scrollTo(II)V

    .line 356
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 357
    .local v1, token:Landroid/os/IBinder;
    if-eqz v1, :cond_2

    .line 358
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v3, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 360
    :cond_2
    return-void
.end method


# virtual methods
.method cancelDeleteView()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 893
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 896
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    .line 897
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 898
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    goto :goto_0
.end method

.method cancelDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 866
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 867
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 868
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 869
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    invoke-virtual {p0, v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 870
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 872
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateTag()V

    .line 874
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 880
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 881
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 882
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 883
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 884
    iput-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    .line 885
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 886
    iput v3, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOriginDragIndex:I

    .line 887
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 888
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 807
    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    .line 808
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    .line 809
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 811
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 812
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 814
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->disableWorkspaceScreensCache()V

    .line 815
    return-void
.end method

.method disableWorkspaceScreensCache()V
    .locals 5

    .prologue
    .line 781
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v4}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v3

    .line 782
    .local v3, ws:Lcom/sec/android/app/twlauncher/Workspace;
    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    .line 784
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 785
    invoke-virtual {v3, v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/CellLayout;

    .line 787
    .local v0, celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/sec/android/app/twlauncher/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 789
    .end local v0           #celllayout:Lcom/sec/android/app/twlauncher/CellLayout;
    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v12

    .line 230
    .local v12, count:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getWidth()I

    move-result v19

    .line 231
    .local v19, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getHeight()I

    move-result v16

    .line 232
    .local v16, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getDrawingTime()J

    move-result-wide v14

    .line 234
    .local v14, drawingTime:J
    if-eqz v19, :cond_0

    if-nez v16, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuDrawer()Lcom/sec/android/app/twlauncher/MenuDrawer;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setEnabledProgress(Z)V

    .line 237
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 238
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    .line 239
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 242
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setOpenStartRect(I)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 244
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    .line 245
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 246
    const/16 v17, 0x0

    .local v17, i:I
    :goto_1
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_3

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 246
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 251
    .end local v17           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_3

    .line 252
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    .line 253
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 254
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    move v5, v0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->requestLayout()V

    .line 257
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setCloseEndRect(I)V

    .line 258
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    .line 259
    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 260
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_2
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_3

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v17

    .line 260
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 270
    .end local v17           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 271
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_3
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_5

    .line 272
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 273
    .local v11, child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object v5, v0

    if-eq v11, v5, :cond_4

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 271
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 277
    .end local v11           #child:Landroid/view/View;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    move v5, v0

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    move v5, v0

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollX:I

    move v5, v0

    add-int v5, v5, v19

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScrollY:I

    move v5, v0

    add-int v5, v5, v16

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_0

    .line 280
    .end local v17           #i:I
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_12

    .line 281
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-int v13, v5

    .line 283
    .local v13, current:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v5, v0

    if-lt v13, v5, :cond_8

    .line 284
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v13, v0

    .line 285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_8

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sec/android/app/twlauncher/Launcher;->closeQuickViewWorkspace()V

    .line 290
    :cond_8
    int-to-float v5, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v6, v0

    int-to-float v6, v6

    div-float v18, v5, v6

    .line 291
    .local v18, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v6

    if-eq v5, v6, :cond_9

    .line 292
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->updateWallpaperOffset(IIF)V

    .line 298
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move v5, v0

    if-lt v13, v5, :cond_a

    .line 299
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    const/4 v5, 0x7

    :goto_4
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 302
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    array-length v5, v5

    if-eq v5, v12, :cond_c

    .line 303
    :cond_b
    const-string v5, "QuickViewWorkspace"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "dipathDraw mAnimationState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  mCurrnetRect.length:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    array-length v7, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  array count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-lez v12, :cond_c

    new-array v5, v12, [Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 307
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAniEngine:Lcom/nemustech/tiffany/widget/TFAnimateEngine;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mStartRects:[Landroid/graphics/Rect;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mFinishRects:[Landroid/graphics/Rect;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimateEngine;->getRect([Landroid/graphics/Rect;[Landroid/graphics/Rect;[Landroid/graphics/Rect;F)[Landroid/graphics/Rect;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    .line 309
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_5
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_10

    .line 310
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    move/from16 v0, v17

    move v1, v5

    if-ne v0, v1, :cond_f

    .line 309
    :cond_d
    :goto_6
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 299
    .end local v17           #i:I
    :cond_e
    const/16 v5, 0x8

    goto/16 :goto_4

    .line 311
    .restart local v17       #i:I
    :cond_f
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 312
    .restart local v11       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    aget-object v8, v8, v17

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isAvailableRect(Landroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 318
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto/16 :goto_6

    .line 321
    .end local v11           #child:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    if-ltz v5, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move v5, v0

    if-ge v5, v12, :cond_11

    .line 322
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchIndex:I

    move/from16 v17, v0

    .line 323
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 324
    .restart local v11       #child:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    int-to-float v6, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->top:I

    int-to-float v7, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v5, v0

    aget-object v5, v5, v17

    iget v5, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v6, v0

    aget-object v6, v6, v17

    iget v6, v6, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v7, v0

    aget-object v7, v7, v17

    iget v7, v7, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentRects:[Landroid/graphics/Rect;

    move-object v8, v0

    aget-object v8, v8, v17

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v11, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    invoke-virtual {v11, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v11

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 330
    .end local v11           #child:Landroid/view/View;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    goto/16 :goto_0

    .line 333
    .end local v13           #current:I
    .end local v17           #i:I
    .end local v18           #progress:F
    :cond_12
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_7
    move/from16 v0, v17

    move v1, v12

    if-ge v0, v1, :cond_0

    .line 334
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 333
    add-int/lit8 v17, v17, 0x1

    goto :goto_7
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 27
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 669
    const/4 v12, 0x0

    .line 670
    .local v12, ret:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_4

    .line 671
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationStartTime:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v7, v0

    .line 673
    .local v7, current:I
    move v0, v7

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v11, v22, v23

    .line 674
    .local v11, progress:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_3

    move v5, v11

    .line 675
    .local v5, backgroundAlpha:F
    :goto_0
    const/high16 v22, 0x3f80

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 676
    const/16 v22, 0x0

    move/from16 v0, v22

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    const/high16 v23, 0x437f

    mul-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v24

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v26

    invoke-virtual/range {v22 .. v26}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 687
    .end local v5           #backgroundAlpha:F
    .end local v7           #current:I
    .end local v11           #progress:F
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 689
    .local v17, tag:Ljava/lang/Object;
    sget-object v22, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v22, v0

    if-eqz v22, :cond_7

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_7

    .line 690
    check-cast v17, Ljava/lang/Integer;

    .end local v17           #tag:Ljava/lang/Object;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 693
    .local v16, screen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 695
    .local v6, child:Landroid/view/View;
    if-eqz v6, :cond_1

    .line 696
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v15, v22, v23

    .line 699
    .local v15, scaleV:F
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    sub-int v22, v22, v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v23

    sub-int v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v14, v22, v23

    .line 700
    .local v14, scaleH:F
    cmpl-float v22, v15, v14

    if-lez v22, :cond_6

    move v13, v14

    .line 702
    .local v13, scale:F
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingTop()I

    move-result v23

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingRight()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getPaddingBottom()I

    move-result v24

    sub-int v23, v23, v24

    move/from16 v0, v23

    move-object/from16 v1, v22

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 707
    const/16 v22, 0x11

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    mul-float v23, v23, v13

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    mul-float v24, v24, v13

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-static/range {v22 .. v26}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    .line 711
    .local v20, xOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    .line 713
    .local v21, yOffset:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    add-int v22, v22, v20

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    add-int v23, v23, v21

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 715
    move-object/from16 v0, p1

    move v1, v13

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 716
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 724
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 748
    .end local v6           #child:Landroid/view/View;
    .end local v13           #scale:F
    .end local v14           #scaleH:F
    .end local v15           #scaleV:F
    .end local v16           #screen:I
    .end local v20           #xOffset:I
    .end local v21           #yOffset:I
    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_2

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_8

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 751
    .local v8, dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTrashPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 766
    .end local v8           #dragBitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_4
    return v12

    .line 674
    .restart local v7       #current:I
    .restart local v11       #progress:F
    :cond_3
    const/high16 v22, 0x3f80

    sub-float v22, v22, v11

    move/from16 v5, v22

    goto/16 :goto_0

    .line 681
    .end local v7           #current:I
    .end local v11           #progress:F
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    move/from16 v22, v0

    const/16 v23, 0x8

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    .line 682
    const/4 v12, 0x0

    goto/16 :goto_1

    .line 684
    :cond_5
    invoke-super/range {p0 .. p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v12

    goto/16 :goto_1

    .restart local v6       #child:Landroid/view/View;
    .restart local v14       #scaleH:F
    .restart local v15       #scaleV:F
    .restart local v16       #screen:I
    :cond_6
    move v13, v15

    .line 700
    goto/16 :goto_2

    .line 739
    .end local v6           #child:Landroid/view/View;
    .end local v14           #scaleH:F
    .end local v15           #scaleV:F
    .end local v16           #screen:I
    .restart local v17       #tag:Ljava/lang/Object;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v19

    .line 740
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    .line 741
    .local v9, height:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v23

    sub-int v23, v23, v19

    div-int/lit8 v23, v23, 0x2

    add-int v10, v22, v23

    .line 742
    .local v10, left:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v22

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v23

    sub-int v23, v23, v9

    div-int/lit8 v23, v23, 0x2

    add-int v18, v22, v23

    .line 744
    .local v18, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    add-int v23, v10, v19

    add-int v24, v18, v9

    move-object/from16 v0, v22

    move v1, v10

    move/from16 v2, v18

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_3

    .line 753
    .end local v9           #height:I
    .end local v10           #left:I
    .end local v17           #tag:Ljava/lang/Object;
    .end local v18           #top:I
    .end local v19           #width:I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    .line 754
    .restart local v8       #dragBitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object v1, v8

    move/from16 v2, v22

    move/from16 v3, v23

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4
.end method

.method public drawCloseAnimation()V
    .locals 2

    .prologue
    .line 1546
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 1547
    const/4 v0, 0x3

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1548
    const/16 v0, 0x12c

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    .line 1550
    :cond_0
    return-void
.end method

.method public drawOpenAnimation()V
    .locals 1

    .prologue
    .line 1541
    const/4 v0, 0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    .line 1542
    const/16 v0, 0x190

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationDuration:I

    .line 1543
    return-void
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 847
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    return v0
.end method

.method public getDeleteIndex()I
    .locals 1

    .prologue
    .line 834
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteIndex:I

    return v0
.end method

.method initScreen(I)V
    .locals 8
    .parameter "screenCount"

    .prologue
    const v7, 0x7f020091

    .line 902
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeAllViews()V

    .line 904
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setBackgroundResource(I)V

    .line 906
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 907
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mOrientation:I

    .line 909
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 910
    .local v1, context:Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 912
    .local v4, resources:Landroid/content/res/Resources;
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 913
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 915
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 916
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawablePadding:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 917
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenBgDrawable2:Landroid/graphics/drawable/Drawable;

    .line 919
    const v5, 0x7f020030

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 921
    const v5, 0x7f02002e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAddDrawable:Landroid/graphics/drawable/Drawable;

    .line 935
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, p1, :cond_0

    .line 936
    invoke-direct {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeScreen(I)Landroid/view/View;

    .line 935
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_0
    sget v5, Lcom/sec/android/app/twlauncher/Launcher;->SCREEN_COUNT:I

    if-ge p1, v5, :cond_1

    .line 940
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 947
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mScreenRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 949
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 851
    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 853
    :cond_0
    const/4 v0, 0x0

    .line 855
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOpened()Z
    .locals 1

    .prologue
    .line 818
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 642
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    .line 643
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 656
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 657
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 664
    :goto_0
    return-void

    .line 662
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addScreen()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "ev"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 415
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 416
    .local v2, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 418
    .local v5, y:F
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v9, 0x7

    if-eq v8, v9, :cond_0

    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v9, 0x8

    if-eq v8, v9, :cond_0

    move v8, v12

    .line 521
    :goto_0
    return v8

    .line 422
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 521
    :cond_1
    :goto_1
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-eqz v8, :cond_3

    move v8, v12

    goto :goto_0

    .line 424
    :sswitch_0
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    if-eqz v8, :cond_1

    .line 425
    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 427
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 428
    .local v6, y1:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 429
    .local v3, x1:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 430
    .local v7, y2:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 432
    .local v4, x2:I
    sub-int v8, v6, v7

    sub-int v9, v6, v7

    mul-int/2addr v8, v9

    sub-int v9, v3, v4

    sub-int v10, v3, v4

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iget v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinchStart:I

    sub-int/2addr v8, v9

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinch:I

    .line 443
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinch:I

    const/16 v9, 0x64

    if-le v8, v9, :cond_1

    .line 444
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    invoke-virtual {p0, v8}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 445
    .local v1, childOnPinch:Landroid/view/View;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v8, v9, :cond_1

    .line 447
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 448
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 449
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 450
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drawCloseAnimation()V

    .line 451
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    move v8, v12

    .line 452
    goto :goto_0

    .line 459
    .end local v1           #childOnPinch:Landroid/view/View;
    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :sswitch_1
    iput v2, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 460
    iput v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    goto :goto_1

    .line 493
    :sswitch_2
    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v8, :cond_2

    .line 494
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 495
    iput-boolean v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    goto :goto_1

    .line 497
    :cond_2
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto :goto_1

    .line 503
    :sswitch_3
    iget v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-nez v8, :cond_1

    iget-boolean v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-nez v8, :cond_1

    .line 504
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    .line 506
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v6, v8

    .line 507
    .restart local v6       #y1:I
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v3, v8

    .line 508
    .restart local v3       #x1:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 509
    .restart local v7       #y2:I
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v4, v8

    .line 511
    .restart local v4       #x2:I
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v8

    invoke-direct {p0, v4, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v9

    if-ne v8, v9, :cond_1

    .line 512
    iput-boolean v12, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutProcess:Z

    .line 513
    sub-int v8, v6, v7

    sub-int v9, v6, v7

    mul-int/2addr v8, v9

    sub-int v9, v3, v4

    sub-int v10, v3, v4

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-int v8, v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMovePinchStart:I

    .line 515
    invoke-direct {p0, v3, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v8

    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mPinchOutIndex:I

    goto/16 :goto_1

    .end local v3           #x1:I
    .end local v4           #x2:I
    .end local v6           #y1:I
    .end local v7           #y2:I
    :cond_3
    move v8, v11

    .line 521
    goto/16 :goto_0

    .line 422
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
    .line 365
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v1

    .line 367
    .local v1, count:I
    const/4 v5, 0x1

    if-ge v1, v5, :cond_1

    .line 402
    :cond_0
    return-void

    .line 369
    :cond_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    array-length v5, v5

    if-eq v5, v1, :cond_3

    .line 370
    :cond_2
    if-lez v1, :cond_3

    new-array v5, v1, [Landroid/graphics/Rect;

    iput-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    .line 373
    :cond_3
    invoke-direct {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getViewLayout(I)V

    .line 374
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 375
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 376
    .local v0, child:Landroid/view/View;
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 381
    .local v4, r:Landroid/graphics/Rect;
    :try_start_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    .line 382
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    aput-object v6, v5, v3

    .line 384
    :cond_4
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    if-nez v5, :cond_6

    .line 374
    :cond_5
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 385
    :cond_6
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTempRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 387
    invoke-virtual {v0, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 388
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    if-eqz v5, :cond_7

    .line 389
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    .line 390
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildAnimate:[Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;

    aget-object v5, v5, v3

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    invoke-virtual {v5, v0, v6}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 397
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 398
    .local v2, e:Ljava/lang/NullPointerException;
    const-string v5, "QuickViewWorkspace"

    const-string v6, "NullPointerException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 393
    .end local v2           #e:Ljava/lang/NullPointerException;
    :cond_7
    :try_start_1
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v5, v5, v3

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v6, v6, v3

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/graphics/Rect;->right:I

    iget-object v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mChildRects:[Landroid/graphics/Rect;

    aget-object v8, v8, v3

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-boolean v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mMultiTouchUsed:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 637
    :goto_0
    return v0

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "QuickViewWorkspace"

    const-string v1, "ignoring long click. Desktop is loading. Editing not allowed."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 620
    goto :goto_0

    .line 622
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_2

    .line 624
    invoke-direct {p0, p1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->startDrag(Landroid/view/View;)V

    :cond_2
    move v0, v2

    .line 637
    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 407
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 408
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15
    .parameter "ev"

    .prologue
    .line 526
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 527
    .local v0, action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 528
    .local v8, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 531
    .local v9, y:F
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/4 v12, 0x7

    if-eq v11, v12, :cond_0

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mAnimationState:I

    const/16 v12, 0x8

    if-eq v11, v12, :cond_0

    const/4 v11, 0x0

    .line 613
    :goto_0
    return v11

    .line 533
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 613
    :cond_1
    :goto_1
    :pswitch_0
    const/4 v11, 0x1

    goto :goto_0

    .line 537
    :pswitch_1
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    sub-float/2addr v11, v8

    float-to-int v2, v11

    .line 538
    .local v2, deltaX:I
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    sub-float/2addr v11, v9

    float-to-int v3, v11

    .line 540
    .local v3, deltaY:I
    iget v6, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchSlop:I

    .line 541
    .local v6, touchSlop:I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-le v11, v6, :cond_5

    const/4 v11, 0x1

    move v10, v11

    .line 543
    .local v10, yMoved:Z
    :goto_2
    if-eqz v10, :cond_2

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    if-nez v11, :cond_2

    .line 544
    const/4 v11, 0x1

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    .line 547
    :cond_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 548
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 549
    .local v1, child:Landroid/view/View;
    if-eqz v1, :cond_3

    .line 550
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTmpRect:Landroid/graphics/Rect;

    .line 551
    .local v5, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 552
    iget v11, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->left:I

    .line 553
    iget v11, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->top:I

    .line 554
    iget v11, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v2

    iput v11, v5, Landroid/graphics/Rect;->right:I

    .line 555
    iget v11, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v11, v3

    iput v11, v5, Landroid/graphics/Rect;->bottom:I

    .line 557
    iget v11, v5, Landroid/graphics/Rect;->left:I

    iget v12, v5, Landroid/graphics/Rect;->top:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 559
    .end local v5           #r:Landroid/graphics/Rect;
    :cond_3
    iput v8, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionX:F

    .line 560
    iput v9, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLastMotionY:F

    .line 563
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 565
    .local v7, v:Landroid/view/View;
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 566
    .local v4, index:I
    const/4 v11, -0x1

    if-eq v4, v11, :cond_4

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v11, :cond_4

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_4

    .line 567
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 568
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 569
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    .line 575
    :cond_4
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isDeleteZone(II)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 576
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->applyDeleteZone()V

    .line 577
    const/4 v11, 0x1

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    goto/16 :goto_1

    .line 541
    .end local v1           #child:Landroid/view/View;
    .end local v4           #index:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :cond_5
    const/4 v11, 0x0

    move v10, v11

    goto :goto_2

    .line 579
    .restart local v1       #child:Landroid/view/View;
    .restart local v4       #index:I
    .restart local v7       #v:Landroid/view/View;
    .restart local v10       #yMoved:Z
    :cond_6
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    .line 580
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    const/4 v12, 0x1

    if-ne v11, v12, :cond_7

    .line 582
    const/4 v11, 0x0

    invoke-direct {p0, v11}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setDeleteZoneState(Z)V

    .line 584
    :cond_7
    const/4 v11, 0x0

    iput v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDragState:I

    .line 585
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getTouchedIndex(II)I

    move-result v4

    .line 586
    const/4 v11, -0x1

    if-eq v4, v11, :cond_1

    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    if-eq v4, v11, :cond_1

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    sget-object v12, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v11, v12, :cond_1

    .line 587
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 588
    invoke-virtual {p0, v7, v4}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->addView(Landroid/view/View;I)V

    .line 589
    const/4 v11, 0x4

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 590
    iput v4, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingIndex:I

    goto/16 :goto_1

    .line 598
    .end local v1           #child:Landroid/view/View;
    .end local v2           #deltaX:I
    .end local v3           #deltaY:I
    .end local v4           #index:I
    .end local v6           #touchSlop:I
    .end local v7           #v:Landroid/view/View;
    .end local v10           #yMoved:Z
    :pswitch_2
    iget v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchState:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_8

    .line 599
    float-to-int v11, v8

    float-to-int v12, v9

    invoke-direct {p0, v11, v12}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->drop(II)V

    .line 602
    :cond_8
    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDraggingView:Landroid/view/View;

    if-nez v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mTouchedView:Landroid/view/View;

    if-eqz v11, :cond_a

    .line 604
    :cond_9
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->postInvalidate()V

    .line 607
    :cond_a
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->endDrag()V

    goto/16 :goto_1

    .line 533
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method open()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 792
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mEnabledChildAnimation:Z

    .line 793
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->setVisibility(I)V

    .line 795
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    .line 796
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getDeleteZone()Lcom/sec/android/app/twlauncher/DeleteZone;

    move-result-object v0

    .line 797
    .local v0, vDeleteZone:Lcom/sec/android/app/twlauncher/DeleteZone;
    invoke-virtual {v0, v2}, Lcom/sec/android/app/twlauncher/DeleteZone;->setVisibility(I)V

    .line 798
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/DeleteZone;->resetMode()V

    .line 800
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenCountOnOpen:I

    .line 801
    iget v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mWorkspaceScreenIndexOnOpen:I

    .line 803
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->enableWorkspaceScreensCache()V

    .line 804
    return-void
.end method

.method public removeScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1155
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->indexOfChild(Landroid/view/View;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1156
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    .line 1176
    :goto_0
    return-void

    .line 1165
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mDeleteView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->removeView(Landroid/view/View;)V

    .line 1167
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildCount()I

    move-result v0

    .line 1168
    .local v0, count:I
    if-lt v0, v3, :cond_2

    sub-int v1, v0, v3

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->ADD_BTN_TAG:Ljava/lang/Object;

    if-eq v1, v2, :cond_3

    .line 1170
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->makeAddBtn()Landroid/view/View;

    .line 1173
    :cond_3
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->onRemove()V

    .line 1175
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mCurrentPage:I

    goto :goto_0
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 860
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 861
    return-void
.end method
