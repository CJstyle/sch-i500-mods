.class Lcom/android/music/list/activity/MpListActivity$1;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$1;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1
    .parameter "name"
    .parameter "service"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$1;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->checkPlayButtonEnable()V

    .line 254
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$1;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 261
    return-void
.end method
