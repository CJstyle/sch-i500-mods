.class Lcom/android/music/list/activity/MpMainTabActivity$4;
.super Landroid/os/Handler;
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
    .line 643
    iput-object p1, p0, Lcom/android/music/list/activity/MpMainTabActivity$4;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/android/music/list/activity/MpMainTabActivity$4;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, p0, Lcom/android/music/list/activity/MpMainTabActivity$4;->this$0:Lcom/android/music/list/activity/MpMainTabActivity;

    iget-object v1, v1, Lcom/android/music/list/activity/MpMainTabActivity;->mMenu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Lcom/android/music/list/activity/MpMainTabActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 646
    return-void
.end method
