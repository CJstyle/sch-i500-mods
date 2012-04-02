.class Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;
.super Ljava/lang/Object;
.source "MoviePlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/videoplayer/activity/MoviePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingItem"
.end annotation


# instance fields
.field private mSettingItem:Ljava/lang/String;

.field private mSettingValue:Ljava/lang/String;

.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/videoplayer/activity/MoviePlayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "item"
    .parameter "value"

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->this$0:Lcom/sec/android/app/videoplayer/activity/MoviePlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3632
    iput-object p2, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->mSettingItem:Ljava/lang/String;

    .line 3633
    iput-object p3, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->mSettingValue:Ljava/lang/String;

    .line 3634
    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3638
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->mSettingItem:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3643
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/MoviePlayer$SettingItem;->mSettingValue:Ljava/lang/String;

    return-object v0
.end method
