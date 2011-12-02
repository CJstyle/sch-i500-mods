.class Lcom/android/music/discplus/activity/DiscPlus$3;
.super Ljava/lang/Object;
.source "DiscPlus.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/discplus/activity/DiscPlus;->showLowBatteryMsg(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/discplus/activity/DiscPlus;

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/android/music/discplus/activity/DiscPlus;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/music/discplus/activity/DiscPlus$3;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    iput-object p2, p0, Lcom/android/music/discplus/activity/DiscPlus$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus$3;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    invoke-static {v0}, Lcom/android/music/discplus/activity/DiscPlus;->access$300(Lcom/android/music/discplus/activity/DiscPlus;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/music/common/util/MusicPlayerUtil;->pausePlay(Landroid/content/Context;)V

    .line 439
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus$3;->this$0:Lcom/android/music/discplus/activity/DiscPlus;

    iget-object v0, v0, Lcom/android/music/discplus/activity/DiscPlus;->batteryMessageBox:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 440
    iget-object v0, p0, Lcom/android/music/discplus/activity/DiscPlus$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 441
    return-void
.end method
