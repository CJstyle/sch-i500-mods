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
    .line 73
    iput-object p1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->access$000(Lcom/android/music/list/activity/MpListFileEmptyActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->access$002(Lcom/android/music/list/activity/MpListFileEmptyActivity;Z)Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    const-class v2, Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 82
    iget-object v1, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-virtual {v1, v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->startActivity(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/android/music/list/activity/MpListFileEmptyActivity$1;->this$0:Lcom/android/music/list/activity/MpListFileEmptyActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpListFileEmptyActivity;->finish()V

    .line 87
    :cond_0
    return-void
.end method
