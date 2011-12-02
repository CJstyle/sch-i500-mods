.class Lcom/android/music/player/activity/MusicPlayer$31;
.super Ljava/lang/Object;
.source "MusicPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/player/activity/MusicPlayer;->onActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/player/activity/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/android/music/player/activity/MusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 4616
    iput-object p1, p0, Lcom/android/music/player/activity/MusicPlayer$31;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 4618
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4619
    .local v0, launchTTS:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TextToSpeechSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 4621
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$31;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    iget-object v1, v1, Lcom/android/music/player/activity/MusicPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4622
    iget-object v1, p0, Lcom/android/music/player/activity/MusicPlayer$31;->this$0:Lcom/android/music/player/activity/MusicPlayer;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/music/player/activity/MusicPlayer;->mLongKey:Z

    .line 4623
    return-void
.end method
