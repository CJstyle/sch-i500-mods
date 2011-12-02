.class Lcom/android/music/list/activity/MpListFileEmptyActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MpListFileEmptyActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpListFileEmptyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListFileEmptyActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-static {v2}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->access$000(Lcom/android/music/list/activity/MpListFileEmptyActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->access$002(Lcom/android/music/list/activity/MpListFileEmptyActivity;Z)Z

    .line 84
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    const-class v3, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 85
    .local v1, mainStart:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-virtual {v2, v1}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    iget-object v2, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-virtual {v2}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->finish()V

    .line 90
    .end local v1           #mainStart:Landroid/content/Intent;
    :cond_0
    return-void
.end method
