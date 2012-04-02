.class public Lcom/sec/android/app/twlauncher/TopFourZone;
.super Landroid/widget/LinearLayout;
.source "TopFourZone.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DragSource;
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/twlauncher/TopFourZone$Animate;
    }
.end annotation


# static fields
.field private static final APPLICATION_ICON_SLOT_TAG:Ljava/lang/Object;

.field private static final EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;


# instance fields
.field private mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

.field private mChildHeight:I

.field private mChildWidth:I

.field private mDraggingView:Landroid/view/View;

.field private mEnabledChildAnimation:Z

.field private mEnabledDrawing:Z

.field private mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

.field private mOldOrientation:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mOrientation:I

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

.field private mTopOffset:I

.field private mVirtualView:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/app/twlauncher/TopFourZone;->APPLICATION_ICON_SLOT_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    iput-boolean v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledDrawing:Z

    .line 56
    new-array v0, v2, [Landroid/view/View;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    .line 59
    iput v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    .line 62
    new-array v0, v2, [Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    .line 65
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    .line 336
    new-instance v0, Lcom/sec/android/app/twlauncher/TopFourZone$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone$1;-><init>(Lcom/sec/android/app/twlauncher/TopFourZone;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 347
    new-instance v0, Lcom/sec/android/app/twlauncher/TopFourZone$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/twlauncher/TopFourZone$2;-><init>(Lcom/sec/android/app/twlauncher/TopFourZone;)V

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 71
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->init()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/twlauncher/TopFourZone;)Lcom/sec/android/app/twlauncher/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/twlauncher/TopFourZone;Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->startDragItem(Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/twlauncher/TopFourZone;)[Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    return-object v0
.end method

.method private getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I
    .locals 3
    .parameter "info"

    .prologue
    .line 253
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 255
    :goto_0
    return v1

    .line 254
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 255
    .local v0, la:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getBadgeCache()Lcom/sec/android/app/twlauncher/BadgeCache;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/app/twlauncher/BadgeCache;->getBadgeCount(Landroid/content/ComponentName;)I

    move-result v1

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 75
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mInflater:Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/LauncherApplication;

    .line 78
    .local v0, app:Lcom/sec/android/app/twlauncher/LauncherApplication;
    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    .line 80
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 81
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    .line 83
    const v3, 0x7f08000d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    .line 84
    const v3, 0x7f08000e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildWidth:I

    .line 87
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->setClickable(Z)V

    .line 89
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    .line 90
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    new-instance v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    aput-object v4, v3, v1

    .line 92
    if-ne v1, v6, :cond_0

    .line 93
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v3, v3, v1

    sget-object v4, Lcom/sec/android/app/twlauncher/TopFourZone;->APPLICATION_ICON_SLOT_TAG:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 89
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v3, v3, v1

    sget-object v4, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    :cond_1
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    if-ne v3, v6, :cond_3

    .line 100
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/TopFourZone;->setOrientation(I)V

    .line 101
    const v3, 0x7f020018

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v3, 0x7

    iput v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 109
    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->initVirtualView()V

    .line 113
    return-void

    .line 103
    :cond_3
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 104
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->setOrientation(I)V

    .line 105
    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    .line 106
    iput v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    goto :goto_2
.end method

.method private initVirtualView()V
    .locals 2

    .prologue
    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 119
    :cond_0
    return-void
.end method

.method private startDragItem(Landroid/view/View;Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 2
    .parameter "itemView"
    .parameter "info"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    .line 699
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->getDragLayer()Lcom/sec/android/app/twlauncher/DragLayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, p2, v1}, Lcom/sec/android/app/twlauncher/DragLayer;->startDrag(Landroid/view/View;Lcom/sec/android/app/twlauncher/DragSource;Ljava/lang/Object;I)V

    .line 702
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)Z
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const-string v7, "Launcher.TopFourZone"

    .line 596
    const-string v5, "Launcher.TopFourZone"

    const-string v5, "acceptDrop()"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v4, v0

    .line 599
    .local v4, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    iget v5, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eqz v5, :cond_0

    iget v5, v4, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-eq v5, v8, :cond_0

    .line 601
    const-string v5, "Launcher.TopFourZone"

    const-string v5, "not acceptable type"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 624
    :goto_0
    return v5

    .line 605
    :cond_0
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v2

    .local v2, count:I
    :goto_1
    if-ge v3, v2, :cond_4

    .line 606
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 607
    .local v1, child:Landroid/view/View;
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 608
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_2

    .line 605
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 611
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget-object v6, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    if-ne v5, v6, :cond_3

    .line 613
    const-string v5, "Launcher.TopFourZone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "empty slot. acceptable !! index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 614
    goto :goto_0

    .line 616
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    if-ne v1, v5, :cond_1

    .line 618
    const-string v5, "Launcher.TopFourZone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "original slot. acceptable !! index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v8

    .line 619
    goto :goto_0

    .line 623
    .end local v1           #child:Landroid/view/View;
    :cond_4
    const-string v5, "Launcher.TopFourZone"

    const-string v5, "not acceptable"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    .line 624
    goto :goto_0
.end method

.method addItem(Landroid/view/View;I)Landroid/view/View;
    .locals 2
    .parameter "v"
    .parameter "index"

    .prologue
    .line 414
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 415
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 416
    invoke-virtual {p0, p1, p2}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 417
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 419
    return-object v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    .line 198
    iget-boolean v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledDrawing:Z

    if-nez v2, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewWorkspace()Lcom/sec/android/app/twlauncher/QuickViewWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewWorkspace;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getQuickViewMainMenu()Lcom/sec/android/app/twlauncher/QuickViewMainMenu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/QuickViewMainMenu;->isOpened()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Launcher;->getStateQuickNavigation()I

    move-result v2

    if-gez v2, :cond_0

    .line 205
    iget v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 207
    .local v0, left:I
    iget v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 213
    .local v1, top:I
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 214
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 216
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 209
    .end local v0           #left:I
    .end local v1           #top:I
    :cond_2
    iget v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    add-int/lit8 v0, v2, 0x4

    .line 210
    .restart local v0       #left:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopFourBgDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #top:I
    goto :goto_1
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 7
    .parameter "focused"
    .parameter "direction"

    .prologue
    const/16 v6, 0x42

    const/16 v4, 0x11

    const/4 v5, 0x1

    .line 450
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    if-eqz v3, :cond_5

    .line 451
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getMenuManager()Lcom/sec/android/app/twlauncher/MenuManager;

    move-result-object v1

    .line 452
    .local v1, mm:Lcom/sec/android/app/twlauncher/MenuManager;
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 453
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getChildCount()I

    move-result v0

    .line 454
    .local v0, childCount:I
    if-le v0, v5, :cond_5

    .line 455
    if-ne p2, v4, :cond_1

    .line 456
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    if-nez v3, :cond_0

    .line 457
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_0
    move v3, v5

    .line 482
    .end local v0           #childCount:I
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :goto_0
    return v3

    .line 460
    .restart local v0       #childCount:I
    .restart local v1       #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    :cond_1
    if-ne p2, v6, :cond_5

    .line 461
    invoke-virtual {v1}, Lcom/sec/android/app/twlauncher/MenuManager;->getWhichScreen()I

    move-result v3

    sub-int v4, v0, v5

    if-ne v3, v4, :cond_2

    .line 462
    invoke-virtual {v1, v0}, Lcom/sec/android/app/twlauncher/MenuManager;->snapToScreen(I)V

    :cond_2
    move v3, v5

    .line 464
    goto :goto_0

    .line 467
    .end local v0           #childCount:I
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->isWorkspaceLocked()Z

    move-result v3

    if-nez v3, :cond_5

    .line 468
    iget-object v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v3}, Lcom/sec/android/app/twlauncher/Launcher;->getWorkspace()Lcom/sec/android/app/twlauncher/Workspace;

    move-result-object v2

    .line 469
    .local v2, w:Lcom/sec/android/app/twlauncher/Workspace;
    if-ne p2, v4, :cond_4

    .line 470
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    if-lez v3, :cond_5

    .line 471
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 472
    goto :goto_0

    .line 474
    :cond_4
    if-ne p2, v6, :cond_5

    .line 475
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_5

    .line 476
    invoke-virtual {v2}, Lcom/sec/android/app/twlauncher/Workspace;->getCurrentScreen()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sec/android/app/twlauncher/Workspace;->snapToScreen(I)V

    move v3, v5

    .line 477
    goto :goto_0

    .line 482
    .end local v1           #mm:Lcom/sec/android/app/twlauncher/MenuManager;
    .end local v2           #w:Lcom/sec/android/app/twlauncher/Workspace;
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v3

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .parameter "canvas"
    .parameter "view"
    .parameter "drawingTime"

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public loadApplication(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V
    .locals 5
    .parameter "shortcutInfo"

    .prologue
    const-string v4, "Launcher.TopFourZone"

    .line 224
    const-string v2, "Launcher.TopFourZone"

    const-string v2, "loadApplication()"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-virtual {p0, p1}, Lcom/sec/android/app/twlauncher/TopFourZone;->makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v1

    .line 228
    .local v1, item:Landroid/view/View;
    iget v0, p1, Lcom/sec/android/app/twlauncher/ItemInfo;->cellX:I

    .line 229
    .local v0, index:I
    const-string v2, "Launcher.TopFourZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shortcutInfo.cellX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    if-ltz v0, :cond_0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 231
    invoke-virtual {p0, v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 232
    invoke-virtual {p0, v1, v0}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 234
    :cond_0
    return-void
.end method

.method public makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v10, -0x1

    .line 302
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 303
    .local v5, res:Landroid/content/res/Resources;
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 305
    .local v1, config:Landroid/content/res/Configuration;
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    iget v8, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    if-eq v7, v8, :cond_0

    .line 306
    iget v7, v1, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    .line 307
    iget v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOrientation:I

    iput v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 309
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 310
    .local v4, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v5, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 313
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f030003

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 315
    .local v3, itemView:Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/twlauncher/LauncherApplication;

    invoke-virtual {v7}, Lcom/sec/android/app/twlauncher/LauncherApplication;->getIconCache()Lcom/sec/android/app/twlauncher/IconCache;

    move-result-object v2

    .line 317
    .local v2, iconCache:Lcom/sec/android/app/twlauncher/IconCache;
    move-object v0, v3

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v6, v0

    .line 318
    .local v6, view:Lcom/sec/android/app/twlauncher/MenuItemView;
    new-instance v7, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    invoke-virtual {p1, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 319
    iget-object v7, p1, Lcom/sec/android/app/twlauncher/ShortcutInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setFocusable(Z)V

    .line 322
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 323
    iget-object v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v6, v7}, Lcom/sec/android/app/twlauncher/MenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 325
    invoke-virtual {v6, p1}, Lcom/sec/android/app/twlauncher/MenuItemView;->setTag(Ljava/lang/Object;)V

    .line 327
    iget v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    if-eq v7, v10, :cond_1

    .line 328
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 329
    .restart local v4       #metrics:Landroid/util/DisplayMetrics;
    iget v7, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    iput v7, v1, Landroid/content/res/Configuration;->orientation:I

    .line 330
    invoke-virtual {v5, v1, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 331
    iput v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mOldOrientation:I

    .line 333
    .end local v4           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    return-object v6
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
    .line 629
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
    .line 633
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 637
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 12
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 641
    const-string v1, "Launcher.TopFourZone"

    const-string v2, "onDrop()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    const/4 v6, 0x0

    .local v6, i:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v9

    .local v9, count:I
    :goto_0
    if-ge v6, v9, :cond_5

    .line 644
    invoke-virtual {p0, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 645
    .local v8, child:Landroid/view/View;
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 646
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 643
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 649
    :cond_1
    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/twlauncher/TopFourZone;->EMPTY_SLOT_VIEW_TAG:Ljava/lang/Object;

    if-ne v1, v2, :cond_4

    .line 651
    const-string v1, "Launcher.TopFourZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop on empty slot. drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v2, v0

    .line 655
    .local v2, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    const/4 v11, 0x0

    .line 657
    .local v11, view:Landroid/view/View;
    iget v1, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 667
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 660
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    :pswitch_0
    iget-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-nez v1, :cond_2

    instance-of v1, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    if-eqz v1, :cond_2

    .line 662
    new-instance v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-direct {v10, v2}, Lcom/sec/android/app/twlauncher/ShortcutInfo;-><init>(Lcom/sec/android/app/twlauncher/ApplicationInfo;)V

    .local v10, info:Lcom/sec/android/app/twlauncher/ItemInfo;
    move-object v2, v10

    .line 664
    .end local v10           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_2
    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v11

    .line 670
    invoke-virtual {p0, v11, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    .line 672
    iget-wide v3, v2, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v7, -0x1

    cmp-long v1, v3, v7

    if-nez v1, :cond_3

    .line 673
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {v1, v3}, Lcom/sec/android/app/twlauncher/Launcher;->addShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    .line 676
    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-wide/16 v3, -0x64

    const/4 v5, -0x1

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Lcom/sec/android/app/twlauncher/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/sec/android/app/twlauncher/ItemInfo;JIII)V

    .line 695
    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    .end local v8           #child:Landroid/view/View;
    .end local v11           #view:Landroid/view/View;
    :goto_1
    return-void

    .line 680
    .restart local v8       #child:Landroid/view/View;
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    if-ne v8, v1, :cond_0

    .line 681
    const-string v1, "Launcher.TopFourZone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drop on original slot. drop index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    move-object/from16 v0, p6

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v2, v0

    .line 685
    .restart local v2       #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    check-cast v2, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v2           #info:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->makeItemView(Lcom/sec/android/app/twlauncher/ShortcutInfo;)Landroid/view/View;

    move-result-object v11

    .line 686
    .restart local v11       #view:Landroid/view/View;
    invoke-virtual {p0, v11, v6}, Lcom/sec/android/app/twlauncher/TopFourZone;->addItem(Landroid/view/View;I)Landroid/view/View;

    goto :goto_1

    .line 694
    .end local v8           #child:Landroid/view/View;
    .end local v11           #view:Landroid/view/View;
    :cond_5
    const-string v1, "Launcher.TopFourZone"

    const-string v2, "onDrop() at wrong index !!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onDropCompleted(Landroid/view/View;ZLjava/lang/Object;)V
    .locals 6
    .parameter "target"
    .parameter "success"
    .parameter "dragInfo"

    .prologue
    .line 705
    if-eqz p2, :cond_0

    .line 706
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeItem(Landroid/view/View;)I

    .line 708
    move-object v0, p3

    check-cast v0, Lcom/sec/android/app/twlauncher/ItemInfo;

    move-object v1, v0

    .line 710
    .local v1, ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    if-ne p1, p0, :cond_1

    .line 722
    .end local v1           #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_0
    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mDraggingView:Landroid/view/View;

    .line 723
    return-void

    .line 714
    .restart local v1       #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    :cond_1
    iget-wide v2, v1, Lcom/sec/android/app/twlauncher/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 716
    iget-object v2, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    check-cast v1, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    .end local v1           #ii:Lcom/sec/android/app/twlauncher/ItemInfo;
    invoke-virtual {v2, v1}, Lcom/sec/android/app/twlauncher/Launcher;->removeShortcut(Lcom/sec/android/app/twlauncher/ShortcutInfo;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 361
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    invoke-virtual {v0}, Lcom/sec/android/app/twlauncher/Launcher;->isAddWidgetState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    const/4 v0, 0x1

    .line 364
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 12
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getOrientation()I

    move-result v8

    .line 146
    .local v8, orientation:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v6

    .line 147
    .local v6, count:I
    const/4 v2, 0x0

    .line 148
    .local v2, childLeft:I
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 149
    .local v3, childTop:I
    const/4 v4, 0x0

    .line 151
    .local v4, childTopMargin:I
    if-eqz v8, :cond_0

    .line 152
    const/4 v2, 0x0

    .line 153
    iget v3, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 154
    iget v4, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    .line 157
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTmpRect:Landroid/graphics/Rect;

    .line 158
    .local v9, r:Landroid/graphics/Rect;
    if-nez v8, :cond_2

    .line 159
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    if-ge v7, v6, :cond_4

    .line 160
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 162
    .local v5, childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 163
    .local v1, childHeight:I
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 164
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_1

    .line 166
    add-int v10, v2, v5

    add-int v11, v3, v1

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 167
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    aget-object v10, v10, v7

    invoke-virtual {v10, v0, v9}, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 171
    :goto_1
    add-int/2addr v2, v5

    .line 159
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 169
    :cond_1
    add-int v10, v2, v5

    add-int v11, v3, v1

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 174
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v5           #childWidth:I
    .end local v7           #i:I
    :cond_2
    const/4 v10, 0x1

    sub-int v7, v6, v10

    .restart local v7       #i:I
    :goto_2
    if-ltz v7, :cond_4

    .line 175
    invoke-virtual {p0, v7}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 176
    .restart local v0       #child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 177
    .restart local v5       #childWidth:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 178
    .restart local v1       #childHeight:I
    invoke-virtual {v0, v9}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_3

    iget-boolean v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mEnabledChildAnimation:Z

    if-eqz v10, :cond_3

    .line 181
    add-int/lit8 v10, v5, 0x0

    add-int v11, v3, v1

    invoke-virtual {v9, v2, v3, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 182
    iget-object v10, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildAnimate:[Lcom/sec/android/app/twlauncher/TopFourZone$Animate;

    aget-object v10, v10, v7

    invoke-virtual {v10, v0, v9}, Lcom/sec/android/app/twlauncher/TopFourZone$Animate;->start(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 186
    :goto_3
    add-int v10, v1, v4

    add-int/2addr v3, v10

    .line 174
    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    .line 184
    :cond_3
    add-int/lit8 v10, v5, 0x0

    add-int v11, v3, v1

    invoke-virtual {v0, v2, v3, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 189
    .end local v0           #child:Landroid/view/View;
    .end local v1           #childHeight:I
    .end local v5           #childWidth:I
    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v7, 0x4000

    .line 123
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 125
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 126
    .local v4, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 128
    .local v1, height:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v0

    .line 129
    .local v0, count:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getOrientation()I

    move-result v3

    .line 130
    .local v3, orientation:I
    if-nez v3, :cond_0

    .line 131
    div-int/lit8 v5, v4, 0x3

    iput v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildWidth:I

    .line 136
    :goto_0
    iget v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildWidth:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 137
    iget v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 138
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_1

    .line 139
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v2           #i:I
    :cond_0
    div-int/lit8 v5, v1, 0x3

    iget v6, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mTopOffset:I

    sub-int/2addr v5, v6

    iput v5, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mChildHeight:I

    goto :goto_0

    .line 141
    .restart local v2       #i:I
    :cond_1
    return-void
.end method

.method removeItem(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    .line 423
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v1

    .line 424
    .local v1, count:I
    const/4 v3, -0x1

    .line 425
    .local v3, index:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 426
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 427
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_2

    .line 428
    move v3, v2

    .line 433
    .end local v0           #child:Landroid/view/View;
    :cond_0
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 434
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->removeViewAt(I)V

    .line 435
    iget-object v4, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mVirtualView:[Landroid/view/View;

    aget-object v4, v4, v3

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->addView(Landroid/view/View;I)V

    .line 437
    :cond_1
    return v3

    .line 425
    .restart local v0       #child:Landroid/view/View;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeItems(Ljava/util/ArrayList;)V
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
    .line 726
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v1

    .line 728
    .local v1, count:I
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 729
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 730
    .local v0, appCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 731
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    iget-object v4, v4, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 730
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 734
    :cond_0
    new-instance v4, Lcom/sec/android/app/twlauncher/TopFourZone$3;

    invoke-direct {v4, p0, v1, v3}, Lcom/sec/android/app/twlauncher/TopFourZone$3;-><init>(Lcom/sec/android/app/twlauncher/TopFourZone;ILjava/util/HashSet;)V

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->post(Ljava/lang/Runnable;)Z

    .line 770
    return-void
.end method

.method setLauncher(Lcom/sec/android/app/twlauncher/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/sec/android/app/twlauncher/TopFourZone;->mLauncher:Lcom/sec/android/app/twlauncher/Launcher;

    .line 369
    return-void
.end method

.method public updateBadges()V
    .locals 7

    .prologue
    .line 259
    const/4 v3, 0x0

    .local v3, i:I
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v2

    .local v2, count:I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 260
    invoke-virtual {p0, v3}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 261
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 262
    .local v5, tag:Ljava/lang/Object;
    instance-of v6, v5, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v6, :cond_0

    .line 263
    move-object v0, v5

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v4, v0

    .line 264
    .local v4, si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    invoke-direct {p0, v4}, Lcom/sec/android/app/twlauncher/TopFourZone;->getBadgeCount(Lcom/sec/android/app/twlauncher/ShortcutInfo;)I

    move-result v6

    iput v6, v4, Lcom/sec/android/app/twlauncher/ShortcutInfo;->badgeCount:I

    .line 265
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 259
    .end local v4           #si:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 268
    .end local v1           #child:Landroid/view/View;
    .end local v5           #tag:Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 16
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
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/sec/android/app/twlauncher/ApplicationInfo;>;"
    const/4 v15, 0x0

    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildCount()I

    move-result v4

    .line 774
    .local v4, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v4, :cond_4

    .line 775
    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/sec/android/app/twlauncher/TopFourZone;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 776
    .local v11, view:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    .line 777
    .local v10, tag:Ljava/lang/Object;
    if-eqz v10, :cond_3

    instance-of v12, v10, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    if-eqz v12, :cond_3

    .line 778
    move-object v0, v10

    check-cast v0, Lcom/sec/android/app/twlauncher/ShortcutInfo;

    move-object v6, v0

    .line 782
    .local v6, info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    iget-object v7, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 783
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 784
    .local v9, name:Landroid/content/ComponentName;
    iget v12, v6, Lcom/sec/android/app/twlauncher/ItemInfo;->itemType:I

    if-nez v12, :cond_3

    const-string v12, "android.intent.action.MAIN"

    invoke-virtual {v7}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    if-eqz v9, :cond_3

    .line 786
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 787
    .local v3, appCount:I
    const/4 v8, 0x0

    .local v8, k:I
    :goto_1
    if-ge v8, v3, :cond_3

    .line 788
    move-object/from16 v0, p1

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;

    .line 789
    .local v2, app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    iget-object v12, v2, Lcom/sec/android/app/twlauncher/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 790
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v12, v0

    iget-object v13, v6, Lcom/sec/android/app/twlauncher/ShortcutInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v12, v13}, Lcom/sec/android/app/twlauncher/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v12

    invoke-virtual {v6, v12}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 796
    instance-of v12, v11, Lcom/sec/android/app/twlauncher/MenuItemView;

    if-eqz v12, :cond_1

    .line 797
    move-object v0, v11

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuItemView;

    move-object v12, v0

    new-instance v13, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v14, v0

    invoke-virtual {v6, v14}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v13}, Lcom/sec/android/app/twlauncher/MenuItemView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 787
    :cond_0
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 798
    :cond_1
    instance-of v12, v11, Landroid/widget/TextView;

    if-eqz v12, :cond_2

    .line 799
    move-object v0, v11

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    new-instance v13, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/twlauncher/TopFourZone;->mIconCache:Lcom/sec/android/app/twlauncher/IconCache;

    move-object v14, v0

    invoke-virtual {v6, v14}, Lcom/sec/android/app/twlauncher/ShortcutInfo;->getIcon(Lcom/sec/android/app/twlauncher/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/sec/android/app/twlauncher/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v12, v15, v13, v15, v15}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 803
    :cond_2
    const-string v12, "Launcher.TopFourZone"

    const-string v13, "TopFourZone.updateShortcuts : Unknow shortcut type. ICON NOT CHANGED"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 774
    .end local v2           #app:Lcom/sec/android/app/twlauncher/ApplicationInfo;
    .end local v3           #appCount:I
    .end local v6           #info:Lcom/sec/android/app/twlauncher/ShortcutInfo;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #k:I
    .end local v9           #name:Landroid/content/ComponentName;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    .line 810
    .end local v10           #tag:Ljava/lang/Object;
    .end local v11           #view:Landroid/view/View;
    :cond_4
    return-void
.end method
