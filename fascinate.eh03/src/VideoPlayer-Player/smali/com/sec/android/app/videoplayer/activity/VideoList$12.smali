.class Lcom/sec/android/app/videoplayer/activity/VideoList$12;
.super Ljava/lang/Object;
.source "VideoList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/videoplayer/activity/VideoList;->popupLowBattery(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;


# direct methods
.method constructor <init>(Lcom/sec/android/app/videoplayer/activity/VideoList;)V
    .locals 0
    .parameter

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$12;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$12;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    invoke-virtual {v0}, Lcom/sec/android/app/videoplayer/activity/VideoList;->finish()V

    .line 1468
    iget-object v0, p0, Lcom/sec/android/app/videoplayer/activity/VideoList$12;->this$0:Lcom/sec/android/app/videoplayer/activity/VideoList;

    const/4 v1, 0x0

    #setter for: Lcom/sec/android/app/videoplayer/activity/VideoList;->mPopupLowBattShow:Z
    invoke-static {v0, v1}, Lcom/sec/android/app/videoplayer/activity/VideoList;->access$2702(Lcom/sec/android/app/videoplayer/activity/VideoList;Z)Z

    .line 1469
    return-void
.end method