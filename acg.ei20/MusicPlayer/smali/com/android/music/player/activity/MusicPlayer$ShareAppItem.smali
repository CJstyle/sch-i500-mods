.class Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;
.super Ljava/lang/Object;
.source "MusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/activity/MusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShareAppItem"
.end annotation


# instance fields
.field private mAppIcon:Landroid/graphics/drawable/Drawable;

.field private mAppName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method public constructor <init>(Lcom/android/music/player/activity/MusicPlayer;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "appicon"
    .parameter "appname"

    .prologue
    .line 3256
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3257
    iput-object p2, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    .line 3258
    iput-object p3, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->mAppName:Ljava/lang/String;

    .line 3259
    return-void
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 3263
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->mAppIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3268
    iget-object v0, p0, Lcom/android/music/player/activity/MusicPlayer$ShareAppItem;->mAppName:Ljava/lang/String;

    return-object v0
.end method
