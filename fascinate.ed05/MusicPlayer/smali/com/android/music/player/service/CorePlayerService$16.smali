.class Lcom/android/music/player/service/CorePlayerService$16;
.super Ljava/lang/Object;
.source "CorePlayerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/player/service/CorePlayerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/service/CorePlayerService;


# direct methods
.method constructor <init>(Lcom/android/music/player/service/CorePlayerService;)V
    .locals 0
    .parameter

    .prologue
    .line 3910
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$16;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 3911
    sget-object v0, Lcom/android/music/player/service/CorePlayerService;->TAG:Ljava/lang/String;

    const-string v1, "mHeadsetToast:run() is called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3912
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$16;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0}, Lcom/android/music/player/service/CorePlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/music/player/service/CorePlayerService$16;->this$0:Lcom/android/music/player/service/CorePlayerService;

    const v2, 0x7f0a00af

    invoke-virtual {v1, v2}, Lcom/android/music/player/service/CorePlayerService;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3914
    return-void
.end method
