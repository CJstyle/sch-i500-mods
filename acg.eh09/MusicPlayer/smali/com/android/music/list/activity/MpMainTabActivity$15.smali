.class Lcom/android/music/list/activity/MpMainTabActivity$15;
.super Landroid/content/BroadcastReceiver;
.source "MpMainTabActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/list/activity/MpMainTabActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpMainTabActivity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpMainTabActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3030
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 3034
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$15;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-virtual {v0}, Lcom/android/music/list/activity/MpMainTabActivity;->checkPlayButtonEnable()V

    .line 3036
    return-void
.end method
