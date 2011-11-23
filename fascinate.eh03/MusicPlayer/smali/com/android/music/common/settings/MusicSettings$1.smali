.class Lcom/android/music/common/settings/MusicSettings$1;
.super Ljava/lang/Object;
.source "MusicSettings.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettings;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$1;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 112
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettings$1;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-virtual {v0}, Lcom/android/music/common/settings/MusicSettings;->finish()V

    .line 117
    return-void
.end method
