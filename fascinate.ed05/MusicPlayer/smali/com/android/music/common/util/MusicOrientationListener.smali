.class public Lcom/android/music/common/util/MusicOrientationListener;
.super Landroid/view/WindowOrientationListener;
.source "MusicOrientationListener.java"


# static fields
.field public static mEnterDiscPlus:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Lcom/android/music/list/interfaces/MusicOrientationChanger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/music/common/util/MusicOrientationListener;->mEnterDiscPlus:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/music/list/interfaces/MusicOrientationChanger;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 17
    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    move-object v1, v0

    invoke-direct {p0, v1}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v1, "MusicOrientationListener"

    iput-object v1, p0, Lcom/android/music/common/util/MusicOrientationListener;->TAG:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/android/music/common/util/MusicOrientationListener;->mContext:Lcom/android/music/list/interfaces/MusicOrientationChanger;

    .line 19
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "arg0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/music/common/util/MusicOrientationListener;->mContext:Lcom/android/music/list/interfaces/MusicOrientationChanger;

    invoke-interface {v0}, Lcom/android/music/list/interfaces/MusicOrientationChanger;->changeOrientation()V

    .line 24
    return-void
.end method
