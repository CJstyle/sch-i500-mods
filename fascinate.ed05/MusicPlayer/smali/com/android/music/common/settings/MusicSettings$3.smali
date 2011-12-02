.class Lcom/android/music/common/settings/MusicSettings$3;
.super Ljava/lang/Object;
.source "MusicSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/music/common/settings/MusicSettings;->settingsEventInit()V
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
    .line 261
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$3;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$3;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$200(Lcom/android/music/common/settings/MusicSettings;)Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/music/common/settings/MusicSettingsEqualizer;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$3;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-virtual {v1, v0}, Lcom/android/music/common/settings/MusicSettings;->startActivity(Landroid/content/Intent;)V

    .line 266
    return-void
.end method
