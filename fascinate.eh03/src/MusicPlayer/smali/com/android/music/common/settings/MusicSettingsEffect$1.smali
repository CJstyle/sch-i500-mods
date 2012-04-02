.class Lcom/android/music/common/settings/MusicSettingsEffect$1;
.super Ljava/lang/Object;
.source "MusicSettingsEffect.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEffect;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEffect$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 115
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEffect$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-virtual {v0}, Lcom/android/music/common/settings/MusicSettingsEffect;->finish()V

    .line 120
    return-void
.end method
