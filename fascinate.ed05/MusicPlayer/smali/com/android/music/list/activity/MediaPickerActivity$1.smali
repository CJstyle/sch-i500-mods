.class Lcom/android/music/list/activity/MediaPickerActivity$1;
.super Ljava/lang/Object;
.source "MediaPickerActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MediaPickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MediaPickerActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MediaPickerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/music/list/activity/MediaPickerActivity$1;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity$1;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    invoke-static {p2}, Lcom/android/music/player/service/ICorePlayerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/music/player/service/ICorePlayerService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/music/list/activity/MediaPickerActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 100
    sget-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity$1;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MediaPickerActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    sput-object v0, Lcom/android/music/common/util/MusicPlayerUtil;->sCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 104
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/music/list/activity/MediaPickerActivity$1;->this$0:Lcom/android/music/list/activity/MediaPickerActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/music/list/activity/MediaPickerActivity;->mCorePlayer:Lcom/android/music/player/service/ICorePlayerService;

    .line 109
    return-void
.end method
