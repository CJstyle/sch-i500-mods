.class public Lcom/android/music/player/widget/MusicPlayerWindow;
.super Landroid/widget/LinearLayout;
.source "MusicPlayerWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;
    }
.end annotation


# instance fields
.field private mOnViewChangeListener:Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/music/player/widget/MusicPlayerWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 31
    sub-int v2, p4, p2

    .line 32
    .local v2, w:I
    sub-int v0, p5, p3

    .line 33
    .local v0, h:I
    const/4 v1, 0x0

    .line 34
    .local v1, orientation:I
    if-ge v0, v2, :cond_0

    .line 35
    const/4 v1, 0x1

    .line 37
    :cond_0
    iget-object v3, p0, Lcom/android/music/player/widget/MusicPlayerWindow;->mOnViewChangeListener:Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;

    invoke-interface {v3, v1}, Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;->onMusicPlayerViewChange(I)V

    .line 38
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 39
    return-void
.end method

.method public setOnMusicPlayerViewChangeListener(Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/music/player/widget/MusicPlayerWindow;->mOnViewChangeListener:Lcom/android/music/player/widget/MusicPlayerWindow$OnMusicPlayerViewChangeListener;

    .line 44
    return-void
.end method
