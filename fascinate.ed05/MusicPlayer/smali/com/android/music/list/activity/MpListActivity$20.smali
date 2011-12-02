.class Lcom/android/music/list/activity/MpListActivity$20;
.super Ljava/lang/Object;
.source "MpListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/list/activity/MpListActivity;->showLowBatteryMsg(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/list/activity/MpListActivity;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/music/list/activity/MpListActivity;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2354
    iput-object p1, p0, Lcom/android/music/list/activity/MpListActivity$20;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iput-object p2, p0, Lcom/android/music/list/activity/MpListActivity$20;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 2355
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$20;->this$0:Lcom/android/music/list/activity/MpListActivity;

    invoke-static {v0}, Lcom/android/music/list/activity/MpListActivity;->access$200(Lcom/android/music/list/activity/MpListActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->pausePlay(Landroid/content/Context;)V

    .line 2356
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$20;->this$0:Lcom/android/music/list/activity/MpListActivity;

    iget-object v0, v0, Lcom/android/music/list/activity/MpListActivity;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 2357
    iget-object v0, p0, Lcom/android/music/list/activity/MpListActivity$20;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2358
    return-void
.end method
