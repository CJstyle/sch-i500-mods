.class Lcom/android/music/common/util/PopupBg$5;
.super Ljava/lang/Object;
.source "PopupBg.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/util/PopupBg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/util/PopupBg;


# direct methods
.method constructor <init>(Lcom/android/music/common/util/PopupBg;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/music/common/util/PopupBg$5;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 156
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$5;->this$0:Lcom/android/music/common/util/PopupBg;

    const-class v2, Lcom/android/music/player/service/CorePlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.music.musicservicecommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const-string v1, "command"

    const-string v2, "com.android.music.musicservicecommand.resume"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 159
    iget-object v1, p0, Lcom/android/music/common/util/PopupBg$5;->this$0:Lcom/android/music/common/util/PopupBg;

    invoke-virtual {v1, v0}, Lcom/android/music/common/util/PopupBg;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    return-void
.end method
