.class public Lcom/sec/android/app/twlauncher/MenuDrawer;
.super Landroid/widget/FrameLayout;
.source "MenuDrawer.java"

# interfaces
.implements Lcom/sec/android/app/twlauncher/DropTarget;


# instance fields
.field private mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

.field private mProgressBar:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/twlauncher/MenuDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    return-void
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
    .line 49
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragEnter(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 55
    return-void
.end method

.method public onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragExit(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDragOver(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 65
    return-void
.end method

.method public onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V
    .locals 7
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragInfo"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/twlauncher/MenuManager;->onDrop(Lcom/sec/android/app/twlauncher/DragSource;IIIILjava/lang/Object;)V

    .line 69
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 31
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    .line 32
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 34
    invoke-virtual {p0, v2}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/twlauncher/MenuManager;

    iput-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mMenuManager:Lcom/sec/android/app/twlauncher/MenuManager;

    .line 36
    invoke-virtual {p0, v1}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setAnimationCacheEnabled(Z)V

    .line 37
    return-void
.end method

.method public setBackgroundClose()V
    .locals 5

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 92
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUse16BitWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 93
    const-string v4, "wallpaper"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 94
    .local v3, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 96
    .local v2, wi:Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_1

    const/4 v4, 0x1

    move v1, v4

    .line 98
    .local v1, usingLiveWallpaper:Z
    :goto_0
    if-nez v1, :cond_0

    .line 99
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundResource(I)V

    .line 102
    .end local v1           #usingLiveWallpaper:Z
    .end local v2           #wi:Landroid/app/WallpaperInfo;
    .end local v3           #wp:Landroid/app/WallpaperManager;
    :cond_0
    return-void

    .line 96
    .restart local v2       #wi:Landroid/app/WallpaperInfo;
    .restart local v3       #wp:Landroid/app/WallpaperManager;
    :cond_1
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0
.end method

.method public setBackgroundImage()V
    .locals 6

    .prologue
    const v5, 0x7f07000c

    .line 72
    invoke-virtual {p0}, Lcom/sec/android/app/twlauncher/MenuDrawer;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 73
    .local v0, context:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/app/twlauncher/LauncherConfig;->getUse16BitWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 74
    const-string v4, "wallpaper"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/WallpaperManager;

    .line 75
    .local v3, wp:Landroid/app/WallpaperManager;
    invoke-virtual {v3}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    .line 77
    .local v2, wi:Landroid/app/WallpaperInfo;
    if-eqz v2, :cond_0

    const/4 v4, 0x1

    move v1, v4

    .line 79
    .local v1, usingLiveWallpaper:Z
    :goto_0
    if-eqz v1, :cond_1

    .line 80
    const v4, 0x7f07000d

    invoke-virtual {p0, v4}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundResource(I)V

    .line 88
    .end local v1           #usingLiveWallpaper:Z
    .end local v2           #wi:Landroid/app/WallpaperInfo;
    .end local v3           #wp:Landroid/app/WallpaperManager;
    :goto_1
    return-void

    .line 77
    .restart local v2       #wi:Landroid/app/WallpaperInfo;
    .restart local v3       #wp:Landroid/app/WallpaperManager;
    :cond_0
    const/4 v4, 0x0

    move v1, v4

    goto :goto_0

    .line 82
    .restart local v1       #usingLiveWallpaper:Z
    :cond_1
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundResource(I)V

    goto :goto_1

    .line 85
    .end local v1           #usingLiveWallpaper:Z
    .end local v2           #wi:Landroid/app/WallpaperInfo;
    .end local v3           #wp:Landroid/app/WallpaperManager;
    :cond_2
    invoke-virtual {p0, v5}, Lcom/sec/android/app/twlauncher/MenuDrawer;->setBackgroundResource(I)V

    goto :goto_1
.end method

.method public setEnabledProgress(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 40
    if-eqz p1, :cond_0

    .line 41
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 45
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/twlauncher/MenuDrawer;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method
