.class Lcom/android/music/common/settings/MusicSettingsEqualizer$1;
.super Ljava/lang/Object;
.source "MusicSettingsEqualizer.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEqualizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEqualizer;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0
    .parameter "name"
    .parameter "service"

    .prologue
    .line 119
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/music/common/settings/MusicSettingsEqualizer$1;->this$0:Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-virtual {v0}, Lcom/android/music/common/settings/MusicSettingsEqualizer;->finish()V

    .line 124
    return-void
.end method
