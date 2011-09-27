.class Lcom/android/music/list/activity/MpListActivity$19;
.super Landroid/content/BroadcastReceiver;
.source "MpListActivity.java"


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
    .line 2881
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$19;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$19;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->TAG:Ljava/lang/String;

    const-string v1, "mKillGarbageReciver, MpListActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$19;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListActivity;->finish()V

    .line 2888
    return-void
.end method
