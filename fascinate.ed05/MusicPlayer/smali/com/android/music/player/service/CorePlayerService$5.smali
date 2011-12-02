.class Lcom/android/music/player/service/CorePlayerService$5;
.super Landroid/content/BroadcastReceiver;
.source "CorePlayerService.java"


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
    .line 1032
    iput-object p1, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/android/music/player/service/CorePlayerService$5;->this$0:Lcom/android/music/player/service/CorePlayerService;

    invoke-virtual {v0, p2}, Lcom/android/music/player/service/CorePlayerService;->procCommndIntent(Landroid/content/Intent;)V

    .line 1036
    return-void
.end method
